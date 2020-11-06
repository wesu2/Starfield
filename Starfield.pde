//your code here
Particle[] parts;
void setup()
{
  //your code here
  size (1000,1000);
  parts = new Particle[10000];
  for(int i = 0; i<parts.length; i++) {
    parts[i] = new Particle();
  }
  parts[0] = new OddballParticle();
}
void draw()
{
  //your code here
  background(20, 28, 59);
  
  for(int i = 0; i<parts.length; i++) {
    parts[i].move();
    parts[i].show();
}
  fill(0);
  triangle (0, 700 , 500, 500, 1000, 700 );
  triangle (100, 500 , 50, 550, 150, 550 );
  triangle (100, 540 , 40, 590, 160, 590 );
  triangle (100, 580 , 40, 630, 160, 630 );
  rect (90, 600, 20, 100);
  rect (0, 700, 1000, 300);
}
class Particle
{
  //your code here
  double xpos, ypos, speed, angle; 
  int pcolor; 
  Particle(){
    xpos = 450;
    ypos = 0; 
    pcolor = color(255, (int)((Math.random()*55)+200), (int)(Math.random()*125));
    speed = Math.random()*15;
    angle = (Math.random()*2*Math.PI);
  }
  void move(){
    xpos = xpos + speed*Math.cos(angle);
    ypos = ypos + speed*Math.sin(angle);
    
  }
  void show(){
    fill(pcolor);
    ellipse((float)xpos, (float)ypos, 5, 5);
  }
}

class OddballParticle extends Particle//inherits from Particle
{
  //your code here
   OddballParticle() 
  {
    xpos = 0;
    ypos = 50;
    pcolor = color(255,255,255);
    angle = (Math.random()*2*Math.PI);
    speed = Math.random()*5;
  }
  void show() 
  {
    fill(pcolor);
    ellipse((float)xpos, (float)ypos, 60, 60);
  }
  void move() 
  {
      xpos = xpos + 50;
  } 
}
