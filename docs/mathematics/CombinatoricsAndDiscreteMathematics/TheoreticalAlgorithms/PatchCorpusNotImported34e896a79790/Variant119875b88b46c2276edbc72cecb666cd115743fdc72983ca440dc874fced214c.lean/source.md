# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PatchCorpusNotImported34e896a79790.Variant119875b88b46c2276edbc72cecb666cd115743fdc72983ca440dc874fced214c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7519a06f6567697fca9ea6d4bc3c8562f16fbe1c` · SHA-256 `119875b88b46c2276edbc72cecb666cd115743fdc72983ca440dc874fced214c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Formal.Ast.Surface.projection_operators.defaultstatus_is_localonly_9fabe884afb2

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
