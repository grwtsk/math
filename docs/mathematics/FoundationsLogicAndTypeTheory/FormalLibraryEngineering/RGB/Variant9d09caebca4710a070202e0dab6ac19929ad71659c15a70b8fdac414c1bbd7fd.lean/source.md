# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RGB.Variant9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38153c90f4535298542c5213e77f5279e2d79ac3` · SHA-256 `9d09caebca4710a070202e0dab6ac19929ad71659c15a70b8fdac414c1bbd7fd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
namespace Color

abbrev Byte := Nat

structure RGB where
  red : Byte
  green : Byte
  blue : Byte
deriving Repr, DecidableEq

def RGB.black : RGB := { red := 0, green := 0, blue := 0 }

def RGB.white : RGB := { red := 255, green := 255, blue := 255 }

def RGB.redPrimary : RGB := { red := 255, green := 0, blue := 0 }

def RGB.greenPrimary : RGB := { red := 0, green := 255, blue := 0 }

def RGB.bluePrimary : RGB := { red := 0, green := 0, blue := 255 }

theorem RGB.white_red_eq : RGB.white.red = 255 := rfl

end Color
```
