import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Real.Sqrt

/-!
Finite reciprocal-square tails for the common-scale counting discrepancy.
The sum retains both natural square-root endpoints. No infinite product or
arithmetic cancellation estimate is used.
-/

set_option autoImplicit false

namespace ReciprocalSquareTailScratch

open Finset

noncomputable section

/-- The finite positive reciprocal-square tail is bounded by its first reciprocal endpoint. -/
theorem reciprocal_square_tail_le (Y Z : ℕ) (hY : 1 ≤ Y) (hYZ : Y ≤ Z) :
    (∑ d ∈ Ioc Y Z, 1 / (d : ℝ) ^ 2) ≤ 1 / (Y : ℝ) := by
  have h := sum_Ioc_inv_sq_le_sub (α := ℝ) (by omega : Y ≠ 0) hYZ
  simp only [← one_div] at h
  exact h.trans (sub_le_self _ (by positivity))

/-- The true square-root cutoffs give a uniform finite tail discrepancy at every positive j. -/
theorem sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc (Nat.sqrt j) (Nat.sqrt G), 1 / (d : ℝ) ^ 2) ≤
      2 * Real.sqrt (j : ℝ) := by
  have hY : 1 ≤ Nat.sqrt j := (Nat.sqrt_pos.mpr (by omega : 0 < j))
  have hY0 : (0 : ℝ) < Nat.sqrt j := by exact_mod_cast (show 0 < Nat.sqrt j by omega)
  have hY1 : (1 : ℝ) ≤ Nat.sqrt j := by exact_mod_cast hY
  have hr : Real.sqrt (j : ℝ) ≤ 2 * (Nat.sqrt j : ℝ) := by
    have h := Real.real_sqrt_le_nat_sqrt_succ (a := j)
    linarith
  have hm := mul_le_mul_of_nonneg_left hr (Real.sqrt_nonneg (j : ℝ))
  have hs := Real.sq_sqrt (Nat.cast_nonneg j)
  calc
    _ ≤ (j : ℝ) * (1 / (Nat.sqrt j : ℝ)) :=
      mul_le_mul_of_nonneg_left
        (reciprocal_square_tail_le (Nat.sqrt j) (Nat.sqrt G) hY (Nat.sqrt_le_sqrt hjG))
        (Nat.cast_nonneg j)
    _ = (j : ℝ) / (Nat.sqrt j : ℝ) := by ring
    _ ≤ 2 * Real.sqrt (j : ℝ) := by
      apply (div_le_iff₀ hY0).mpr
      nlinarith

/-- The identical estimate stated with literal natural floors of the real square roots. -/
theorem floor_sqrt_cutoff_tail_le (j G : ℕ) (hj : 1 ≤ j) (hjG : j ≤ G) :
    (j : ℝ) * (∑ d ∈ Ioc ⌊Real.sqrt (j : ℝ)⌋₊ ⌊Real.sqrt (G : ℝ)⌋₊,
      1 / (d : ℝ) ^ 2) ≤ 2 * Real.sqrt (j : ℝ) := by
  simpa only [Real.nat_floor_real_sqrt_eq_nat_sqrt] using sqrt_cutoff_tail_le j G hj hjG

end
end ReciprocalSquareTailScratch

#print axioms ReciprocalSquareTailScratch.reciprocal_square_tail_le
#print axioms ReciprocalSquareTailScratch.sqrt_cutoff_tail_le
#print axioms ReciprocalSquareTailScratch.floor_sqrt_cutoff_tail_le
