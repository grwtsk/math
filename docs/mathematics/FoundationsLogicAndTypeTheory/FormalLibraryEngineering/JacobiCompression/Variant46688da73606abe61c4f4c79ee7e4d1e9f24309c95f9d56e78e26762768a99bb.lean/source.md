# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.JacobiCompression.Variant46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef5ae07d8a1a96a7fa1a834a5c4b3c79b640314e` · SHA-256 `46688da73606abe61c4f4c79ee7e4d1e9f24309c95f9d56e78e26762768a99bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure JacobiCompressionDescriptor where
  compressionRef : String
  rank : Nat
  exactMatrixRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .jacobiCompression

end Mathematics.SemiLocalDefect.QSeries
```
