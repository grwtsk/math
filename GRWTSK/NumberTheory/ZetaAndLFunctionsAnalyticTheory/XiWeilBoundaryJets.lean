/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Tactic

/-! Endpoint moments for finite Fourier sections and the operator-norm error of
discarding the complementary blocks. See the accompanying arithmetic argument. -/

namespace GRWTSK.XiWeilBoundaryJets

/-- Vanishing of the first endpoint moments leaves an exact high-order
remainder in the finite Cauchy transform. -/
theorem cauchy_remainder {K ι : Type*} [Field K] (s : Finset ι)
    (a w : ι → K) (z : K) (hz : z ≠ 0) (hw : ∀ i ∈ s, z ≠ w i)
    (d : ℕ) (hm : ∀ j < d, ∑ i ∈ s, a i * w i ^ j = 0) :
    ∑ i ∈ s, a i / (z - w i) =
      ∑ i ∈ s, a i * (w i / z) ^ d / (z - w i) := by
  induction d with
  | zero => simp
  | succ d ih =>
    rw [ih (fun j hj => hm j (Nat.lt_succ_of_lt hj))]
    apply sub_eq_zero.mp
    rw [← Finset.sum_sub_distrib]
    calc
      _ = ∑ i ∈ s, (a i * w i ^ d) / z ^ (d + 1) := by
          apply Finset.sum_congr rfl
          intro i hi
          have hdiff := sub_ne_zero.mpr (hw i hi)
          rw [div_pow, div_pow, pow_succ (w i), pow_succ z]
          field_simp
      _ = 0 := by rw [← Finset.sum_div, hm d (Nat.lt_succ_self d), zero_div]

/-- A contractive compression loses at most the sum of the two one-sided
operator errors. Applies to the zero tail after removing the positive Gram. -/
theorem compression_error {A : Type*} [NormedRing A] (T P : A)
    (hP : ‖P‖ ≤ 1) {r : ℝ} (hl : ‖(1 - P) * T‖ ≤ r) (hr : ‖T * (1 - P)‖ ≤ r) :
    ‖T - P * T * P‖ ≤ r + r := by
  have he : T - P * T * P = T * (1 - P) + (1 - P) * T * P := by noncomm_ring
  rw [he]
  apply (norm_add_le _ _).trans
  apply add_le_add hr
  calc
    ‖(1 - P) * T * P‖ ≤ ‖(1 - P) * T‖ * ‖P‖ := norm_mul_le _ _
    _ ≤ ‖(1 - P) * T‖ * 1 := mul_le_mul_of_nonneg_left hP (norm_nonneg _)
    _ ≤ r := by simpa using hl

end GRWTSK.XiWeilBoundaryJets
