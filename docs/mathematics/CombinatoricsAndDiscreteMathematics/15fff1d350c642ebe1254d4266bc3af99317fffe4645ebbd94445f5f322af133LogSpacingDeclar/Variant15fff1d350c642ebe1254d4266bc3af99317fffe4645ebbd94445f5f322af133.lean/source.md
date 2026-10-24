# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133LogSpacingDeclar.Variant15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `36443c51597a49068d8e6ceba44e4a7a2b3faab1` · SHA-256 `15fff1d350c642ebe1254d4266bc3af99317fffe4645ebbd94445f5f322af133`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
