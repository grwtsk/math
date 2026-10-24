# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationEnergy.Varianta7d5e0a74093d89f4a4207a00e832608416f0fbcf1dcc664b16d137bfc6e4cdf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `048baf162045da10967635cc0a7cb73ebb78ba87` · SHA-256 `0fae65b746801af7779d355a6bfd43616547dd9bb463d9efafb4441de940e9ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationHasDerivAtIntegral.Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceCorrelationHasDerivAtIntegral.Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8","mathematical_subject":"Analysis.Calculus","original_sha256":"95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-signed-cycle-20261006/rational/preserved-inputs/FormalResearch/RiemannHypothesis/SourceCorrelationEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceDerivativeEnergy

/-!
# A uniform first-derivative bound for the unchanged source correlation

The compact C¹ source permits differentiation of its convolution by Mathlib's checked
convolution theorem. A unit-norm Cauchy–Schwarz argument then connects the actual derivative
energy to the correlation derivative at every real separation, including support endpoints.
This is an analytic sampling bound. It does not bound an absolute arithmetic covariance or
establish the unresolved signed residual estimate.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCorrelationHasDerivAtIntegral.Variant95cb85acb70a0006256cc74b8c18fce2620f41678536c25e2e30f562cfb505f8

namespace FormalResearch.RiemannHypothesis.SourceCorrelationEnergy

open MeasureTheory Function
open scoped Convolution
open SourcePairing SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

/-- Differentiation is justified by compact C¹ convolution, rather than a formal interchange. -/
theorem sourceCorrelation_hasDerivAt_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - t)) t := by
  rw [sourceCorrelation_eq_convolution]
  have hd := (normalizedTest_hasCompactSupport A hA).hasDerivAt_convolution_left
    (ContinuousLinearMap.lsmul ℝ ℝ) (normalizedTest_contDiff A hA)
    (reflectedTest_integrable A hA).locallyIntegrable t
  simpa [convolution, neg_sub, smul_eq_mul] using hd

/-- The actual derivative is the integral with the differentiated first factor. -/
theorem sourceCorrelation_deriv_eq_integral {A : ℝ} (hA : 0 < A) (t : ℝ) :
    deriv (sourceCorrelation explicitSecondDerivative A) t =
      ∫ x : ℝ, deriv (normalizedTest explicitSecondDerivative A) x *
        normalizedTest explicitSecondDerivative A (x - t) :=
  (sourceCorrelation_hasDerivAt_integral hA t).deriv

/-- The differentiated correlation integrand is genuinely integrable. -/
theorem sourceCorrelation_deriv_integrand_integrable {A : ℝ} (hA : 0 < A) (t : ℝ) :
    Integrable (fun x : ℝ ↦ deriv (normalizedTest explicitSecondDerivative A) x *
      normalizedTest explicitSecondDerivative A (x - t)) := by
  have hc := normalizedTest_contDiff A hA
  exact ((hc.continuous_deriv (by norm_num)).mul
    (hc.continuous.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
      (normalizedTest_hasCompactSupport A hA).deriv.mul_right

private theorem integral_mul_square_le_of_unit {f g : ℝ → ℝ}
    (hf : Integrable (fun x ↦ (f x) ^ 2))
    (hg : Integrable (fun x ↦ (g x) ^ 2))
    (hm : Integrable (fun x ↦ f x * g x)) (hu : (∫ x : ℝ, (g x) ^ 2) = 1) :
    (∫ x : ℝ, f x * g x) ^ 2 ≤ ∫ x : ℝ, (f x) ^ 2 := by
  let c : ℝ := ∫ x : ℝ, f x * g x
  have hnonneg : 0 ≤ ∫ x : ℝ, (f x - c * g x) ^ 2 :=
    integral_nonneg (fun x ↦ sq_nonneg _)
  have hexpand : (fun x : ℝ ↦ (f x - c * g x) ^ 2) =
      fun x ↦ (f x) ^ 2 - (2 * c) * (f x * g x) + c ^ 2 * (g x) ^ 2 := by
    funext x
    ring
  rw [hexpand] at hnonneg
  rw [integral_add
    (f := fun x : ℝ ↦ (f x) ^ 2 - (2 * c) * (f x * g x))
    (g := fun x : ℝ ↦ c ^ 2 * (g x) ^ 2)
    (hf.sub (hm.const_mul _)) (hg.const_mul _),
    integral_sub (f := fun x : ℝ ↦ (f x) ^ 2)
      (g := fun x : ℝ ↦ (2 * c) * (f x * g x)) hf (hm.const_mul _),
    integral_const_mul, integral_const_mul, hu] at hnonneg
  dsimp [c] at hnonneg
  nlinarith

/-- The unit source norm reduces Cauchy–Schwarz to its exact derivative-square energy. -/
theorem sourceCorrelation_deriv_square_le_energy {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    (deriv (sourceCorrelation explicitSecondDerivative A) t) ^ 2 ≤
      ∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2 := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  rw [sourceCorrelation_deriv_eq_integral hpos]
  apply integral_mul_square_le_of_unit
    (actual_derivative_square_integrable hpos)
    ((normalized_square_integrable A hA).comp_sub_right t)
    (sourceCorrelation_deriv_integrand_integrable hpos t)
  rw [integral_sub_right_eq_self (fun x : ℝ ↦
    (normalizedTest explicitSecondDerivative A x) ^ 2) t]
  exact normalized_square_integral A hA

/-- The verified energy coefficient controls the correlation derivative at every separation. -/
theorem sourceCorrelation_deriv_abs_le_coefficient {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
      Real.sqrt (162826 / 7623 : ℝ) / A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  have hsq := sourceCorrelation_deriv_square_le_energy hA t
  have henergy := actual_derivative_energy_upper hA
  have hscaled := mul_le_mul_of_nonneg_left hsq (sq_nonneg A)
  apply abs_le_of_sq_le_sq ?_ (by positivity)
  rw [div_pow, Real.sq_sqrt (by norm_num : 0 ≤ (162826 / 7623 : ℝ))]
  apply (le_div_iff₀ (sq_pos_of_pos hpos)).2
  nlinarith

/-- A simple admissible variation constant for the actual polynomial source is five. -/
theorem sourceCorrelation_deriv_abs_le_five_div {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A := by
  have hpos : 0 < A := lt_of_lt_of_le (by norm_num) hA
  apply (sourceCorrelation_deriv_abs_le_coefficient hA t).trans
  apply (div_le_div_iff_of_pos_right hpos).2
  apply Real.sqrt_le_iff.mpr
  constructor
  · norm_num
  · norm_num

end FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
```
