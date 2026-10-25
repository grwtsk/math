# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RangeProjection.Variant76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3fdb9f74c0d7b55ad7d16f04a2352f8deba2c409` · SHA-256 `76fe4c56d8cd99602e1ab4bfc4320a46322c8c113cfe1f02ed5165f1feeee5e4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure RangeProjectionDescriptor where
  projectionRef : String
  horizonRef : String
  inclusionCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninRangeProjection

end Mathematics.SemiLocalDefect.Sonin
```
