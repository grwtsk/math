# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Space.Variantd43e7e77e2962c3b5807614c68abbf0d25bcea5ccdf2a7393ae5292628956f8f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cac9cdca9d594e803324bbd4c34db375474bf5e4` · SHA-256 `d43e7e77e2962c3b5807614c68abbf0d25bcea5ccdf2a7393ae5292628956f8f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure SpaceDescriptor where
  spaceRef : String
  finiteHorizonRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninSpace

end Mathematics.SemiLocalDefect.Sonin
```
