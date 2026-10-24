# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceCompleteOverlapPrimeRow.Variant4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4cb3fcece143fb72b538d8d2eb4b038aa3ac816` · SHA-256 `4640879b41406a0f294d1f0321ed3bd27f9bc34747d8b54d47c796afbdc17ae5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceRestrictedLowTimeWork
import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
Collapse the complete signed overlap/divisor-complement expression before bounding it.
The original centered diagonal, lower trace, baseline and +B(K)R(K) endpoint are
retained by the imported exact surplus identity and independently defined ledger.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal construction and focused replay: OpenAI Codex assistance.
-/

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
