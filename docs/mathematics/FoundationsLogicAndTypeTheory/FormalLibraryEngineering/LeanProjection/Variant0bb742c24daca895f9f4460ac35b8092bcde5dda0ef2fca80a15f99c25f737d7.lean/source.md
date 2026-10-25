# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeanProjection.Variant0bb742c24daca895f9f4460ac35b8092bcde5dda0ef2fca80a15f99c25f737d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `486d970b44cc2d067ee9f7bdda46139099d5d928` · SHA-256 `0bb742c24daca895f9f4460ac35b8092bcde5dda0ef2fca80a15f99c25f737d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Presentation.LeanProjection

/-!
# Folder.Theorem.Presentation.LeanProjection

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes conservative Lean projection facts.
Ontology: proof.presentation.lean_projection
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation

theorem declaration_projection_has_name
    (D : Folder.Presentation.LeanDeclarationProjection) :
    ∃ name, D.declarationName = name :=
  Folder.Presentation.declaration_projection_has_name D

end Presentation
end Theorem
end Folder
```
