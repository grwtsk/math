# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Union.Variante48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3122dd0b7a20e97d80614c4a50001e84f982dfcd` · SHA-256 `e48dde2b5e1cc12b6a3eae640e02418f84e99b2a3fbe0b2c24166582dc260acc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Oliver Butterley. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Oliver Butterley
-/
module

public import Mathlib.Data.Finset.Range
public import Mathlib.Data.Set.Lattice.Indexed
public import Mathlib.Order.Interval.Set.LinearOrder

/-!
# Extra lemmas about unions of intervals

This file contains lemmas about finite unions of intervals which can't be included with the lemmas
concerning infinite unions in `Mathlib/Order/Interval/Set/Disjoint.lean` because we use
`Finset.range`.
-/

public section

open Set

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ioc_subset_biUnion_Ioc {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ioc (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ioc (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ioc (a 0) (a N) ∪ Ioc (a N) (a (N + 1)) := Ioc_subset_Ioc_union_Ioc
    _ ⊆ _ := by simpa [Finset.range_add_one] using
                  union_subset_union_right (Ioc (a N) (a (N + 1))) ih

/-- Union of consecutive intervals contains the interval defined by the initial and final points. -/
theorem Ico_subset_biUnion_Ico {X : Type*} [LinearOrder X] (N : ℕ) (a : ℕ → X) :
    Ico (a 0) (a N) ⊆ ⋃ i ∈ Finset.range N, Ico (a i) (a (i + 1)) := by
  induction N with
  | zero => simp
  | succ N ih => calc
    _ ⊆ Ico (a 0) (a N) ∪ Ico (a N) (a (N + 1)) := Ico_subset_Ico_union_Ico
    _ ⊆ _ := by simpa [Finset.range_add_one] using
                  union_subset_union_right (Ico (a N) (a (N + 1))) ih
```
