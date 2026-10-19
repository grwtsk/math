import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroTransform
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourcePlancherel

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.ZeroSide.Assembly
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

#check zero_side_identity
#print axioms zero_side_identity
#check ZeroTransform.actual_transform
#print axioms ZeroTransform.actual_transform
#check SourcePlancherel.fourier_correlation
#print axioms SourcePlancherel.fourier_correlation

example (z : ℂ) : (z ^ 2).re = z.re ^ 2 - z.im ^ 2 := by
  simp only [pow_two, Complex.mul_re]
example (z : ℂ) : Complex.normSq z = z.re ^ 2 + z.im ^ 2 := by
  rw [Complex.normSq_apply]
  ring
