/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.PolynomialBumpRegularity
import GRWTSK.Analysis.Convolution.ExponentialMoments
import GRWTSK.NumberTheory.Chebyshev.FiniteIntegrationByParts
import Mathlib.NumberTheory.LSeries.RiemannZeta
import Mathlib.Tactic

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

/-! ## Arithmetic-to-positivity lower-bound transfer

The source identity separates a real analytic correction and a signed pairing.
A uniform lower bound requires control of BOTH components; positivity of
one component, by itself, is not a global RH supplier. These results use the
actual source terms and strict radius-domain hypothesis, not an abstract
spectral form or a Connes trace-formula assumption.
-/

/-- Exact pointwise transfer of separately established component bounds.
No sign assumption is imposed on either floor. -/
theorem source_component_lower_bound (A correctionFloor pairingFloor : ℝ)
    (hA : 1 ≤ A)
    (hCorrection :
      correctionFloor ≤ analyticCorrection explicitSecondDerivative A)
    (hPairing :
      pairingFloor ≤ signedPairing explicitSecondDerivative A) :
    correctionFloor + 2 * pairingFloor ≤
      sourceQuadraticValue explicitSecondDerivative A := by
  calc
    correctionFloor + 2 * pairingFloor ≤
        analyticCorrection explicitSecondDerivative A +
          2 * signedPairing explicitSecondDerivative A :=
      add_le_add hCorrection
        (mul_le_mul_of_nonneg_left hPairing (by norm_num))
    _ = sourceQuadraticValue explicitSecondDerivative A :=
      (source_arithmetic_representation A hA).symm

/-- Two actual all-scale component estimates suffice for the existing
source family's lower-bound obligation. Neither estimate is asserted here. -/
theorem uniformLowerBound_of_component_bounds
    (correctionFloor pairingFloor : ℝ)
    (hCorrection : ∀ A : ℝ, 1 ≤ A →
      correctionFloor ≤ analyticCorrection explicitSecondDerivative A)
    (hPairing : ∀ A : ℝ, 1 ≤ A →
      pairingFloor ≤ signedPairing explicitSecondDerivative A) :
    UniformLowerBound := by
  refine ⟨correctionFloor + 2 * pairingFloor, ?_⟩
  intro A hA
  exact source_component_lower_bound A correctionFloor pairingFloor hA
    (hCorrection A hA) (hPairing A hA)

/-- Open RH-0010 bridge target. No proof is asserted by this definition. -/
def BridgeObligation : Prop := UniformLowerBound → _root_.RiemannHypothesis

/-- The separately open estimate target. It is not inferred from the arithmetic identity. -/
def EstimateObligation : Prop := UniformLowerBound

end GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
