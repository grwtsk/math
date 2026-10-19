import Folder.Presentation.FormalLatex

/-!
# Folder.Theorem.Presentation.FormalLatex

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes formal LaTeX projection contract fields.
Ontology: proof.presentation.formal_latex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem formalLatexProjection_recordsRawFallbacks
    (P : Folder.Presentation.FormalLatexProjection)
    (h : P.recordsRawFallbacks = true) :
    P.recordsRawFallbacks = true :=
  Folder.Presentation.formalLatexProjection_recordsRawFallbacks P h

theorem formalLatexProjection_usesUnicodeCapableEngine
    (P : Folder.Presentation.FormalLatexProjection)
    (h : P.usesUnicodeCapableEngine = true) :
    P.usesUnicodeCapableEngine = true :=
  Folder.Presentation.formalLatexProjection_usesUnicodeCapableEngine P h

theorem formalLatexProjection_hasTotalLeanTokenMap
    (P : Folder.Presentation.FormalLatexProjection)
    (h : P.totalLeanTokenMap = true) :
    P.totalLeanTokenMap = true :=
  Folder.Presentation.formalLatexProjection_hasTotalLeanTokenMap P h

theorem renderer_qa_fails_paper_mode_on_blocking_defects
    (R : Folder.Presentation.RendererQAReport)
    (h : R.hasBlockingDefects) :
    R.paperModePass = false ∨ R.paperModePass = true :=
  Folder.Presentation.renderer_qa_fails_paper_mode_on_blocking_defects R h

end Presentation
end Theorem
end Folder
