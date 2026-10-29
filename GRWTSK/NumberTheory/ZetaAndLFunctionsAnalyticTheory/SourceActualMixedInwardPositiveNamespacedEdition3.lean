-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InverseSixNorm.Variant6b198be132de150253752c820740e2c029c3699eeb53231e47382be17d4ff7a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b198be132de150253752c820740e2c029c3699eeb53231e47382be17d4ff7a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InverseSixNorm.Variant6b198be132de150253752c820740e2c029c3699eeb53231e47382be17d4ff7a0","mathematical_subject":"Foundations.Unclassified","original_sha256":"6b198be132de150253752c820740e2c029c3699eeb53231e47382be17d4ff7a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/root-formal/source-actual-mixed-inward-positive/attempt06/SourceActualMixedInwardPositive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEndpointRecovery

/-! Actual invariant mixed plus inward endpoint positivity.
Direction grwtsk contributors; native construction Codex root.
Exact source recovery is imported; no ordinate or RH witness is assumed. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.InverseSixNorm.Variant6b198be132de150253752c820740e2c029c3699eeb53231e47382be17d4ff7a0

set_option autoImplicit false
noncomputable section
namespace RH16ActualMixedInwardPositive
open RH16ActualEndpointRecovery

private theorem inverse_six_norm (z : ℂ) :
    ‖-(z⁻¹ ^ 6)‖ = 1 / (Complex.normSq z) ^ 3 := by
  rw [norm_neg, norm_pow, norm_inv]
  have hp : ‖z‖ ^ 6 = (Complex.normSq z) ^ 3 := by
    rw [show (6 : ℕ) = 2 * 3 by norm_num, pow_mul, Complex.sq_norm]
  rw [inv_pow, hp]
  simp only [one_div]

/-- The actual source inverse-sixth direction stays in a uniform negative real sector. -/
private theorem inverse_six_real_sector (z : ℂ) (hr : |z.re| ≤ 1 / 2)
    (hi : 12 ≤ |z.im|) : (31 / 32 : ℝ) * ‖-(z⁻¹ ^ 6)‖ ≤ (-(z⁻¹ ^ 6)).re := by
  have hr2 : z.re ^ 2 ≤ 1 / 4 := by nlinarith [sq_abs z.re, abs_nonneg z.re]
  have hi2 : 144 ≤ z.im ^ 2 := by nlinarith [sq_abs z.im]
  have hit : 0 < z.im ^ 2 := by linarith
  have hiz : z.im ≠ 0 := by intro h; norm_num [h] at hi
  have hn : 0 < Complex.normSq z := by
    rw [Complex.normSq_apply]
    nlinarith [sq_nonneg z.re]
  let x : ℝ := z.re ^ 2 / z.im ^ 2
  have hx0 : 0 ≤ x := by positivity
  have hx : x ≤ 1 / 576 := by
    dsimp [x]
    apply (div_le_iff₀ hit).mpr
    nlinarith
  have hx3 : x ^ 3 ≤ (1 / 576 : ℝ) ^ 3 := pow_le_pow_left₀ hx0 hx 3
  have hp : (31 / 32 : ℝ) * (1 + x) ^ 3 ≤
      1 - 15 * x + 15 * x ^ 2 - x ^ 3 := by
    nlinarith only [hx, hx3, sq_nonneg x]
  have hnn : Complex.normSq z = z.im ^ 2 * (1 + x) := by
    dsimp [x]
    rw [Complex.normSq_apply]
    field_simp
    ring
  have hre : (-(z⁻¹ ^ 6)).re =
      (z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6) /
        (Complex.normSq z) ^ 6 := by
    simp only [Complex.neg_re, pow_succ, pow_zero, Complex.mul_re, Complex.mul_im,
      Complex.one_re, Complex.one_im, Complex.inv_re, Complex.inv_im]
    field_simp
    ring
  have hnum : (31 / 32 : ℝ) * (Complex.normSq z) ^ 3 ≤
      z.im ^ 6 - 15 * z.re ^ 2 * z.im ^ 4 + 15 * z.re ^ 4 * z.im ^ 2 - z.re ^ 6 := by
    have him6 : 0 ≤ z.im ^ 6 := by positivity
    have h := mul_le_mul_of_nonneg_left hp him6
    rw [hnn]
    dsimp [x] at h ⊢
    field_simp [hiz] at h ⊢
    have cancel (v : ℝ) : z.im * v / z.im = v := mul_div_cancel_left₀ v hiz
    simp only [mul_assoc, cancel] at h
    nlinarith only [h]
  rw [inverse_six_norm, hre]
  calc
    (31 / 32 : ℝ) * (1 / (Complex.normSq z) ^ 3) =
        ((31 / 32 : ℝ) * (Complex.normSq z) ^ 3) / (Complex.normSq z) ^ 6 := by
      field_simp
    _ ≤ _ := div_le_div_of_nonneg_right hnum (pow_nonneg hn.le 6)

private theorem inverse_source_radius {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) : ‖((A : ℂ) * z)⁻¹‖ ≤ 1 / 1092 := by
  have hn : 12 ≤ ‖z‖ := hi.trans (Complex.abs_im_le_norm z)
  rw [norm_inv, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by linarith : 0 ≤ A)]
  change 1 / (A * ‖z‖) ≤ 1 / 1092
  apply one_div_le_one_div_of_le (by norm_num : (0 : ℝ) < 1092)
  nlinarith

