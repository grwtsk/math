# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceCompleteOverlapPrimeRow.Variant4e57fed6b7f6d0f45a9b8edb940bbaaa00f2d79839a75580348b93c129483477

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8aae3d4974627c2f6b2fcd313581e923aed8b287` · SHA-256 `e847ba3c64555bced8da71cf08166bdc95b03ed775a6a37dfcedecb4c7e54f63`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.RetainedSpatialStrip.Variant6c186d607cda8b3985aefd60d18d8b6fd1b372e7f9edff29fe8d90f474690f30","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6c186d607cda8b3985aefd60d18d8b6fd1b372e7f9edff29fe8d90f474690f30","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.RetainedSpatialStrip.Variant6c186d607cda8b3985aefd60d18d8b6fd1b372e7f9edff29fe8d90f474690f30","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"6c186d607cda8b3985aefd60d18d8b6fd1b372e7f9edff29fe8d90f474690f30","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-next-cycle-20261006/root/late-owner-delta/source-captures/SourceCompleteOverlapPrimeRow.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceRestrictedLowTimeWork
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
Collapse the complete signed overlap/divisor-complement expression before bounding it.
The original centered diagonal, lower trace, baseline and +B(K)R(K) endpoint are
retained by the imported exact surplus identity and independently defined ledger.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.RetainedSpatialStrip.Variant6c186d607cda8b3985aefd60d18d8b6fd1b372e7f9edff29fe8d90f474690f30

set_option autoImplicit false
noncomputable section
namespace RH16CompleteOverlapPrimeRow

open MeasureTheory
open FormalResearch.RiemannHypothesis
open SourceRestrictedLowTimeWork SourceRestrictedMixedPairing SourceActualMixedWorkFubini
open SourceSamplingLedger SourceMangoldtAbel SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual EstimateMertensAbel EstimateBetaCentering
open EstimateBetaSourceRecombination EstimatePrimeSmoothDefect

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
  by simpa only [finiteLedgerCorrection] using actual_ledger_uniform_error

end RH16CompleteOverlapPrimeRow
```
