-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.PoleNormJointStripLe.Variant5e81bb919194f84229a9d57030c79ee1f071e154cc6159cfd47fd9d4066430e4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e81bb919194f84229a9d57030c79ee1f071e154cc6159cfd47fd9d4066430e4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.PoleNormJointStripLe.Variant5e81bb919194f84229a9d57030c79ee1f071e154cc6159cfd47fd9d4066430e4","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"5e81bb919194f84229a9d57030c79ee1f071e154cc6159cfd47fd9d4066430e4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-mellin-sharp/attempt07/SourceActualSharpZeroTail.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualZeroTailBudget
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

/-! Sharpen the omitted actual zero-tail source coefficient. The finite head
retains its ordinary complex square and independent signed lower-cap obligation.
Direction and conceptual origin: grwtsk contributors.
Source comparison and native construction: OpenAI Codex mathematical coordinator. -/

namespace GRWTSK.Analysis.SpecialFunctions.PoleNormJointStripLe.Variant5e81bb919194f84229a9d57030c79ee1f071e154cc6159cfd47fd9d4066430e4

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

/-- The actual ordinary spectral weight has the sharper complete-strip coefficient. -/
theorem actualInitialPrimeMellin_sharp_strip_norm_le (A : ℝ) (s : ℂ) (hA : 91 ≤ A)
    (hs : 0 ≤ s.re ∧ s.re ≤ 1) (ht : 4 ≤ |s.im|) :
    ‖actualInitialPrimeMellin A s‖ ≤
      4500000 * Real.exp A / (A ^ 9 * |s.im| ^ 6) := by
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have htpos : 0 < |s.im| := by linarith
  have hZ := source_normalization_pos A hA1
  have hZl := actualBumpNormalization_lower A hA1
  let e : ℝ := (6 : ℝ) ^ 6 / 91 ^ 6
  let k : ℝ := 395 ^ 2 * (1 + e) ^ 2 * (17 / 16)
  have he := exp_neg_large_le hA
  have hpair : Real.exp (A / 2) + Real.exp (-A / 2) =
      (1 + Real.exp (-A)) * Real.exp (A / 2) := by
    have hprod : Real.exp (-A) * Real.exp (A / 2) = Real.exp (-A / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [add_mul, one_mul, hprod]
  have hb := actual_bump_strip_high_norm_le A s hA hs ht
  rw [hpair] at hb
  have hb' : ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ≤
      395 * (1 + e) * Real.exp (A / 2) / (A ^ 5 * |s.im| ^ 5) := by
    apply hb.trans
    apply div_le_div_of_nonneg_right _ (by positivity)
    dsimp only [e]
    have hsum : 1 + Real.exp (-A) ≤ 1 + (6 : ℝ) ^ 6 / 91 ^ 6 := by linarith
    have h := mul_le_mul_of_nonneg_left hsum
      (by norm_num : (0 : ℝ) ≤ 395)
    simpa only [mul_assoc] using
      mul_le_mul_of_nonneg_right h (Real.exp_pos (A / 2)).le
  have he2 : Real.exp (A / 2) ^ 2 = Real.exp A := by
    rw [← Real.exp_nat_mul]
    congr 1
    ring
  have hb2 := pow_le_pow_left₀
    (norm_nonneg (bumpLaplace ((A : ℂ) * (s - 1 / 2)))) hb' 2
  have hb2' : ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 ≤
      395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10) := by
    simpa only [div_pow, mul_pow, he2, ← pow_mul] using hb2
  have ht2 : 16 ≤ s.im ^ 2 := by
    have h := pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 4) ht 2
    nlinarith [sq_abs s.im]
  have hfour : |s.im| ^ 4 = s.im ^ 4 := by
    calc
      _ = (|s.im| ^ 2) ^ 2 := by ring
      _ = (s.im ^ 2) ^ 2 := by rw [sq_abs]
      _ = _ := by ring
  have hpole : ‖s‖ ^ 2 * ‖s - 1‖ ^ 2 ≤ (17 / 16 : ℝ) * |s.im| ^ 4 := by
    have h := pole_norm_joint_strip_le s hs (by linarith : 1 ≤ |s.im|)
    have hp := mul_nonneg (sq_nonneg s.im) (sub_nonneg.mpr ht2)
    rw [hfour]
    nlinarith only [h, hp]
  have hn : ‖actualInitialPrimeMellin A s‖ =
      (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        ‖bumpLaplace ((A : ℂ) * (s - 1 / 2))‖ ^ 2 := by
    rw [actualInitialPrimeMellin_eq_bumpMellinWeight hA1]
    unfold bumpMellinWeight
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs]
    rw [abs_of_nonneg (by positivity : 0 ≤ A / sourceNormalization A)]
    ring
  have hk : k ≤ 4500000 * (4096 / 109395 : ℝ) := by norm_num [k, e]
  have hcoeff : k / sourceNormalization A ≤ 4500000 := by
    apply (div_le_iff₀ hZ).mpr
    exact hk.trans (mul_le_mul_of_nonneg_left hZl (by norm_num))
  rw [hn]
  calc
    _ ≤ (A / sourceNormalization A) * (‖s‖ ^ 2 * ‖s - 1‖ ^ 2) *
        (395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10)) :=
      mul_le_mul_of_nonneg_left hb2' (by positivity)
    _ ≤ (A / sourceNormalization A) * ((17 / 16 : ℝ) * |s.im| ^ 4) *
        (395 ^ 2 * (1 + e) ^ 2 * Real.exp A / (A ^ 10 * |s.im| ^ 10)) := by
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      exact mul_le_mul_of_nonneg_left hpole (by positivity)
    _ = (k / sourceNormalization A) * (Real.exp A / (A ^ 9 * |s.im| ^ 6)) := by
      dsimp [k]
      field_simp
    _ ≤ 4500000 * (Real.exp A / (A ^ 9 * |s.im| ^ 6)) :=
      mul_le_mul_of_nonneg_right hcoeff (by positivity)
    _ = _ := by ring

end RH16ActualSharpZeroTail
