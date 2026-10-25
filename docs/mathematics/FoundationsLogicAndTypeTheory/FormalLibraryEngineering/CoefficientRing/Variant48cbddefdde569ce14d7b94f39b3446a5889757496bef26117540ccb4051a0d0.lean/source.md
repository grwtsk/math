# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CoefficientRing.Variant48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da1115c6159f906b5a881a92982235609d30c99a` · SHA-256 `48cbddefdde569ce14d7b94f39b3446a5889757496bef26117540ccb4051a0d0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure CoefficientRingDescriptor where
  ringRef : String
  exactArithmeticRef : String
  intervalRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .qSeriesCoefficientRing

end Mathematics.SemiLocalDefect.QSeries
```
