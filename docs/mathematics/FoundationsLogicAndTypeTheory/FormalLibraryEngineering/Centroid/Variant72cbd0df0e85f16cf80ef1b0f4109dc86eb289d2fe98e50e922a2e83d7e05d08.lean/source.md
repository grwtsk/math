# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Centroid.Variant72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fffe69050b1b8b93ed207cecc9623b18d21781d` · SHA-256 `72cbd0df0e85f16cf80ef1b0f4109dc86eb289d2fe98e50e922a2e83d7e05d08`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
