-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/WittComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.WittComplex

/-!
# Folder.Theorem.CrystallineIndex.WittComplex

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Witt-complex contract exposure facts.
Ontology: proof.crystalline_index.witt_complex
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittComplexIsComplex.Variantcf18297f62de43b7600569eefc39d2881c7e90466fe742ea2ae4d65acfa98e09

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace WittComplex

theorem witt_complex_is_complex
    (W : Folder.CrystallineIndex.WittComplex) :
    W.isComplex :=
  Folder.CrystallineIndex.witt_complex_is_complex W

theorem witt_element_has_degree
    {W : Folder.CrystallineIndex.WittComplex}
    (x : Folder.CrystallineIndex.WittElement W) :
    ∃ d : W.Degree, x.degree = d :=
  Folder.CrystallineIndex.witt_element_has_degree x

end WittComplex
end CrystallineIndex
end Theorem
end Folder
