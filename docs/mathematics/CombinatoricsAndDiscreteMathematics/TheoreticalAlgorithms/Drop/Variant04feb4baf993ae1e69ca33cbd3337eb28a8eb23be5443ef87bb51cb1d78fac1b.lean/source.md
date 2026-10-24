# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Drop.Variant04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9c030f916e7faa36fe5c156abdf821c6853cd84f` · SHA-256 `04feb4baf993ae1e69ca33cbd3337eb28a8eb23be5443ef87bb51cb1d78fac1b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Drop
public import Std.Data.Iterators.Lemmas.Combinators.Monadic.Drop
public import Init.Data.Iterators.Lemmas.Combinators.Take
import Init.Data.Array.Lemmas
import Init.Data.Iterators.Lemmas.Basic
import Init.Data.Iterators.Lemmas.Consumers.Access
import Init.Data.Iterators.Lemmas.Consumers.Collect
import Init.Data.List.Nat.TakeDrop
import Init.Data.Option.Lemmas

@[expose] public section

namespace Std
open Std.Iterators

theorem Iter.drop_eq {α β} [Iterator α Id β] {n : Nat}
    {it : Iter (α := α) β} :
    it.drop n = (it.toIterM.drop n).toIter :=
  rfl

theorem Iter.step_drop {α β} [Iterator α Id β] {n : Nat}
    {it : Iter (α := α) β} :
    (it.drop n).step = (match it.step with
    | .yield it' out h =>
      match n with
      | 0 => .yield (it'.drop 0) out (.yield h rfl)
      | k + 1 => .skip (it'.drop k) (.drop h rfl)
    | .skip it' h => .skip (it'.drop n) (.skip h)
    | .done h => .done (.done h)) := by
  simp only [drop_eq, step, toIterM_toIter, IterM.step_drop, Id.run_bind]
  generalize it.toIterM.step.run = step
  cases step.inflate using PlausibleIterStep.casesOn <;> cases n <;>
    simp [PlausibleIterStep.yield, PlausibleIterStep.skip, PlausibleIterStep.done]

theorem Iter.atIdxSlow?_drop {α β}
    [Iterator α Id β] [Productive α Id] {k l : Nat}
    {it : Iter (α := α) β} :
    (it.drop k).atIdxSlow? l = it.atIdxSlow? (l + k) := by
  induction k generalizing it <;> induction l generalizing it
  all_goals
    induction it using Iter.inductSkips with | step it ih
    rw [atIdxSlow?_eq_match, atIdxSlow?_eq_match, step_drop]
    cases it.step using PlausibleIterStep.casesOn <;> simp [*]

@[cbv_eval, simp]
theorem Iter.toList_drop {α β} [Iterator α Id β] {n : Nat}
    [Finite α Id] {it : Iter (α := α) β} :
    (it.drop n).toList = it.toList.drop n := by
  ext
  simp only [getElem?_toList_eq_atIdxSlow?, List.getElem?_drop, atIdxSlow?_drop]
  rw [Nat.add_comm]

@[simp]
theorem Iter.toListRev_drop {α β} [Iterator α Id β] {n : Nat}
    [Finite α Id] {it : Iter (α := α) β} :
    (it.drop n).toListRev = (it.toList.reverse.take (it.toList.length - n)) := by
  rw [toListRev_eq, toList_drop, List.reverse_drop]

@[cbv_eval, simp]
theorem Iter.toArray_drop {α β} [Iterator α Id β] {n : Nat}
    [Finite α Id] {it : Iter (α := α) β} :
    (it.drop n).toArray = it.toArray.extract n := by
  rw [← toArray_toList, ← toArray_toList, ← List.toArray_drop, toList_drop]

end Std
```
