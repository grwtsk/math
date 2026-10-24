# Complete source: GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.LeftInverseComposition

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `173b8ade8245816aff270a70804541f041927495` · SHA-256 `9ced4c83ebd553e7fa0505595c840561ab9e682ed63d4acb6b3d0414a10cba87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean
import Std
import Init.Data.Rat
import Init.GrindInstances.Ring.Rat

/-!
QUANTUM-CELL-1: exact real-amplitude four-label reference laws.
Grover (1996), quant-ph/9605043, supplies the reflection algorithm. The graph
carrier and rational source adapters are authored for this bounded profile.
No physical quantum execution, matrix exponential formalization, universal
machine, JSON refinement, source positivity, or RH consequence is asserted.
-/
namespace GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.LeftInverseComposition

-- Abstract ordering law: inverse replay reverses order; no commutation needed.
theorem inverse_composition {S : Type} (A B Ainv Binv : S → S)
    (ha : ∀ x, Ainv (A x) = x) (hb : ∀ x, Binv (B x) = x) (x : S) :
    Ainv (Binv (B (A x))) = x := by
  rw [hb, ha]

end GRWTSK.Algebra.SemigroupsAndMonoids.Semigroups.TransformationSemigroups.LeftInverseComposition
```
