# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.FixedPoint.Variant2293705921730fdacd69c9438df414da4c106910c6341ac6f739ebe974910e4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `22138ead3de702449aaef235fcf7de4a0d693337` · SHA-256 `2293705921730fdacd69c9438df414da4c106910c6341ac6f739ebe974910e4a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Archive.FixedPoint

/-!
# Folder.Theorem.Archive.FixedPoint

Radiation role: theorem-wrapper
BinaryMatrix spine: This wrapper exposes fixed-point certificate facts for archive presentation rules.
Ontology: proof.archive.fixed_point
Pivot role: none
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: infrastructure
-/

namespace Folder
namespace Theorem
namespace Archive

theorem fixedPointRecipe_realizes_self
    {A : Folder.Archive.MatrixAction}
    {E : Folder.Archive.RuleEngine}
    {D : Folder.Archive.MatrixAtomDictionary}
    (F : Folder.Archive.FixedPointRecipe A E D) :
    F.rule.apply F.output = F.output :=
  Folder.Archive.fixedPointRecipe_realizes_self F

end Archive
end Theorem
end Folder
```
