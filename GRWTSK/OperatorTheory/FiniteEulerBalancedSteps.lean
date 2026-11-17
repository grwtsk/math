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

private theorem uniform_factor_mean {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ) :
    (∑ i, (1 / (m : ℝ)) * (1 - a i)) = 1 - (∑ i, a i) / (m : ℝ) := by
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  rw [← Finset.mul_sum]
  simp only [Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul, mul_one]
  field_simp

theorem product_le_equal_steps {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    (∏ i, (1 - a i)) ≤ (1 - (∑ i, a i) / (m : ℝ)) ^ m := by
  let z (i : Fin m) := 1 - a i
  have nonneg (i : Fin m) : 0 ≤ z i := sub_nonneg.mpr (upper i)
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  have normalized : (∑ _i : Fin m, (1 / (m : ℝ))) = 1 := by
    simp [positive.ne']
  have avg := uniform_factor_mean hm a
  have gm := Real.geom_mean_le_arith_mean_weighted Finset.univ
    (fun _ : Fin m => 1 / (m : ℝ)) z (fun _ _ => by positivity) normalized
    (fun i _ => nonneg i)
  rw [Real.finsetProd_rpow _ _ (fun i _ => nonneg i), avg] at gm
  have product : 0 ≤ ∏ i, z i := Finset.prod_nonneg fun i _ => nonneg i
  have bound := Real.rpow_le_rpow (Real.rpow_nonneg product _) gm positive.le
  rwa [← Real.rpow_mul product, one_div_mul_cancel positive.ne',
    Real.rpow_one, Real.rpow_natCast] at bound

/-- The optimal Euler multiplier is attained exactly at constant exposure.
The equality criterion also covers vanishing factors at the endpoint. -/
theorem product_eq_equal_steps_iff {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) :
    (∏ i, (1 - a i)) = (1 - (∑ i, a i) / (m : ℝ)) ^ m ↔ ∀ i j, a i = a j := by
  let z (i : Fin m) := 1 - a i
  have nonneg (i : Fin m) : 0 ≤ z i := sub_nonneg.mpr (upper i)
  have positive : (0 : ℝ) < m := by exact_mod_cast hm
  have normalized : (∑ _i : Fin m, (1 / (m : ℝ))) = 1 := by
    simp [positive.ne']
  have avg := uniform_factor_mean hm a
  have eq := Real.geom_mean_eq_arith_mean_weighted_iff_of_pos (Finset.univ : Finset (Fin m))
    (fun _ => 1 / (m : ℝ)) z (fun _ _ => by positivity) normalized (fun i _ => nonneg i)
  rw [Real.finsetProd_rpow _ _ (fun i _ => nonneg i), avg] at eq
  have product : 0 ≤ ∏ i, z i := Finset.prod_nonneg fun i _ => nonneg i
  have mean : 0 ≤ 1 - (∑ i, a i) / (m : ℝ) := by
    rw [← avg]
    exact Finset.sum_nonneg (fun i _ => mul_nonneg (by positivity) (nonneg i))
  constructor
  · intro optimal i j
    have root := congrArg (fun x : ℝ => x ^ (1 / (m : ℝ))) optimal
    simp only [one_div, Real.pow_rpow_inv_natCast mean hm.ne'] at root
    have factors := eq.mp (by simpa only [one_div, z] using root) i (Finset.mem_univ i) j (Finset.mem_univ j)
    change 1 - a i = 1 - a j at factors
    linarith
  · intro constant
    have root := eq.mpr (fun i _ j _ => by simp only [z, constant i j])
    have pow := congrArg (fun x : ℝ => x ^ (m : ℝ)) root
    change ((∏ i, z i) ^ (1 / (m : ℝ))) ^ (m : ℝ) =
      (1 - (∑ i, a i) / (m : ℝ)) ^ (m : ℝ) at pow
    rw [← Real.rpow_mul product, one_div_mul_cancel positive.ne',
      Real.rpow_one, Real.rpow_natCast] at pow
    exact pow

/-- Any unequal pair makes the equalized allocation strictly better. -/
theorem product_lt_equal_steps_of_unequal {m : ℕ} (hm : 0 < m) (a : Fin m → ℝ)
    (upper : ∀ i, a i ≤ 1) {i j : Fin m} (unequal : a i ≠ a j) :
    (∏ k, (1 - a k)) < (1 - (∑ k, a k) / (m : ℝ)) ^ m :=
  lt_of_le_of_ne (product_le_equal_steps hm a upper)
    (fun eq => unequal ((product_eq_equal_steps_iff hm a upper).mp eq i j))

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
