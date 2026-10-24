import FormalResearch.RiemannHypothesis.Conversation.NativeOffGridPhaseCarrier
import FormalResearch.RiemannHypothesis.Conversation.ActualSixthLaplaceGrowth

/-!
# Rational uniform bounds for the literal off-grid mode

The unchanged mode has norm between three and four and pole-factor norm
above eight. For every real A>=100 the native leading magnitude is at least
(9/2)*exp(A/2)/A^9 and exceeds eight. Taylor's exact factorial lower bound
also controls the reflected exponential. The correction polynomial remains
a separate consumer. Human uniform threshold and unchanged-source direction:
grwtsk contributors. Local numerical-analytic bounds: OpenAI Codex. Upstream
pi, exponential and source-normalization declarations retain identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.NativeOffGridModeBounds
open FormalResearch.RiemannHypothesis.SourcePairing
open NativeOffGridDensity NativeOffGridPhaseCarrier ActualCorrelationEdgeProfile
noncomputable section

theorem literal_mode_norm_gt_three : 3 < ‖mode‖ := by
  have h := Complex.im_le_norm mode
  have hi : mode.im = Real.pi := by simp [mode]
  rw [hi] at h
  exact lt_of_lt_of_le Real.pi_gt_three h

theorem literal_mode_norm_lt_four : ‖mode‖ < 4 := by
  have h := Complex.sq_norm_sub_sq_im mode
  have hr : mode.re = 1 / 4 := by simp [mode]
  have hi : mode.im = Real.pi := by simp [mode]
  rw [hr, hi] at h
  have hp := Real.pi_lt_d2
  nlinarith [norm_nonneg mode, Real.pi_pos]

theorem literal_mode_pole_norm_gt_eight : 8 < ‖mode ^ 2 - (1 / 4 : ℂ)‖ := by
  have hr : (mode ^ 2 - (1 / 4 : ℂ)).re = -(3 / 16 : ℝ) - Real.pi ^ 2 := by
    norm_num [mode, pow_two, Complex.mul_re, Complex.mul_im]
    ring
  have h := (neg_le_abs (mode ^ 2 - (1 / 4 : ℂ)).re).trans
    (Complex.abs_re_le_norm (mode ^ 2 - (1 / 4 : ℂ)))
  rw [hr] at h
  nlinarith [Real.pi_gt_three, Real.pi_pos]

theorem literal_mode_magnitude_lower {A : ℝ} (hA : 100 ≤ A) :
    (9 / 2) * (Real.exp (A / 2) / A ^ 9) ≤ modeMagnitude A := by
  have hpos : 0 < A := by linarith
  have hZ := source_normalization_pos A (by linarith)
  have hZ1 := source_normalization_le_one (by linarith : 8 ≤ A)
  have hm : 0 < ‖mode‖ := by linarith [literal_mode_norm_gt_three]
  have hm4 := literal_mode_norm_lt_four.le
  have hp8 := literal_mode_pole_norm_gt_eight
  have hp64 : (64 : ℝ) ≤ ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 := by
    nlinarith [norm_nonneg (mode ^ 2 - (1 / 4 : ℂ))]
  have hm10 : ‖mode‖ ^ 10 ≤ (4 : ℝ) ^ 10 := by gcongr
  have hd : sourceNormalization A * ‖mode‖ ^ 10 ≤ (4 : ℝ) ^ 10 := by
    calc
      _ ≤ ‖mode‖ ^ 10 := by
        simpa only [one_mul] using mul_le_mul_of_nonneg_right hZ1 (pow_nonneg (norm_nonneg mode) 10)
      _ ≤ _ := hm10
  norm_num at hd
  have hcoef : (9 / 2 : ℝ) ≤ 73728 * ‖mode ^ 2 - (1 / 4 : ℂ)‖ ^ 2 /
      (sourceNormalization A * ‖mode‖ ^ 10) := by
    apply (le_div_iff₀ (by positivity : 0 < sourceNormalization A * ‖mode‖ ^ 10)).mpr
    nlinarith
  exact mul_le_mul_of_nonneg_right hcoef (by positivity)

theorem literal_exponential_rate_gt_sixteen_ninths {A : ℝ} (hA : 100 ≤ A) :
    (16 / 9 : ℝ) < Real.exp (A / 2) / A ^ 9 := by
  have hpos : 0 < A := by linarith
  have he := Real.pow_div_factorial_le_exp (x := A / 2) (by linarith) 40
  have hp31 : (100 : ℝ) ^ 31 ≤ A ^ 31 := by gcongr
  have hfac : (0 : ℝ) < Nat.factorial 40 := by norm_num
  have hlow : (16 / 9 : ℝ) < A ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) := by
    calc
      _ < (100 : ℝ) ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) := by norm_num
      _ ≤ _ := by gcongr
  have hpaid : A ^ 31 / (2 ^ 40 * (Nat.factorial 40 : ℝ)) ≤ Real.exp (A / 2) / A ^ 9 := by
    calc
      _ = ((A / 2) ^ 40 / (Nat.factorial 40 : ℝ)) / A ^ 9 := by
        field_simp [hpos.ne']
      _ ≤ _ := by gcongr
  exact hlow.trans_le hpaid

theorem literal_mode_magnitude_gt_eight {A : ℝ} (hA : 100 ≤ A) : 8 < modeMagnitude A := by
  have h := literal_mode_magnitude_lower hA
  have hr := literal_exponential_rate_gt_sixteen_ninths hA
  linarith

theorem literal_reflected_exponential_lt_one_thousand_twenty_fourth {A : ℝ} (hA : 100 ≤ A) :
    Real.exp (-A / 2) < 1 / 1024 := by
  have he := Real.pow_div_factorial_le_exp (x := A / 2) (by linarith) 4
  have hp4 : (100 : ℝ) ^ 4 ≤ A ^ 4 := by gcongr
  norm_num at he
  ring_nf at he
  have hearg : A * (1 / 2 : ℝ) = A / 2 := by ring
  rw [hearg] at he
  have hb : (1024 : ℝ) < Real.exp (A / 2) := by nlinarith
  rw [neg_div, Real.exp_neg, ← one_div]
  apply (div_lt_iff₀ (Real.exp_pos _)).mpr
  nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.NativeOffGridModeBounds
