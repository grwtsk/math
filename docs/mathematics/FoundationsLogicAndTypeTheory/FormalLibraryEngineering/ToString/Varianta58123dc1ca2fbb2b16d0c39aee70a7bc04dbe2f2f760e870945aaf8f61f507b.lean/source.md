# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToString.Varianta58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d144456885d5571f07f84b2be84b94f2f4e5a16d` · SHA-256 `a58123dc1ca2fbb2b16d0c39aee70a7bc04dbe2f2f760e870945aaf8f61f507b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia Markus Himmel
-/
module

prelude
public import Init.Data.ToString.Extra
import all Init.Data.Int.Repr
import Init.Data.Int.Order
import Init.Data.Int.LemmasAux

namespace Int

public theorem repr_eq_if {a : Int} :
    a.repr = if 0 ≤ a then a.toNat.repr else "-" ++ (-a).toNat.repr := by
  cases a <;> simp [Int.repr]

@[simp]
public theorem toString_eq_repr {a : Int} : toString a = a.repr := (rfl)

end Int
```
