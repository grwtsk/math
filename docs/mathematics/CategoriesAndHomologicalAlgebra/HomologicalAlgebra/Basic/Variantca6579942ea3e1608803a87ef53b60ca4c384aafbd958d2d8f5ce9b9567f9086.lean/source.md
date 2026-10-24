# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Basic.Variantca6579942ea3e1608803a87ef53b60ca4c384aafbd958d2d8f5ce9b9567f9086

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e197f54ec4eb25232fd7627ea8c21cd1b3b80e27` · SHA-256 `286ab8dedcfaceb0049c068490b3d9d3d9c6623f0c31af44cc77d704b8ebc85e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologyDescriptor.Variantdccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.HomologyDescriptor.Variantdccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"dccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Surface/Homology/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.Homology.ChainMap


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.HomologyDescriptor.Variantdccdc8742750c47bc5dac765e23dba9e354189347fbaee36970459f349d0ab12

namespace Surface

structure HomologyDescriptor where
  complex : ChainComplex
  degree : Nat
  computedByCertificate : Prop

theorem homology_descriptor_requires_chain_complex
    (H : HomologyDescriptor) :
    H.complex.boundarySquaredZero -> H.complex.boundarySquaredZero := by
  intro h
  exact h

end Surface
```
