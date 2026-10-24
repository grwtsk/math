# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOneSidedPowerBudget.Variant50686b8f8783f649df5fd3fbc12164380459f13b6b5003493987c539cbadfc94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c2c780cf50711db5a2d71686b91fcc9504a7ebb9` · SHA-256 `8f1fb9b0d528b1575d32751951800cc2a70ff50f0910458a90f25fa3b9d0e0c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SquareNegativeTailCost.Variant125ef974f5293ed84e0c6eb9607c207dbe2d4bf5577655ac83adb784bf96daab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"125ef974f5293ed84e0c6eb9607c207dbe2d4bf5577655ac83adb784bf96daab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SquareNegativeTailCost.Variant125ef974f5293ed84e0c6eb9607c207dbe2d4bf5577655ac83adb784bf96daab","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"125ef974f5293ed84e0c6eb9607c207dbe2d4bf5577655ac83adb784bf96daab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-tandem-01a1149a/refocus-20261007/root-diagonal/SourceOneSidedPowerBudget.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceOneSidedPowerDiagonal

/-!
Explicit numerical certificate for the independently derived one-sided power tail.
Infinite sum comparison and source application retain their recorded paper grade.
Direction: grwtsk contributors. Calculation and native proof: OpenAI Codex.
-/

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SquareNegativeTailCost.Variant125ef974f5293ed84e0c6eb9607c207dbe2d4bf5577655ac83adb784bf96daab

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
-- Exact rational expansion of the 21-term exponential Taylor lower certificate.
theorem exp_radius_square_threshold : (800000 : ℝ) < Real.exp (273 / 20) := by
  have h := Real.sum_le_exp_of_nonneg (by norm_num : (0 : ℝ) ≤ 273 / 20) 21
  norm_num [Finset.sum_range_succ] at h
  linarith

set_option maxHeartbeats 0 in
-- Exact rational expansion of the 15-term exponential Taylor lower certificate.
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
    rw [show 3 * (91 : ℝ) / 20 + 1 = 293 / 20 by norm_num,
      show 3 * (91 : ℝ) / 20 = 273 / 20 by norm_num]
    exact div_le_div_of_nonneg_left (show (0 : ℝ) ≤ 293 / 20 by norm_num)
      (show (0 : ℝ) < 799999 by norm_num)
      (show (799999 : ℝ) ≤ Real.exp (273 / 20) - 1 by linarith)
  have hc : cubicPowerTailCost 8281 ≤
      (8282 : ℝ) * (96 / 5) / (4 * 8281 ^ 3) := by
    unfold cubicPowerTailCost
    have hn : 2 * Real.log (8281 : ℝ) + 1 ≤ 96 / 5 := by linarith
    rw [show (8281 : ℝ) + 1 = 8282 by norm_num]
    exact div_le_div_of_nonneg_right
      (mul_le_mul_of_nonneg_left hn (show (0 : ℝ) ≤ 8282 by norm_num))
      (show (0 : ℝ) ≤ 4 * 8281 ^ 3 by norm_num)
  have hb : (293 / 20 : ℝ) / 799999 + 8282 * (96 / 5) / (4 * 8281 ^ 3) <
      (23 / 1250000 : ℝ) := by norm_num
  have hsum := add_le_add hs hc
  unfold oneSidedPowerRadiusBudget
  norm_num only [show (⌊(91 : ℝ) ^ 2⌋₊ : ℝ) = 8281 by norm_num]
  exact hsum.trans_lt hb

end RH16OneSidedPowerDiagonal
```
