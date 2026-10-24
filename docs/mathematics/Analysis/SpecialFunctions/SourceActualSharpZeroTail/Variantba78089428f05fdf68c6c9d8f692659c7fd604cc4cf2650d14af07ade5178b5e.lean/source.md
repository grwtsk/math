# Complete source: GRWTSK.Analysis.SpecialFunctions.SourceActualSharpZeroTail.Variantba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `86a85697b4fa35e582343437570b6f2546635d2f` · SHA-256 `ba78089428f05fdf68c6c9d8f692659c7fd604cc4cf2650d14af07ade5178b5e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualZeroTailBudget
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

/-! Sharpen the omitted actual zero-tail source coefficient. The finite head
retains its ordinary complex square and independent signed lower-cap obligation.
Direction and conceptual origin: grwtsk contributors.
Source comparison and native construction: OpenAI Codex mathematical coordinator. -/
set_option autoImplicit false
noncomputable section
namespace RH16ActualSharpZeroTail
open MeasureTheory Set Zeta23
open FormalResearch.RiemannHypothesis
open SourcePairing SourceBumpLaplace SourceActualBumpVerticalBudget
open SourceActualBumpMellinLineBudget SourceActualBumpMovingHeight
open SourceActualInitialPrimeContour SourceActualPrimeBumpDictionary
open SourceActualFullZeroContour SourceActualZeroTailCount SourceActualZeroTailBudget

/-- The two source pole factors are compared jointly, retaining their strip interaction. -/
theorem pole_norm_joint_strip_le (s : ℂ) (hs : 0 ≤ s.re ∧ s.re ≤ 1)
    (ht : 1 ≤ |s.im|) : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ s.im ^ 4 + s.im ^ 2 := by
  have h1 : ‖s‖ ^ 2 = s.re ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply]
    ring
  have h2 : ‖s - 1‖ ^ 2 = (s.re - 1) ^ 2 + s.im ^ 2 := by
    simp only [Complex.sq_norm, Complex.normSq_apply, Complex.sub_re,
      Complex.sub_im, Complex.one_re, Complex.one_im, sub_zero]
    ring
  let u : ℝ := s.re * (1 - s.re)
  have hu : 0 ≤ u := mul_nonneg hs.1 (by linarith)
  have hu1 : u ≤ 1 / 4 := by
    dsimp [u]
    nlinarith [sq_nonneg (s.re - 1 / 2)]
  have ht2 : 1 ≤ s.im ^ 2 := by nlinarith [sq_abs s.im]
  have hp : 0 ≤ u * (2 * s.im ^ 2 - u) := mul_nonneg hu (by linarith)
  rw [h1, h2]
  have he : (s.re ^ 2 + s.im ^ 2) * ((s.re - 1) ^ 2 + s.im ^ 2) =
      s.im ^ 4 + s.im ^ 2 - u * (2 * s.im ^ 2 - u) := by dsimp [u]; ring
  rw [he]
  linarith

private theorem endpoint_minus_norm_le (z : ℂ) :
    ‖z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105‖ ≤
      ‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105 := by
  have h1 := norm_add_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z) (105 : ℂ)
  have h2 := norm_sub_le (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 - 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_sub_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  linarith

private theorem endpoint_plus_norm_le (z : ℂ) :
    ‖z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105‖ ≤
      ‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105 := by
  have h1 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z) (105 : ℂ)
  have h2 := norm_add_le (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2) (105 * z)
  have h3 := norm_add_le (z ^ 4 + 10 * z ^ 3) (45 * z ^ 2)
  have h4 := norm_add_le (z ^ 4) (10 * z ^ 3)
  simp only [norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num at h1 h2 h3 h4
  linarith

/-- Both reflected exponential endpoints and every polynomial jet stay in the estimate. -/
theorem actual_bump_complete_endpoint_norm_le (z : ℂ) (hz : z ≠ 0) :
    ‖bumpLaplace z‖ ≤
      384 * (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) / ‖z‖ ^ 9 := by
  rw [bump_laplace_endpoint_formula z hz, norm_mul, norm_div, norm_pow]
  norm_num
  have h := norm_sub_le
    (Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105))
    (Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105))
  simp only [norm_mul, Complex.norm_exp, Complex.neg_re] at h
  have hm := mul_le_mul_of_nonneg_left (endpoint_minus_norm_le z) (Real.exp_pos z.re).le
  have hp := mul_le_mul_of_nonneg_left (endpoint_plus_norm_le z) (Real.exp_pos (-z.re)).le
  have hi :
      ‖Complex.exp z * (z ^ 4 - 10 * z ^ 3 + 45 * z ^ 2 - 105 * z + 105) -
        Complex.exp (-z) * (z ^ 4 + 10 * z ^ 3 + 45 * z ^ 2 + 105 * z + 105)‖ ≤
      (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) := by
    nlinarith only [h, hm, hp]
  calc
    _ ≤ 384 / ‖z‖ ^ 9 * ((Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105)) :=
      mul_le_mul_of_nonneg_left hi (by positivity)
    _ = _ := by ring

/-- Every finite endpoint coefficient is retained in this positive scale. -/
def endpointScale (v : ℝ) : ℝ :=
  384 * (1 + 10 / v + 45 / v ^ 2 + 105 / v ^ 3 + 105 / v ^ 4)

theorem endpointScale_pos {v : ℝ} (hv : 0 < v) : 0 < endpointScale v := by
  unfold endpointScale
  positivity

