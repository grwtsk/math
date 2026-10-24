# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InverseTriangleSum.Variant2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff0921f64d8ea3779e17901148962b20d32e77bc` · SHA-256 `2c8dbee14aab1eb5ce6fbfbb72bd2be4d69fac8617de66e69187d2612b1d3c6f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Ring

/-!
# Sum of the Reciprocals of the Triangular Numbers

This file proves Theorem 42 from the [100 Theorems List](https://www.cs.ru.nl/~freek/100/).

We interpret “triangular numbers” as naturals of the form $\frac{k(k+1)}{2}$ for natural `k`.
We prove that the sum of the reciprocals of the first `n` triangular numbers is $2 - \frac2n$.

## Tags

discrete_sum
-/


open Finset

/-- **Sum of the Reciprocals of the Triangular Numbers** -/
theorem Theorems100.inverse_triangle_sum :
    ∀ n, ∑ k ∈ range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  refine sum_range_induction _ _ rfl ?_
  rintro (_ | _)
  · norm_num
  field_simp
  ring
```
