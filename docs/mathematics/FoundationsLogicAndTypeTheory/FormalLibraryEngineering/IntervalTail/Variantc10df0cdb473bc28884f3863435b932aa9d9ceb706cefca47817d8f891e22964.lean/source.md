# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntervalTail.Variantc10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c1576da267d0f4e7fbea14020ab004d943938dc8` · SHA-256 `c10df0cdb473bc28884f3863435b932aa9d9ceb706cefca47817d8f891e22964`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure IntervalTailDescriptor where
  tailRef : String
  intervalRef : String
  positivityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .intervalTail

end Mathematics.SemiLocalDefect.QSeries
```
