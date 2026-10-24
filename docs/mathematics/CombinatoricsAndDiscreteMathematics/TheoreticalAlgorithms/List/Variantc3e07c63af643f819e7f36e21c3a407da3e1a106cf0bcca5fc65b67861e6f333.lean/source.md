# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.List.Variantc3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cc01d626367fc8b0a8885893022fd30dc496ee90` · SHA-256 `c3e07c63af643f819e7f36e21c3a407da3e1a106cf0bcca5fc65b67861e6f333`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Producers.List
import Init.Data.Iterators.Lemmas.Consumers.Collect
import Init.Data.Iterators.Lemmas.Producers.Monadic.List

@[expose] public section

/-!
# Lemmas about list iterators

This module provides lemmas about the interactions of `List.iter` with `Iter.step` and various
collectors.
-/

open Std Std.Iterators

variable {β : Type w}

@[simp]
theorem List.step_iter_nil :
    (([] : List β).iter).step = ⟨.done, rfl⟩ := by
  simp [Iter.step, IterM.step, Iterator.step, List.iter, List.iterM]

@[simp]
theorem List.step_iter_cons {x : β} {xs : List β} :
    ((x :: xs).iter).step = ⟨.yield xs.iter x, rfl⟩ := by
  simp [List.iter, List.iterM, IterM.toIter, Iter.step_eq]

@[cbv_eval, simp, grind =]
theorem List.toArray_iter {l : List β} :
    l.iter.toArray = l.toArray := by
  simp [List.iter, List.toArray_iterM, Iter.toArray_eq_toArray_toIterM]

@[cbv_eval, simp, grind =]
theorem List.toList_iter {l : List β} :
    l.iter.toList = l := by
  simp [List.iter, List.toList_iterM]

@[simp, grind =]
theorem List.toListRev_iter {l : List β} :
    l.iter.toListRev = l.reverse := by
  simp [List.iter, Iter.toListRev_eq_toListRev_toIterM, List.toListRev_iterM]
```
