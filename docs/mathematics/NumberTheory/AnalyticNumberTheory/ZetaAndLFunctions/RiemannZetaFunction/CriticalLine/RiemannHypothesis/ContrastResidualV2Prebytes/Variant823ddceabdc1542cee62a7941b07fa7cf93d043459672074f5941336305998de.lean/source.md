# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ContrastResidualV2Prebytes.Variant823ddceabdc1542cee62a7941b07fa7cf93d043459672074f5941336305998de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1f61dca06b81493f769419d10df2efc201fd0c88` · SHA-256 `c3d7045ed737b06e860573232d56596ac5a0e92d4e37b2c6d144a2142dc63353`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedResidualRemainder.Varianta4c45a2fe03205453c8ff0a863434588dd1a8ba21743a034487fbde0fa0ab010","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a4c45a2fe03205453c8ff0a863434588dd1a8ba21743a034487fbde0fa0ab010","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PairedResidualRemainder.Varianta4c45a2fe03205453c8ff0a863434588dd1a8ba21743a034487fbde0fa0ab010","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a4c45a2fe03205453c8ff0a863434588dd1a8ba21743a034487fbde0fa0ab010","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle10/contrast-residual/contrast-residual-v2-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedResidualRemainder.Varianta4c45a2fe03205453c8ff0a863434588dd1a8ba21743a034487fbde0fa0ab010

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

private theorem abs_four_sum_le (a b c d : ℝ) :
    |a+b+c+d| ≤ |a|+|b|+|c|+|d| := by
  calc
    _ ≤ |a+b+c|+|d| := abs_add_le (a+b+c) d
    _ ≤ |a+b|+|c|+|d| := add_le_add_right (abs_add_le (a+b) c) |d|
    _ ≤ |a|+|b|+|c|+|d| :=
      add_le_add_right (add_le_add_right (abs_add_le a b) |c|) |d|

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
    exact (abs_four_sum_le (criticalContinuousMoment A) (negativeErrorMean A)
      (primeSquareMoment A - diagonalMainCoefficient A*A) (higherPrimePowerMoment A)).trans
      (add_le_add (add_le_add (add_le_add hH hM) hS) hP)

end FormalResearch.RiemannHypothesis.SourcePairedContrastResidual
```
