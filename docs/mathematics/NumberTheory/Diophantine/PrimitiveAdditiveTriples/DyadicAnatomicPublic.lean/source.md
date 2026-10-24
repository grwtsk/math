# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicPublic

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceacfa076cbe11d34e5624ef3a0c43316afa4088` · SHA-256 `6174020d8d7b5d25b817da1974f419c31a56f12f5f4f40aa7ebda063692da7d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.DyadicAnatomicCover

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open Finset
open scoped BigOperators

namespace DyadicAnatomicCover

open AnatomicBoxes

/-- The unweighted support product divides the corresponding weighted
monomial. Exposed for the admissible-parameter refinement. -/
theorem supportProduct_dvd_monomial_public {d : ℕ} (x : Fin d → ℕ) :
    supportProduct x ∣ monomial x := by
  unfold supportProduct monomial
  apply Finset.prod_dvd_prod_of_dvd
  intro i hi
  exact dvd_pow_self (x i) (by omega)

theorem carrierA_dvd_totalA {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierA x ∣ p.totalA x := by
  exact mul_dvd_mul_left (p.residual 0) (supportProduct_dvd_monomial_public x)

theorem carrierB_dvd_totalB {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierB x ∣ p.totalB x := by
  exact mul_dvd_mul_left (p.residual 1) (supportProduct_dvd_monomial_public x)

theorem carrierC_dvd_totalC {d : ℕ} (p : Parameters d)
    (x : Fin d → ℕ) : p.carrierC x ∣ p.totalC x := by
  exact mul_dvd_mul_left (p.residual 2) (supportProduct_dvd_monomial_public x)

theorem residual_le_cap {ε : ℝ} {X r : ℕ}
    (hr : (r : ℝ) ≤ (X : ℝ) ^ ε) : r ≤ residualCap ε X := by
  rw [residualCap, Nat.le_floor_iff]
  · exact hr
  · positivity

end DyadicAnatomicCover

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