theorem endpointScale_antitone {v w : ℝ} (hv : 0 < v) (hvw : v ≤ w) :
    endpointScale w ≤ endpointScale v := by
  have h1 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 10) hv hvw
  have h2 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 45)
    (pow_pos hv 2) (pow_le_pow_left₀ hv.le hvw 2)
  have h3 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 105)
    (pow_pos hv 3) (pow_le_pow_left₀ hv.le hvw 3)
  have h4 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 105)
    (pow_pos hv 4) (pow_le_pow_left₀ hv.le hvw 4)
  unfold endpointScale
  linarith

/-- A genuine lower height improves the entire endpoint jet train without deletion. -/
theorem actual_bump_endpoint_scale_norm_le (z : ℂ) {v : ℝ}
    (hv : 0 < v) (hz : v ≤ ‖z‖) :
    ‖bumpLaplace z‖ ≤
      (Real.exp z.re + Real.exp (-z.re)) * endpointScale v / ‖z‖ ^ 5 := by
  have hn : 0 < ‖z‖ := hv.trans_le hz
  have h := actual_bump_complete_endpoint_norm_le z (norm_pos_iff.mp hn)
  have he :
      384 * (Real.exp z.re + Real.exp (-z.re)) *
        (‖z‖ ^ 4 + 10 * ‖z‖ ^ 3 + 45 * ‖z‖ ^ 2 + 105 * ‖z‖ + 105) / ‖z‖ ^ 9 =
      (Real.exp z.re + Real.exp (-z.re)) * endpointScale ‖z‖ / ‖z‖ ^ 5 := by
    unfold endpointScale
    field_simp
  rw [he] at h
  apply h.trans
  apply div_le_div_of_nonneg_right _ (by positivity)
  exact mul_le_mul_of_nonneg_left (endpointScale_antitone hv hz) (by positivity)

/-- Reflection keeps the complete exponential pair, rather than two upper endpoints. -/
theorem exp_pair_le_of_abs_le {x y : ℝ} (hy : 0 ≤ y) (hxy : |x| ≤ y) :
    Real.exp x + Real.exp (-x) ≤ Real.exp y + Real.exp (-y) := by
  have habs : |x| ≤ |y| := by simpa only [abs_of_nonneg hy] using hxy
  have h := Real.cosh_le_cosh.mpr habs
  rw [Real.cosh_eq, Real.cosh_eq] at h
  linarith

theorem endpointScale_three_sixty_four_lt : endpointScale 364 < 395 := by
  norm_num [endpointScale]

/-- The actual strip retains all endpoint jets and its two reflected exponential traces. -/
theorem actual_bump_strip_high_norm_le (A : ℝ) (s : ℂ) (hA : 91 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 4 ≤ |s.im|) :
    ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      395 * (Real.exp (A / 2) + Real.exp (-A / 2)) / (A ^ 5 * |s.im| ^ 5) := by
  let z : ℂ := (A : ℂ) * (s - 1 / 2)
  have hzr : z.re = A * (s.re - 1 / 2) := by simp [z, Complex.mul_re]
  have hzi : z.im = A * s.im := by simp [z, Complex.mul_im]
  have hl : A * |s.im| ≤ ‖z‖ := by
    simpa only [hzi, abs_mul, abs_of_nonneg (show 0 ≤ A by linarith)] using
      Complex.abs_im_le_norm z
  have hn : 364 ≤ ‖z‖ := by nlinarith
  have hr : |z.re| ≤ A / 2 := by
    rw [hzr]
    apply abs_le.mpr
    constructor <;> nlinarith [hs.1, hs.2]
  have hb := actual_bump_endpoint_scale_norm_le z (by norm_num : (0 : ℝ) < 364) hn
  have hp := exp_pair_le_of_abs_le (by linarith : 0 ≤ A / 2) hr
  have hp' : Real.exp z.re + Real.exp (-z.re) ≤ Real.exp (A / 2) + Real.exp (-A / 2) := by
    simpa only [neg_div] using hp
  have hscl := endpointScale_three_sixty_four_lt.le
  have hf : (Real.exp z.re + Real.exp (-z.re)) * endpointScale 364 ≤
      395 * (Real.exp (A / 2) + Real.exp (-A / 2)) := by
    have h := mul_le_mul hp' hscl (endpointScale_pos (by norm_num)).le (by positivity)
    nlinarith only [h]
  have hpow : A ^ 5 * |s.im| ^ 5 ≤ ‖z‖ ^ 5 := by
    simpa only [mul_pow] using pow_le_pow_left₀ (by positivity) hl 5
  exact hb.trans (div_le_div₀ (by positivity) hf (by positivity) hpow)

/-- A real exponential lower term gives a small explicit uniform endpoint correction. -/
theorem exp_neg_large_le {A : ℝ} (hA : 91 ≤ A) :
    Real.exp (-A) ≤ (6 : ℝ) ^ 6 / 91 ^ 6 := by
  have hA0 : 0 ≤ A / 6 := by linarith
  have he : A / 6 ≤ Real.exp (A / 6) := by linarith [Real.add_one_le_exp (A / 6)]
  have hp := pow_le_pow_left₀ hA0 he 6
  have hp91 := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 91) hA 6
  have hexp : Real.exp (A / 6) ^ 6 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  rw [hexp] at hp
  have hlow : (91 : ℝ) ^ 6 / 6 ^ 6 ≤ Real.exp A := by
    rw [div_pow] at hp
    nlinarith
  rw [Real.exp_neg]
  have h := (inv_le_inv₀ (Real.exp_pos A)
    (by norm_num : (0 : ℝ) < 91 ^ 6 / 6 ^ 6)).mpr hlow
  simpa only [inv_div] using h

end RH16ActualSharpZeroTail
```
