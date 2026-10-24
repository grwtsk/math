-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexProjectMain.Variante31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LatexProjectMain.Variante31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef","mathematical_subject":"Foundations.Unclassified","original_sha256":"e31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Latex/Project.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Latex.Project

/-!
# Folder.Theorem.Latex.Project

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes LaTeX project layout facts.
Ontology: proof.latex.project
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LatexProjectMain.Variante31e98a3024575e8186e063f246dd32ec5c81da51ed3813d384f142db2693bef

namespace Folder
namespace Theorem
namespace Latex

theorem latexProject_main
    (P : Folder.Latex.LatexProject)
    (h : P.rootFile = "main.tex") :
    P.hasMain :=
  Folder.Latex.latexProject_main P h

end Latex
end Theorem
end Folder
