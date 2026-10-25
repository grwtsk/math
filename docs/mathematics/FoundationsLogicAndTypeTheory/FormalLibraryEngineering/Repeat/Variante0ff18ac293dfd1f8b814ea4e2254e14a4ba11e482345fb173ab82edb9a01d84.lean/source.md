# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Repeat.Variante0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42240f827f9506234ca5379c15ac7de3aa18a7dd` · SHA-256 `e0ff18ac293dfd1f8b814ea4e2254e14a4ba11e482345fb173ab82edb9a01d84`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Repeat
public import Init.Data.Iterators.Lemmas.Combinators.Take
import Init.Data.Iterators.Lemmas.Consumers.Access
import Init.Data.Iterators.Lemmas.Consumers.Collect
import Init.Data.Option.Lemmas

@[expose] public section

namespace Std
open Std.Iterators

variable {α : Type w} {f : α → α} {init : α}

theorem Iter.step_repeat :
    (Iter.repeat f init).step = .yield (Iter.repeat f (f init)) init ⟨rfl, rfl⟩ := by
  simp [Iter.«repeat», Iter.step, Iter.toIterM, IterM.step, Iterator.step, IterM.toIter]

theorem Iter.atIdxSlow?_zero_repeat :
    (Iter.repeat f init).atIdxSlow? 0 = some init := by
  rw [atIdxSlow?_eq_match, step_repeat]

theorem Iter.atIdxSlow?_succ_repeat {k : Nat} :
    (Iter.repeat f init).atIdxSlow? (k + 1) = (Iter.repeat f (f init)).atIdxSlow? k := by
  rw [atIdxSlow?_eq_match, step_repeat]

theorem Iter.atIdxSlow?_succ_repeat_eq_map {k : Nat} :
    (Iter.repeat f init).atIdxSlow? (k + 1) = f <$> ((Iter.repeat f init).atIdxSlow? k) := by
  rw [atIdxSlow?_eq_match, step_repeat]
  simp only
  induction k generalizing init
  · simp [atIdxSlow?_zero_repeat, Functor.map]
  · simp [*, atIdxSlow?_succ_repeat]

@[simp]
theorem Iter.atIdxSlow?_repeat {n : Nat} :
    (Iter.repeat f init).atIdxSlow? n = some (Nat.repeat f n init) := by
  induction n generalizing init
  · apply atIdxSlow?_zero_repeat
  · rename_i _ ih
    simp [atIdxSlow?_succ_repeat_eq_map, ih, Nat.repeat]

theorem Iter.isSome_atIdxSlow?_repeat {k : Nat} :
    ((Iter.repeat f init).atIdxSlow? k).isSome := by
  induction k generalizing init <;> simp [*]

@[simp]
theorem Iter.toList_take_repeat_succ {k : Nat} :
    ((Iter.repeat f init).take (k + 1)).toList = init :: ((Iter.repeat f (f init)).take k).toList := by
  rw [toList_eq_match_step, step_take, step_repeat]

end Std
```
