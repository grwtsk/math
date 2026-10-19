import FormalResearch.RiemannHypothesis.ThetaPhiModes
namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
example (m : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaPhiTerm m t / thetaPhiTerm 0 t =
      ((m + 1 : ℕ) : ℝ)^2 * (2 * thetaModeA t * ((m + 1 : ℕ) : ℝ)^2 - 3) /
        (2 * thetaModeA t - 3) *
          Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ)^2 - 1)) := by
  have hA := thetaModeA_gt_three ht
  have hd : 2 * thetaModeA t - 3 ≠ 0 := by linarith
  rw [thetaPhiTerm_eq_mode, thetaPhiTerm_eq_mode]
  simp only [thetaModeY, Nat.cast_one, zero_add, one_pow, mul_one]
  have he : Real.exp (-(thetaModeA t * ((m + 1 : ℕ) : ℝ)^2)) =
      Real.exp (-thetaModeA t * (((m + 1 : ℕ) : ℝ)^2 - 1)) * Real.exp (-thetaModeA t) := by
    rw [← Real.exp_add]
    congr 1
    ring
  rw [he]
  field_simp [ne_of_gt Real.pi_pos, hd, Real.exp_ne_zero]
  <;> ring
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
