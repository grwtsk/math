# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Syntax.Variantccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `50b9c0d1f3fe1d5ed962982276c65022610f69ce` · SHA-256 `ccce36a2475e467ebb80e81daa63d0a761192cc927fcc86e130da3655f28085d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Latex.Syntax

Radiation role: latex-syntax
BinaryMatrix spine: This module stores LaTeX fragments emitted by presentation rules over BinaryMatrixStream carriers.
Ontology: latex.syntax
Pivot role: none
Zero typology: none
Contract boundary: definition
Composite stack role: presentation
-/

namespace Folder
namespace Latex

structure LatexFragment where
  source : String

structure LatexDocument where
  preamble : String
  body : String
  appendices : String

end Latex
end Folder
```
