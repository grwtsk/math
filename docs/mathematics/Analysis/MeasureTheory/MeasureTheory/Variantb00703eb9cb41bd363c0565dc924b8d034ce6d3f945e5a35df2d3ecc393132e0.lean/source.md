# Complete source: GRWTSK.Analysis.MeasureTheory.MeasureTheory.Variantb00703eb9cb41bd363c0565dc924b8d034ce6d3f945e5a35df2d3ecc393132e0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad5fec04fbcff5a37790b99207996718527ae38a` · SHA-256 `b00703eb9cb41bd363c0565dc924b8d034ce6d3f945e5a35df2d3ecc393132e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib measure-theory patch boundary.

This marker records local measure-theory patches without importing the patch
corpus.
-/

namespace Formal.Patches.Mathlib.MeasureTheory

def conceptualSubdirectories : List String :=
  [ "Integral"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 1 := by
  rfl

end Formal.Patches.Mathlib.MeasureTheory
```
