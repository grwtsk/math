# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variant4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c82ccad5f61b1e37b2c2c32ac2690ae839cea0d4` · SHA-256 `4e48e08fd5426ffeab13fd427555d1bb9c1178ff865878f6bce29cc2c7c61c51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Surgery.Obstruction

/-! # Boundary observations are not surgery requests -/

namespace Mathematics.Surgery

structure BoundaryObservation where
  before : Orbit.Status
  after : Orbit.Status
  obstruction : Obstruction
  deriving DecidableEq, Repr

end Mathematics.Surgery
```
