# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContrastResidualV1Prebytes.Variantc7f326b3ffbe511ec18927e12005196694a554e6d66efac751d6bb205285c3a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3a4440c76b142e1ce0c6780750f7b86efc9cce0` · SHA-256 `fe721a6f7d058221f3268b3cd6c46b1b9f9f74a6ae93536ca9b2a90721ba7612`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedResidualRemainder.Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PairedResidualRemainder.Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle10/contrast-residual/contrast-residual-v1-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedPrimeAverages

/-!
# Independent bounded remainder for the actual paired contrast

The remainder is specified from the continuous source half, the actual negative
phase mean, the prime-square correction and the higher-power source sector.
It is never defined from the residual. The signed correlated contrast and its
source-normalized diagonal contribution remain together; no lower witness is
constructed, and the Vaughan main term is unchanged.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedResidualRemainder.Variant1f9e98a1a8219e167f684e81a53f3a4cb52a6d81fd28fc333206fefd96de0e4b

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedContrastResidual

open SourceFirstPrimeAbel SourcePairedPrimeAverages SourceDiagonalMainTerm
open SourcePrimeSquareMainTerm SourcePrimePowerPartition
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

/-- Independently specified bounded source/arithmetic corrections, without residual fitting. -/
def pairedResidualRemainder (A : ℝ) : ℝ :=
  criticalContinuousMoment A + negativeErrorMean A +
    (primeSquareMoment A - diagonalMainCoefficient A * A) + higherPrimePowerMoment A

/-- The literal unchanged residual retains the main-subtracted two-position contrast. -/
theorem mertensResidual_eq_contrast_remainder {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A = -(pairedErrorContrast A - diagonalMainCoefficient A * A) +
      pairedResidualRemainder A := by
  rw [mertensResidual_eq_closedPrimeMoment A hA, closedPrimeMoment_eq_first_square_higher,
    firstPrimeMoment_eq_continuous_sub_work A hA, criticalSignedWork_eq_contrast_sub_mean hA]
  unfold pairedResidualRemainder
  ring

/-- All four literal correction components have an unconditional common budget.
This bounds the remainder only, not the correlated main-subtracted contrast. -/
theorem pairedResidualRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |pairedResidualRemainder A| ≤ C := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  obtain ⟨C, hC0, _, hC⟩ := primeSquareMoment_uniform_main_term_error
  refine ⟨2 + B + 11*C + higherPrimePowerBudget, ?_, ?_⟩
  · have hh := higherPrimePowerBudget_nonneg
    linarith
  · intro A hA
    have hH := criticalContinuousMoment_abs_le_two A hA
    have hM := hB A hA
    have hS := hC A hA
    have hP := higherPrimePowerMoment_abs_le A hA
    unfold pairedResidualRemainder
    calc
      _ ≤ |criticalContinuousMoment A + negativeErrorMean A +
          (primeSquareMoment A - diagonalMainCoefficient A*A)| + |higherPrimePowerMoment A| :=
        abs_add_le _ _
      _ ≤ |criticalContinuousMoment A + negativeErrorMean A| +
          |primeSquareMoment A - diagonalMainCoefficient A*A| + |higherPrimePowerMoment A| :=
        add_le_add_right (abs_add_le _ _) _
      _ ≤ |criticalContinuousMoment A| + |negativeErrorMean A| +
          |primeSquareMoment A - diagonalMainCoefficient A*A| + |higherPrimePowerMoment A| :=
        add_le_add_right (add_le_add_right (abs_add_le _ _) _) _
      _ ≤ 2 + B + 11*C + higherPrimePowerBudget := by linarith

end FormalResearch.RiemannHypothesis.SourcePairedContrastResidual
```
