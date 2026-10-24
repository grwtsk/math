# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InverseTriangleSum.Variant7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24f64f26656d3ec80dc3267af498777bfc799064` · SHA-256 `7899b135ad54403566cc563a2a015fd59c2b424c42a8d7dabee78b45a299bd11`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Basic
import Mathlib.Data.Real.Basic

#align_import wiedijk_100_theorems.inverse_triangle_sum from "leanprover-community/mathlib"@"5563b1b49e86e135e8c7b556da5ad2f5ff881cad"

/-!
# Sum of the Reciprocals of the Triangular Numbers

This file proves Theorem 42 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

We interpret “triangular numbers” as naturals of the form $\frac{k(k+1)}{2}$ for natural `k`.
We prove that the sum of the reciprocals of the first `n` triangular numbers is $2 - \frac2n$.

## Tags

discrete_sum
-/


open scoped BigOperators

open Finset

/-- **Sum of the Reciprocals of the Triangular Numbers** -/
theorem Theorem100.inverse_triangle_sum :
    ∀ n, ∑ k in range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  refine' sum_range_induction _ _ (if_pos rfl) _
  rintro (_ | n)
  · rw [if_neg, if_pos] <;> norm_num
  simp_rw [if_neg (Nat.succ_ne_zero _), Nat.succ_eq_add_one]
  have A : (n + 1 + 1 : ℚ) ≠ 0 := by norm_cast; norm_num
  push_cast
  field_simp
  ring
#align theorem_100.inverse_triangle_sum Theorem100.inverse_triangle_sum
```
