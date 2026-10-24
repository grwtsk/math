# Complete source: GRWTSK.NumberTheory.Defs.Variant2463fbe021ee2c85fc86d7d006ac3db2a487016de2ce3102e6519eb629c5f9f2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `61d91fb7ddf9483b4b3d26c9345b288ce41c0332` · SHA-256 `2463fbe021ee2c85fc86d7d006ac3db2a487016de2ce3102e6519eb629c5f9f2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Koundinya Vajjha. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Koundinya Vajjha, Thomas Browning
-/
import Mathlib.Data.Rat.Defs
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-!

This file defines the harmonic numbers.

* `Mathilb/NumberTheory/Harmonic/Int.lean` proves that the `n`th harmonic number is not an integer.
* `Mathlib/NumberTheory/Harmonic/Bounds.lean` provides basic log bounds.

-/

/-- The nth-harmonic number defined as a finset sum of consecutive reciprocals. -/
def harmonic : ℕ → ℚ := fun n => ∑ i ∈ Finset.range n, (↑(i + 1))⁻¹

@[simp]
lemma harmonic_zero : harmonic 0 = 0 :=
  rfl

@[simp]
lemma harmonic_succ (n : ℕ) : harmonic (n + 1) = harmonic n + (↑(n + 1))⁻¹ :=
  Finset.sum_range_succ ..
```
