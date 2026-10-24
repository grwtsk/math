# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1588dec020e06745574c5e41dc94ab1151b7e57c` · SHA-256 `2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison, Sebastian Graf, Paul Reichert
-/
module

prelude
public import Init.Data.Vector.Basic
import Init.Data.Array.Int
import Init.Data.Int.Lemmas
import Init.Data.Vector.Lemmas

public section

set_option linter.listVariables true -- Enforce naming conventions for `List`/`Array`/`Vector` variables.
set_option linter.indexVariables true -- Enforce naming conventions for index variables.

namespace Vector

@[simp] theorem sum_replicate_int {n : Nat} {a : Int} : (replicate n a).sum = n * a := by
  simp [← sum_toArray, Array.sum_replicate_int]

theorem sum_append_int {as₁ : Vector Int n} {as₂ : Vector Int m} :
    (as₁ ++ as₂).sum = as₁.sum + as₂.sum := by
  simp [← sum_toArray]

theorem sum_reverse_int (xs : Vector Int n) : xs.reverse.sum = xs.sum := by
  simp [sum_reverse]

theorem sum_eq_foldl_int {xs : Vector Int n} : xs.sum = xs.foldl (b := 0) (· + ·) := by
  simp only [foldl_eq_foldr_reverse, Int.add_comm, ← sum_eq_foldr, sum_reverse_int]

@[simp] theorem prod_replicate_int {n : Nat} {a : Int} : (replicate n a).prod = a ^ n := by
  simp [← prod_toArray, Array.prod_replicate_int]

theorem prod_append_int {as₁ : Vector Int n} {as₂ : Vector Int m} :
    (as₁ ++ as₂).prod = as₁.prod * as₂.prod := by
  simp [← prod_toArray]

theorem prod_reverse_int (xs : Vector Int n) : xs.reverse.prod = xs.prod := by
  simp [prod_reverse]

theorem prod_eq_foldl_int {xs : Vector Int n} : xs.prod = xs.foldl (b := 1) (· * ·) := by
  simp only [foldl_eq_foldr_reverse, Int.mul_comm, ← prod_eq_foldr, prod_reverse_int]

end Vector
```
