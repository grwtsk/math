# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Audit.Variant53d0987d18c1372539e644c6f904ce8b66513497ac863431978ae009542ab139

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `205e250ce3b05a5e4d6b3f498b26ee84523fae9d` · SHA-256 `13e4b94e4a240f1d0586226b2302f27318fe2466543c709bf8e9d79485bec158`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCausalEnergy.Variant1413e9a23ae422477c1b5ade613b1cbd622c30155b28a536c499afe59d51e185","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1413e9a23ae422477c1b5ade613b1cbd622c30155b28a536c499afe59d51e185","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceCausalEnergy.Variant1413e9a23ae422477c1b5ade613b1cbd622c30155b28a536c499afe59d51e185","mathematical_subject":"Analysis.Calculus","original_sha256":"1413e9a23ae422477c1b5ade613b1cbd622c30155b28a536c499afe59d51e185","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle6/acceptance-regent/regent-causal/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCausalEnergy


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceCausalEnergy.Variant1413e9a23ae422477c1b5ade613b1cbd622c30155b28a536c499afe59d51e185

set_option autoImplicit false
set_option relaxedAutoImplicit false
set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCausalEnergy

#check normalizedPrimitiveBump
#print axioms normalizedPrimitiveBump
#check compactPolePrimitive
#print axioms compactPolePrimitive
#check causalSourceTail
#print axioms causalSourceTail
#check @normalizedPrimitiveBump_contDiff
#print axioms normalizedPrimitiveBump_contDiff
#check @normalizedPrimitiveBump_hasDerivAt
#print axioms normalizedPrimitiveBump_hasDerivAt
#check @normalizedPrimitiveBump_deriv
#print axioms normalizedPrimitiveBump_deriv
#check @normalizedPrimitiveBump_deriv_hasDerivAt
#print axioms normalizedPrimitiveBump_deriv_hasDerivAt
#check @normalizedPrimitiveBump_second_sub_quarter
#print axioms normalizedPrimitiveBump_second_sub_quarter
#check @normalizedPrimitiveBump_eq_interior
#print axioms normalizedPrimitiveBump_eq_interior
#check @normalizedPrimitiveBump_deriv_eq_interior
#print axioms normalizedPrimitiveBump_deriv_eq_interior
#check @normalizedPrimitiveBump_endpoints
#print axioms normalizedPrimitiveBump_endpoints
#check @normalizedPrimitiveBump_deriv_endpoints
#print axioms normalizedPrimitiveBump_deriv_endpoints
#check @normalizedPrimitiveBump_zero_of_not_mem
#print axioms normalizedPrimitiveBump_zero_of_not_mem
#check @normalizedPrimitiveBump_deriv_zero_of_not_mem
#print axioms normalizedPrimitiveBump_deriv_zero_of_not_mem
#check @normalizedPrimitiveBump_hasCompactSupport
#print axioms normalizedPrimitiveBump_hasCompactSupport
#check @normalizedPrimitiveBump_deriv_hasCompactSupport
#print axioms normalizedPrimitiveBump_deriv_hasCompactSupport
#check @compactPolePrimitive_eq_polePrimitive
#print axioms compactPolePrimitive_eq_polePrimitive
#check @compactPolePrimitive_hasDerivAt
#print axioms compactPolePrimitive_hasDerivAt
#check @compactPolePrimitive_deriv
#print axioms compactPolePrimitive_deriv
#check @compactPolePrimitive_contDiff
#print axioms compactPolePrimitive_contDiff
#check @compactPolePrimitive_zero_of_not_mem
#print axioms compactPolePrimitive_zero_of_not_mem
#check @compactPolePrimitive_endpoints
#print axioms compactPolePrimitive_endpoints
#check @compactPolePrimitive_hasCompactSupport
#print axioms compactPolePrimitive_hasCompactSupport
#check @weightedSource_integrable
#print axioms weightedSource_integrable
#check @causalSourceTail_integrable_section
#print axioms causalSourceTail_integrable_section
#check @causalSourceTail_eq
#print axioms causalSourceTail_eq
#check @causalSourceTail_contDiff
#print axioms causalSourceTail_contDiff
#check @causalSourceTail_hasDerivAt
#print axioms causalSourceTail_hasDerivAt
#check @causalSourceTail_deriv
#print axioms causalSourceTail_deriv
#check @causalSourceTail_zero_of_not_mem
#print axioms causalSourceTail_zero_of_not_mem
#check @causalSourceTail_endpoints
#print axioms causalSourceTail_endpoints
#check @causalSourceTail_hasCompactSupport
#print axioms causalSourceTail_hasCompactSupport
#check @causalSourceTail_integrable
#print axioms causalSourceTail_integrable
#check @causalSourceTail_memLp_two
#print axioms causalSourceTail_memLp_two
#check @causalSourceTail_square_integrable
#print axioms causalSourceTail_square_integrable
#check @source_mul_causalSourceTail_integrable
#print axioms source_mul_causalSourceTail_integrable
#check @normalizedPrimitiveBump_integrable
#print axioms normalizedPrimitiveBump_integrable
#check @normalizedPrimitiveBump_deriv_integrable
#print axioms normalizedPrimitiveBump_deriv_integrable
#check @normalizedPrimitiveBump_memLp_two
#print axioms normalizedPrimitiveBump_memLp_two
#check @normalizedPrimitiveBump_deriv_memLp_two
#print axioms normalizedPrimitiveBump_deriv_memLp_two
#check @normalizedPrimitiveBump_square_integrable
#print axioms normalizedPrimitiveBump_square_integrable
#check @normalizedPrimitiveBump_mixed_integral_zero
#print axioms normalizedPrimitiveBump_mixed_integral_zero
#check @normalizedPrimitiveBump_square_integral
#print axioms normalizedPrimitiveBump_square_integral
#check @normalizedPrimitiveBump_deriv_square_integral
#print axioms normalizedPrimitiveBump_deriv_square_integral
#check @causalSourceTail_square_integral
#print axioms causalSourceTail_square_integral
#check @source_mul_causalSourceTail_integral
#print axioms source_mul_causalSourceTail_integral
#check rawPolePrimitive_positive_outside
#print axioms rawPolePrimitive_positive_outside
#check compactPolePrimitive_ne_normalized_raw_outside
#print axioms compactPolePrimitive_ne_normalized_raw_outside
```
