# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualFiniteCesaroConsumer.Variant4e505d42720e5ee36769c75f6704a2a5bdbce3bd2fb00b0995813de79e8dcd22

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c0a184adb775e27441dc26e430766560c9668bc8` · SHA-256 `4e505d42720e5ee36769c75f6704a2a5bdbce3bd2fb00b0995813de79e8dcd22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualPrimitiveFiniteConsumer
import SourceCesaroPrimitiveConsumer

/-!
Concrete application to the checked analytic Cesaro route. The actual finite
signed arithmetic budget stays an explicit premise; no witness is fabricated.
Research direction: grwtsk contributors. AI construction: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section

namespace RH16ActualFiniteCesaro

open RH16CesaroPrimitive
open FormalResearch.RiemannHypothesis.SourceActualPrimitiveFiniteConsumer
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- The independently defined analytic consumer sees precisely the actual finite arithmetic row. -/
theorem actualCesaroPrimitive_eq_finite_readout (t : ℝ) (ht : Real.log 2 ≤ t) :
    actualCesaroPrimitive t = actualFiniteSecondReadout t :=
  actual_nested_primitive_eq_finite_readout t ht

/-- The finite canceled-row budget gives the original signed remaining-work conclusion. -/
theorem remaining_lower_of_actual_finite_row (M A : ℝ) (hM : 0 ≤ M) (hA : 91 ≤ A)
    (hrow : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) :
    -((2061 / 91 : ℝ) * M) ≤ remainingAtomWork A := by
  apply remainingAtomWork_lower_of_cesaro M A hM hA
  intro t ht
  rw [actualCesaroPrimitive_eq_finite_readout t ht]
  exact hrow t ht

/-- A future actual signed finite-row witness discharges the unchanged original estimate. -/
theorem estimate_of_actual_finite_row (M : ℝ) (hM : 0 ≤ M)
    (hrow : ∀ t : ℝ, Real.log 2 ≤ t →
      |actualFiniteSecondReadout t| ≤ M * (t - Real.log 2)) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_actual_cesaro_global M hM
  intro t ht
  rw [actualCesaroPrimitive_eq_finite_readout t ht]
  exact hrow t ht

end RH16ActualFiniteCesaro
```
