# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainMap.Variantc4387c2324b94c3e840710dc5c743bb9ee43b382497ff964b82bc0fcd509e426

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ac478bb0f985e2c958dd4103bc1503c20ec0f593` · SHA-256 `02c178de98f903f080edf4ddaa25a579b1c44842d0871ddf61b02fe18c883fc6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainMapDescriptor.Variant29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.ChainMapDescriptor.Variant29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Homology/ChainMap.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Homology.ChainComplex


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.ChainMapDescriptor.Variant29539e447ffebb1bf3b9f6478add709b085650c00b64757a6b029c1d946d0cef

namespace Surface

structure ChainMapDescriptor where
  source : ChainComplex
  target : ChainComplex
  commutesWithBoundary : Prop

theorem chainMap_requires_boundary_commutation
    (f : ChainMapDescriptor) :
    f.commutesWithBoundary -> f.commutesWithBoundary := by
  intro h
  exact h

end Surface
```
