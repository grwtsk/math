import Folder.Basic

/-!
# Folder.Presentation.Document

Radiation role: presentation-document
BinaryMatrix spine: This module models documents derived from BinaryMatrixStream carriers without changing archive reconstruction.
Ontology: presentation.document
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure DocumentId where
  value : String

structure SectionId where
  value : String

structure DocumentSection where
  id : SectionId
  title : String
  body : String
  sourceModule? : Option String
  referenceRank : Nat

structure PresentationDocument where
  id : DocumentId
  title : String
  sections : List DocumentSection
  sortedByRank : Prop

theorem document_sections_have_rank
    (D : PresentationDocument)
    (S : DocumentSection)
    (_h : S ∈ D.sections) :
    ∃ r, S.referenceRank = r :=
  ⟨S.referenceRank, rfl⟩

end Presentation
end Folder
