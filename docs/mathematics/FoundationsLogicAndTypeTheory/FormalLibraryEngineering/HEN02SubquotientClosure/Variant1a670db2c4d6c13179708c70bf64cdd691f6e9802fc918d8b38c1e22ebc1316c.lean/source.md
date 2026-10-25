# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN02SubquotientClosure.Variant1a670db2c4d6c13179708c70bf64cdd691f6e9802fc918d8b38c1e22ebc1316c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40e3ed5592faef4eb1a71db9026e7bc3c80ea2f2` · SHA-256 `2608dab51403a9401a77aa2d346744e9e3847db018155b8d35f3c238fe5fb9ff`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen02SubquotientClosure.Variantc3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen02SubquotientClosure.Variantc3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce","mathematical_subject":"Foundations.Unclassified","original_sha256":"c3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN02_SubquotientClosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen02SubquotientClosure.Variantc3edf46463c39174eec59869e74ba4c65a0d56f9e044ecdb0228ecb0f3d630ce

namespace FCRS.Algebraization.Theorems

/--
HEN-2: the essential image is closed under coherent subobjects and
epimorphic quotients.  No ambient extension-closure conclusion is included.
-/
theorem hen02_subquotientClosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN02Claim S :=
  registry.hen02

end FCRS.Algebraization.Theorems
```
