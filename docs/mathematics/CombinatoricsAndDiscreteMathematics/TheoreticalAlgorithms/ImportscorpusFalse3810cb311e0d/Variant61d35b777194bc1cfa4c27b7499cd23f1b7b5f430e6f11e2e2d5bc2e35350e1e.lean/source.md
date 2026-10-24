# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ImportscorpusFalse3810cb311e0d.Variant61d35b777194bc1cfa4c27b7499cd23f1b7b5f430e6f11e2e2d5bc2e35350e1e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d7334bbec7b33af45dc3e58a4625c6541003e41e` · SHA-256 `61d35b777194bc1cfa4c27b7499cd23f1b7b5f430e6f11e2e2d5bc2e35350e1e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.finite_bit_boundary.optimalbands_count_30ba01676d3a
import Formal.Ast.Surface.finite_bit_boundary.checkedroots_count_80ce23443926
import Formal.Ast.Surface.finite_bit_boundary.authoritybands_count_17240d22a9d5

/-!
Controlled root for the Formal program.

All banded source regrowth is routed through this module. It imports the layout
algorithm, the checked kernel, and the unified surface. It does not import
unresolved blueprint, patch, or archive corpus files.
-/

namespace Formal.Root

def controlledRoot : String := "Formal.Root"

def importsCorpus : Bool := false

def bandedRoots : List Formal.ConceptualBoundary :=
  [ Formal.ConceptualBoundary.marker .surface "Formal.Algorithm"
  , Formal.ConceptualBoundary.marker .checked "Formal.Checked"
  , Formal.ConceptualBoundary.marker .checked "Formal.Kernel"
  , Formal.ConceptualBoundary.marker .surface "Formal.Surface"
  , Formal.ConceptualBoundary.marker .surface "Formal.Conceptual"
  , Formal.ConceptualBoundary.marker .surface "Formal.Band"
  , Formal.ConceptualBoundary.marker .blueprint "Formal.Blueprint"
  , Formal.ConceptualBoundary.marker .patch "Formal.Patches.Mathlib"
  , Formal.ConceptualBoundary.marker .external "Formal.External"
  , Formal.ConceptualBoundary.marker .archive "Formal.Archive"
  ]

theorem importsCorpus_false : importsCorpus = false := by
  rfl

theorem bandedRoots_count : bandedRoots.length = 10 := by
  rfl

end Formal.Root
```
