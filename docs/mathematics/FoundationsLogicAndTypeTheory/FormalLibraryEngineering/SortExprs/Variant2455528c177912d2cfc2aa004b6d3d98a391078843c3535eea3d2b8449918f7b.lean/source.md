# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SortExprs.Variant2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07c689f8b40fbb03076f406ff0d0f025c3feca02` · SHA-256 `2455528c177912d2cfc2aa004b6d3d98a391078843c3535eea3d2b8449918f7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Expr

public section

namespace Lean

abbrev Perm := Std.HashMap Nat Nat

/--
Sorts the given expressions using `Expr.lt`, and creates a "permutation map" storing the new position of each expression.
If `lt := false`, then sorts expressions in decreasing order.
-/
def sortExprs (es : Array Expr) (lt := true) : Array Expr × Perm :=
  let es := es.mapIdx fun i e => (e, i)
  let es := if lt then
    es.qsort fun (e₁, _) (e₂, _) => e₁.lt e₂
  else
    es.qsort fun (e₁, _) (e₂, _) => e₂.lt e₁
  let (_, perm) := es.foldl (init := (0, ∅)) fun (i, perm) (_, j) => (i+1, perm.insert j i)
  let es := es.map (·.1)
  (es, perm)

end Lean
```
