# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HEN12ExtensionNonclosure.Variantc95c001729f09a27e5893651a7319f0c498841f991376b54f3e0ebca904a4131

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f3c24103af6763ebeb2ba6efb548374ec135624` · SHA-256 `11f24044ae2077a95f8c3c5f320ccfd7bc08ce6f17fe5da97483fb6a8c012905`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen12ExtensionNonclosure.Variant074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Hen12ExtensionNonclosure.Variant074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b","mathematical_subject":"Foundations.Unclassified","original_sha256":"074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/Algebraization/Theorems/HEN12_ExtensionNonclosure.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.Algebraization.Foundations


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Hen12ExtensionNonclosure.Variant074936018e97ab2bb3a4fe3dd48eb79e6d9f375470d8c67dae07cd06d79d850b

namespace FCRS.Algebraization.Theorems

/--
The known nonalgebraizable extension prevents the effective Henselian target
from being an ambient extension-closed (Serre) subcategory in the obstructed
characteristic scopes.
-/
theorem hen12_extensionNonclosure
    (S : AlgebraizationSystem)
    (registry : AlgebraizationTheoremRegistry S) :
    HEN12Claim S :=
  registry.hen12

end FCRS.Algebraization.Theorems
```
