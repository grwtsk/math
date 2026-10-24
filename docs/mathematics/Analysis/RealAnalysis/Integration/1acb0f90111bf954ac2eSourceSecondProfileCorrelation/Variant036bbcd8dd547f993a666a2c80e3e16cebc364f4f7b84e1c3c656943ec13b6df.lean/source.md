# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.1acb0f90111bf954ac2eSourceSecondProfileCorrelation.Variant036bbcd8dd547f993a666a2c80e3e16cebc364f4f7b84e1c3c656943ec13b6df

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a6598c8a4aaefcc8b1b8d91f1edf1631b0a1b328` · SHA-256 `9769559b43f581457b19f707247d5b5d01e69da16792dbef07eb65fa274bd5cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.ActualSecondProfileMeasurable.Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.ActualSecondProfileMeasurable.Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c","mathematical_subject":"Analysis.Integration","original_sha256":"1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-refocus/selected-source-delta/1acb0f90111bf954ac2e-SourceSecondProfileCorrelation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualSecondEnergyCalibration

/-!
# Actual second-profile autocorrelation budget

AI attribution: OpenAI Codex. This is the actual almost-everywhere second
derivative profile of the unchanged normalized test. Product integrability is
proved from its square energy. Identification with the fourth correlation
derivative still requires its own analytic bridge and is not assumed here.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.ActualSecondProfileMeasurable.Variant1acb0f90111bf954ac2e5407a7c87457bc5dcb46ec6922dce98bd1e510937e4c

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation

open MeasureTheory Set
open RH16IndependentChallengeNext
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

theorem actualSecondProfile_measurable (A : ℝ) :
    Measurable (actualSecondProfile A) := by
  let theta := (A ^ 2)⁻¹
  have hc : Continuous (fun x : ℝ => theta * unitFourth x -
      BridgeNormalization.unitSecond x / 4) := by
    unfold unitFourth BridgeNormalization.unitSecond
    fun_prop
  have hu : Measurable (unitSecondEnergyProfile theta) :=
    hc.measurable.indicator measurableSet_Icc
  exact (measurable_const.mul (hu.comp (measurable_id.div_const A))).div_const _

theorem actualSecondProfile_square_integrable (A : ℝ) (hA : 0 < A) :
    Integrable (fun x => actualSecondProfile A x ^ 2) := by
  apply (actual_second_derivative_square_integrable A hA).congr
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

theorem actualSecondProfile_square_integral_eq_actual_energy (A : ℝ) (hA : 0 < A) :
    (∫ x : ℝ, actualSecondProfile A x ^ 2) =
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
  apply integral_congr_ae
  filter_upwards [actual_second_derivative_ae_eq_profile A hA] with x hx
  rw [hx]

private theorem real_product_abs_le_square_mean (x y : ℝ) :
    |x * y| ≤ (x ^ 2 + y ^ 2) / 2 := by
  apply abs_le.mpr
  constructor <;> nlinarith [sq_nonneg (x - y), sq_nonneg (x + y)]

/-- The actual discontinuous second profile has integrable translated products. -/
theorem actualSecondProfile_correlation_integrand_integrable
    (A t : ℝ) (hA : 0 < A) :
    Integrable (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) := by
  have hf := actualSecondProfile_square_integrable A hA
  have hg := hf.comp_sub_right t
  have hm : AEStronglyMeasurable
      (fun x => actualSecondProfile A x * actualSecondProfile A (x - t)) volume :=
    ((actualSecondProfile_measurable A).mul
      ((actualSecondProfile_measurable A).comp (measurable_id.sub_const t))).aestronglyMeasurable
  apply ((hf.add hg).div_const 2).mono' hm
  filter_upwards [] with x
  change ‖actualSecondProfile A x * actualSecondProfile A (x - t)‖ ≤
    (actualSecondProfile A x ^ 2 + actualSecondProfile A (x - t) ^ 2) / 2
  simpa only [Real.norm_eq_abs] using
    real_product_abs_le_square_mean (actualSecondProfile A x) (actualSecondProfile A (x - t))

def actualSecondProfileCorrelation (A t : ℝ) : ℝ :=
  ∫ x : ℝ, actualSecondProfile A x * actualSecondProfile A (x - t)

/-- Square-energy transport retains both actual convolution factors. -/
theorem actualSecondProfileCorrelation_abs_le_energy (A t : ℝ) (hA : 0 < A) :
    |actualSecondProfileCorrelation A t| ≤
      ∫ x : ℝ, (deriv (deriv (normalizedTest explicitSecondDerivative A)) x) ^ 2 := by
  have hf := actualSecondProfile_square_integrable A hA
  have hg := hf.comp_sub_right t
  calc
    _ ≤ ∫ x : ℝ, |actualSecondProfile A x * actualSecondProfile A (x - t)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x : ℝ, (actualSecondProfile A x ^ 2 + actualSecondProfile A (x - t) ^ 2) / 2 := by
      apply integral_mono (actualSecondProfile_correlation_integrand_integrable A t hA).abs
        ((hf.add hg).div_const 2)
      intro x
      exact real_product_abs_le_square_mean _ _
    _ = ∫ x : ℝ, actualSecondProfile A x ^ 2 := by
      have hshift : (∫ x : ℝ, actualSecondProfile A (x - t) ^ 2) =
          ∫ x : ℝ, actualSecondProfile A x ^ 2 :=
        integral_sub_right_eq_self (fun x : ℝ => actualSecondProfile A x ^ 2) t
      rw [integral_div, integral_add hf hg, hshift]
      ring
    _ = _ := actualSecondProfile_square_integral_eq_actual_energy A hA

theorem actualSecondProfileCorrelation_abs_le_sixty_seven
    (A t : ℝ) (hA : 91 ≤ A) :
    |actualSecondProfileCorrelation A t| ≤ 67 / A ^ 4 :=
  (actualSecondProfileCorrelation_abs_le_energy A t (by linarith)).trans
    (actual_second_derivative_square_integral_le_sixty_seven A hA)

end
end FormalResearch.RiemannHypothesis.SourceSecondProfileCorrelation
```
