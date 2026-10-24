-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerCharacteristicSignedSum.Variant44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EulerCharacteristicSignedSum.Variant44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd","mathematical_subject":"Foundations.Unclassified","original_sha256":"44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/EulerCharacteristic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.DerivedIndex

/-!
# Folder.Theorem.DerivedSheaf.EulerCharacteristic

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Euler-characteristic facts, not BinaryMatrix counts.
Ontology: derived.euler_characteristic
Pivot role: none
Zero typology: signed-alternating-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EulerCharacteristicSignedSum.Variant44dbcbd165df18efbfbf49346e67c25b2b4066687691de87469729b98ce71fbd

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem euler_characteristic_signed_sum
    {C : Folder.DerivedSheaf.SectionComplex}
    (chi : Folder.DerivedSheaf.EulerCharacteristic C) :
    chi.value_eq_signed_sum :=
  Folder.DerivedSheaf.euler_characteristic_signed_sum chi

theorem derived_index_interprets_as_index
    (I : Folder.DerivedSheaf.DerivedIndex) :
    I.interpretsAsIndex :=
  Folder.DerivedSheaf.derived_index_interprets_as_index I

theorem derived_index_has_euler_characteristic
    (I : Folder.DerivedSheaf.DerivedIndex) :
    ∃ chi : Folder.DerivedSheaf.EulerCharacteristic I.complex, chi = I.euler :=
  Folder.DerivedSheaf.derived_index_has_euler_characteristic I

end DerivedSheaf
end Theorem
end Folder
