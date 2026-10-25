# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.White.Variant5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fde1497387073ad6388dabba1ba3689687e82ee9` · SHA-256 `5c6d9d10c7d312dd25ee7894ed994da2f5f2c89f913e1a2c073cb638ef9500af`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Color.Admissibility

namespace Color

namespace White

def band : Band :=
  { name := "white",
    namespaceName := "Color.White",
    bitDepth := 8,
    rangeMin := 255,
    rangeMax := 255,
    centroid := whiteCentroid }

def accepts : ColorAtom → Prop := acceptsOnly ColorAtom.white

def rejects : ColorAtom → Prop := rejectsUnresolved

def admissibility : Admissibility :=
  { band, accepts, rejects, symmetric := true }

theorem namespace_eq : band.namespaceName = "Color.White" := rfl

end White

end Color
```
