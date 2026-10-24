# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BitMatrixStreamPresentation.Variant9086d6d4b7d5e53437602e80055968d62997311400c533e3dd5aa2b9f70f2616

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ef6b0eb09e40472c066a3a86c6f5c602526fe41` · SHA-256 `9086d6d4b7d5e53437602e80055968d62997311400c533e3dd5aa2b9f70f2616`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
