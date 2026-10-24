import FormalResearch.RiemannHypothesis.ThetaPositiveLift
import Mathlib.Analysis.Real.Pi.Bounds

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

theorem thetaPhi_summable (t : ℝ) : Summable (fun m : ℕ => thetaPhiTerm m t) := by
  have h4 := (HurwitzKernelBounds.summable_f_nat 4 1 (Real.exp_pos (4 * t))).mul_left
    (2 * Real.pi ^ 2 * Real.exp (5 * t) * Real.exp (4 * t))
  have h2 := (HurwitzKernelBounds.summable_f_nat 2 1 (Real.exp_pos (4 * t))).mul_left
    (3 * Real.pi * Real.exp (5 * t))
  refine (h4.sub h2).congr ?_
  intro n
  simp only [thetaPhiTerm, HurwitzKernelBounds.f_nat, Nat.cast_add, Nat.cast_one]
  ring

theorem thetaPhiTerm_positive (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < thetaPhiTerm m t := by
  have hn : (1 : ℝ) ≤ (m + 1 : ℕ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  have hn2 : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 := one_le_pow₀ hn
  have hne : 1 ≤ ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by nlinarith [mul_nonneg (sub_nonneg.mpr hn2) (sub_nonneg.mpr he)]
  have hp : 3 < 2 * Real.pi * ((m + 1 : ℕ) : ℝ) ^ 2 * Real.exp (4 * t) := by
    nlinarith [Real.pi_gt_three, mul_le_mul_of_nonneg_left hne (le_of_lt Real.pi_pos)]
  unfold thetaPhiTerm
  exact mul_pos (mul_pos (mul_pos (mul_pos Real.pi_pos (by positivity))
    (Real.exp_pos _)) (sub_pos.mpr hp)) (Real.exp_pos _)

/-- Every nonnegative coordinate has a strictly positive convergent theta sum. -/
theorem thetaPhi_positive : ThetaPhiPositive := by
  intro t ht
  exact (thetaPhi_summable t).tsum_pos
    (fun m => (thetaPhiTerm_positive m ht).le) 0 (thetaPhiTerm_positive 0 ht)

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
