/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularHalfAngleSineConversion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis

/-- The exponential phase in the half-angle representation has unit modulus,
so it cancels exactly against its complex conjugate. -/
theorem triangularPhaseConjugateCancellation :
    TriangularPhaseConjugateCancellationClaim := by
  intro N hN t ht0 htHalf
  dsimp
  rw [Complex.mul_conj']
  simp

/-- The geometric-block normalized squared modulus is exactly the sine-ratio
square on the off-boundary interval. -/
theorem triangularGeometricBlockSineNorm_offBoundary :
    TriangularGeometricBlockSineNormOffBoundaryClaim :=
  phaseCancellation_to_sineNorm
    triangularPhaseConjugateCancellation

/-- The explicit symmetric triangular kernel has the classical Fejer
sine-squared closed form on the exact off-boundary domain used downstream. -/
theorem symmetricTriangularKernelClosedForm_offBoundary :
    SymmetricTriangularKernelClosedFormOffBoundaryClaim :=
  autocorrelation_and_offBoundarySineNorm_to_closedForm
    symmetricTriangularKernel_autocorrelation
    triangularGeometricBlockSineNorm_offBoundary

/-- The symmetric triangular kernel therefore satisfies the explicit
off-boundary decay bound with constant 1/4. -/
theorem symmetricTriangularKernelDecay :
    SymmetricTriangularKernelDecayClaim :=
  symmetricTriangularKernelDecay_of_offBoundaryClosedForm
    symmetricTriangularKernelClosedForm_offBoundary

end GRWTSK.RiemannHypothesis
