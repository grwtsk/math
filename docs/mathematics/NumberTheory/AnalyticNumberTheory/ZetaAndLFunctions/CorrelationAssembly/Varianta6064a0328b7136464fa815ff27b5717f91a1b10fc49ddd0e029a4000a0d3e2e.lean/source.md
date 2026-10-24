# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CorrelationAssembly.Varianta6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `859c764ee9c747034f7e621bfad60ef017194fa2` · SHA-256 `a6064a0328b7136464fa815ff27b5717f91a1b10fc49ddd0e029a4000a0d3e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SUCAS.CorrelationRegularity
import FormalResearch.SUCAS.CorrelationMoment
import FormalResearch.SUCAS.PrimePowerDescent
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Actual Route C assembly and two separate remaining obligations

The arithmetic identity below has only the radius-domain hypothesis. It is not
an RH theorem or a construction of the source's full `DilationRealization`.
The final definitions are open propositions, never axioms or verified results.
-/

namespace FormalResearch.SUCAS.CorrelationAssembly

open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SUCAS.Realization

/-- The exact source identity, with its strict cutoff and prime-two correction unchanged. -/
theorem source_arithmetic_representation (A : ℝ) (hA : 1 ≤ A) :
    sourceQuadraticValue explicitSecondDerivative A =
      analyticCorrection explicitSecondDerivative A +
        2 * signedPairing explicitSecondDerivative A := by
  obtain ⟨hC, hzero⟩ := CorrelationRegularity.correlation_certificate A hA
  exact PrimePowerDescent.source_arithmetic_representation_of_correlation_conditions
    explicitSecondDerivative A hA hC hzero (CorrelationMoment.pole_correlation_certificate A hA)

/-- Exact all-scale lower bound on the actual arithmetic family, not on a surrogate. -/
def UniformLowerBound : Prop :=
  ∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A → lower ≤ sourceQuadraticValue explicitSecondDerivative A

/-- Open RH-0010 bridge target. No proof is asserted by this definition. -/
def BridgeObligation : Prop := UniformLowerBound → _root_.RiemannHypothesis

/-- The separately open estimate target. It is not inferred from the arithmetic identity. -/
def EstimateObligation : Prop := UniformLowerBound

end FormalResearch.SUCAS.CorrelationAssembly
```
