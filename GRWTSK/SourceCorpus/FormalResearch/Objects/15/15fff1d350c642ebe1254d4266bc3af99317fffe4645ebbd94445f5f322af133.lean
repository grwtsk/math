import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateVaughanSource

set_option autoImplicit false
set_option pp.universes true
set_option pp.fullNames true

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateLogFrequencySpacing EstimateVaughanIdentity EstimateMertensAbel

example (N : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      (realMoebius n / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1))) =
      ∑ n ∈ Finset.Icc 1 N, (((n : ℝ) + 1) / (n : ℝ)) * (realMoebius n) ^ 2 :=
  local_spacing_weighted_square_sum N realMoebius

example (N U : ℕ) :
    (∑ n ∈ Finset.Icc 1 N,
      (beta U n / Real.sqrt (n : ℝ)) ^ 2 / (1 / ((n : ℝ) + 1))) =
      ∑ n ∈ Finset.Icc 1 N, (((n : ℝ) + 1) / (n : ℝ)) * (beta U n) ^ 2 :=
  local_spacing_weighted_square_sum N (beta U)

#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.adjacent_log_gap_bounds
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.adjacent_log_gap_bounds
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.log_gap_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.log_gap_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.inventory_log_gap_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.inventory_log_gap_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.source_inventory_log_gap_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.source_inventory_log_gap_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_log_gap_lower
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_log_gap_lower
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.coefficient_square
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.coefficient_square
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_spacing_weighted_coefficient_square
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_spacing_weighted_coefficient_square
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_spacing_weighted_square_sum
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.local_spacing_weighted_square_sum
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.inventory_last_gap_upper
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.inventory_last_gap_upper
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.source_last_gap_bounds
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.source_last_gap_bounds
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.adjacent_log_gaps_eventually_lt
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.adjacent_log_gaps_eventually_lt
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.no_uniform_positive_log_spacing
#print axioms FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateLogFrequencySpacing.no_uniform_positive_log_spacing
