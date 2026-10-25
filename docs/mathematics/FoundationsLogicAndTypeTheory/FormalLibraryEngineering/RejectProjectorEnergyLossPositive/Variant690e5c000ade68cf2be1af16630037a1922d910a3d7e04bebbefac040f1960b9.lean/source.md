# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectProjectorEnergyLossPositive.Variant690e5c000ade68cf2be1af16630037a1922d910a3d7e04bebbefac040f1960b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b86b75a079c4f34bf78c88d21ad3f74fb6f29cf5` · SHA-256 `690e5c000ade68cf2be1af16630037a1922d910a3d7e04bebbefac040f1960b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
example (mask : Fin 2 → Bool) :
    coordinateProjector mask + coordinateComplement mask = LinearMap.id :=
  coordinateProjector_add_complement mask
example (a x : Fin 2 → ℝ) (mask : Fin 2 → Bool) :
    energy a x = energy a (coordinateProjector mask x) +
      energy a (coordinateComplement mask x) := energy_coordinate_split a x mask
```
