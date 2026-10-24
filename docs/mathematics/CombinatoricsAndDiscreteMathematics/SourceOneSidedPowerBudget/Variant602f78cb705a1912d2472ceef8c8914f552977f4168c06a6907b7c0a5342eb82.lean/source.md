# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOneSidedPowerBudget.Variant602f78cb705a1912d2472ceef8c8914f552977f4168c06a6907b7c0a5342eb82

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `daf0fa222b40f5e79ab1ce42ccab25a56d01c228` · SHA-256 `2f2b3c90e49ebfc27364295374cb88c4746ca1b6c20fee89d259d6305e413a6e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SquareNegativeTailCost.Variantce4bf12753a73f363908f6a285986dc9f504216d6a9450581c504a7e94e61fa4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ce4bf12753a73f363908f6a285986dc9f504216d6a9450581c504a7e94e61fa4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SquareNegativeTailCost.Variantce4bf12753a73f363908f6a285986dc9f504216d6a9450581c504a7e94e61fa4","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"ce4bf12753a73f363908f6a285986dc9f504216d6a9450581c504a7e94e61fa4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/refocus-20261007/root-diagonal/budget-attempt01/SourceOneSidedPowerBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceOneSidedPowerDiagonal

/-!
Explicit numerical certificate for the independently derived one-sided power tail.
Infinite sum comparison and source application retain their recorded paper grade.
Direction: grwtsk contributors. Calculation and native proof: OpenAI Codex.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SquareNegativeTailCost.Variantce4bf12753a73f363908f6a285986dc9f504216d6a9450581c504a7e94e61fa4

set_option autoImplicit false
noncomputable section
namespace RH16OneSidedPowerDiagonal

def squareNegativeTailCost (Q : ℝ) : ℝ :=
  (3 * Q / 20 + 1) / (Real.exp (3 * Q / 20) - 1)

def cubicPowerTailCost (u : ℝ) : ℝ :=
  (u + 1) * (2 * Real.log u + 1) / (4 * u ^ 3)

def oneSidedPowerRadiusBudget (Q : ℝ) : ℝ :=
  squareNegativeTailCost Q + cubicPowerTailCost (⌊Q ^ 2⌋₊ : ℝ)

set_option maxHeartbeats 0 in
theorem exp_radius_square_threshold : (800000 : ℝ) < Real.exp (273 / 20) := by
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 273 / 20) 21
  norm_num [Finset.sum_range_succ] at h
  linarith

set_option maxHeartbeats 0 in
theorem log_radius_vaughan_upper : Real.log (8281 : ℝ) < 91 / 10 := by
  apply (Real.log_lt_iff_lt_exp (by norm_num : (0 : ℝ) < 8281)).mpr
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 91 / 10) 15
  norm_num [Finset.sum_range_succ] at h
  linarith

theorem oneSidedPowerRadiusBudget_ninety_one :
    oneSidedPowerRadiusBudget 91 < (23 / 1250000 : ℝ) := by
  have he := exp_radius_square_threshold
  have hl := log_radius_vaughan_upper
  have hs : squareNegativeTailCost 91 ≤ (293 / 20 : ℝ) / 799999 := by
    unfold squareNegativeTailCost
    norm_num
    exact div_le_div_of_nonneg_left (by norm_num) (by norm_num) (by linarith)
  have hc : cubicPowerTailCost 8281 ≤
      (8282 : ℝ) * (96 / 5) / (4 * 8281 ^ 3) := by
    unfold cubicPowerTailCost
    have hn : 2 * Real.log (8281 : ℝ) + 1 ≤ 96 / 5 := by linarith
    norm_num only [Nat.cast_ofNat, add_zero]
    exact div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hn (by norm_num))
      (by norm_num)
  have hb : (293 / 20 : ℝ) / 799999 + 8282 * (96 / 5) / (4 * 8281 ^ 3) <
      (23 / 1250000 : ℝ) := by norm_num
  have hsum := add_le_add hs hc
  unfold oneSidedPowerRadiusBudget
  norm_num only [show (⌊(91 : ℝ) ^ 2⌋₊ : ℝ) = 8281 by norm_num]
  exact hsum.trans_lt hb

end RH16OneSidedPowerDiagonal
```
