# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CF02DesignatedConeCompatibility.Variantd38155ebb6666ac5a2dc16b30ee1d84f92f807a3c1488bd88d0d0b03f085ea38

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `557bd5a484b4d99cf3bc1c7ba54e1d29a0f705eb` · SHA-256 `3bc6c6bf1911f5e97631d7a568d8596e2f4345d64114f54197e1b6b4d4233ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf02DesignatedConeCompatibility.Variant0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Cf02DesignatedConeCompatibility.Variant0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc","mathematical_subject":"Foundations.Unclassified","original_sha256":"0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledPlane/Theorems/CF02_DesignatedConeCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledPlane.Registry


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cf02DesignatedConeCompatibility.Variant0bafda2bbb6826458e03c1dbf04eb0ae46e8b256b457858b127daba1f56542bc

namespace FCRS.ControlledPlane.Theorems

/--
CF-02 research-rule projection for designated pullback-shaped-cone and
base-change compatibility.  No universal pullback property is represented.
-/
theorem cf02_designatedConeCompatibility
    (S : RealizationSystem)
    (M : ControlledPlaneModel S)
    (registry : ControlledPlaneResearchRegistry S M) :
    CF02Claim S M :=
  registry.cf02

end FCRS.ControlledPlane.Theorems
```
