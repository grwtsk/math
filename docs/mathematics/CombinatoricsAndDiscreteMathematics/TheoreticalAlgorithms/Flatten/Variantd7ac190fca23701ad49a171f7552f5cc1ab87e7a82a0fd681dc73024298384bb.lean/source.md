# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Flatten.Variantd7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a4959dc0f48da8d7de5c7c9c4729ef121a748af6` · SHA-256 `d7ac190fca23701ad49a171f7552f5cc1ab87e7a82a0fd681dc73024298384bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Floris van Doorn, Mario Carneiro, Martin Dvorak
-/
import Mathlib.Tactic.GCongr.Core
import Mathlib.Util.AssertExists

/-!
# Join of a list of lists

This file proves basic properties of `List.flatten`, which concatenates a list of lists. It is
defined in `Init.Data.List.Basic`.
-/

-- Make sure we don't import algebra
assert_not_exists Monoid

variable {α β : Type*}

namespace List

@[gcongr]
protected theorem Sublist.flatten {l₁ l₂ : List (List α)} (h : l₁ <+ l₂) :
    l₁.flatten <+ l₂.flatten := by
  induction h with
  | slnil => simp
  | cons _ _ ih =>
    rw [flatten_cons]
    exact ih.trans (sublist_append_right _ _)
  | cons₂ _ _ ih => simpa

@[gcongr]
protected theorem Sublist.flatMap {l₁ l₂ : List α} (h : l₁ <+ l₂) (f : α → List β) :
    l₁.flatMap f <+ l₂.flatMap f :=
  (h.map f).flatten

@[deprecated (since := "2024-10-25")] alias length_join' := length_flatten
@[deprecated (since := "2024-10-25")] alias countP_join' := countP_flatten
@[deprecated (since := "2024-10-25")] alias count_join' := count_flatten

/-- Taking only the first `i+1` elements in a list, and then dropping the first `i` ones, one is
left with a list of length `1` made of the `i`-th element of the original list. -/
theorem drop_take_succ_eq_cons_getElem (L : List α) (i : Nat) (h : i < L.length) :
    (L.take (i + 1)).drop i = [L[i]] := by
  induction L generalizing i with
  | nil => exact (Nat.not_succ_le_zero i h).elim
  | cons head tail ih =>
    rcases i with _ | i
    · simp
    · simpa using ih _ (by simpa using h)

/-- We can rebracket `x ++ (l₁ ++ x) ++ (l₂ ++ x) ++ ... ++ (lₙ ++ x)` to
`(x ++ l₁) ++ (x ++ l₂) ++ ... ++ (x ++ lₙ) ++ x` where `L = [l₁, l₂, ..., lₙ]`. -/
theorem append_flatten_map_append (L : List (List α)) (x : List α) :
    x ++ (L.map (· ++ x)).flatten = (L.map (x ++ ·)).flatten ++ x := by
  induction L with
  | nil => rw [map_nil, flatten, append_nil, map_nil, flatten, nil_append]
  | cons _ _ ih =>
    rw [map_cons, flatten, map_cons, flatten, append_assoc, ih, append_assoc, append_assoc]

end List
```
