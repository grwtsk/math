# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BalanceGauge.Variant916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a5cc1fb40cd7c82cc71b7454a3c2723285803d3` · SHA-256 `916a343f16569cf77bd0cee2a448d836f3895ea3db2e58fdd4dc97612bed2851`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceGaugeDescriptor where
  gaugeRef : String
  sourceBalanceRef : String
  targetBalanceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .balanceGaugeInvariantCapacity

end Mathematics.SemiLocalDefect.Hardy
```
