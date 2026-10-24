# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ApiAudit.Variantf634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdf64f9ef0261803f5e5ce27c2245b85d51f87ea` · SHA-256 `f634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_stieltjes_20261004.CountOccurrences
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

#check CommonMeanStieltjes.positiveOccurrenceWindowEquiv
#check CommonMeanStieltjes.positive_occurrence_window_finite
#print axioms CommonMeanStieltjes.positive_occurrence_window_finite
#check CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#print axioms CommonMeanStieltjes.positive_occurrence_window_card_eq_count
#check Zeta23.zerosIn_finite
#check Nat.card_sigma
#check Fintype.card_sigma
#check Finset.sum_set_coe
#check finsum_mem_eq_toFinset_sum
#check finsum_mem_eq_finite_toFinset_sum
#check Summable.tsum_sigma
#check Summable.subtype
#check Summable.of_nonneg_of_le
#check Summable.hasSum
#check HasSum
#check tsum_subtype
#check tsum_fintype
#check tsum_eq_sum
#check MeasureTheory.lintegral_tsum
#check MeasureTheory.integral_finsetSum
#check MeasureTheory.integral_indicator
#check intervalIntegral.integral_indicator
#check MeasureTheory.intervalIntegral_tendsto_integral_Ioi
#check integral_zpow
#check integral_rpow
#check integrableOn_Ioi_rpow_of_lt
#check integral_Ioi_rpow_of_lt
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount.zero_summability
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability.zeroBallPoints_finite
#check FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSummability.zeroShell_finite
#check FormalResearch.RiemannHypothesis.Laplace.Continuation.zeroOccurrence_countable
#check Complex.norm_le_abs_re_add_abs_im
#check Complex.abs_im_le_norm
#check Real.rpow_neg
#check Real.rpow_natCast
#check one_div_le_one_div_of_le
#check ENNReal.tsum_eq_iSup_sum
```