private theorem endpoint_minus_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointMinus w‖ ≤ 101 / 100 := by
  have h1 := norm_add_le (1 + 10 / w + 45 / w ^ 2 + 105 / w ^ 3) (105 / w ^ 4 : ℂ)
  have h2 := norm_add_le (1 + 10 / w + 45 / w ^ 2) (105 / w ^ 3 : ℂ)
  have h3 := norm_add_le (1 + 10 / w) (45 / w ^ 2 : ℂ)
  have h4 := norm_add_le (1 : ℂ) (10 / w)
  simp only [div_eq_mul_inv, ← inv_pow, norm_mul, norm_pow] at h1 h2 h3 h4
  norm_num only [norm_one, Complex.norm_ofNat] at h1 h2 h3 h4
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow3 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 3
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  unfold endpointMinus
  simp only [div_eq_mul_inv, ← inv_pow]
  nlinarith only [h1, h2, h3, h4, hw, hpow2, hpow3, hpow4]

private theorem endpoint_product_small (w : ℂ) (hw : ‖w⁻¹‖ ≤ 1 / 1092) :
    ‖endpointPlus w * endpointMinus w - 1‖ ≤ 1 / 100000 := by
  rw [endpoint_product]
  have hid : (1 - 10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 : ℂ) - 1 =
      -10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6 + 11025 / w ^ 8 := by ring
  rw [hid]
  have h1 := norm_add_le (-10 / w ^ 2 + 135 / w ^ 4 - 1575 / w ^ 6) (11025 / w ^ 8 : ℂ)
  have h2 := norm_sub_le (-10 / w ^ 2 + 135 / w ^ 4) (1575 / w ^ 6 : ℂ)
  have h3 := norm_add_le (-10 / w ^ 2 : ℂ) (135 / w ^ 4)
  simp only [div_eq_mul_inv, ← inv_pow, norm_mul, norm_pow] at h1 h2 h3
  norm_num only [norm_neg, Complex.norm_ofNat, norm_mul] at h1 h2 h3
  have hpow2 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 2
  have hpow4 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 4
  have hpow6 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 6
  have hpow8 := pow_le_pow_left₀ (norm_nonneg w⁻¹) hw 8
  simp only [div_eq_mul_inv, ← inv_pow]
  nlinarith only [h1, h2, h3, hpow2, hpow4, hpow6, hpow8]

private theorem lower_factor_small (z : ℂ) (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2) : ℂ) - 1‖ ≤ 1 / 500 := by
  have hn : 12 ≤ ‖z‖ := hi.trans (Complex.abs_im_le_norm z)
  have hnpos : 0 < ‖z‖ := by linarith
  have heq : (1 - 1 / (4 * z ^ 2) : ℂ) - 1 = -(1 / (4 * z ^ 2)) := by ring
  rw [heq, norm_neg, norm_div, norm_mul, norm_pow]
  norm_num only [norm_one, Complex.norm_ofNat]
  apply (div_le_iff₀ (by positivity : 0 < 4 * ‖z‖ ^ 2)).mpr
  nlinarith

private theorem lower_factor_norm (z : ℂ) (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2) : ℂ)‖ ≤ 501 / 500 := by
  have h := norm_add_le ((1 - 1 / (4 * z ^ 2) : ℂ) - 1) (1 : ℂ)
  have hs := lower_factor_small z hi
  rw [sub_add_cancel] at h
  norm_num only [norm_one] at h
  linarith

private theorem combined_factor_small {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (hi : 12 ≤ |z.im|) :
    ‖(1 - 1 / (4 * z ^ 2)) ^ 2 * endpointPlus ((A : ℂ) * z) *
      endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200 := by
  let L : ℂ := 1 - 1 / (4 * z ^ 2)
  let P : ℂ := endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z)
  have hl := lower_factor_small z hi
  have hln := lower_factor_norm z hi
  have hp := endpoint_product_small ((A : ℂ) * z) (inverse_source_radius hA z hi)
  have hid : L ^ 2 * P - 1 = (L - 1) * (L - 1) + 2 * (L - 1) + L ^ 2 * (P - 1) := by ring
  have h1 := norm_add_le ((L - 1) * (L - 1) + 2 * (L - 1)) (L ^ 2 * (P - 1))
  have h2 := norm_add_le ((L - 1) * (L - 1)) (2 * (L - 1))
  simp only [norm_mul, norm_pow] at h1 h2
  norm_num at h1 h2
  change ‖L - 1‖ ≤ 1 / 500 at hl
  change ‖L‖ ≤ 501 / 500 at hln
  change ‖P - 1‖ ≤ 1 / 100000 at hp
  have hs : ‖L - 1‖ * ‖L - 1‖ ≤ (1 / 500 : ℝ) ^ 2 := by nlinarith [norm_nonneg (L - 1)]
  have hls : ‖L‖ ^ 2 ≤ (501 / 500 : ℝ) ^ 2 := pow_le_pow_left₀ (norm_nonneg L) hln 2
  have hps : ‖L‖ ^ 2 * ‖P - 1‖ ≤ (501 / 500 : ℝ) ^ 2 / 100000 := by
    calc
      _ ≤ (501 / 500 : ℝ) ^ 2 * ‖P - 1‖ := mul_le_mul_of_nonneg_right hls (norm_nonneg _)
      _ ≤ _ := by nlinarith only [hp]
  change ‖L ^ 2 * endpointPlus ((A : ℂ) * z) * endpointMinus ((A : ℂ) * z) - 1‖ ≤ 1 / 200
  rw [mul_assoc]
  change ‖L ^ 2 * P - 1‖ ≤ 1 / 200
  rw [hid]
  nlinarith only [h1, h2, hs, hl, hps]

end RH16ActualMixedInwardPositive
end
