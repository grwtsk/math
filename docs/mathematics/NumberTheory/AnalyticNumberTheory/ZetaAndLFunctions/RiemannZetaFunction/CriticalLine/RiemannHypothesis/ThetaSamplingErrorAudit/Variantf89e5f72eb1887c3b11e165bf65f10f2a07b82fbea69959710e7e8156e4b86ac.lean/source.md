# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaSamplingErrorAudit.Variantf89e5f72eb1887c3b11e165bf65f10f2a07b82fbea69959710e7e8156e4b86ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b95b766334911c933310199abd80b9673d73041c` · SHA-256 `d81b0b0c9cd97b347fb7d629e18e67d15928a2dd9b0f34e7103bbf00eb9e27bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaSamplingError.Variantab2a7f80efbd2712610b8d5c17c1a6ce078350a73c29acb201db4dde2060ecf1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab2a7f80efbd2712610b8d5c17c1a6ce078350a73c29acb201db4dde2060ecf1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ThetaSamplingError.Variantab2a7f80efbd2712610b8d5c17c1a6ce078350a73c29acb201db4dde2060ecf1","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ab2a7f80efbd2712610b8d5c17c1a6ce078350a73c29acb201db4dde2060ecf1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/arithmetic-routes/ThetaSamplingErrorAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaSamplingError.Variantab2a7f80efbd2712610b8d5c17c1a6ce078350a73c29acb201db4dde2060ecf1

#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_hasDerivAt
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_derivative_integrableOn
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_integrableOn
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_sawtooth_integrableOn
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_sawtooth_intervalIntegrable
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_eq_padded_sum
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_endpoint_zero
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_sub_integral_eq
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_sub_integral_abs_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.scaledSampling_variation_le
#print axioms FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_sub_integral_abs_le_explicit

#check FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_sub_integral_eq
#check FormalResearch.RiemannHypothesis.SourceComparison.ThetaSamplingError.thetaKernel_sub_integral_abs_le_explicit
```
