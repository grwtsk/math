# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RootActualBalancedCompensation.Variantf5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e1a472bc1fba770936e53d6619d767b5a52e406a` · SHA-256 `f5eb2e1edad678ea1ce2b0696bc2e2241a983795563fd731316f1790c15843ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualAdjointCompensationLocalization
import RootActualAnchoredStripRefinement

/-!
The actual anchored strip estimate applies to the unchanged compensated work
with its literal retained upper-time, trace, diagonal and independent main.
No uniform bound for that retained signed arithmetic remainder is assumed.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
open SourceActualAdjointLowerStrip RootActualAnchoredStripRefinement
open SourceActualAdjointCompensationLocalization SourceJointWorkConsumer
noncomputable section

/-- Every actual strip of width at most two has a genuine quadratic interior budget. -/
theorem actualLowerStripInterior_quadratic_abs_le {A offset w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |actualLowerStripInterior A offset w| ≤
      16 * (Real.log 4 + 4 + Real.log 2 + |offset|) * w ^ 2 := by
  have hp : |w / 2| ≤ 1 := by rw [abs_of_nonneg (by linarith)]; linarith
  have hn : |-w / 2| ≤ 1 := by rw [abs_of_nonpos (by linarith)]; linarith
  have he1 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hp)).2
  have he2 := (abs_le.mp (Real.abs_exp_sub_one_sub_id_le hn)).2
  have he : Real.exp (w / 2) + Real.exp (-w / 2) - 2 ≤ w ^ 2 / 2 := by
    nlinarith
  calc
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) :=
      actualLowerStripInterior_balanced_abs_le hA hw
    _ ≤ 32 * (Real.log 4 + 4 + Real.log 2 + |offset|) * (w ^ 2 / 2) :=
      mul_le_mul_of_nonneg_left he (by positivity)
    _ = _ := by ring

/-- The original compensated signed work has the balanced anchored localization bound. -/
theorem compensatedJointWork_sub_retained_balanced_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      32 * (Real.log 4 + 4 + Real.log 2) *
        (Real.exp (w / 2) + Real.exp (-w / 2) - 2) := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_balanced_abs_le (offset := 0) hA hw

/-- Widths at most two give a genuine quadratic error in the literal source remainder. -/
theorem compensatedJointWork_sub_retained_quadratic_abs_le {A w : ℝ}
    (hA : 25600 ≤ A) (hw : 0 ≤ w) (hw2 : w ≤ 2) :
    |compensatedJointWork A - actualRetainedCompensationRemainder A w| ≤
      16 * (Real.log 4 + 4 + Real.log 2) * w ^ 2 := by
  rw [compensatedJointWork_eq_retained_add_lowerStrip hA hw, add_sub_cancel_left]
  simpa only [abs_zero, add_zero] using
    actualLowerStripInterior_quadratic_abs_le (offset := 0) hA hw hw2

end
end FormalResearch.RiemannHypothesis.RootActualBalancedCompensation
```
