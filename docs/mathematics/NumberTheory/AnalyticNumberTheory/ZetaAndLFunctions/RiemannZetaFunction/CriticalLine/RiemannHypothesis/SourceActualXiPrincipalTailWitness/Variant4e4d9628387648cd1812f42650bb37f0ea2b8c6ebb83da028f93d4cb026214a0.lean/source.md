# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiPrincipalTailWitness.Variant4e4d9628387648cd1812f42650bb37f0ea2b8c6ebb83da028f93d4cb026214a0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `806184eda54266c8828c76893ac3f81bda9b231d` · SHA-256 `4e4d9628387648cd1812f42650bb37f0ea2b8c6ebb83da028f93d4cb026214a0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiBoundaryTailApplication
import SourceCompleteDivisorRadiusTailReturn

/-!
The actual COMPLETE signed-block hypothesis is the sole unproved input to this
principal complete-tail witness. All finite head and PLUS gamma costs are supplied
by actual-source bounds, on the original F7 closure at max(91,R).
Direction, selection, corrections and evaluation: grwtsk contributors.
Conditional formal application and focused checking: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ActualXiPrincipalTailWitness
open RH16ActualXiWholeHead RH16ActualXiBoundaryApplication
open RH16CompleteDivisorRadiusTailReturn RH16CompleteDivisorTailReturn
open RH16CompleteDivisorCancellation RH16CompleteXiTail RH16CompleteXiComplement

/-- The explicit nonnegative fixed tail cost is calibrated before quantifying A. -/
def principalCompleteTailBudget (DX R : ℝ) : ℝ :=
  max 0 (DX + radiusSamplingBudget (calibratedRadius R) + 2 +
    gammaTraceBudget + wholeHeadBudget)

theorem principalCompleteTailBudget_nonneg (DX R : ℝ) :
    0 ≤ principalCompleteTailBudget DX R := le_max_left _ _

/-- Fixed-radius actual sampling, closed-head and gamma costs discharge every finite premise. -/
theorem complete_tail_lower_of_actual_signed_block (DX R : ℝ)
    (hx : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∀ A : ℝ, calibratedRadius R ≤ A →
      -principalCompleteTailBudget DX R ≤ completeXiTail A := by
  intro A hA
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  have hA40 : (40 : ℝ) ≤ A := by linarith
  have ht := complete_tail_lower_of_complete_block_at_radius A DX (calibratedRadius R)
    wholeHeadBudget gammaTraceBudget (by linarith : 40 ≤ calibratedRadius R) hA
    (hx A ((le_max_right _ _).trans hA))
    (by simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA40)
    (actual_gamma_trace_upper A (by linarith))
  have hm : radiusCompleteBlockTailBudget DX (calibratedRadius R)
      gammaTraceBudget wholeHeadBudget ≤ principalCompleteTailBudget DX R :=
    le_max_right _ _
  exact (neg_le_neg hm).trans ht

/-- The actual all-real signed arithmetic witness remains explicit and is not constructed. -/
theorem complete_tail_witness_of_actual_signed_block
    (hx : ∃ DX R : ℝ, ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    ∃ K R : ℝ, 0 ≤ K ∧ 1 ≤ R ∧
      ∀ A : ℝ, R ≤ A → -K ≤ completeXiTail A := by
  obtain ⟨DX, R, hb⟩ := hx
  refine ⟨principalCompleteTailBudget DX R, calibratedRadius R,
    principalCompleteTailBudget_nonneg DX R, ?_,
    complete_tail_lower_of_actual_signed_block DX R hb⟩
  have hR91 : (91 : ℝ) ≤ calibratedRadius R := le_max_left _ _
  linarith

end RH16ActualXiPrincipalTailWitness
```
