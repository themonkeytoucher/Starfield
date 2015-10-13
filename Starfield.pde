Particle [] swarm;
int particleLength = 1000;




void setup()
{
	size(500, 500);
	swarm = new Particle[particleLength];
	swarm[0] = new OddballParticle();
	swarm[1] = new JumboParticle();
	for (int i = 2; i<swarm.length; i++) {
		swarm[i] = new NormalParticle();
	}
}
void draw()
{
	background(0);
	for (int i =0; i<swarm.length; i++){
		swarm[i].move();
		swarm[i].show();
	}
	if (x>=500 || x <=0||y>=500 || y<=0) {
		new NormalParticle();
	}
}

class NormalParticle implements Particle
{
	double x,y,angle,speed;

	NormalParticle() {
		x =250;
		y=250;
		angle=Math.random()*(2*Math.PI);
		speed = Math.random()*10;
	}

	public void move() {
		x=x+(Math.cos((float)(angle))*speed);
		y=y+(Math.sin((float)(angle))*speed);
		if (x>=500 || x <=0) {
			x = mouseX;
		}
		if (y>=500 || y<=0) {
			y=mouseY;
		}
	}

	public void show() {
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse ((float)(x),(float)(y),5,5);
	}
}

interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double x,y,angle,speed;

	OddballParticle() {
		x = 250;
		y = 250;
		angle=Math.random()*(2*Math.PI);
		speed = Math.random()*10;
	}

	public void move() {
		x=x+(Math.cos((float)(angle))*speed);
		y=y+(Math.sin((float)(angle))*speed);
		if (x>=500 || x <=0) {
			x = mouseX;
		}
		if (y>=500 || y<=0) {
			y=mouseY;
		}
	}

	public void show() {
		fill(255);
		rect((float)(x), (float)(y), 10, 10);
	}
}

class JumboParticle implements Particle {
	
	double x,y,angle,speed;

	JumboParticle() {
		x =250;
		y=250;
		angle=Math.random()*(2*Math.PI);
		speed = Math.random()*10;
	}

	public void move() {
		x=x+(Math.cos((float)(angle))*speed);
		y=y+(Math.sin((float)(angle))*speed);
		if (x>=500 || x <=0) {
			x = mouseX;
		}
		if (y>=500 || y<=0) {
			y=mouseY;
		}
	}

	public void show() {
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		ellipse ((float)(x),(float)(y),50,50);
	}
}

