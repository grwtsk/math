# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.MemoFix.Variant751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dead3fbcac55a75d84037047113ec061f8af87e` · SHA-256 `751e97223ff3debe93374a035eb7e6a5b9d7d0f5aeedc4160695eaba8a89ada8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Edward Ayers
-/
import Std.Data.HashMap.Basic
import Mathlib.Init

/-!
# Fixpoint function with memoisation

-/

universe u v
open ShareCommon Std

private unsafe abbrev ObjectMap := @Std.HashMap Object Object ⟨Object.ptrEq⟩ ⟨Object.hash⟩

private unsafe def memoFixImplObj (f : (Object → Object) → (Object → Object)) (a : Object) :
    Object := unsafeBaseIO do
  let cache : IO.Ref ObjectMap ← ST.mkRef ∅
  let rec fix (a) := unsafeBaseIO do
    if let some b := (← cache.get)[a]? then
      return b
    let b := f fix a
    cache.modify (·.insert a b)
    pure b
  pure <| fix a

private unsafe def memoFixImpl {α : Type u} {β : Type v} [Nonempty β] :
    (f : (α → β) → (α → β)) → (a : α) → β :=
  unsafeCast memoFixImplObj

/-- Takes the fixpoint of `f` with caching of values that have been seen before.
Hashing makes use of a pointer hash.

This is useful for implementing tree traversal functions where
subtrees may be referenced in multiple places.
-/
@[implemented_by memoFixImpl]
opaque memoFix {α : Type u} {β : Type v} [Nonempty β] (f : (α → β) → (α → β)) : α → β
```
