import Think.SourceTree.Legacy.Manuscript.Generated.SourceIndex

set_option autoImplicit false

namespace Think.Manuscript.Generated.Outline

structure SectionEntry where
  id : String
  title : String
  fileCount : Nat
  declarationCount : Nat
  residueCount : Nat
  checkedProvedCount : Nat
  checkedResidueCount : Nat
  hasAuthorityBoundary : Bool
  needsManualNarrative : Bool
deriving DecidableEq, Repr

def sections : List SectionEntry :=
  [
    { id := "frontMatter", title := "Front matter and theorem-boundary summary", fileCount := 8, declarationCount := 156, residueCount := 31, checkedProvedCount := 8, checkedResidueCount := 8, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "kernel", title := "Kernel: checked claims, targets, residues, bridges", fileCount := 11, declarationCount := 84, residueCount := 5, checkedProvedCount := 2, checkedResidueCount := 1, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "sourceTreeProjection", title := "Source tree and projection graph", fileCount := 44, declarationCount := 293, residueCount := 22, checkedProvedCount := 2, checkedResidueCount := 3, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "pipelineCenter", title := "Pipeline center: control spine and Rado extensions", fileCount := 40, declarationCount := 507, residueCount := 18, checkedProvedCount := 1, checkedResidueCount := 7, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "phaseTable", title := "Phase table, symmetry, and residue layer", fileCount := 5, declarationCount := 20, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
    { id := "poleFamilies", title := "Pole families", fileCount := 11, declarationCount := 44, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
    { id := "residueLedger", title := "Residue algebra and ledger", fileCount := 15, declarationCount := 42, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "modularCarrier", title := "Modular wave carrier and finite q-shadow", fileCount := 13, declarationCount := 169, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
    { id := "targetBoundary", title := "Targets and external theorem boundary", fileCount := 15, declarationCount := 343, residueCount := 19, checkedProvedCount := 0, checkedResidueCount := 20, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "radoHeatflowCore", title := "Rado-projected modular heatflow core", fileCount := 50, declarationCount := 303, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "boundaryMemory", title := "Boundary memory and inner/outer recall", fileCount := 0, declarationCount := 0, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
    { id := "compactPrimeTorsion", title := "Compactness, prime compact adjunction, torsion, gamma scattering", fileCount := 0, declarationCount := 0, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
    { id := "researchCorpus", title := "Research survey corpus and open frontier", fileCount := 22, declarationCount := 267, residueCount := 50, checkedProvedCount := 0, checkedResidueCount := 18, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "validationGate", title := "Validation shell and acceptance gate", fileCount := 42, declarationCount := 276, residueCount := 1, checkedProvedCount := 0, checkedResidueCount := 1, hasAuthorityBoundary := true, needsManualNarrative := true },
    { id := "applicationChapters", title := "Existing manuscript modules as application chapters", fileCount := 0, declarationCount := 0, residueCount := 0, checkedProvedCount := 0, checkedResidueCount := 0, hasAuthorityBoundary := false, needsManualNarrative := true },
  ]

def sectionCount : Nat := sections.length

end Think.Manuscript.Generated.Outline
