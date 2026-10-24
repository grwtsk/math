# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplex.Variant1bc03c7391069ea57d4f3093cace45e015000f9390043b6b10751de81968d43f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f1b7ac225cc005bec65f16d59b0299a4e70b6d4` · SHA-256 `a21a11496c6444c153aa6c2cc0450ec3dd0a6a159190707f32777f92dfa26e2e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplex.Varianta6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.ChainComplex.Varianta6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"a6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Homology/ChainComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Flow.Heat.Coverage


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainComplex.Varianta6d66d1fc32d9365bfa1b6b1aad5b8f9ac0e5ab59ee992a8e27f58944d4a3456

namespace Surface

structure ChainComplex where
  objectName : String
  boundarySquaredZero : Prop

theorem chainComplex_requires_boundary_squared_zero
    (C : ChainComplex) :
    C.boundarySquaredZero -> C.boundarySquaredZero := by
  intro h
  exact h

end Surface
```
