import Folder.Carrier.BinaryMatrixStream
import Folder.Presentation.Document
import Folder.Presentation.Rule
import Folder.Presentation.LeanProjection
import Folder.Presentation.ReferenceRank
import Folder.Latex.Project

/-!
# Folder.Presentation.BitMatrixStreamPresentation

Radiation role: bitmatrixstream-presentation
BinaryMatrix spine: This module treats BinaryMatrixStream as a carrier interpreted by presentation rules.
Ontology: presentation.bitmatrixstream_latex
Pivot role: none
Zero typology: none
Contract boundary: interface
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

structure BitMatrixStreamMaterializer where
  materializeFiles :
    Carrier.BinaryMatrixStream → List (String × String)
  soundnessNote : String

structure LeanLatexPresentationInput where
  stream : Carrier.BinaryMatrixStream
  materializer : BitMatrixStreamMaterializer
  graph : ReferenceGraph
  ranking : ReferenceRanking
  projections : List LeanModuleProjection

structure LeanLatexPresentationOutput where
  project : Latex.LatexProject
  document : PresentationDocument
  emittedFiles : List (String × String)

structure LeanLatexPresentationRule where
  apply :
    LeanLatexPresentationInput → LeanLatexPresentationOutput
  respectsRanking :
    Prop
  respectsRanking_certified :
    respectsRanking

theorem leanLatexPresentation_respectsRanking
    (R : LeanLatexPresentationRule) :
    R.respectsRanking :=
  R.respectsRanking_certified

end Presentation
end Folder
