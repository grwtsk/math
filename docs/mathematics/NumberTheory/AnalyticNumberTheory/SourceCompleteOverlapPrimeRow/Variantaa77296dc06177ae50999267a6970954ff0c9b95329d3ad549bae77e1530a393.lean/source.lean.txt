-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.RetainedSpatialStrip.Variant6e0c58aa045cbd786f4dddd743e7bc061da6512752e73ea397d89178a8007193","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6e0c58aa045cbd786f4dddd743e7bc061da6512752e73ea397d89178a8007193","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.RetainedSpatialStrip.Variant6e0c58aa045cbd786f4dddd743e7bc061da6512752e73ea397d89178a8007193","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"6e0c58aa045cbd786f4dddd743e7bc061da6512752e73ea397d89178a8007193","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-root-01a11259-joint/reconstruction/row-attempt01/SourceCompleteOverlapPrimeRow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRestrictedLowTimeWork
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
Collapse the complete signed overlap/divisor-complement expression before bounding it.
The original centered diagonal, lower trace, baseline and +B(K)R(K) endpoint are
retained by the imported exact surplus identity and independently defined ledger.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.RetainedSpatialStrip.Variant6e0c58aa045cbd786f4dddd743e7bc061da6512752e73ea397d89178a8007193

set_option autoImplicit false
noncomputable section
namespace RH16CompleteOverlapPrimeRow

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourceRestrictedLowTimeWork SourceRestrictedMixedPairing SourceActualMixedWorkFubini
open SourceSamplingLedger SourceMangoldtAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateMertensAbel EstimateBetaCentering

/-- Literal retained spatial correction, with the complete signed density. -/
def retainedSpatialStrip (A : ℝ) : ℝ :=
  ∫ v in actualWorkLeftStrip A, actualMixedWorkDensity A v

/-- Independent finite correction; the main term is not defined by this equality. -/
def finiteLedgerCorrection (A : ℝ) : ℝ := betaMainLedger A + independentMainTerm A

/-- Four-jet and divisor complement collapse jointly to the actual residual row. -/
theorem complete_overlap_eq_actual_residual_row (A : ℝ) (hA : 1 ≤ A) :
    remainingOverlapBalance A =
      mertensResidual A - finiteLedgerCorrection A + retainedSpatialStrip A := by
  have hs := actual_surplus_eq_remainingOverlap_sub_strip hA
  have hr := actual_residual_decomposition A hA
  unfold finiteLedgerCorrection retainedSpatialStrip
  linarith only [hs, hr]

/-- All closed prime powers survive the complete joint reconstruction. -/
theorem complete_overlap_eq_closed_prime_row (A : ℝ) (hA : 1 ≤ A) :
    remainingOverlapBalance A =
      closedPrimeMoment A - finiteLedgerCorrection A + retainedSpatialStrip A := by
  rw [complete_overlap_eq_actual_residual_row A hA,
    mertensResidual_eq_closedPrimeMoment A hA]

/-- A single actual finite arithmetic row, rather than separate component budgets. -/
theorem complete_overlap_eq_full_mangoldt_row (A : ℝ) (hA : 1 ≤ A) :
    remainingOverlapBalance A = mangoldtLogSum (2 * A) (criticalPrimeTest A) -
      finiteLedgerCorrection A + retainedSpatialStrip A := by
  rw [complete_overlap_eq_closed_prime_row A hA,
    closedPrimeMoment_eq_mangoldtLogSum]

/-- The finite correction has its own already constructed uniform source budget. -/
theorem finiteLedgerCorrection_uniform_abs_bound :
    ∃ C_F : ℝ, 0 ≤ C_F ∧ ∀ A : ℝ, 1 ≤ A → |finiteLedgerCorrection A| ≤ C_F :=
  actual_ledger_uniform_error

end RH16CompleteOverlapPrimeRow
