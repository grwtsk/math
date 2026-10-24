# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ApiAudit.Variante2a437580fcbcef4baf62b4024717ee9129f83ce10cd6bb0a661fed9348bc067

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e509af46c06cb1fb493462afb3e38e67268921d` · SHA-256 `11910d2c8db53767798f673f4e2a560b550aca723fd98e7c44f9b037e1b8c4b8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.CountOccurrences.Variantf634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.CountOccurrences.Variantf634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"f634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/common-mean-stieltjes-20261004/count-audit/ApiAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.common_mean_stieltjes_20261004.CountOccurrences
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroShellCount
import FormalResearch.RiemannHypothesis.Laplace.Continuation
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals


namespace GRWTSK.Analysis.AsymptoticAnalysis.CountOccurrences.Variantf634dc1544b6cd7706c2045b6fd9375e00647e93e1af1a1ca458c1d4162d728c

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
