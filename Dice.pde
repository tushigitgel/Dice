void setup()
{
  size(800,800);
  background(170,170,170);
  noLoop();
}
void draw()
{
  int sum = 0;
  for (int y= 0; y < 650; y = y +75){
    for(int x = 0; x < 650; x = x + 75){
        Die bob = new Die(x,y);
        bob.show();
        if(bob.cir < 7){
          sum+= bob.cir;
        }
    }
  }
  text("Total = " + sum, 350, 40);
}
void mousePressed()
{
redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  int cir;
  Die(int x, int y) //constructor
  {
    roll();
    myY = y;
    myX = x;
}
void roll()
{
  cir = (int)(Math.random()*6+1);
}
void show()
{
  fill(240,235,200);
  rect(myX + 70, myY + 70, 60, 60);
  if(cir == 1){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
  }
  if(cir == 2){
    fill(0);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
  }
  if(cir == 3){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(cir == 4){
    fill(0);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(cir == 5){
    fill(0);
    ellipse(myX+100, myY+100, 5, 5);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
  if(cir == 6){
    fill(0);
    ellipse(myX+90, myY+90, 5, 5);
    ellipse(myX+90, myY+100, 5, 5);
    ellipse(myX+90, myY+110, 5, 5);
    ellipse(myX+110, myY+90, 5, 5);
    ellipse(myX+110, myY+100, 5, 5);
    ellipse(myX+110, myY+110, 5, 5);
  }
 }
}
