# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualZeroSquareScopeAudit.Variant924edd5fc5d8a2a9633a32a339c6767ae4d3fb0a5ac0568f00bfe768d866fb74

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1172cd65f2bd9c076c9a2b7c7a54bc30785486fb` · SHA-256 `924edd5fc5d8a2a9633a32a339c6767ae4d3fb0a5ac0568f00bfe768d866fb74`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
