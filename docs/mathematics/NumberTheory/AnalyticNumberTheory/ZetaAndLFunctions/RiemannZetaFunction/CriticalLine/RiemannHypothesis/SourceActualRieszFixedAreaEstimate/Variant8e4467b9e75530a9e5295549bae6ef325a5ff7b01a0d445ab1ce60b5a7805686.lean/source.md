# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualRieszFixedAreaEstimate.Variant8e4467b9e75530a9e5295549bae6ef325a5ff7b01a0d445ab1ce60b5a7805686

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d621905c22b9dd16608b76224fbcbae0dc155ab` · SHA-256 `586dac743ccc7f432c0a9da7ced22fe4d9ddfb0818142e760377b8ee28a2a91e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszAreaBound.Variantcae86cc747f1dc12b967c58aac9d5a88dc4b34b527b4019663432e056f2e1a30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cae86cc747f1dc12b967c58aac9d5a88dc4b34b527b4019663432e056f2e1a30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFixedCenteredMangoldtRieszAreaBound.Variantcae86cc747f1dc12b967c58aac9d5a88dc4b34b527b4019663432e056f2e1a30","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cae86cc747f1dc12b967c58aac9d5a88dc4b34b527b4019663432e056f2e1a30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T085201Z-1791363121566601000/SourceActualRieszFixedAreaEstimate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszFixedCenterTransfer

/-!
The true curvature bounds the complete fixed-centered real Riesz readout.
The finite center correction is paid explicitly. A quadratic area budget is
an optional input to the final quantitative inequality, with no witness supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszAreaBound.Variantcae86cc747f1dc12b967c58aac9d5a88dc4b34b527b4019663432e056f2e1a30

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszFixedAreaEstimate
open MeasureTheory Set
open SourcePairing SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceActualRieszFixedCenterTransfer
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateMertensResidual

/-- The actual curvature contracts the full absolute area at the authentic fixed center. -/
theorem actualFixedCenteredMangoldtRiesz_area_bound {A : ℝ} (hA : 91 ≤ A) (b : ℝ) :
    |(∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t)| ≤
        (5 / A ^ 2) * ∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t| := by
  have hA1 : 1 ≤ A := by linarith
  have hi := (actualFixedCenteredMangoldtRiesz_intervalIntegrable hA1 b).abs.const_mul
    (5 / A ^ 2)
  have hb := intervalIntegral.norm_integral_le_of_norm_le (by linarith : 0 ≤ 2 * A)
    (f := fun t => deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t)
    (g := fun t => (5 / A ^ 2) * |actualFixedCenteredMangoldtRieszPrimitive b t|)
    (Filter.Eventually.of_forall fun t _ => by
      rw [Real.norm_eq_abs, abs_mul]
      exact mul_le_mul_of_nonneg_right
        (RH16FiveCesaro.actualCorrelation_second_abs_le_five hA t) (abs_nonneg _)) hi
  rw [Real.norm_eq_abs, intervalIntegral.integral_const_mul] at hb
  exact hb

/-- The complete original residual retains the exact finite quadratic price. -/
theorem actualResidual_fixed_center_area_paid_bound {A : ℝ} (hA : 91 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2| ≤
      (5 / A ^ 2) * (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) +
        56 / A ^ 2 := by
  have hA1 : 1 ≤ A := by linarith
  have hp := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  have hu := actualFixedCenteredMangoldtRiesz_area_bound hA b
  calc
    _ = |(∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t) +
      (actualRieszLimitingLinearCenter - actualRieszLinearCenter A)| := by
        rw [actualFixedCenteredMangoldtRiesz_readout hA1 b]
        congr 1
        ring
    _ ≤ |(∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t)| +
      |actualRieszLimitingLinearCenter - actualRieszLinearCenter A| := abs_add _ _
    _ ≤ _ := by rw [abs_of_nonneg hp.1]; linarith [hu,hp.2]

/-- A supplied quadratic absolute area budget yields this one-sided actual residual bound. -/
theorem actualResidual_fixed_center_quadratic_area_bound {A M : ℝ} (hA : 91 ≤ A) (b : ℝ)
    (harea : (∫ t in 0..2 * A, |actualFixedCenteredMangoldtRieszPrimitive b t|) ≤
      M * A ^ 2) :
    mertensResidual A ≤ archimedeanMultiplier 0 / 2 + 5 * M + 56 / A ^ 2 := by
  have hb := actualResidual_fixed_center_area_paid_bound hA b
  have hA2 : 0 < A ^ 2 := by have : 0 < A := by linarith; positivity
  have hmul := mul_le_mul_of_nonneg_left harea (show 0 ≤ 5 / A ^ 2 by positivity)
  have he : (5 / A ^ 2) * (M * A ^ 2) = 5 * M := by field_simp
  rw [he] at hmul
  linarith [le_abs_self (mertensResidual A - archimedeanMultiplier 0 / 2)]

end FormalResearch.RiemannHypothesis.SourceActualRieszFixedAreaEstimate
```
