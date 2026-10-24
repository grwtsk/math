-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanLatexNotationEscapesSpecialChars.Variantad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.LeanLatexNotationEscapesSpecialChars.Variantad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd","mathematical_subject":"Foundations.Unclassified","original_sha256":"ad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/Latex/LeanNotation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Latex.LeanNotation
import Folder.Latex.Section

/-!
# Folder.Theorem.Latex.LeanNotation

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes LaTeX notation and section ordering facts.
Ontology: proof.latex.lean_notation
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanLatexNotationEscapesSpecialChars.Variantad026c7dcc612c3bb547a5508b523671dac301f24e0064132d5fd6e5b37eddcd

namespace Folder
namespace Theorem
namespace Latex

theorem leanLatexNotation_escapesSpecialChars
    (N : Folder.Latex.LeanLatexNotation) :
    N.escapesSpecialChars :=
  Folder.Latex.leanLatexNotation_escapesSpecialChars N

theorem latex_section_order_sorted
    (O : Folder.Latex.LatexSectionOrder) :
    O.sections.Pairwise (fun a b => b.rank ≤ a.rank) :=
  Folder.Latex.latex_section_order_sorted O

end Latex
end Theorem
end Folder
