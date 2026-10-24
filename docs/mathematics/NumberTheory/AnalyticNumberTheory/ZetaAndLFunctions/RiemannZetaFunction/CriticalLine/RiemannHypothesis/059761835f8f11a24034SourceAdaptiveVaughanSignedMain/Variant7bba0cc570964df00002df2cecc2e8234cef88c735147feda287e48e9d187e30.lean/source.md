# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.059761835f8f11a24034SourceAdaptiveVaughanSignedMain.Variant7bba0cc570964df00002df2cecc2e8234cef88c735147feda287e48e9d187e30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `894a7f456944b2abbf9440c3461f791148264755` · SHA-256 `7bba0cc570964df00002df2cecc2e8234cef88c735147feda287e48e9d187e30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceAdaptiveVaughanNoLongProducts

/-! Exact retained signed sampling main and error after adaptive finite refinement.
No uniform estimate is asserted. Direction, selection, corrections and evaluation:
grwtsk contributors. Scratch formal construction: Codex/ChatGPT assistance. -/
set_option autoImplicit false
noncomputable section
namespace RH16AdaptiveVaughan
open ArithmeticFunction
open scoped BigOperators
open RH16CompleteDivisorCancellation
open FormalResearch.RiemannHypothesis SourceSamplingPointwise
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimatePlainKernel EstimateSourceMobiusKernel EstimateMertensResidual

def adaptiveLogSample (A : ℝ) (d : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    Real.log k * sourcePlainWeight A ((d * k : ℕ) : ℝ)

def adaptivePlainSample (A : ℝ) (d m : ℕ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A),
    sourcePlainWeight A ((d * m * k : ℕ) : ℝ)

/-- Universal signed mains J1 and J0 retain their independent source definitions. -/
def adaptiveIndependentMain (A : ℝ) : ℝ :=
  (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A),
    vonMangoldt m * sourcePlainWeight A (m : ℝ)) +
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    sourceLogSamplingMainTerm A (d : ℝ)) -
  (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
      sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)))

/-- The error is one signed joint row, including every short and long retained term. -/
def adaptiveSignedSamplingError (A : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
    ((adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ)) -
      (∑ m ∈ Finset.Icc 1 (adaptiveMangoldtDepth A), vonMangoldt m *
        (adaptivePlainSample A d m - sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))))

/-- All signed corrections remain joint; this is the original full prime-power row. -/
theorem fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    fullMangoldtRow A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [fullMangoldtRow_eq_adaptiveSampledHead A hA]
  unfold adaptiveSampledHead adaptiveIndependentMain adaptiveSignedSamplingError
    adaptiveLogSample adaptivePlainSample
  simp only [mul_sub, Finset.sum_sub_distrib, Finset.mul_sum, mul_assoc]
  ring

/-- Direct source residual readout; no diagonal or endpoint debt is introduced. -/
theorem actual_residual_eq_adaptiveIndependentMain_add_signedError
    (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = adaptiveIndependentMain A + adaptiveSignedSamplingError A := by
  rw [mertensResidual_eq_plainWeight_sum A hA]
  exact fullMangoldtRow_eq_adaptiveIndependentMain_add_signedError A hA

end RH16AdaptiveVaughan
```
