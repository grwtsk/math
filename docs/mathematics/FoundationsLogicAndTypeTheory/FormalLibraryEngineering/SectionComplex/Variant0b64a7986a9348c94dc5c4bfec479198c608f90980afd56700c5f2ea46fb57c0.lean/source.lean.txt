-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GradedObjectHasTerm.Variant610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.GradedObjectHasTerm.Variant610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842","mathematical_subject":"Foundations.Unclassified","original_sha256":"610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/DerivedSheaf/SectionComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.DerivedSheaf.SectionComplex

/-!
# Folder.Theorem.DerivedSheaf.SectionComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports derived section-complex facts, not BinaryMatrix data.
Ontology: derived.section_complex
Pivot role: none
Zero typology: d_squared_zero-contract
Contract boundary: theorem-wrapper
Composite stack role: derived-sheaf
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GradedObjectHasTerm.Variant610678ac04a3eb4b23239c1c3c1d228db9966ce1063792254020dce7c24f7842

namespace Folder
namespace Theorem
namespace DerivedSheaf

theorem graded_object_has_term
    (G : Folder.DerivedSheaf.GradedObject)
    (n : Folder.DerivedSheaf.Degree) :
    ∃ T : Type _, T = G.term n :=
  Folder.DerivedSheaf.graded_object_has_term G n

theorem section_complex_d_squared_zero
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.d_comp_d_zero :=
  Folder.DerivedSheaf.section_complex_d_squared_zero C

theorem section_complex_bounded
    (C : Folder.DerivedSheaf.SectionComplex) :
    C.bounded :=
  Folder.DerivedSheaf.section_complex_bounded C

end DerivedSheaf
end Theorem
end Folder
