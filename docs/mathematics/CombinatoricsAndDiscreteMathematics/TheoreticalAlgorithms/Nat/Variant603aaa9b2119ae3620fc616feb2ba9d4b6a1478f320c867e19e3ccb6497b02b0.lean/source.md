# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nat.Variant603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `32fe8e22e1e24e4da1a8ca6ff458642a4186db71` · SHA-256 `603aaa9b2119ae3620fc616feb2ba9d4b6a1478f320c867e19e3ccb6497b02b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Sebastian Graf, Paul Reichert
-/
module

prelude
public import Init.Data.Array.MinMax
import Init.Data.List.Nat.Sum
import Init.Data.List.Nat.Prod
import Init.Data.Array.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Array

protected theorem sum_pos_iff_exists_pos_nat {xs : Array Nat} : 0 < xs.sum ↔ ∃ x ∈ xs, 0 < x := by
  simp [← sum_toList, List.sum_pos_iff_exists_pos_nat]

protected theorem sum_eq_zero_iff_forall_eq_nat {xs : Array Nat} :
    xs.sum = 0 ↔ ∀ x ∈ xs, x = 0 := by
  simp [← sum_toList, List.sum_eq_zero_iff_forall_eq_nat]

@[simp] theorem sum_replicate_nat {n : Nat} {a : Nat} : (replicate n a).sum = n * a := by
  rw [← List.toArray_replicate, List.sum_toArray]
  simp

theorem sum_append_nat {as₁ as₂ : Array Nat} : (as₁ ++ as₂).sum = as₁.sum + as₂.sum := by
  simp [sum_append]

theorem sum_reverse_nat (xs : Array Nat) : xs.reverse.sum = xs.sum := by
  simp [sum_reverse]

theorem sum_eq_foldl_nat {xs : Array Nat} : xs.sum = xs.foldl (init := 0) (· + ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.add_comm, ← sum_eq_foldr, sum_reverse_nat]

theorem min_mul_length_le_sum_nat {xs : Array Nat} (h : xs ≠ #[]) :
    xs.min h * xs.size ≤ xs.sum := by
  rcases xs with ⟨l⟩
  simpa [List.min_toArray, List.sum_toArray] using List.min_mul_length_le_sum_nat (by simpa using h)

theorem mul_length_le_sum_of_min?_eq_some_nat {xs : Array Nat} (h : xs.min? = some x) :
    x * xs.size ≤ xs.sum := by
  rcases xs with ⟨l⟩
  simpa [List.min?_toArray, List.sum_toArray] using
    List.mul_length_le_sum_of_min?_eq_some_nat (by simpa using h)

theorem min_le_sum_div_length_nat {xs : Array Nat} (h : xs ≠ #[]) :
    xs.min h ≤ xs.sum / xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.min_toArray, List.sum_toArray] using List.min_le_sum_div_length_nat (by simpa using h)

theorem le_sum_div_length_of_min?_eq_some_nat {xs : Array Nat} (h : xs.min? = some x) :
    x ≤ xs.sum / xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.min?_toArray, List.sum_toArray] using
    List.le_sum_div_length_of_min?_eq_some_nat (by simpa using h)

theorem sum_le_max_mul_length_nat {xs : Array Nat} (h : xs ≠ #[]) :
    xs.sum ≤ xs.max h * xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.max_toArray, List.sum_toArray] using List.sum_le_max_mul_length_nat (by simpa using h)

theorem sum_le_max_mul_length_of_max?_eq_some_nat {xs : Array Nat} (h : xs.max? = some x) :
    xs.sum ≤ x * xs.size := by
  rcases xs with ⟨l⟩
  simpa [List.max?_toArray, List.sum_toArray] using
    List.sum_le_max_mul_length_of_max?_eq_some_nat (by simpa using h)

theorem sum_div_length_le_max_nat {xs : Array Nat} (h : xs ≠ #[]) :
    xs.sum / xs.size ≤ xs.max h := by
  rcases xs with ⟨l⟩
  simpa [List.max_toArray, List.sum_toArray] using List.sum_div_length_le_max_nat (by simpa using h)

theorem sum_div_length_le_max_of_max?_eq_some_nat {xs : Array Nat} (h : xs.max? = some x) :
    xs.sum / xs.size ≤ x := by
  rcases xs with ⟨l⟩
  simpa [List.max?_toArray, List.sum_toArray] using
    List.sum_div_length_le_max_of_max?_eq_some_nat (by simpa using h)

protected theorem prod_pos_iff_forall_pos_nat {xs : Array Nat} : 0 < xs.prod ↔ ∀ x ∈ xs, 0 < x := by
  simp [← prod_toList, List.prod_pos_iff_forall_pos_nat]

protected theorem prod_eq_zero_iff_exists_zero_nat {xs : Array Nat} :
    xs.prod = 0 ↔ ∃ x ∈ xs, x = 0 := by
  simp [← prod_toList, List.prod_eq_zero_iff_exists_zero_nat]

@[simp] theorem prod_replicate_nat {n : Nat} {a : Nat} : (replicate n a).prod = a ^ n := by
  rw [← List.toArray_replicate, List.prod_toArray]
  simp

theorem prod_append_nat {as₁ as₂ : Array Nat} : (as₁ ++ as₂).prod = as₁.prod * as₂.prod := by
  simp [prod_append]

theorem prod_reverse_nat (xs : Array Nat) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_nat {xs : Array Nat} : xs.prod = xs.foldl (init := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Nat.mul_comm, ← prod_eq_foldr, prod_reverse_nat]

end Array
```
