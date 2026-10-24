# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.1f8aba45073579b61311EstimatePlainKernel.Variant1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2294b5ded93a8f40e68ee1c1fb8dec78307603cc` · SHA-256 `1f8aba45073579b61311c4201a3623eeea359e4a51dc16ed4d39855ad28fd8a5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceMobiusKernel

/-!
# Literal plain weights for the finite signed Vaughan decomposition

This module keeps only the two source definitions from the candidate plain
sampling module. No sampling estimate is imported into the finite identity.
-/

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimatePlainKernel

open FormalResearch.RiemannHypothesis.SourcePairing
open Realization EstimateSourceMobiusKernel

noncomputable section

/-- The unchanged source weight at a positive multiplicative argument. -/
def sourcePlainWeight (A x : ℝ) : ℝ :=
  sourceCorrelation explicitSecondDerivative A (Real.log x) / Real.sqrt x

/-- The fixed plain sampling inventory, with no logarithmic coefficient. -/
def sourcePlainKernel (A x : ℝ) : ℝ :=
  ∑ k ∈ Finset.Icc 1 (sourceKernelCutoff A), sourcePlainWeight A (x*k)

end

end EstimatePlainKernel
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
