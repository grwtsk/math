# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RejectH0TransportWithoutCocycleEquivalencePositive.Variantcf97609b4538c879f30c8979771510bf6726c3244dab18429e244ba014022ba7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d056044ae1f8d55f000917f78b000ba7d2ab9fa` · SHA-256 `cf97609b4538c879f30c8979771510bf6726c3244dab18429e244ba014022ba7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.Interfaces.GraphHodgePortCore

noncomputable section

open GRWTSK.LinearAlgebra.FramedFiberPort
open GRWTSK.Geometry.Hodge.DegreeZeroCohomology
open GRWTSK.Geometry.Hodge.FiniteEdgeRealization
example : Cocycle0 edgeHodge ≃ₗ[ℚ] Cocycle0 edgeHodge :=
  (HodgeEquiv.refl edgeHodge).cocycleEquiv
example : HZeroModel edgeHodge ℚ :=
  (HodgeEquiv.refl edgeHodge).transportHZeroModel EdgeFixture.edgeHZeroModel
```
