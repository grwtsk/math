-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationArtifactKind.Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PresentationArtifactKind.Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8","mathematical_subject":"Foundations.Unclassified","original_sha256":"4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/PublicationBoundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PresentationArtifactKind.Variant4e10cdc5baed54ad38956029e062abb2a235295cfa565efcf8bb88563e951bc8

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
