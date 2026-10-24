# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayMap.Variant783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a10afab0859cacf5ee40ba6dd9826543ec0a1bee` · SHA-256 `783ef4b746ea88ea32aaedef65a03ac0c2d2727a1643a6ce0c9aed5f48284c98`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Michael Rothgang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michael Rothgang
-/
module

@[expose] public section

universe u v w
variable {α : Type u} {β : Type v}

namespace List

/--
This function is provided as a more efficient runtime alternative to `(l.map f).toArray`.
(It avoids the intermediate memory allocation of creating an intermediate list first.)
For verification purposes, we immediately simplify it to that form.
-/
def toArrayMap (l : List α) (f : α → β) : Array β :=
  l.foldl (init := #[]) fun acc x => acc.push (f x)

-- Future: a toArrayMapM version could be useful (e.g. in mathlib's DeriveToExpr)
-- def toArrayMapM {m : Type v → Type w} [Monad m] (l : List α) (f : α → m β) : m (Array β) :=
--   l.foldlM (init := #[]) fun acc x => acc.push (f x)

theorem toArrayMap_toList (l : List α) (f : α → β ) : (l.toArrayMap f).toList = l.map f := by
  suffices ∀ arr : Array β, (l.foldl (init := arr) fun acc x => acc.push (f x)).toList
      = arr.toList ++ l.map f from
    this #[]
  induction l with
  | nil => simp
  | cons head tail tail_ih =>
    intro arr
    have : arr.toList ++ f head :: map f tail = (arr.push (f head)).toList ++ map f tail := by simp
    rw [List.foldl_cons, List.map_cons, this, ← tail_ih]


@[simp, grind =]
theorem toArrayMap_eq_toArray_map (l : List α) (f : α → β) : l.toArrayMap f = (l.map f).toArray :=
  Array.ext' (by simpa using toArrayMap_toList l f)

end List
```
