/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripCutoffTwoSource
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripLogEnclosure
import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Analysis.Complex.Trigonometric

set_option autoImplicit false

/-!
# The actual base-two phase on the height-eleven-to-twelve band

The positive-real base fixes the logarithm. The existing low-order logarithm
enclosure and upstream rational pi bounds place |Im(s)| log(2)-2*pi in
[pi/3,2*pi/3]. The cosine and signed sine bounds retain the actual phase.
A generic one-sided Hermitian comparison then replaces a two-term norm loss.
No phase sample or zeta nonvanishing premise is admitted.
SOURCE SCRIPTS: Lean elaboration and transitive axiom audit are NOT_RUN.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.Phase
open Complex
noncomputable section

lemma log_two_interval : (11/16 : ℝ) ≤ Real.log 2 ∧ Real.log 2 ≤ 25/36 := by
  have h := abs_le.mp log_two_low_order_enclosure
  constructor <;> linarith [h.1, h.2]

lemma reduced_angle_interval {t : ℝ} (hlo : 11 ≤ t) (hhi : t ≤ 12) :
    Real.pi/3 ≤ t*Real.log 2-2*Real.pi ∧
      t*Real.log 2-2*Real.pi ≤ 2*Real.pi/3 := by
  have hl := log_two_interval
  have h0 : 0 ≤ t := by linarith
  have ha := mul_le_mul_of_nonneg_left hl.1 h0
  have hb := mul_le_mul_of_nonneg_left hl.2 h0
  have hp0 := Real.pi_gt_d2
  have hp1 := Real.pi_lt_d2
  constructor <;> nlinarith

lemma sector_trig {a : ℝ} (hlo : Real.pi/3 ≤ a) (hhi : a ≤ 2*Real.pi/3) :
    -(1/2 : ℝ) ≤ Real.cos a ∧ (6/7 : ℝ) ≤ Real.sin a := by
  have hp := Real.pi_pos
  have hc : Real.cos (2*Real.pi/3) ≤ Real.cos a :=
    Real.cos_le_cos_of_nonneg_of_le_pi (by linarith) (by linarith) hhi
  have hcval : Real.cos (2*Real.pi/3) = -(1/2 : ℝ) := by
    rw [show 2*Real.pi/3 = Real.pi-Real.pi/3 by ring,
      Real.cos_pi_sub, Real.cos_pi_div_three]
  rw [hcval] at hc
  have hsin : Real.sin (Real.pi/3) ≤ Real.sin a := by
    by_cases hm : a ≤ Real.pi/2
    · exact Real.sin_le_sin_of_le_of_le_pi_div_two (by linarith) hm hlo
    · have h := Real.sin_le_sin_of_le_of_le_pi_div_two
        (x := Real.pi/3) (y := Real.pi-a)
        (by linarith) (by linarith) (by linarith)
      simpa only [Real.sin_pi_sub] using h
  have hs0 : 0 ≤ Real.sin (Real.pi/3) :=
    Real.sin_nonneg_of_nonneg_of_le_pi (by linarith) (by linarith)
  have hs2 := Real.sq_sin_pi_div_three
  refine ⟨hc, ?_⟩
  have hbase : (6/7 : ℝ) ≤ Real.sin (Real.pi/3) := by nlinarith
  exact hbase.trans hsin

lemma positive_height_trig {t : ℝ} (hlo : 11 ≤ t) (hhi : t ≤ 12) :
    -(1/2 : ℝ) ≤ Real.cos (t*Real.log 2) ∧
      (6/7 : ℝ) ≤ Real.sin (t*Real.log 2) := by
  have ha := reduced_angle_interval hlo hhi
  simpa only [Real.cos_sub_two_pi, Real.sin_sub_two_pi] using sector_trig ha.1 ha.2

