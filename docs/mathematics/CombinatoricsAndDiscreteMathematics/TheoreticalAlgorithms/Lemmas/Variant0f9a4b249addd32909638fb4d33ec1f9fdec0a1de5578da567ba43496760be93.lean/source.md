# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6e91ec2ed1b2231a87501b5ff5baf29810476113` · SHA-256 `0f9a4b249addd32909638fb4d33ec1f9fdec0a1de5578da567ba43496760be93`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.

Authors: Mario Carneiro, Gabriel Ebner
-/
module

public import Batteries.Data.List.Lemmas

@[expose] public section

namespace Array

/-! ### idxOf? -/

@[grind =]
theorem idxOf?_toList [BEq α] {a : α} {l : Array α} :
    l.toList.idxOf? a = l.idxOf? a := by
  rcases l with ⟨l⟩
  simp

/-! ### erase -/

@[simp, grind =] theorem toList_erase [BEq α] (l : Array α) (a : α) :
    (l.erase a).toList = l.toList.erase a := by
  rcases l with ⟨l⟩
  simp

@[simp] theorem size_eraseIdxIfInBounds (a : Array α) (i : Nat) :
    (a.eraseIdxIfInBounds i).size = if i < a.size then a.size-1 else a.size := by
  grind

theorem toList_drop (as: Array α) (n : Nat) :
    (as.drop n).toList = as.toList.drop n := by
  simp only [drop, toList_extract, size_eq_length_toList, List.drop_eq_extract]

/-! ### set -/

/-! ### map -/

/-! ### mem -/

/-! ### insertAt -/

/-! ### extract -/

@[simp] theorem extract_empty_of_start_eq_stop {a : Array α} :
    a.extract i i = #[] := by grind

theorem extract_append_of_stop_le_size_left {a b : Array α} (h : j ≤ a.size) :
    (a ++ b).extract i j = a.extract i j := by grind

theorem extract_append_of_size_left_le_start {a b : Array α} (h : a.size ≤ i) :
    (a ++ b).extract i j = b.extract (i - a.size) (j - a.size) := by
  rw [extract_append]; grind

theorem extract_eq_of_size_le_stop {a : Array α} (h : a.size ≤ j) :
    a.extract i j = a.extract i := by grind

/-! ### swapIfInBounds -/
@[simp, grind =] theorem toList_swapIfInBounds {a : Array α} :
    (a.swapIfInBounds i j).toList = a.toList.swap i j := List.ext_getElem (by simp) (by grind)
```
