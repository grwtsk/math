# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceActualXiBoundaryTailApplication.Variant67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `35b4c78f1f230191873a640d915a6d329e80dd27` · SHA-256 `67e831fcc64c9a98890e4ac30ecf927fdc64034fc2af84c515247304524b220f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiWholeHeadBounds
import SourceCompleteDivisorTailReturn

/-!
Concrete discharge of the finite H/G gates in the original-F7 signed-tail return.
The actual uniform complete divisor-block premise stays explicit.
Direction, selection, corrections and evaluation: grwtsk contributors.
Formal substitution and focused checking: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16ActualXiBoundaryApplication
open RH16ActualXiWholeHead RH16CompleteDivisorTailReturn
open RH16CompleteDivisorCancellation RH16CompleteXiTail RH16CompleteXiComplement
open FormalResearch.RiemannHypothesis SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual

theorem completeXiHead_eq_actualWholeXiHead (A : ℝ) :
    completeXiHead A = actualWholeXiHead A := rfl

/-- Coarse fixed finite costs turn the actual residual upper bound into the complete tail. -/
theorem residual_upper_implies_tail_lower_with_closed_boundary (A B : ℝ)
    (hA : 40 ≤ A) (hr : mertensResidual A ≤ B) :
    -(B + 2 + gammaTraceBudget + wholeHeadBudget) ≤ completeXiTail A := by
  apply residual_upper_implies_complete_tail_lower A B wholeHeadBudget gammaTraceBudget hA hr
  · simpa only [completeXiHead_eq_actualWholeXiHead] using actualWholeXiHead_upper A hA
  · exact actual_gamma_trace_upper A (by linarith)

/-- No head or gamma premise remains; the actual all-real signed arithmetic premise does. -/
theorem estimate_of_complete_block_without_boundary (DX R : ℝ)
    (hb : ∀ A : ℝ, R ≤ A → completeSignedSamplingBlock A ≤ DX) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_complete_block DX R wholeHeadBudget gammaTraceBudget hb
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    simpa only [completeXiHead_eq_actualWholeXiHead] using
      actualWholeXiHead_upper A (by linarith)
  · intro A hA
    have hA91 : (91 : ℝ) ≤ A := (le_max_left _ _).trans hA
    exact actual_gamma_trace_upper A (by linarith)

end RH16ActualXiBoundaryApplication
```