/-- Oddness of sine retains the sign of height; no zero is projected to |Im(s)|. -/
lemma signed_height_trig {t : ℝ} (hlo : 11 ≤ |t|) (hhi : |t| ≤ 12) :
    -(1/2 : ℝ) ≤ Real.cos (t*Real.log 2) ∧
      (6/7 : ℝ)*|t| ≤ t*Real.sin (t*Real.log 2) := by
  have h := positive_height_trig hlo hhi
  by_cases ht : 0 ≤ t
  · simp only [abs_of_nonneg ht] at h ⊢
    refine ⟨h.1, ?_⟩
    nlinarith [mul_le_mul_of_nonneg_left h.2 ht]
  · have ht' : t ≤ 0 := le_of_lt (lt_of_not_ge ht)
    simp only [abs_of_nonpos ht', neg_mul, Real.cos_neg, Real.sin_neg] at h
    rw [abs_of_nonpos ht']
    refine ⟨h.1, ?_⟩
    nlinarith [mul_le_mul_of_nonneg_left h.2 (neg_nonneg.mpr ht')]

lemma power_re (s : ℂ) :
    (power s).re = Real.exp (-s.re*Real.log 2)*Real.cos (s.im*Real.log 2) := by
  unfold power
  rw [Complex.cpow_def_of_ne_zero (by norm_num : (2 : ℂ) ≠ 0),
    ← Complex.ofReal_log (by norm_num : (0 : ℝ) ≤ 2), Complex.exp_re]
  simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.neg_re, Complex.neg_im, zero_mul, mul_zero, sub_zero, zero_add, add_zero]
  rw [show Real.log 2 * -s.im = -(s.im*Real.log 2) by ring, Real.cos_neg]
  congr 1
  ring

lemma power_im (s : ℂ) :
    (power s).im = -Real.exp (-s.re*Real.log 2)*Real.sin (s.im*Real.log 2) := by
  unfold power
  rw [Complex.cpow_def_of_ne_zero (by norm_num : (2 : ℂ) ≠ 0),
    ← Complex.ofReal_log (by norm_num : (0 : ℝ) ≤ 2), Complex.exp_im]
  simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
    Complex.neg_re, Complex.neg_im, zero_mul, mul_zero, sub_zero, zero_add, add_zero]
  rw [show Real.log 2 * -s.im = -(s.im*Real.log 2) by ring, Real.sin_neg]
  have he : Real.log 2 * -s.re = -s.re*Real.log 2 := by ring
  rw [he]
  ring

/-- The real/imaginary cone is transported through the proved trigonometric sector. -/
lemma cone_nonneg {p q t : ℝ} (hp : 0 ≤ p) (hq : 0 ≤ q)
    (hcone : 7*p ≤ 132*q) (hlo : 11 ≤ |t|) (hhi : |t| ≤ 12) :
    0 ≤ Real.cos (t*Real.log 2)*p + t*Real.sin (t*Real.log 2)*q := by
  have ht := signed_height_trig hlo hhi
  have h1 := mul_le_mul_of_nonneg_right ht.1 hp
  have h2 := mul_le_mul_of_nonneg_right ht.2 hq
  have h3 := mul_le_mul_of_nonneg_right hlo hq
  nlinarith

/-- The factor |d| is retained; d=0 cannot be cancelled. -/
lemma projection_lower {F d : ℂ} {c : ℝ} (hd : 0 < ‖d‖)
    (h : c*‖d‖^2 ≤ (F*(starRingEnd ℂ) d).re) : c*‖d‖ ≤ ‖F‖ := by
  have hup : (F*(starRingEnd ℂ) d).re ≤ ‖F‖*‖d‖ := by
    calc
      _ ≤ ‖F*(starRingEnd ℂ) d‖ := Complex.re_le_norm _
      _ = _ := by rw [norm_mul, norm_star]
  have hp : (c*‖d‖)*‖d‖ ≤ ‖F‖*‖d‖ := by nlinarith
  exact (mul_le_mul_right hd).mp hp

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.SexticPrimitive.CutoffTwo.Phase
