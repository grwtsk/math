# Complete source: GRWTSK.Algebra.LinearAlgebra.53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cfMinorIngredients.Variant8d3787031ef7de9e4e9d74aeb79aa10130eb0a47bbe2672ca6690ef4d7b8985e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0a75af6be239688dcb093429bc61861aa6a612c5` · SHA-256 `422fa4973d6bdd8664015625ee5a73d2c3e144f174c3ca9a372afc7f0209262e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/53/53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf--minor-ingredients.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.Rank

namespace GRWTSK.Algebra.LinearAlgebra.Rank.Variant53778243934bd015c0e3e3a96e17a3fbb4cc239836c32aa7826465319f0527cf

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @exists_linearIndependent'
#check @Matrix.linearIndependent_rows_of_det_ne_zero
#check @Matrix.det_eq_zero_of_not_linearIndependent_rows
#check @Matrix.exists_mulVec_eq_zero_iff
```
