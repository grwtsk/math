# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NumberTheory.Variant409a0a0885f0be67d6983686d810e0fae1d6093beeb3735ef5960372bcb6cebe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bba5efcfd4552f37a45e8e41b3a603998ac2623` · SHA-256 `409a0a0885f0be67d6983686d810e0fae1d6093beeb3735ef5960372bcb6cebe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-!
Mathlib number-theory patch boundary.

This marker records local number-theory and sieve patches without importing
the patch corpus.
-/

namespace Formal.Patches.Mathlib.NumberTheory

def conceptualSubdirectories : List String :=
  [ "AbelSummation"
  , "Chebyshev"
  , "Sieve"
  ]

theorem conceptualSubdirectories_count :
    conceptualSubdirectories.length = 3 := by
  rfl

end Formal.Patches.Mathlib.NumberTheory
```
