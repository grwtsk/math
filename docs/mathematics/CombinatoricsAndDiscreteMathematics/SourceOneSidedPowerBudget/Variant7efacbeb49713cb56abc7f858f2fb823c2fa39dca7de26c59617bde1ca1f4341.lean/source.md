# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.SourceOneSidedPowerBudget.Variant7efacbeb49713cb56abc7f858f2fb823c2fa39dca7de26c59617bde1ca1f4341

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8a553604d40413b19aeb6882845cddc4a1960d9f` · SHA-256 `7efacbeb49713cb56abc7f858f2fb823c2fa39dca7de26c59617bde1ca1f4341`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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
