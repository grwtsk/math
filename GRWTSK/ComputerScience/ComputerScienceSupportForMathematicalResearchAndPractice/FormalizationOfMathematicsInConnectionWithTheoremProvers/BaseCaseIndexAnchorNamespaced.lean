-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndexNonzero.Variant8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.BaseCaseIndexNonzero.Variant8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f","mathematical_subject":"Foundations.Unclassified","original_sha256":"8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/BaseCaseIndexAnchor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.BaseCaseIndexAnchor

/-!
# Folder.Theorem.DerivedSheaf.BaseCaseIndexAnchor

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports base-case index-anchor facts, not BinaryMatrix data.
Ontology: base.index_anchor
Pivot role: spectral
Zero typology: nonzero-index
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BaseCaseIndexNonzero.Variant8793d5169636cef5ffe5529f74d7b97a6f8bbcbd5697f5442ad493b3d03be06f

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem base_case_index_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.kIndex.indexClass.Nonzero :=
  Folder.DerivedSheaf.base_case_index_nonzero B

theorem base_case_index_euler_realizes_kIndex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kIndex B

theorem base_case_index_euler_realizes_kindex
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.euler_realizes_kIndex :=
  Folder.DerivedSheaf.base_case_index_euler_realizes_kindex B

theorem base_case_anchor_euler_nonzero
    {M : Folder.DerivedSheaf.MellKTheory}
    (B : Folder.DerivedSheaf.BaseCaseIndexAnchor M) :
    B.baseIndex.derivedIndex.euler.value ≠ 0 :=
  Folder.DerivedSheaf.base_case_anchor_euler_nonzero B

end DerivedSheaf
end Theorem
end Folder
