import SourcePeanoOneSidedMass
set_option autoImplicit false
set_option linter.hashCommand false
set_option linter.style.longLine false
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
#print CorrelationAssembly.UniformLowerBound
#print axioms CorrelationAssembly.UniformLowerBound
example : CorrelationAssembly.EstimateObligation =
    (∃ lower : ℝ, ∀ A : ℝ, 1 ≤ A →
      lower ≤ sourceQuadraticValue Realization.explicitSecondDerivative A) := rfl
