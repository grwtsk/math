# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EXT01ExtensionCriterion.Varianta041ea532b3601743601e752964b5457dcb08ee1d938103be9e7c6bccbdae9b9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fd2a3b7df6dc0f1a94269ac911b00ed23db640b5` · SHA-256 `7adb1dae3f5b678c84fafe0c6f94ac7e62c5f4a0be29678c7cc5322fa9ba45b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext01ExtensionCriterion.Variant9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Ext01ExtensionCriterion.Variant9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f","mathematical_subject":"Foundations.Unclassified","original_sha256":"9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/EXT01_ExtensionCriterion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ext01ExtensionCriterion.Variant9391fc2e9eacd68b0262b27d52fdf58746074bd0fa0e7ecc28dc35c35a32102f

namespace FCRS.Algebraization.Theorems

/-- A Henselian extension is effective exactly when its class lies in the algebraic image. -/
theorem ext01_extensionCriterion
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    ExtensionImageCharacterization S.extensions :=
  registry.ext01

end FCRS.Algebraization.Theorems
```
