# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OnePrimeMoment.Variant60d2368c6c2d0a863918d3e7c0510622448495eba11decd2ad3a13e63cc0a6f3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `83314a378b6b014a144bb767ba18dc9deb3b3cdd` · SHA-256 `60d2368c6c2d0a863918d3e7c0510622448495eba11decd2ad3a13e63cc0a6f3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimeMomentDescriptor where
  momentRef : String
  primeRef : String
  coefficientCustodyRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimeMoment

end Mathematics.SemiLocalDefect.QSeries
```
