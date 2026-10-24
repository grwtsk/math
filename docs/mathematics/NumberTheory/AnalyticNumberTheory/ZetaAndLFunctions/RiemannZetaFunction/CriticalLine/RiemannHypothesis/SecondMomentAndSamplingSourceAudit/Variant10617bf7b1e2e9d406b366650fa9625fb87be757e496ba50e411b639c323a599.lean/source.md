# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SecondMomentAndSamplingSourceAudit.Variant10617bf7b1e2e9d406b366650fa9625fb87be757e496ba50e411b639c323a599

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `790c14f95a35d6101d86dc07b4ab751fdf8eca87` · SHA-256 `8833830e5d949de1e5dc23e0522e68693e14d0302f37ebc77ae266d15f8aad07`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationSecondMoment.Variant508b809d39cb444a567d5eb017639241cd82083548d67e587d3a88c53de2b208","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"508b809d39cb444a567d5eb017639241cd82083548d67e587d3a88c53de2b208","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CorrelationSecondMoment.Variant508b809d39cb444a567d5eb017639241cd82083548d67e587d3a88c53de2b208","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"508b809d39cb444a567d5eb017639241cd82083548d67e587d3a88c53de2b208","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/second-moment-and-sampling-source-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment
import FormalResearch.RiemannHypothesis.SourceComparison.FirstMomentSampling


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CorrelationSecondMoment.Variant508b809d39cb444a567d5eb017639241cd82083548d67e587d3a88c53de2b208

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.normalizedTest_even
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.secondMoment_convolution
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.secondMoment_convolution_integral
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.weighted_normalizedTest_firstMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.weighted_correlation_secondMoment_integrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.CorrelationSecondMoment.full_correlation_secondMoment_eq_square
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FirstMomentSampling.half_moment_transport_with_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FirstMomentSampling.sampling_integral_sub_firstMoment
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FirstMomentSampling.sampling_integral_sub_firstMoment_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.FirstMomentSampling.sampling_sum_sub_firstMoment_abs_le
```
