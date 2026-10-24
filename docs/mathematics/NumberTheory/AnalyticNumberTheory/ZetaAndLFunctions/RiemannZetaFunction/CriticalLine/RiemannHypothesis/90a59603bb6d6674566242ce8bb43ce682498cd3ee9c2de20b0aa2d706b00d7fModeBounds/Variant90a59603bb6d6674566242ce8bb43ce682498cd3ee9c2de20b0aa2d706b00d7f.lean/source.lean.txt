import FormalResearch.RiemannHypothesis.ThetaPhiModes
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section
example {t : ℝ} (ht : 0 ≤ t) : 3 < thetaModeA t := by
  have he : 1 ≤ Real.exp (4 * t) := Real.one_le_exp (by positivity)
  unfold thetaModeA
  nlinarith [Real.pi_gt_three]
example (m : ℕ) {t : ℝ} (ht : 0 ≤ t) : thetaModeA t ≤ thetaModeY m t := by
  have ha : 0 ≤ thetaModeA t := by unfold thetaModeA; positivity
  have hn : (1 : ℝ) ≤ ((m + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.succ_le_succ (Nat.zero_le m)
  unfold thetaModeY
  nlinarith [mul_nonneg ha (show 0 ≤ ((m + 1 : ℕ) : ℝ)^2 - 1 by nlinarith)]
example (y : ℝ) (hy : 3 ≤ y) : |9 + 12/(2*y-3)-4*y| ≤ 9*y := by
  have hd : 0 < 2*y-3 := by linarith
  have hdiv0 : 0 ≤ 12/(2*y-3) := by positivity
  have hdiv : 12/(2*y-3) ≤ 4 := (div_le_iff₀ hd).2 (by linarith)
  rw [abs_le]
  constructor <;> linarith
example (y : ℝ) (hy : 3 ≤ y) : |-16*y-96*y/(2*y-3)^2| ≤ 27*y := by
  have hd : 0 < (2*y-3)^2 := sq_pos_of_pos (by linarith)
  have hds : 9 ≤ (2*y-3)^2 := by nlinarith
  have hdiv0 : 0 ≤ 96*y/(2*y-3)^2 := by positivity
  have hdiv : 96*y/(2*y-3)^2 ≤ 11*y := (div_le_iff₀ hd).2 (by nlinarith [mul_nonneg (show 0≤y by linarith) (show 0≤(2*y-3)^2-9 by linarith)])
  rw [abs_le]
  constructor <;> linarith
end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
