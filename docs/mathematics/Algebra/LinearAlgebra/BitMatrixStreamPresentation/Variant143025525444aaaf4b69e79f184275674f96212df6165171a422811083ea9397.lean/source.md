# Complete source: GRWTSK.Algebra.LinearAlgebra.BitMatrixStreamPresentation.Variant143025525444aaaf4b69e79f184275674f96212df6165171a422811083ea9397

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da5810ddf1f2ff4436c63a7253e17345655b06cf` · SHA-256 `143025525444aaaf4b69e79f184275674f96212df6165171a422811083ea9397`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.BitMatrixStreamPresentation

/-!
# Folder.Theorem.Presentation.BitMatrixStreamPresentation

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes BitMatrixStream presentation interface facts.
Ontology: proof.presentation.bitmatrixstream_latex
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem leanLatexPresentation_respectsRanking
    (R : Folder.Presentation.LeanLatexPresentationRule) :
    R.respectsRanking :=
  Folder.Presentation.leanLatexPresentation_respectsRanking R

end Presentation
end Theorem
end Folder
```
