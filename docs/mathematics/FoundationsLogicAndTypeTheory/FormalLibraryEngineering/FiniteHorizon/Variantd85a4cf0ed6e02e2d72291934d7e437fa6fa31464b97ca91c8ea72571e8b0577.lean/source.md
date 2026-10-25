# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FiniteHorizon.Variantd85a4cf0ed6e02e2d72291934d7e437fa6fa31464b97ca91c8ea72571e8b0577

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33de2126dbb8ce44bb1ffcb74edcf037e9e7889c` · SHA-256 `d85a4cf0ed6e02e2d72291934d7e437fa6fa31464b97ca91c8ea72571e8b0577`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Sonin

structure FiniteHorizonDescriptor where
  horizonRef : String
  finitePrimeUniverseRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .soninHorizonProjection

end Mathematics.SemiLocalDefect.Sonin
```
