# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PublicationBoundary.Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a8302038cb3d5c29683f127257ec4bd7226a28b` · SHA-256 `4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
# Folder.Presentation.PublicationBoundary

Radiation role: presentation-boundary
BinaryMatrix spine: This module records publication-status boundaries for generated LaTeX artifacts.
Ontology: presentation.publication_boundary
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

inductive PresentationArtifactKind where
  | generatedDeclarationAtlas
  | conventionalMathematicalManuscript
  | formalizationAppendix
deriving DecidableEq, Repr

/--
Publication boundary for the `lean-formal-latex` output.

The generated project is a declaration atlas and documentation artifact. It is
not a conventional mathematical manuscript, not a paper proof, and not the
authoritative formal source.
-/
structure LeanFormalLatexPublicationBoundary where
  artifactKind : PresentationArtifactKind
  presentationRule : String
  notConventionalManuscript : Prop
  notConventionalManuscript_holds : notConventionalManuscript
  notProofOfRH : Prop
  notProofOfRH_holds : notProofOfRH
  sourceLeanAuthoritative : Prop
  sourceLeanAuthoritative_holds : sourceLeanAuthoritative
  sourceLabel : String

def leanFormalLatexPublicationBoundary : LeanFormalLatexPublicationBoundary where
  artifactKind := PresentationArtifactKind.generatedDeclarationAtlas
  presentationRule := "lean-formal-latex"
  notConventionalManuscript := True
  notConventionalManuscript_holds := trivial
  notProofOfRH := True
  notProofOfRH_holds := trivial
  sourceLeanAuthoritative := True
  sourceLeanAuthoritative_holds := trivial
  sourceLabel :=
    "generated Lean declaration atlas; documentation artifact, not mathematical paper"

theorem lean_formal_latex_not_conventional_manuscript :
    leanFormalLatexPublicationBoundary.notConventionalManuscript :=
  leanFormalLatexPublicationBoundary.notConventionalManuscript_holds

theorem lean_formal_latex_not_proof_of_rh :
    leanFormalLatexPublicationBoundary.notProofOfRH :=
  leanFormalLatexPublicationBoundary.notProofOfRH_holds

theorem lean_formal_latex_source_lean_authoritative :
    leanFormalLatexPublicationBoundary.sourceLeanAuthoritative :=
  leanFormalLatexPublicationBoundary.sourceLeanAuthoritative_holds

theorem generated_declaration_atlas_ne_conventional_manuscript :
    PresentationArtifactKind.generatedDeclarationAtlas ≠
      PresentationArtifactKind.conventionalMathematicalManuscript := by
  intro h
  cases h

end Presentation
end Folder
```
