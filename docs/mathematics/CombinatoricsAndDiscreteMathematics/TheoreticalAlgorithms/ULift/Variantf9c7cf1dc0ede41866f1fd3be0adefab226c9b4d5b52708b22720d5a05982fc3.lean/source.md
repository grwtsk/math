# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ULift.Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ca0816a9482535a865553cae9c154a5c70527d73` · SHA-256 `f9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.ULift
import all Init.Data.Iterators.Combinators.ULift
public import Init.Data.Iterators.Consumers.Collect
public import Init.Data.Iterators.Consumers.Loop
import Init.Data.Array.Lemmas
import Init.Data.Iterators.Lemmas.Combinators.Monadic.ULift
import Init.Data.Iterators.Lemmas.Consumers.Collect
import Init.Data.Iterators.Lemmas.Consumers.Loop

public section

namespace Std
open Std.Iterators

variable {α : Type u} {β : Type u}

theorem Iter.uLift_eq_toIter_uLift_toIterM {it : Iter (α := α) β} :
    it.uLift = (it.toIterM.uLift Id).toIter :=
  rfl

theorem Iter.step_uLift [Iterator α Id β] {it : Iter (α := α) β} :
    it.uLift.step = match it.step with
      | .yield it' out h => .yield it'.uLift (.up out) ⟨_, h, rfl⟩
      | .skip it' h => .skip it'.uLift ⟨_, h, rfl⟩
      | .done h => .done ⟨_, h, rfl⟩ := by
  rw [Subtype.ext_iff]
  simp only [uLift_eq_toIter_uLift_toIterM, step, IterM.Step.toPure, toIterM_toIter,
    IterM.step_uLift, toIter_toIterM]
  simp only [monadLift, ULiftT.run_pure, PlausibleIterStep.yield, PlausibleIterStep.skip,
    PlausibleIterStep.done, pure_bind]
  cases it.toIterM.step.run.inflate using PlausibleIterStep.casesOn <;> simp

@[cbv_eval, simp]
theorem Iter.toList_uLift [Iterator α Id β] {it : Iter (α := α) β}
    [Finite α Id] :
    it.uLift.toList = it.toList.map ULift.up := by
  simp only [uLift_eq_toIter_uLift_toIterM, IterM.toList_toIter]
  rw [IterM.toList_uLift]
  simp [monadLift, Iter.toList_eq_toList_toIterM]

@[simp]
theorem Iter.toListRev_uLift [Iterator α Id β] {it : Iter (α := α) β}
    [Finite α Id] :
    it.uLift.toListRev = it.toListRev.map ULift.up := by
  rw [toListRev_eq, toListRev_eq, toList_uLift, List.map_reverse]

@[cbv_eval, simp]
theorem Iter.toArray_uLift [Iterator α Id β] {it : Iter (α := α) β}
    [Finite α Id] :
    it.uLift.toArray = it.toArray.map ULift.up := by
  rw [← toArray_toList, ← toArray_toList, toList_uLift]
  simp [-toArray_toList]

@[simp]
theorem Iter.length_uLift [Iterator α Id β] {it : Iter (α := α) β}
    [Finite α Id] [IteratorLoop α Id Id] [LawfulIteratorLoop α Id Id] :
    it.uLift.length = it.length := by
  simp only [uLift_eq_toIter_uLift_toIterM, length_eq_length_toIterM, toIterM_toIter]
  rw [IterM.length_uLift]
  simp [monadLift]

set_option linter.defProp false in
@[deprecated Iter.length_uLift (since := "2026-01-28")]
def Iter.count_uLift := @Iter.length_uLift

end Std
```
