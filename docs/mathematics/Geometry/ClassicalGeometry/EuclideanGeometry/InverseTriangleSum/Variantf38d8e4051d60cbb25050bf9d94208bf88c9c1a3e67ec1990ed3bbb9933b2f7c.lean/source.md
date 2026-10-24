# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.InverseTriangleSum.Variantf38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f6c0e2af53dd967c3592f42e769e6cb2b7be85b9` · SHA-256 `f38d8e4051d60cbb25050bf9d94208bf88c9c1a3e67ec1990ed3bbb9933b2f7c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Jalex Stark, Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jalex Stark, Yury Kudryashov
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
public import Mathlib.Basic.Real.Basic
public import Mathlib.Tactic.FieldSimp
public import Mathlib.Tactic.Positivity.Basic
public import Mathlib.Tactic.Ring

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
public theorem Theorems100.inverse_triangle_sum (n : ℕ) :
    ∑ k ∈ range n, (2 : ℚ) / (k * (k + 1)) = if n = 0 then 0 else 2 - (2 : ℚ) / n := by
  apply sum_range_induction _ _ rfl
  rintro (_ | _)
  · norm_num
  · simp [field]
    ring_nf
    simp
```
