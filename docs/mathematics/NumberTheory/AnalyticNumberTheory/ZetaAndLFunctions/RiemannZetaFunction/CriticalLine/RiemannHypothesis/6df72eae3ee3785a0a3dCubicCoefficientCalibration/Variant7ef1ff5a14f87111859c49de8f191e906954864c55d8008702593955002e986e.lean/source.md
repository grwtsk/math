# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.6df72eae3ee3785a0a3dCubicCoefficientCalibration.Variant7ef1ff5a14f87111859c49de8f191e906954864c55d8008702593955002e986e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efa44c4f2fe7de58ba3588f307c1ba6590d8e779` · SHA-256 `950281bd80b7d9dbafe393bcb74e6fc5a0e017a0b47291b765fb111f1f860165`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FourthDisplacementEnergyPolynomial.Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.FourthDisplacementEnergyPolynomial.Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/6df72eae3ee3785a0a3d-CubicCoefficientCalibration.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound

/-!
Exact scalar certificate for the actual polynomial-source cubic proposal.
The numerator below is the paper's second-derivative-square energy polynomial.
The analytic identity connecting it to the weak derivative energy, global C4
correlation, cubic cell estimate and full Omega reconstruction is not proved
here. No arithmetic upper witness follows from these scalar certificates.
AI attribution: OpenAI Codex independent mathematical challenge.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.FourthDisplacementEnergyPolynomial.Variant6df72eae3ee3785a0a3d84784e8ec9c32fcd6c6151cbd7ede5a26c19ce539bee

set_option autoImplicit false

namespace RH16IndependentChallengeNext

open FormalResearch.RiemannHypothesis.SourceDerivativeCoefficientBound

/-- Exact polynomial from the unchanged bump's paper second-derivative energy calculation. -/
noncomputable def fourthDisplacementEnergyPolynomial (theta : ℝ) : ℝ :=
  (12288 / 5005 : ℝ) + (32768 / 77 : ℝ) * theta + 32768 * theta ^ 2

/-- A sharper coefficient on the actual large-scale parameter range. -/
theorem cubic_energy_ratio_le_sixty_seven (theta : ℝ)
    (h0 : 0 ≤ theta) (h1 : theta ≤ 1 / 8281) :
    fourthDisplacementEnergyPolynomial theta / normPolynomial theta ≤ 67 := by
  have hs : theta ^ 2 ≤ (1 / 8281 : ℝ) ^ 2 := by nlinarith
  apply (div_le_iff₀ (normPolynomial_pos theta h0)).2
  unfold fourthDisplacementEnergyPolynomial normPolynomial
  nlinarith

/-- Every real scale at least 91 satisfies the refined scalar energy coefficient. -/
theorem cubic_energy_ratio_le_sixty_seven_of_scale (A : ℝ) (hA : 91 ≤ A) :
    fourthDisplacementEnergyPolynomial ((A ^ 2)⁻¹) / normPolynomial ((A ^ 2)⁻¹) ≤ 67 := by
  apply cubic_energy_ratio_le_sixty_seven
  · positivity
  · rw [inv_eq_one_div]
    apply (div_le_iff₀ (sq_pos_of_pos (by linarith : 0 < A))).2
    nlinarith

/-- Once the analytic cubic bridge is supplied, its refined error plus 260/A² costs 3/50. -/
theorem refined_cubic_calibration_budget_lt (A : ℝ) (hA : 91 ≤ A) :
    260 / A ^ 2 + 320 * (67 : ℝ) / A ^ 3 < 3 / 50 := by
  have h2 : (91 : ℝ) ^ 2 ≤ A ^ 2 := pow_le_pow_left₀ (by norm_num) hA 2
  have h3 : (91 : ℝ) ^ 3 ≤ A ^ 3 := pow_le_pow_left₀ (by norm_num) hA 3
  have b2 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 260)
    (by norm_num : (0 : ℝ) < 91 ^ 2) h2
  have b3 := div_le_div_of_nonneg_left (by norm_num : (0 : ℝ) ≤ 320 * 67)
    (by norm_num : (0 : ℝ) < 91 ^ 3) h3
  norm_num at b2 b3 ⊢
  linarith

end RH16IndependentChallengeNext
```
