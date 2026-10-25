# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointMonotonicityAudit.Variant13408a3ef238c438c76d95cf8a61c21e788638c859ecba45d922adddffa60bd9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ea5356fd7f5d2a5d3731b13ed9f7d1f0b0a1c0d7` · SHA-256 `f2f25f8ac5bc567827becc1d4e00f6e08c266a826c964dc6d0d0248ecf4c52fe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointMonotonicity.Variant042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EndpointMonotonicity.Variant042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685","mathematical_subject":"Foundations.Unclassified","original_sha256":"042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/EndpointMonotonicityAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.mertens.EndpointMonotonicity

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EndpointMonotonicity.Variant042f7a1a2699923d2d75c6564c11b7baa3eaed7f2fe8f1aad3080867698eb685

set_option pp.universes true
set_option pp.explicit true
#check @EndpointMonotonicityScratch.endpoint_scaled_bounds
#print axioms EndpointMonotonicityScratch.endpoint_scaled_bounds
#check @EndpointMonotonicityScratch.normalizedInterior_factor
#print axioms EndpointMonotonicityScratch.normalizedInterior_factor
#check @EndpointMonotonicityScratch.normalizedInteriorDerivative_factor
#print axioms EndpointMonotonicityScratch.normalizedInteriorDerivative_factor
#check @EndpointMonotonicityScratch.normalizedTest_endpoint_nonneg
#print axioms EndpointMonotonicityScratch.normalizedTest_endpoint_nonneg
#check @EndpointMonotonicityScratch.normalizedTest_derivative_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.normalizedTest_derivative_endpoint_nonpos
#check @EndpointMonotonicityScratch.endpoint_product_signs
#print axioms EndpointMonotonicityScratch.endpoint_product_signs
#check @EndpointMonotonicityScratch.sourceCorrelation_endpoint_nonneg
#print axioms EndpointMonotonicityScratch.sourceCorrelation_endpoint_nonneg
#check @EndpointMonotonicityScratch.sourceCorrelation_derivative_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.sourceCorrelation_derivative_endpoint_nonpos
#check @EndpointMonotonicityScratch.correlationDifference_endpoint_nonpos
#print axioms EndpointMonotonicityScratch.correlationDifference_endpoint_nonpos
#check @EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos
#print axioms EndpointMonotonicityScratch.sourceSamplingKernel_derivative_upper_nonpos
```
