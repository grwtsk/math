# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualNumericMeanTransfer.Variant83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e6925b9f20058bc352238fda9748cdd0c6d32f3` · SHA-256 `83166f6a40201c1ae74631acc9cb974cd863e89bb8b14251f725b7b4e6d9395a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCommonMeanNormalization
import NumericMeanBounds

/-! Exact actual J_mean numerical transfer. The independent F_square lower
budget remains the sole correction-budget hypothesis; zero-side sign or lower
budgets, where used, are additional explicit premises, never RH witnesses.
Direction: grwtsk contributors. Scratch assembly: OpenAI Codex. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualNumericMeanTransfer
open FormalResearch.RiemannHypothesis.SourcePrimeSquareTailWork
open ActualCommonMeanCalibration ActualCommonMeanZeroSide ActualCommonMeanNormalization

theorem commonMeanCenter_gt : (149/40:ℝ) < commonMeanCenter := by
  unfold commonMeanCenter
  linarith [NumericMeanBounds.fixed_prime_sum_gt, NumericMeanBounds.actual_endpoint_lt]

theorem normalizationBudget_lt : normalizationBudget < (206:ℝ) := by
  unfold normalizationBudget
  linarith [NumericMeanBounds.actual_sharp_calibration_lt]

theorem normalizationError_lt {A : ℝ} (hA : 1 ≤ A) :
    normalizationError A < 206/A^2 := by
  exact (normalizationError_bounds hA).2.trans_lt
    (div_lt_div_of_pos_right normalizationBudget_lt (by positivity : 0<A^2))

/-- Actual J_mean; no assumed gamma identity or generic scalar surrogate. -/
theorem sourceMeanOffset_gt_paper_bound {A : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A) :
    -(3033/200:ℝ)-206/A^2 < sourceMeanOffset A := by
  have h := normalizationError_lt hA
  unfold normalizationError at h
  linarith [commonMeanCenter_gt]

theorem sourceMean_gt_paper_bound {A : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A) :
    -(3033/200:ℝ)-206/A^2+(normalizedZeroSquare A).re/2 < sourceMean A := by
  rw [sourceMean_eq_offset_zero hA]
  linarith [sourceMeanOffset_gt_paper_bound hA hF]

/-- A supplied lower budget for the literal ordinary-square zero sum is explicit. -/
theorem sourceMean_gt_of_zero_budget {A N : ℝ} (hA : 1 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A)
    (hS : -N ≤ (normalizedZeroSquare A).re) :
    -(3033/200:ℝ)-206/A^2-N/2 < sourceMean A := by
  linarith [sourceMean_gt_paper_bound hA hF]

/-- Conditional finite mean consequence; neither explicit premise is discharged here. -/
theorem sourceMean_gt_neg_eighteen {A : ℝ} (hA : 10 ≤ A)
    (hF : -(1889/100:ℝ) ≤ squareRemovedRemainder A)
    (hS : 0 ≤ (normalizedZeroSquare A).re) : -18 < sourceMean A := by
  have hA1 : 1 ≤ A := by linarith
  have h := sourceMean_gt_paper_bound hA1 hF
  have hb : (206:ℝ)/A^2 ≤ 206/100 := by
    apply div_le_div_of_nonneg_left (by norm_num) (by norm_num : (0:ℝ)<100)
    nlinarith
  linarith

#print axioms commonMeanCenter_gt
#print axioms normalizationBudget_lt
#print axioms normalizationError_lt
#print axioms sourceMeanOffset_gt_paper_bound
#print axioms sourceMean_gt_paper_bound
#print axioms sourceMean_gt_of_zero_budget
#print axioms sourceMean_gt_neg_eighteen
end ContinuousResearch.ActualNumericMeanTransfer
```
