# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variant1a49a2da10f89fa71315da1bed1a2aa7fb587f330f0b43da1e9c64c0e78aa8e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9ebdefe74464f6955350c029e1fa1355103f727d` · SHA-256 `1a49a2da10f89fa71315da1bed1a2aa7fb587f330f0b43da1e9c64c0e78aa8e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

@[deprecated forIn_toList (since := "2025-07-01")]
theorem forIn_eq_forIn_toList [Monad m]
    (as : Array α) (b : β) (f : α → β → m (ForInStep β)) :
    forIn as b f = forIn as.toList b f := by
  cases as
  simp

/-! ### idxOf? -/

@[grind =]
theorem idxOf?_toList [BEq α] {a : α} {l : Array α} :
    l.toList.idxOf? a = l.idxOf? a := by
  rcases l with ⟨l⟩
  simp

/-! ### erase -/

@[deprecated (since := "2025-02-06")] alias eraseP_toArray := List.eraseP_toArray
@[deprecated (since := "2025-02-06")] alias erase_toArray := List.erase_toArray

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

@[deprecated (since := "2025-02-06")] alias getElem_insertIdx_lt := getElem_insertIdx_of_lt
@[deprecated (since := "2025-02-06")] alias getElem_insertIdx_eq := getElem_insertIdx_self
@[deprecated (since := "2025-02-06")] alias getElem_insertIdx_gt := getElem_insertIdx_of_gt

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
