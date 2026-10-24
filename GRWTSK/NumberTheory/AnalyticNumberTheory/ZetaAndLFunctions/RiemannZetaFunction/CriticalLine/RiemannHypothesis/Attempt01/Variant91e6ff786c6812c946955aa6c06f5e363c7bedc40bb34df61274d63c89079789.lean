-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPreEdgeMovingWork.Variantcc4c438f99b15e7ce24331766ab288c9c169e13ca7fd9af396a23f82da38b83d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cc4c438f99b15e7ce24331766ab288c9c169e13ca7fd9af396a23f82da38b83d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualPreEdgeMovingWork.Variantcc4c438f99b15e7ce24331766ab288c9c169e13ca7fd9af396a23f82da38b83d","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"cc4c438f99b15e7ce24331766ab288c9c169e13ca7fd9af396a23f82da38b83d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-moving-edge-assembly/attempt01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualCriticalEdgeSector

/-!
The actual negative upper-edge drift belongs to the complete original moving
covariance. Its full preceding interval, actual prime-power jumps and lower
seven head remain together. The growing required compensation is not a bound
on the full covariance, and no uniform signed arithmetic witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualPreEdgeMovingWork.Variantcc4c438f99b15e7ce24331766ab288c9c169e13ca7fd9af396a23f82da38b83d

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceActualMovingEdgeAssembly

open MeasureTheory Set
open scoped Interval
open SourceActualMovingCriticalIncrement SourceActualCriticalEdgeSector
open SourceActualCriticalCovarianceOrdinarySplit SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

noncomputable section

/-- The entire original moving interval preceding the true last unit of support. -/
def actualPreEdgeMovingWork (A : ℝ) : ℝ :=
  ∫ t in Real.log 7..(2 * A - 1), actualClosedMangoldtIncrement t (2 * A) *
    (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
      deriv (sourceCorrelation explicitSecondDerivative A) t / 2))

private theorem moving_density_intervalIntegrable {A l b : ℝ} (hA : 91 ≤ A)
    (hl : Real.log 7 ≤ l) (hlb : l ≤ b) (hb : b ≤ 2 * A) :
    IntervalIntegrable (fun t => actualClosedMangoldtIncrement t (2 * A) *
      (Real.exp (t / 2) * (sourceCorrelation explicitSecondDerivative A t / 4 +
        deriv (sourceCorrelation explicitSecondDerivative A) t / 2))) volume l b := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have hfull := actualMovingCriticalIncrement_intervalIntegrable (by linarith : 1 ≤ A)
  have hi := hfull.mono_set (by
    rw [uIcc_of_le (by linarith : Real.log (7 : ℝ) ≤ 2 * A), uIcc_of_le hlb]
    exact Icc_subset_Icc hl hb)
  apply hi.congr
  intro t _
  dsimp only
  ring

/-- Full original covariance equals the complete pre-edge source plus drift and jumps minus head. -/
theorem actualCriticalCovariance_eq_full_edge_assembly {A : ℝ} (hA : 91 ≤ A) :
    actualCriticalErrorCovariance A = actualPreEdgeMovingWork A +
      actualUpperEdgeContinuousDrift A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A := by
  have hlog := Real.log_le_sub_one_of_pos (by norm_num : (0 : ℝ) < 7)
  have ha : Real.log (7 : ℝ) ≤ 2 * A - 1 := by linarith
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (moving_density_intervalIntegrable hA le_rfl ha (by linarith : 2 * A - 1 ≤ 2 * A))
    (moving_density_intervalIntegrable hA ha (by linarith : 2 * A - 1 ≤ 2 * A) le_rfl)
  have hfull : actualMovingCriticalIncrementCovariance A =
      actualPreEdgeMovingWork A + actualUpperEdgeMovingWork A := by
    unfold actualMovingCriticalIncrementCovariance actualPreEdgeMovingWork
      actualUpperEdgeMovingWork
    rw [hs]
    apply intervalIntegral.integral_congr
    intro t _
    ring
  rw [actualCriticalErrorCovariance_eq_moving_increment (by linarith : 1 ≤ A), hfull,
    actualUpperEdgeMovingWork_eq_drift_add_jumps hA]
  ring

/-- The actual complete compensation exceeds the original covariance by this drift budget. -/
theorem actualFullMovingCompensation_gap_lower {A : ℝ} (hA : 91 ≤ A) :
    (200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) ≤
      actualPreEdgeMovingWork A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A - actualCriticalErrorCovariance A := by
  rw [actualCriticalCovariance_eq_full_edge_assembly hA]
  have hd := actualUpperEdgeContinuousDrift_upper hA
  linarith

/-- A lower estimate for the full covariance requires this signed actual compensation.
The entire preceding source interval remains present; no component is inferred divergent. -/
theorem actualCovariance_lower_requires_full_compensation {A K : ℝ} (hA : 91 ≤ A)
    (hK : -K ≤ actualCriticalErrorCovariance A) :
    (200 / 3 : ℝ) * Real.exp (A - 1 / 2) / (A ^ 9 * sourceNormalization A) - K ≤
      actualPreEdgeMovingWork A + actualUpperEdgePrimeJumpCompensation A -
        actualMovingCriticalHead A := by
  have hh := actualFullMovingCompensation_gap_lower hA
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualMovingEdgeAssembly
