import Color.RGB

namespace Color

structure Centroid where
  bitDepth : Nat
  aperture : Byte
  rgb : RGB
  hex : String
deriving Repr, DecidableEq

def blackCentroid : Centroid :=
  { bitDepth := 8, aperture := 0, rgb := RGB.black, hex := "#000000" }

def whiteCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.white, hex := "#FFFFFF" }

def redCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.redPrimary, hex := "#FF0000" }

def greenCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.greenPrimary, hex := "#00FF00" }

def blueCentroid : Centroid :=
  { bitDepth := 8, aperture := 255, rgb := RGB.bluePrimary, hex := "#0000FF" }

theorem whiteCentroid_hex_eq : whiteCentroid.hex = "#FFFFFF" := rfl

end Color
