# Complete source: GRWTSK.NumberTheory.ExplicitFormula.CorrelationPairing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e4ee147604eb5a1618d1c1268244f3db6a487bcd` · SHA-256 `3c8a989e850fd66459ebb8f1602e4499c12c0b1bc51cb472c3e5609f6f93bc98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.PolynomialBumpRegularity
import GRWTSK.Analysis.Convolution.ExponentialMoments
import GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Actual Route C assembly and two separate remaining obligations

The arithmetic identity below has only the radius-domain hypothesis. It is not
an RH theorem or a construction of the source's full `DilationRealization`.
The final definitions are open propositions, never axioms or verified results.
-/

namespace GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly

open GRWTSK.RiemannHypothesis.SourcePairing
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization

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

end GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
```
