-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareMomentTailMainError.Variant67127ab00ee1c837b4d0683e806b8b7c196d1c86457384b614e7f99fcf9b9ff8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67127ab00ee1c837b4d0683e806b8b7c196d1c86457384b614e7f99fcf9b9ff8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimeSquareMomentTailMainError.Variant67127ab00ee1c837b4d0683e806b8b7c196d1c86457384b614e7f99fcf9b9ff8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"67127ab00ee1c837b4d0683e806b8b7c196d1c86457384b614e7f99fcf9b9ff8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-sharp-prime-square/author-evidence/author-replay/SourceSharpPrimeSquareConsumer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceCutoffOneSharpTail
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm

/-! Apply the sharper zero-endpoint Abel cost to the actual prime-square sector.
Direction and conceptual origin: grwtsk contributors.
Exact source comparison and formalization: OpenAI Codex assistance.
The original square main identity is established, not new mathematical credit. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareMomentTailMainError.Variant67127ab00ee1c837b4d0683e806b8b7c196d1c86457384b614e7f99fcf9b9ff8

set_option autoImplicit false
noncomputable section
namespace RH16SharpPrimeSquareConsumer
open RH16CutoffOneSharpTail RH16ExactTailEnergy
open FormalResearch.RiemannHypothesis
open SourceCutoffOneLedger SourcePrimeSquareMainTerm SourceDiagonalMainTerm

theorem primeSquareMoment_tail_main_error {Q A : ℝ} (hQ : 1 ≤ Q) (hQA : Q ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| ≤
      2 * (Real.log 4 + 4) * Real.sqrt (tailEnergyCoefficient Q) := by
  have he := cutoffOnePrimeDiagonal_tail_error hQ hQA
  rw [cutoffOnePrimeDiagonal_eq_window A (hQ.trans hQA)] at he
  rw [primeSquareMoment_eq_primeLogWindow]
  have hid : -WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) +
      diagonalMainCoefficient A * A =
        -(WeightedPrimeAbel.primeLogWindow 0 A (SourceDiagonalPrimeAbel.diagonalCorrelation A) -
          diagonalMainCoefficient A * A) := by ring
  rw [hid, abs_neg] at he
  exact he

/-- Explicit all-real square-sector cost, before its separate physical anchor traces. -/
theorem primeSquareMoment_ninety_one_error_lt {A : ℝ} (hA : 91 ≤ A) :
    |primeSquareMoment A - diagonalMainCoefficient A * A| < 49 / 2 := by
  have he := primeSquareMoment_tail_main_error (Q := 91) (by norm_num) hA
  have hn := cutoffOneSharpDiagonalCost_ninety_one_lt_26
  unfold cutoffOneSharpDiagonalCost at hn
  linarith

end RH16SharpPrimeSquareConsumer
