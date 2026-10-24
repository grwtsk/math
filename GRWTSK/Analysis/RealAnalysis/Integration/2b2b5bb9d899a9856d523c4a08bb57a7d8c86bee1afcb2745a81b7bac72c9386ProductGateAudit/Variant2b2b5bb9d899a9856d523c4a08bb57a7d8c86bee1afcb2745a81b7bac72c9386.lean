import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateUnitCorrelationMass

set_option pp.fullNames true

open MeasureTheory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

#check EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_majorant_integrable
#check EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#print axioms EstimateUnitCorrelationMass.unitCorrelation_product_integrable
#check integral_sub_left_eq_self

example (A : ℝ) (hA : 0 < A) :
    Integrable (fun z : ℝ × ℝ ↦ EstimateNormalizedSourceProfile.unitProfile A z.2 *
      EstimateNormalizedSourceProfile.unitProfile A (z.2-z.1)) (volume.prod volume) :=
  EstimateUnitCorrelationMass.unitCorrelation_product_integrable A hA
