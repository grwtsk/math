# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.B4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001EdgeAudit.Variantb4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fff7383ae1a3cdeec73b82387dee3071676bb391` · SHA-256 `b4946ba15db9f68925b41bae7db81fd9d90f114d9790e5551ea8ffe0a0f6b001`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation
set_option autoImplicit false
set_option pp.fullNames true
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.edgePolynomial
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.edgePolynomial
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_edge_overlap
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_edge_overlap
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.endpointProduct_intervalIntegrable
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.endpointProduct_intervalIntegrable
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge_abs_le
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateSourceEdgeCorrelation.sourceCorrelation_upper_edge_abs_le

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateSourceEdgeProfile EstimateSourceEdgeCorrelation
open FormalResearch.RiemannHypothesis.SourcePairing
example (A z : ℝ) (hA : 1 ≤ A) (hz : 0 ≤ z) (hzA : z ≤ 2 * A) :
    sourceCorrelation Realization.explicitSecondDerivative A (2 * A-z) =
      1 / (A^9 * sourceNormalization A) *
        ∫ r in (0 : ℝ)..z, endpointPolynomial A r * endpointPolynomial A (z-r) :=
  sourceCorrelation_upper_edge A z hA hz hzA
```
