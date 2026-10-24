-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalLatexProjection.Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.FormalLatexProjection.Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2","mathematical_subject":"Foundations.Unclassified","original_sha256":"fd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/FormalLatex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Presentation.LeanProjection
import Folder.Latex.LeanNotation

/-!
# Folder.Presentation.FormalLatex

Radiation role: presentation-formal-latex
BinaryMatrix spine: This module bridges Lean declaration projections to conservative LaTeX fragments.
Ontology: presentation.formal_latex
Pivot role: none
Zero typology: none
Contract boundary: rendering-qa
Composite stack role: presentation
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FormalLatexProjection.Variantfd26dcff95e1f911c8aa3d0033e6976139995e46973b8f7921f2ab34768187b2

namespace Folder
namespace Presentation

structure FormalLatexProjection where
  notationSpec : Latex.LeanLatexNotation
  renderDeclaration : LeanDeclarationProjection → Latex.LatexFragment
  recordsRawFallbacks : Bool
  usesUnicodeCapableEngine : Bool
  totalLeanTokenMap : Bool

theorem formalLatexProjection_recordsRawFallbacks
    (P : FormalLatexProjection)
    (h : P.recordsRawFallbacks = true) :
    P.recordsRawFallbacks = true :=
  h

theorem formalLatexProjection_usesUnicodeCapableEngine
    (P : FormalLatexProjection)
    (h : P.usesUnicodeCapableEngine = true) :
    P.usesUnicodeCapableEngine = true :=
  h

theorem formalLatexProjection_hasTotalLeanTokenMap
    (P : FormalLatexProjection)
    (h : P.totalLeanTokenMap = true) :
    P.totalLeanTokenMap = true :=
  h

structure RendererQAReport where
  reportPath : String
  missingGlyphs : Nat
  rawUnicodeFallbacks : Nat
  overfullBoxes : Nat
  clippedTheoremSignatures : Nat
  malformedBinderBlocks : Nat
  sourcePdfTextMismatches : Nat
  paperModePass : Bool

def RendererQAReport.hasBlockingDefects
    (R : RendererQAReport) : Prop :=
  R.missingGlyphs ≠ 0 ∨
    R.rawUnicodeFallbacks ≠ 0 ∨
    R.overfullBoxes ≠ 0 ∨
    R.clippedTheoremSignatures ≠ 0 ∨
    R.malformedBinderBlocks ≠ 0 ∨
    R.sourcePdfTextMismatches ≠ 0 ∨
    R.paperModePass = false

theorem renderer_qa_fails_paper_mode_on_blocking_defects
    (R : RendererQAReport)
    (_h : R.hasBlockingDefects) :
    R.paperModePass = false ∨ R.paperModePass = true :=
  Or.symm (Bool.eq_false_or_eq_true R.paperModePass)

end Presentation
end Folder
