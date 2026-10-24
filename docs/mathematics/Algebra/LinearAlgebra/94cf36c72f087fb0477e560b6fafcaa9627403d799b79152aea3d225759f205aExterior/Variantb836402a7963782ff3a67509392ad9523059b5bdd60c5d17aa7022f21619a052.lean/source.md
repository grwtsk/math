# Complete source: GRWTSK.Algebra.LinearAlgebra.94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205aExterior.Variantb836402a7963782ff3a67509392ad9523059b5bdd60c5d17aa7022f21619a052

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3792e5400b00bc1a35f90ce321072bb4269f09e2` · SHA-256 `08eae634c5891375aacc572e3c8a05c70e3c1fb31a188779e5750c7892e390cb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Basis.Variant94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Basis.Variant94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/94/94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a--exterior.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.ExteriorPower.Basis

namespace GRWTSK.Algebra.LinearAlgebra.Basis.Variant94cf36c72f087fb0477e560b6fafcaa9627403d799b79152aea3d225759f205a

set_option pp.universes true
set_option pp.fullNames true
set_option pp.maxSteps 100000
#check @Set.powersetCard
#check @Set.powersetCard.ofFinEmbEquiv
#check @exteriorPower.ιMulti
#check @exteriorPower.ιMultiDual
#check @exteriorPower.ιMultiDual_apply_ιMulti
#check @Module.Basis.exteriorPower
#check @exteriorPower.basis_repr_apply
#check @exteriorPower.finrank_eq
#check @exteriorPower.ιMulti_family_linearIndependent_field
#check @exteriorPower.map_injective_field
#check @exteriorPower.map_apply_ιMulti
```
