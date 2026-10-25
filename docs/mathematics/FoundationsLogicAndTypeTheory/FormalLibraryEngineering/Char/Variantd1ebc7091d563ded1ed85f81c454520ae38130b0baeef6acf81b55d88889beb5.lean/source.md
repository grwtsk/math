# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Char.Variantd1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c7a79084034ca10e8ab1d9d7916a9b80814c2e8` · SHA-256 `d1ebc7091d563ded1ed85f81c454520ae38130b0baeef6acf81b55d88889beb5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Std.Tactic.RCases

namespace String

private theorem csize_eq (c) :
    csize c = 1 ∨ csize c = 2 ∨ csize c = 3 ∨
    csize c = 4 := by
  simp only [csize, Char.utf8Size]
  repeat (first | split | (solve | simp (config := {decide := true})))

theorem csize_pos (c) : 0 < csize c := by
  rcases csize_eq c with _|_|_|_ <;> simp_all (config := {decide := true})

theorem csize_le_4 (c) : csize c ≤ 4 := by
  rcases csize_eq c with _|_|_|_ <;> simp_all (config := {decide := true})

end String
```
