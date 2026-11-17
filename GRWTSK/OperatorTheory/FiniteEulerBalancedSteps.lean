/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib

/-!
# Equal exposure maximizes the Euler multiplier

For a fixed mode, total exposure and positive step count, equal
substeps maximize the literal Euler multiplier on the regime of
nonnegative factors. Exact heat compensation uses the same factor
for every such allocation, so equal substeps minimize its deficit.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.OperatorTheory.FiniteEulerBalancedSteps

theorem product_le_equal_steps {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    (∏ i, (1 - a i)) ≤ (1 - (∑ i, a i) / (m : ℝ)) ^ m := by
  let z (i : Fin m) := 1 - a i
  have nonneg (i : Fin m) : 0 ≤ z i := sub_nonneg.mpr (upper i)
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  have normalized : (∑ _i : Fin m, (1 / (m : ℝ))) = 1 := by
    simp [positive.ne']
  have avg : (∑ i : Fin m, (1 / (m : ℝ)) * z i) =
      1 - (∑ i, a i) / (m : ℝ) := by
    rw [← Finset.mul_sum]
    simp only [z, Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
      Fintype.card_fin, nsmul_eq_mul, mul_one]
    field_simp
  have gm := Real.geom_mean_le_arith_mean_weighted Finset.univ
    (fun _ : Fin m => 1 / (m : ℝ)) z (fun _ _ => by positivity) normalized
    (fun i _ => nonneg i)
  rw [Real.finsetProd_rpow _ _ (fun i _ => nonneg i), avg] at gm
  have product : 0 ≤ ∏ i, z i := Finset.prod_nonneg fun i _ => nonneg i
  have bound := Real.rpow_le_rpow (Real.rpow_nonneg product _) gm positive.le
  rwa [← Real.rpow_mul product, one_div_mul_cancel positive.ne',
    Real.rpow_one, Real.rpow_natCast] at bound

/-- Under the fixed total exposure, exact exponential compensation preserves
the comparison of Euler multipliers. -/
theorem compensated_deficit_le {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    let A := ∑ i, a i
    1 - Real.exp A * (1 - A / (m : ℝ)) ^ m ≤
      1 - Real.exp A * ∏ i, (1 - a i) := by
  intro A
  exact sub_le_sub_left (mul_le_mul_of_nonneg_left
    (product_le_equal_steps hm a upper) (Real.exp_pos A).le) _

/-- For a two-step transfer the improvement from equalizing the exposure
is exactly the squared imbalance divided by four. -/
theorem pair_balance_identity (a b : ℝ) :
    (1 - (a + b) / 2) ^ 2 - (1 - a) * (1 - b) = (a - b) ^ 2 / 4 := by ring

end GRWTSK.OperatorTheory.FiniteEulerBalancedSteps
