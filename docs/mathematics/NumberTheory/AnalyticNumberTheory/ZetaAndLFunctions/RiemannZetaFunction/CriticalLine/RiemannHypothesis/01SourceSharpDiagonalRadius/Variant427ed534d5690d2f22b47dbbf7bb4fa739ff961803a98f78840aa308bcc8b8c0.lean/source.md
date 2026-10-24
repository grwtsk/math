# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.01SourceSharpDiagonalRadius.Variant427ed534d5690d2f22b47dbbf7bb4fa739ff961803a98f78840aa308bcc8b8c0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33d520b444ed8227bb719f83f6b7d1badd19187a` · SHA-256 `444e26f1e643e5b2d23711248088e004b79ad85a6d4cd84b6ebca483ed672eb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharpDiagonalCostNinetyOneLtThirty.Variant820da6f312ab61e10d0e8dfa855417c3669b626c9b651ab3d4899b9ac8b3863c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"820da6f312ab61e10d0e8dfa855417c3669b626c9b651ab3d4899b9ac8b3863c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SharpDiagonalCostNinetyOneLtThirty.Variant820da6f312ab61e10d0e8dfa855417c3669b626c9b651ab3d4899b9ac8b3863c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"820da6f312ab61e10d0e8dfa855417c3669b626c9b651ab3d4899b9ac8b3863c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/scaled-whole-plain-energy/source-copies/01-SourceSharpDiagonalRadius.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceSharpDiagonalLedgerConsumer

/-! Radius specialization of the actual sharp physical-diagonal source budget.
Research direction and conceptual origin: grwtsk contributors.
Numerical source consumer construction and formalization: OpenAI Codex assistance.
The logarithm bounds are reused from Mathlib, not new elementary results. -/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SharpDiagonalCostNinetyOneLtThirty.Variant820da6f312ab61e10d0e8dfa855417c3669b626c9b651ab3d4899b9ac8b3863c

set_option autoImplicit false
noncomputable section
namespace RH16SharpDiagonalRadius
open RH16ExactTailEnergy RH16ProperPowerCell RH16SharpDiagonalLedgerConsumer
open RH16ExactOverlapSamplingConsumer
open FormalResearch.RiemannHypothesis SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanTranslationGate EstimateVaughanSource

theorem sharpDiagonalCost_ninety_one_lt_thirty : sharpDiagonalCost 91 < 30 := by
  have hlog2 : Real.log 2 < (7 / 10 : ℝ) := by
    linarith [Real.log_two_lt_d9]
  have hlog4 : Real.log 4 + 4 < (27 / 5 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith
  have hlog128 := Real.log_pow (2 : ℝ) 7
  norm_num at hlog128
  have hlog91 : Real.log 91 < (5 : ℝ) := by
    have hm := Real.log_lt_log (by norm_num : (0 : ℝ) < 91)
      (by norm_num : (91 : ℝ) < 128)
    linarith
  have hlog8281 : Real.log 8281 < (10 : ℝ) := by
    have hp := Real.log_pow (91 : ℝ) 2
    norm_num at hp
    linarith
  have hδ := tailEnergyCoefficient_ninety_one_lt_five
  have hs : Real.sqrt (tailEnergyCoefficient 91) < (56 / 25 : ℝ) := by
    apply (Real.sqrt_lt' (by norm_num : (0 : ℝ) < 56 / 25)).mpr
    exact hδ.trans (by norm_num)
  have hprime : (Real.log 4 + 4) * (1 + 2 * Real.sqrt (tailEnergyCoefficient 91)) <
      (3699 / 125 : ℝ) := by
    calc
      _ ≤ (27 / 5) * (1 + 2 * Real.sqrt (tailEnergyCoefficient 91)) :=
        mul_le_mul_of_nonneg_right hlog4.le (by positivity)
      _ < (27 / 5) * (1 + 2 * (56 / 25)) :=
        mul_lt_mul_of_pos_left (by linarith) (by norm_num)
      _ = _ := by norm_num
  have hcube : Real.log 91 ^ 3 ≤ (125 : ℝ) := by
    calc
      _ ≤ (5 : ℝ) ^ 3 := pow_le_pow_left₀ (Real.log_nonneg (by norm_num)) hlog91.le 3
      _ = _ := by norm_num
  have hshort : 16 * tailEnergyCoefficient 91 * Real.log 91 ^ 3 / (3 * (91 : ℝ) ^ 2) ≤
      (10000 / 24843 : ℝ) := by
    have hm := mul_le_mul hδ.le hcube (by positivity : 0 ≤ Real.log 91 ^ 3)
      (by norm_num : (0 : ℝ) ≤ 5)
    nlinarith
  have hproper : powerTailBudget (⌊(91 : ℝ) ^ 2⌋₊ : ℝ) ≤
      (182183 / 137149922 : ℝ) := by
    norm_num [powerTailBudget]
    linarith
  unfold sharpDiagonalCost
  linarith

theorem actual_diagonal_error_ninety_one (A : ℝ) (hA : 91 ≤ A) :
    |typeTwoDiagonal A + diagonalMainCoefficient A * A -
      Real.log (vaughanCutoff A : ℝ)| ≤ 30 :=
  (actual_diagonal_error_tail 91 A (by norm_num) hA).trans
    sharpDiagonalCost_ninety_one_lt_thirty.le

/-- A simple display cap for the actual complete simultaneous source ledger cost. -/
theorem exactSamplingLedgerCost_ninety_one_lt_1729 :
    exactSamplingLedgerCost (sharpDiagonalCost 91) 91 < 1729 := by
  have hδ : tailEnergyCoefficient 91 < (2449 / 500 : ℝ) := by
    rw [tailEnergyCoefficient_ninety_one]
    norm_num
  have hC : Real.log 4 + 4 < (6733 / 1250 : ℝ) := by
    have hp := Real.log_pow (2 : ℝ) 2
    norm_num at hp
    linarith [Real.log_two_lt_d9]
  have hplain : 64 * (Real.log 4 + 4) * tailEnergyCoefficient 91 ≤
      (64 : ℝ) * (6733 / 1250) * (2449 / 500) := by
    have hm := mul_le_mul hC.le hδ.le (tailEnergyCoefficient_pos 91).le
      (by norm_num : (0 : ℝ) ≤ 6733 / 1250)
    nlinarith
  have hlog : 192 * tailEnergyCoefficient 91 / 91 ≤
      (192 : ℝ) * (2449 / 500) / 91 := by
    nlinarith
  have hcost := sharpDiagonalCost_ninety_one_lt_thirty
  unfold exactSamplingLedgerCost
  linarith

end RH16SharpDiagonalRadius
```
