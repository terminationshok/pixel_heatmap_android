//build a map of ledPos[logical led positions] = map of led positions on canvas
void mapper() {

  int internalX = 0;
  int internalY = 0;




  //  hardcode examples  

  internalX = 16;
  internalY = 10;//starting point on canvas

  for (int x = 0; x < ledsW; x++) {//start and number of pixels on strip
    //v strip #
    ledPos[xyPixels(x, 0, ledsW)] = xyPixels(internalX, internalY, canvasW);
    internalX++;//direction
  }



  internalX = 16;
  internalY = 50;

  for (int x = 0; x < ledsW; x++) {

    ledPos[xyPixels(x, 1, ledsW)] = xyPixels(internalX, internalY, canvasW);
    internalX++;
    //internalY++;
  }



  internalX = 16;
  internalY = 90;

  for (int x = 0; x < ledsW; x++) {

    ledPos[xyPixels(x, 2, ledsW)] = xyPixels(internalX, internalY, canvasW);
    internalX++;
  }




  internalX = 16;
  internalY = 130;

  for (int x = 0; x < ledsW; x++) {

    ledPos[xyPixels(x, 3, ledsW)] = xyPixels(internalX, internalY, canvasW);
    internalX++;
  }
  
}

int xyPixels(int x, int y, int yScale) {
  return(x+(y*yScale));
}

int xPixels(int pxN, int yScale) {
  return(pxN % yScale);
}

int yPixels(int pxN, int yScale) {
  return(pxN / yScale);
}

