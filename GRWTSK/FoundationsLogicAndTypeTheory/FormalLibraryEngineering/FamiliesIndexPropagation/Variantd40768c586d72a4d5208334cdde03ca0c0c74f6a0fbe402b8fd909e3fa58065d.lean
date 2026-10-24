-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesKIndexNontrivialIfSupplied.Variantf54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FamiliesKIndexNontrivialIfSupplied.Variantf54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097","mathematical_subject":"Foundations.Unclassified","original_sha256":"f54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CanonicalPath/FamiliesIndexPropagation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CanonicalPath.FamiliesIndexPropagation

/-!
# Folder.Theorem.CanonicalPath.FamiliesIndexPropagation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports families-index propagation facts.
Ontology: proof.canonical_path.families_index
Pivot role: spectral
Zero typology: k-zero
Contract boundary: theorem-wrapper
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FamiliesKIndexNontrivialIfSupplied.Variantf54c511943f7d4f7c223140be886e1e58df9395b651fa01864160bd7e4608097

namespace Folder
namespace Theorem
namespace CanonicalPath

theorem families_k_index_nontrivial_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.nontrivialOnComponent :=
  Folder.CanonicalPath.families_k_index_nontrivial_if_supplied I

theorem families_k_index_specializes_if_supplied
    {F : Folder.CanonicalPath.PerfectSectionComplexFamily}
    {M : Folder.DerivedSheaf.MellKTheory}
    (I : Folder.CanonicalPath.FamiliesKIndexPropagation F M) :
    I.specializesToFiberIndex :=
  Folder.CanonicalPath.families_k_index_specializes_if_supplied I

end CanonicalPath
end Theorem
end Folder
