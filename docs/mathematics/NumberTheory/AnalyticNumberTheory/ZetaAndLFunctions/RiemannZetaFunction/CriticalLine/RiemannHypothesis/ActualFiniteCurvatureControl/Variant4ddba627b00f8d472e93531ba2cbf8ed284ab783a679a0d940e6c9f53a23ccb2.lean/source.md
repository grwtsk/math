# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualFiniteCurvatureControl.Variant4ddba627b00f8d472e93531ba2cbf8ed284ab783a679a0d940e6c9f53a23ccb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e8820a1fe657111cec7d787246648e062041739` · SHA-256 `4ddba627b00f8d472e93531ba2cbf8ed284ab783a679a0d940e6c9f53a23ccb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCurvatureFiniteReadout

/-! Assembly for the exact signed finite-cell evaluator.
Direction: grwtsk contributors. Scratch construction: OpenAI Codex.
No eventual arithmetic lower witness is constructed. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualFiniteCurvatureControl
open ActualCurvatureFiniteReadout ActualCurvatureResolution
open FormalResearch.RiemannHypothesis.SourceCriticalRemovedPrimeWork

theorem actual_finite_work_error {A : ℝ} {n : ℕ} (hA : 1 ≤ A) (hn : 0 < n) :
    |finiteCurvatureReadout A n - criticalRemovedPairedWork A| ≤
      (2200 : ℝ) * A^2 * Real.exp A / n := by
  rw [← sampled_grid_eq_finite hA hn]
  exact actual_grid_work_error hA hn

theorem actual_joint_finite_accuracy {A η : ℝ} {n : ℕ} (hA : 1 ≤ A) (hη : 0 < η)
    (hn : curvatureResolutionCount A η ≤ n) :
    |finiteCurvatureReadout A n - criticalRemovedPairedWork A| ≤ η := by
  rw [← sampled_grid_eq_finite hA ((curvatureResolutionCount_pos A η).trans_le hn)]
  exact actual_joint_grid_work_accuracy hA hη hn

def FiniteCurvatureTailLowerBound : Prop :=
  ∃ B : ℝ, 0 ≤ B ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    -B ≤ finiteCurvatureReadout A (curvatureResolutionCount A 1)

/-- This is the original all-real signed obligation with a faithful finite evaluator. -/
theorem actual_tail_iff_finite_tail : CriticalRemovedPairedTailLowerBound ↔
    FiniteCurvatureTailLowerBound := by
  rw [actual_tail_iff_grid_tail]
  unfold CurvatureGridTailLowerBound FiniteCurvatureTailLowerBound
  constructor
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hRA
    rw [← sampled_grid_eq_finite (hR.trans hRA) (curvatureResolutionCount_pos A 1)]
    exact h A hRA
  · rintro ⟨B, hB, R, hR, h⟩
    refine ⟨B, hB, R, hR, ?_⟩
    intro A hRA
    rw [sampled_grid_eq_finite (hR.trans hRA) (curvatureResolutionCount_pos A 1)]
    exact h A hRA

end ContinuousResearch.ActualFiniteCurvatureControl

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_finite_work_error

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_joint_finite_accuracy

#check ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound
#print ContinuousResearch.ActualFiniteCurvatureControl.FiniteCurvatureTailLowerBound

#check ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print axioms ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
#print ContinuousResearch.ActualFiniteCurvatureControl.actual_tail_iff_finite_tail
```
