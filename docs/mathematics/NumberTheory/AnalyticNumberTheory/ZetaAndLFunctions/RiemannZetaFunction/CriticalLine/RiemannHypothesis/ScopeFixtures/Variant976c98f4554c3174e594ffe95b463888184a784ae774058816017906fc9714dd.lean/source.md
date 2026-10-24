# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScopeFixtures.Variant976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bf4db5a7f8e939a239865f7412c6bc8d38b1e776` · SHA-256 `976c98f4554c3174e594ffe95b463888184a784ae774058816017906fc9714dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMoment

/-! Independent private sign/readout guards; not principal or maintained roots. -/

set_option autoImplicit false
set_option linter.hashCommand false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures

open MeasureTheory
open SourcePrimitiveCriticalMoment SourcePrimitivePrimeInteraction SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateCorrelation

/-- At sigma=1 a nonzero primitive transform forbids changing the verified R1 minus sign. -/
theorem wrong_positive_first_derivative_transform {A : ℝ} (hA : 0 < A)
    (hI : (∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s) ≠ 0) :
    (∫ s : ℝ, Real.exp s * primitiveCorrelationOne A s) ≠
      ∫ s : ℝ, Real.exp s * primitiveCorrelationZero A s := by
  have h := primitiveCorrelationOne_laplace hA (1 : ℝ)
  norm_num at h
  intro he
  apply hI
  linarith

/-- Actual full-line critical cancellation coexists with the nonzero normalized point readout. -/
theorem critical_cancellation_not_pointwise_zero {A : ℝ} (hA : 1 ≤ A) :
    (∫ s : ℝ, Real.exp (s / 2) * sourceCorrelation explicitSecondDerivative A s) = 0 ∧
      sourceCorrelation explicitSecondDerivative A 0 ≠ 0 := by
  refine ⟨(sourceCorrelation_critical_filter_zero (show 0 < A by linarith)).1, ?_⟩
  rw [actual_correlation_at_zero A hA]
  norm_num

#check @wrong_positive_first_derivative_transform
#print axioms wrong_positive_first_derivative_transform
#check @critical_cancellation_not_pointwise_zero
#print axioms critical_cancellation_not_pointwise_zero

end FormalResearch.RiemannHypothesis.SourcePrimitiveCriticalMomentRegentFixtures
```
