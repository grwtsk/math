/- Copyright (c) 2026 R.A. Jacob Martone. MIT. -/
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
