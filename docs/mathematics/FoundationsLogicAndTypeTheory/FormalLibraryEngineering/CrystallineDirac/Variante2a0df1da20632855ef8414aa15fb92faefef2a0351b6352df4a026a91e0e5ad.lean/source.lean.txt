-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDiracUsesConnection.Varianta7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.CrystallineDiracUsesConnection.Varianta7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6","mathematical_subject":"Foundations.Unclassified","original_sha256":"a7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/CrystallineIndex/CrystallineDirac.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.CrystallineIndex.CrystallineDirac

/-!
# Folder.Theorem.CrystallineIndex.CrystallineDirac

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports crystalline Dirac contract exposure facts.
Ontology: proof.crystalline_index.dirac
Pivot role: spectral
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: crystalline-index
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CrystallineDiracUsesConnection.Varianta7579da2d44acf4663ee0bd71c6d453b1153d71d41bb89cbeca63ff808bb62c6

namespace Folder
namespace Theorem
namespace CrystallineIndex
namespace CrystallineDirac

theorem crystalline_dirac_uses_connection
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    (D : Folder.CrystallineIndex.CrystallineDiracOperator nabla) :
    D.usesConnection :=
  Folder.CrystallineIndex.crystalline_dirac_uses_connection D

theorem crystalline_dirac_fredholm_analogue
    {C : Folder.CrystallineTensor.CrystallineSite}
    {F : Folder.CrystallineTensor.Crystal C}
    {nabla : Folder.CrystallineTensor.Connection F}
    (D : Folder.CrystallineIndex.CrystallineDiracOperator nabla) :
    D.fredholmAnalogue :=
  Folder.CrystallineIndex.crystalline_dirac_fredholm_analogue D

end CrystallineDirac
end CrystallineIndex
end Theorem
end Folder
