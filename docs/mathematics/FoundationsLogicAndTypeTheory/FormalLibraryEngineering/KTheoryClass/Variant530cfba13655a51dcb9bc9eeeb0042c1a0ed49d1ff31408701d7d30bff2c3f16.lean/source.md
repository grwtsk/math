# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KTheoryClass.Variant530cfba13655a51dcb9bc9eeeb0042c1a0ed49d1ff31408701d7d30bff2c3f16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae81a45272ad68727012a4cce3c488fef9e8bf16` · SHA-256 `f6da41d25d2a786547ae73a52c144099851d8be7f072aac760990d0defaf1131`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KtheoryClassHasValue.Variant2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.KtheoryClassHasValue.Variant2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d","mathematical_subject":"Foundations.Unclassified","original_sha256":"2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/KTheoryClass.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.ModuliStackKTheory

/-!
# Folder.Theorem.DerivedSheaf.KTheoryClass

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports K-theory class facts, not BinaryMatrix data.
Ontology: derived.k_theory_class
Pivot role: none
Zero typology: k_zero
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.KtheoryClassHasValue.Variant2663e1bf371bc5a546f084611987a50a763640b2e901f7af7ddcd62bd113f93d

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem ktheory_class_has_value
    {K : Folder.DerivedSheaf.KTheorySpace}
    (x : Folder.DerivedSheaf.KTheoryClass K) :
    ∃ v : K.Class, v = x.value :=
  Folder.DerivedSheaf.ktheory_class_has_value x

theorem mell_k_theory_targets_mell
    (M : Folder.DerivedSheaf.MellKTheory) :
    M.K_of_Mell :=
  Folder.DerivedSheaf.mell_k_theory_targets_mell M

theorem mell_contract_is_mell
    (M : Folder.DerivedSheaf.ModuliStackContract) :
    M.isMell :=
  Folder.DerivedSheaf.mell_contract_is_mell M

end DerivedSheaf
end Theorem
end Folder
```
