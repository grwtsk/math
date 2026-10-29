-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszPrimitive.Variant8962dabceb8ca409b6686c7e24c7c6f1a89f34a359484eab63006a8701b0e435","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8962dabceb8ca409b6686c7e24c7c6f1a89f34a359484eab63006a8701b0e435","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualFixedCenteredMangoldtRieszPrimitive.Variant8962dabceb8ca409b6686c7e24c7c6f1a89f34a359484eab63006a8701b0e435","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"8962dabceb8ca409b6686c7e24c7c6f1a89f34a359484eab63006a8701b0e435","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T082211Z-1791361331794787000/SourceActualRieszFixedCenterTransfer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCriticalCenter

/-!
The authentic fixed critical center is transferred to the full real arithmetic
Riesz readout. The independently rational finite payment remains explicit and
is bounded on every real source scale. No uniform signed or area bound follows.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFixedCenteredMangoldtRieszPrimitive.Variant8962dabceb8ca409b6686c7e24c7c6f1a89f34a359484eab63006a8701b0e435

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszFixedCenterTransfer
open MeasureTheory Set
open SourcePairing SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceCorrelationCurvature
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateMertensResidual

/-- Literal real centered primitive with the independently calibrated fixed slope. -/
def actualFixedCenteredMangoldtRieszPrimitive (b t : ℝ) : ℝ :=
  actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t - b

/-- The complete fixed-center source profile has genuine finite integrability. -/
theorem actualFixedCenteredMangoldtRiesz_intervalIntegrable {A : ℝ}
    (hA : 1 ≤ A) (b : ℝ) :
    IntervalIntegrable (actualFixedCenteredMangoldtRieszPrimitive b) volume 0 (2 * A) := by
  apply ContinuousOn.intervalIntegrable
  rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
  exact ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

/-- The full signed integral keeps the exact finite payment after fixed centering. -/
theorem actualFixedCenteredMangoldtRiesz_readout {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        mertensResidual A - archimedeanMultiplier 0 / 2 -
          (actualRieszLimitingLinearCenter - actualRieszLinearCenter A) := by
  have hp : 0 < A := by linarith
  let C'' := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
  let δ := actualRieszLimitingLinearCenter - actualRieszLinearCenter A
  have hc : Continuous C'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hprofile : ContinuousOn (actualCenteredMangoldtRieszPrimitive A b) (Icc 0 (2 * A)) :=
    ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
      (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn
  have hi : IntervalIntegrable
      (fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t) volume 0 (2 * A) := by
    apply ContinuousOn.intervalIntegrable
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
    exact hc.continuousOn.mul hprofile
  have hlinear := ((continuous_id.mul hc).const_mul δ).intervalIntegrable 0 (2 * A)
  have he : (fun t => C'' t * actualFixedCenteredMangoldtRieszPrimitive b t) =
      fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t - δ * (t * C'' t) := by
    funext t
    unfold actualFixedCenteredMangoldtRieszPrimitive actualCenteredMangoldtRieszPrimitive
    dsimp only [δ]
    ring
  rw [he, intervalIntegral.integral_sub hi hlinear,
    intervalIntegral.integral_const_mul]
  have hm := (actualCorrelation_Riesz_curvature_moments hA).2
  rw [show (∫ t in 0..2 * A, t * C'' t) = 1 from hm, mul_one,
    actualCenteredMangoldtRiesz_readout hA b]

/-- One-sided source transfer retains the exact sign and the full quadratic price. -/
theorem actualFixedCenteredMangoldtRiesz_paid_bounds {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) ≤
        mertensResidual A - archimedeanMultiplier 0 / 2 ∧
      mertensResidual A - archimedeanMultiplier 0 / 2 ≤
        (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
          actualFixedCenteredMangoldtRieszPrimitive b t) + 56 / A ^ 2 := by
  have hδ := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  rw [actualFixedCenteredMangoldtRiesz_readout hA b]
  constructor <;> linarith [hδ.1,hδ.2]

/-- The actual fixed-center readout differs by this proved vanishing finite cost. -/
theorem actualFixedCenteredMangoldtRiesz_error_bound {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    |mertensResidual A - archimedeanMultiplier 0 / 2 -
      (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
        actualFixedCenteredMangoldtRieszPrimitive b t)| ≤ 56 / A ^ 2 := by
  have hδ := actualRiesz_finite_center_payment_bound (show 0 < A by linarith)
  rw [actualFixedCenteredMangoldtRiesz_readout hA b]
  have he : mertensResidual A - archimedeanMultiplier 0 / 2 -
      (mertensResidual A - archimedeanMultiplier 0 / 2 -
        (actualRieszLimitingLinearCenter - actualRieszLinearCenter A)) =
          actualRieszLimitingLinearCenter - actualRieszLinearCenter A := by ring
  rw [he,abs_of_nonneg hδ.1]
  exact hδ.2

end FormalResearch.RiemannHypothesis.SourceActualRieszFixedCenterTransfer
