# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOneSidedPowerBudget.Variant97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df3b2532d83309f9cd9cc7ca443ad4a48677d724` · SHA-256 `97ca406314dfceac08402130487ce087863a27f812a429d2428fb1357953a9ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceOneSidedPowerDiagonal

/-!
Explicit numerical certificate for the independently derived one-sided power tail.
Infinite sum comparison and source application retain their recorded paper grade.
Direction: grwtsk contributors. Calculation and native proof: OpenAI Codex.
-/
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
