# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5491cddeaddff5c4358757bd202fcc4d79e64c93` · SHA-256 `3926bfd01601e7746fb20e65175763cdd988c3a54943f62d7e9f0426689f9c30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Sebastian Graf, Paul Reichert
-/
module

prelude
public import Init.Data.List.Int.Sum
public import Init.Data.List.Int.Prod
public import Init.Data.Array.MinMax
import Init.Data.Int.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

@[simp] theorem sum_replicate_int {n : Nat} {a : Int} : (replicate n a).sum = n * a := by
  rw [← List.toArray_replicate, List.sum_toArray]
  simp

theorem sum_append_int {as₁ as₂ : Array Int} : (as₁ ++ as₂).sum = as₁.sum + as₂.sum := by
  simp [sum_append]

theorem sum_reverse_int (xs : Array Int) : xs.reverse.sum = xs.sum := by
  simp [sum_reverse]

theorem sum_eq_foldl_int {xs : Array Int} : xs.sum = xs.foldl (init := 0) (· + ·) := by
  simp only [foldl_eq_foldr_reverse, Int.add_comm, ← sum_eq_foldr, sum_reverse_int]

theorem min_mul_length_le_sum_int {xs : Array Int} (h : xs ≠ #[]) :
    xs.min h * xs.size ≤ xs.sum := by
  rcases xs with ⟨l⟩
  simpa [List.min_toArray, List.sum_toArray] using List.min_mul_length_le_sum_int (by simpa using h)

theorem mul_length_le_sum_of_min?_eq_some_int {xs : Array Int} (h : xs.min? = some x) :
    x * xs.size ≤ xs.sum := by
  rcases xs with ⟨l⟩
  simpa [List.min?_toArray, List.sum_toArray] using
    List.mul_length_le_sum_of_min?_eq_some_int (by simpa using h)

theorem min_le_sum_div_length_int {xs : Array Int} (h : xs ≠ #[]) :
    xs.min h ≤ xs.sum / xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.min_toArray, List.sum_toArray] using List.min_le_sum_div_length_int (by simpa using h)

theorem le_sum_div_length_of_min?_eq_some_int {xs : Array Int} (h : xs.min? = some x) :
    x ≤ xs.sum / xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.min?_toArray, List.sum_toArray] using
    List.le_sum_div_length_of_min?_eq_some_int (by simpa using h)

theorem sum_le_max_mul_length_int {xs : Array Int} (h : xs ≠ #[]) :
    xs.sum ≤ xs.max h * xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.max_toArray, List.sum_toArray] using List.sum_le_max_mul_length_int (by simpa using h)

theorem sum_le_max_mul_length_of_max?_eq_some_int {xs : Array Int} (h : xs.max? = some x) :
    xs.sum ≤ x * xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.max?_toArray, List.sum_toArray] using
    List.sum_le_max_mul_length_of_max?_eq_some_int (by simpa using h)

theorem sum_div_length_le_max_int {xs : Array Int} (h : xs ≠ #[]) :
    xs.sum / xs.size ≤ xs.max h := by
  rcases xs with ⟨l⟩
  simpa [List.max_toArray, List.sum_toArray] using List.sum_div_length_le_max_int (by simpa using h)

theorem sum_div_length_le_max_of_max?_eq_some_int {xs : Array Int} (h : xs.max? = some x) :
    xs.sum / xs.size ≤ x := by
  rcases xs with ⟨l⟩
  simpa [List.max?_toArray, List.sum_toArray] using
    List.sum_div_length_le_max_of_max?_eq_some_int (by simpa using h)

@[simp] theorem prod_replicate_int {n : Nat} {a : Int} : (replicate n a).prod = a ^ n := by
  rw [← List.toArray_replicate, List.prod_toArray]
  simp

theorem prod_append_int {as₁ as₂ : Array Int} : (as₁ ++ as₂).prod = as₁.prod * as₂.prod := by
  simp [prod_append]

theorem prod_reverse_int (xs : Array Int) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_int {xs : Array Int} : xs.prod = xs.foldl (init := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Int.mul_comm, ← prod_eq_foldr, prod_reverse_int]

end Array
```
