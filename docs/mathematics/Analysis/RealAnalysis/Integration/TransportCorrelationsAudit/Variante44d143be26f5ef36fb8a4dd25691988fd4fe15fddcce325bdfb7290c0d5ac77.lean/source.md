# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.TransportCorrelationsAudit.Variante44d143be26f5ef36fb8a4dd25691988fd4fe15fddcce325bdfb7290c0d5ac77

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c7c0dabad87e3f52b1f189160401eba84bf0fd6` · SHA-256 `e44d143be26f5ef36fb8a4dd25691988fd4fe15fddcce325bdfb7290c0d5ac77`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import scratch.common_mean_20261004.FiveModeTransport
import scratch.common_mean_20261004.FiveModeCorrelations
set_option pp.proofs false
#print CommonMeanScratch.mode_continuous
#print axioms CommonMeanScratch.mode_continuous
#print CommonMeanScratch.mode_product_integrable
#print axioms CommonMeanScratch.mode_product_integrable
#print CommonMeanScratch.modeCorrelation
#print axioms CommonMeanScratch.modeCorrelation
#print CommonMeanScratch.actual_correlation_reconstruction
#print axioms CommonMeanScratch.actual_correlation_reconstruction
#print CommonMeanScratch.poleMoment
#print axioms CommonMeanScratch.poleMoment
#print CommonMeanScratch.mode_pole_integrable
#print axioms CommonMeanScratch.mode_pole_integrable
#print CommonMeanScratch.alpha_dot_pole_zero
#print axioms CommonMeanScratch.alpha_dot_pole_zero
#print CommonMeanScratch.pole_matrix_contraction
#print axioms CommonMeanScratch.pole_matrix_contraction
#print CommonMeanScratch.contracted_correlation_origin
#print axioms CommonMeanScratch.contracted_correlation_origin
#print CommonMeanScratch.contracted_correlation_even
#print axioms CommonMeanScratch.contracted_correlation_even
#print CommonMeanScratch.contracted_correlation_support
#print axioms CommonMeanScratch.contracted_correlation_support
#print CommonMeanScratch.rawCorrelation
#print axioms CommonMeanScratch.rawCorrelation
#print CommonMeanScratch.rawCorrelation_0_0
#print axioms CommonMeanScratch.rawCorrelation_0_0
#print CommonMeanScratch.rawCorrelation_0_2
#print axioms CommonMeanScratch.rawCorrelation_0_2
#print CommonMeanScratch.rawCorrelation_0_4
#print axioms CommonMeanScratch.rawCorrelation_0_4
#print CommonMeanScratch.rawCorrelation_0_6
#print axioms CommonMeanScratch.rawCorrelation_0_6
#print CommonMeanScratch.rawCorrelation_0_8
#print axioms CommonMeanScratch.rawCorrelation_0_8
#print CommonMeanScratch.rawCorrelation_2_2
#print axioms CommonMeanScratch.rawCorrelation_2_2
#print CommonMeanScratch.rawCorrelation_2_4
#print axioms CommonMeanScratch.rawCorrelation_2_4
#print CommonMeanScratch.rawCorrelation_2_6
#print axioms CommonMeanScratch.rawCorrelation_2_6
#print CommonMeanScratch.rawCorrelation_2_8
#print axioms CommonMeanScratch.rawCorrelation_2_8
#print CommonMeanScratch.rawCorrelation_4_4
#print axioms CommonMeanScratch.rawCorrelation_4_4
#print CommonMeanScratch.rawCorrelation_4_6
#print axioms CommonMeanScratch.rawCorrelation_4_6
#print CommonMeanScratch.rawCorrelation_4_8
#print axioms CommonMeanScratch.rawCorrelation_4_8
#print CommonMeanScratch.rawCorrelation_6_6
#print axioms CommonMeanScratch.rawCorrelation_6_6
#print CommonMeanScratch.rawCorrelation_6_8
#print axioms CommonMeanScratch.rawCorrelation_6_8
#print CommonMeanScratch.rawCorrelation_8_8
#print axioms CommonMeanScratch.rawCorrelation_8_8
#print CommonMeanScratch.rawCorrelation_symm
#print axioms CommonMeanScratch.rawCorrelation_symm
#print CommonMeanScratch.rawCorrelation_endpoint
#print axioms CommonMeanScratch.rawCorrelation_endpoint
#print CommonMeanScratch.rawCorrelation_origin
#print axioms CommonMeanScratch.rawCorrelation_origin
#print CommonMeanScratch.rawCorrelation_zero_not_even
#print axioms CommonMeanScratch.rawCorrelation_zero_not_even
```
