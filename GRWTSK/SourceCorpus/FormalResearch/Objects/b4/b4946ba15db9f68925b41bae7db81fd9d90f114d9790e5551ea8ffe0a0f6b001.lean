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
