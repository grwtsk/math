# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TwoPrimeInteraction.Varianta1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f951c8b4fec2d008a93d422736070bc5b94336ae` · SHA-256 `a1d331aa28057dc9e7ef3ccdbf2603c5ec08df430ecc58b1f9d4cbf9c62ff0fc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure TwoPrimeInteractionDescriptor where
  firstPrimeRef : String
  secondPrimeRef : String
  compressionRank : Nat
  signCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .twoPrimeInteraction

end Mathematics.SemiLocalDefect.QSeries
```
