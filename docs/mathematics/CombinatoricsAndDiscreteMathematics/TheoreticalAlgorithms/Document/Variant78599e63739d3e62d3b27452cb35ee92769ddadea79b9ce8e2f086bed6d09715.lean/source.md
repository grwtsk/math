# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Document.Variant78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ceaacc3c680f671a1cee2b24093b9cc9b90596f6` · SHA-256 `78599e63739d3e62d3b27452cb35ee92769ddadea79b9ce8e2f086bed6d09715`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
