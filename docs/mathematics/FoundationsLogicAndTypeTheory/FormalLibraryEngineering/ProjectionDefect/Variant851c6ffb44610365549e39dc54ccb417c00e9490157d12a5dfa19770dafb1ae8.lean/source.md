# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProjectionDefect.Variant851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d84e924886d63579b19ae92f2df2514278ce8220` · SHA-256 `851c6ffb44610365549e39dc54ccb417c00e9490157d12a5dfa19770dafb1ae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure ProjectionDefectDescriptor where
  defectRef : String
  projectionRef : String
  capacityRelationRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninProjectionDefect

end Mathematics.SemiLocalDefect.Sonin
```
