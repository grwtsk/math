# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Patches.Variantde047d6f37e5316b78a4640d722880555a1afe58892fd7b73bc1c780dc6b61b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c6df33343b1cf11297901c092f47b362938c6b5b` · SHA-256 `de047d6f37e5316b78a4640d722880555a1afe58892fd7b73bc1c780dc6b61b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Patches.Mathlib

/-!
Patch surface marker.

This root surfaces local patch metadata and conceptual boundaries only. It does
not import local Mathlib patch files into theorem authority.
-/

namespace Formal.Surface.Patches

def importsPatchCorpus : Bool := false

theorem patch_corpus_not_imported : importsPatchCorpus = false := by
  rfl

def conceptualBoundaries : List String :=
  [ "Formal.Patches.Mathlib.Algebra"
  , "Formal.Patches.Mathlib.Analysis"
  , "Formal.Patches.Mathlib.MeasureTheory"
  , "Formal.Patches.Mathlib.NumberTheory"
  , "Formal.Patches.Mathlib.Topology"
  ]

theorem conceptualBoundaries_count : conceptualBoundaries.length = 5 := by
  rfl

end Formal.Surface.Patches
```
