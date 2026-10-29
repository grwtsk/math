-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceQuadraticHorizontalBound.Variantc63cb401f30d0def14ab53e40cd959fab02c7c178932225f62b928c3804c542d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c63cb401f30d0def14ab53e40cd959fab02c7c178932225f62b928c3804c542d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceQuadraticHorizontalBound.Variantc63cb401f30d0def14ab53e40cd959fab02c7c178932225f62b928c3804c542d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c63cb401f30d0def14ab53e40cd959fab02c7c178932225f62b928c3804c542d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-filter-global/SourceFilterHorizontalRatio-before-style.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpHorizontal
import FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpAdapter

/-! Actual source-filter horizontal ratio, with its prescribed polynomial factors. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceQuadraticHorizontalBound.Variantc63cb401f30d0def14ab53e40cd959fab02c7c178932225f62b928c3804c542d

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceBumpMoments SourceBumpGlobal SourceBumpAdapter
open MobiusSourceFilterQuotient
open FormalResearch.RiemannHypothesis.SourceComparison.SourceBumpHorizontal
noncomputable section

/-- The prescribed quadratic source factor has an explicit uniform horizontal ratio bound. -/
theorem sourceQuadratic_horizontal_bound (ε t : ℝ) :
    (1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ ≤
      ‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ := by
  have h0 : ((t : ℂ) * Complex.I)^2 - 1/4 = (-(t^2 + 1/4 : ℝ) : ℂ) := by
    push_cast
    simp only [mul_pow, Complex.I_sq]
    ring
  have hr : (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re =
      ε^2 - t^2 - 1/4 := by
    simp [pow_two, Complex.mul_re, Complex.mul_im]
  have hn := (neg_le_abs (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4).re).trans
    (Complex.abs_re_le_norm (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  rw [hr] at hn
  rw [h0, norm_neg, Complex.norm_real, Real.norm_eq_abs,
    abs_of_nonneg (by positivity : 0 ≤ t^2 + (1/4 : ℝ))]
  nlinarith [mul_nonneg (sq_nonneg ε) (sq_nonneg t)]

/-- The actual normalized translated filter satisfies the denominator-free horizontal bound. -/
theorem W_horizontal_multiplicative_bound (ε t : ℝ) (hε : 0 ≤ ε)
    (hsmall : ε ≤ 1/4) :
    (1 - 4 * ε^2) * ‖W ((t : ℂ) * Complex.I)‖ ≤
      Real.exp ε * ‖W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hp := sourceQuadratic_horizontal_bound ε t
  have hb := bumpMoment_horizontal_norm_le ε t hε
  have hprod := mul_le_mul hp hb
    (norm_nonneg (bumpMoment 0 ((t : ℂ) * Complex.I)))
    (norm_nonneg (((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4))
  have hnorm (z : ℂ) : ‖W z‖ = Real.exp (-z.re) * ‖z^2 - 1/4‖ *
      ‖bumpMoment 0 z‖ / ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by
    rw [W_eq_bumpMoment]
    simp only [norm_div, norm_mul, Complex.norm_exp, Complex.neg_re]
  rw [hnorm, hnorm]
  have hre0 : ((t : ℂ) * Complex.I).re = 0 := by simp
  have hreε : ((ε : ℂ) + (t : ℂ) * Complex.I).re = ε := by simp
  rw [hre0, hreε, neg_zero, Real.exp_zero, one_mul]
  have hc : Real.exp ε * Real.exp (-ε) = 1 := by rw [← Real.exp_add]; simp
  calc
    _ = ((1 - 4 * ε^2) * ‖((t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ := by ring
    _ ≤ (‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
        ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
        ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖ :=
      div_le_div_of_nonneg_right hprod (norm_nonneg _)
    _ = (Real.exp ε * Real.exp (-ε)) *
        ((‖((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4‖ *
          ‖bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I)‖) /
          ‖(Real.sqrt (45056 / 1105 : ℝ) : ℂ)‖) := by rw [hc, one_mul]
    _ = _ := by ring

/-- The original source filter ratio is bounded uniformly in the real boundary frequency. -/
theorem W_horizontal_ratio_bound (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1/4) :
    ‖W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      Real.exp ε / (1 - 4 * ε^2) := by
  have hd : 0 < 1 - 4 * ε^2 := by nlinarith
  have hb := W_horizontal_multiplicative_bound ε t hε.le hsmall
  rw [norm_div]
  have hB : bumpMoment 0 ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    intro he
    have hr := bumpMoment_zero_re _ he
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re,
      Complex.I_re, Complex.I_im, Complex.ofReal_im, mul_zero, zero_mul,
      sub_self, add_zero] at hr
    exact hε.ne' hr
  have hq : ((ε : ℂ) + (t : ℂ) * Complex.I)^2 - 1/4 ≠ 0 := by
    intro he
    have hr := congrArg Complex.re he
    simp [pow_two, Complex.mul_re, Complex.mul_im] at hr
    nlinarith [sq_nonneg t]
  have hc : (Real.sqrt (45056 / 1105 : ℝ) : ℂ) ≠ 0 := by
    exact_mod_cast (ne_of_gt (Real.sqrt_pos.mpr (by norm_num : (0 : ℝ) < 45056 / 1105)))
  have hw : W ((ε : ℂ) + (t : ℂ) * Complex.I) ≠ 0 := by
    rw [W_eq_bumpMoment]
    exact div_ne_zero (mul_ne_zero (mul_ne_zero (Complex.exp_ne_zero _) hq) hB) hc
  have hn := norm_pos_iff.mpr hw
  apply (div_le_iff₀ hn).mpr
  rw [div_mul_eq_mul_div]
  apply (le_div_iff₀ hd).mpr
  nlinarith [hb]

/-- A single source constant bounds every admitted small shift and every boundary frequency. -/
theorem W_horizontal_uniform_bound (ε t : ℝ) (hε : 0 < ε) (hsmall : ε ≤ 1 / 4) :
    ‖W ((t : ℂ) * Complex.I) / W ((ε : ℂ) + (t : ℂ) * Complex.I)‖ ≤
      (4 / 3 : ℝ) * Real.exp (1 / 4) := by
  have hd : (3 / 4 : ℝ) ≤ 1 - 4 * ε ^ 2 := by nlinarith [sq_nonneg ε]
  have hc := div_le_div₀ (Real.exp_pos (1 / 4)).le (Real.exp_le_exp.mpr hsmall)
    (by norm_num : (0 : ℝ) < 3 / 4) hd
  exact (W_horizontal_ratio_bound ε t hε hsmall).trans (by
    convert hc using 1 <;> ring)

end
end FormalResearch.RiemannHypothesis.SourceComparison.SourceFilterHorizontalRatio
