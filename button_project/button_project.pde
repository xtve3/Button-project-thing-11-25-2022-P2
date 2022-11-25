//Global Variables
int appWidth, appHeight;
Boolean start=false, actuallyStart = false;
float picWidthAdjusted1=0.0, picHeightAdjusted1=0.0;
float rectangleX, rectangleY, rectangleWidth, rectangleHeight;
float backgroundX, backgroundY, backgroundWidth, backgroundHeight;
PImage pic1, pic2;
//
void setup () {
  size (1000,800);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //
  //Population
  pic1 = loadImage ("../Images used/andrewtatecigar.JPG");
  pic2 = loadImage ("../Images used/Andrew_Tate_on_'Anything_Goes_With_James_English'_in_2021.jpg");
  backgroundX = appWidth*0;
  backgroundY = appHeight*0;
  backgroundWidth = appWidth-1;
  backgroundHeight  = appHeight-1;
  rectangleX = appWidth * 1.2/3;
  rectangleY = appHeight * 1.19/3;
  rectangleWidth = appWidth * 1/5;
  rectangleHeight = appHeight * 1/5;
  //End of population section
  //
  //meta data
  int picWidth1 = 606; 
  int picHeight1 = 106;
  //end of meta data section
  //Start of aspect ratio algorhyim
    float imageWidthRatio1=0.0, imageHeightRatio1=0.0;
    float smallerDimension1;
    float largerDimension1;
    
   if ( picWidth1 >= picHeight1 ) { //True if Landscape or Square
    largerDimension1 = picWidth1;
    smallerDimension1 = picHeight1;
    //
    picWidthAdjusted1 = rectangleWidth; //from rect() layout
    imageHeightRatio1 = smallerDimension1 / largerDimension1;
    picHeightAdjusted1 = picWidthAdjusted1 * imageHeightRatio1;
  } else { //False if Portrait
    largerDimension1 = picHeight1;
    smallerDimension1 = picWidth1;
    //
    picHeightAdjusted1 = rectangleHeight; //from rect() layout
    imageWidthRatio1 = smallerDimension1 / largerDimension1;
    picWidthAdjusted1 = picHeightAdjusted1 * imageWidthRatio1;
  }
  //Start of rectangles 
  rect(backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  rect(rectangleX, rectangleY, rectangleWidth, rectangleHeight);
  //end of rectangles section
  //Background image settings
  image(pic2, backgroundX, backgroundY, backgroundWidth, backgroundHeight);
  //end of bacground images settings section
  //
}
//end setup
//
void draw () {
 textSize()
 text()
 fill()
}
//end draw
//
void keyPressed () {
  if ( key==' ' && start==true) actuallyStart = true;
  //
  //prototype
   if ( key=='Q' || key=='q') exit() ;
  if (key==CODED && keyCode==ESC) exit();
    if (key==CODED && keyCode==TAB) exit();
    if ( key=='W' || key=='w') image(pic1, rectangleX, rectangleY, picWidthAdjusted1, picHeightAdjusted1);
}
//end keyPressed
//
void mousePressed () {}
//end mousePressed
//
//End Main Program
