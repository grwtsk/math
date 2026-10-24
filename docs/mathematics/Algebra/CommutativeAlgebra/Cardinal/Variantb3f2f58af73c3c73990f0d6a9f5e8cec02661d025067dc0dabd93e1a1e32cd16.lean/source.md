# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cardinal.Variantb3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ff04d13c503b9a727430fe8f51fb58b81c79923` · SHA-256 `b3f2f58af73c3c73990f0d6a9f5e8cec02661d025067dc0dabd93e1a1e32cd16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
import Mathlib.Algebra.Polynomial.Basic
import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of Polynomial Ring

The result in this file is that the cardinality of `R[X]` is at most the maximum
of `#R` and `ℵ₀`.
-/


universe u

open Cardinal Polynomial

open Cardinal

namespace Polynomial

@[simp]
theorem cardinalMk_eq_max {R : Type u} [Semiring R] [Nontrivial R] : #(R[X]) = max #R ℵ₀ :=
  (toFinsuppIso R).toEquiv.cardinal_eq.trans <| by
    rw [AddMonoidAlgebra, mk_finsupp_lift_of_infinite, lift_uzero, max_comm]
    rfl

@[deprecated (since := "2024-11-10")] alias cardinal_mk_eq_max := cardinalMk_eq_max

theorem cardinalMk_le_max {R : Type u} [Semiring R] : #(R[X]) ≤ max #R ℵ₀ := by
  cases subsingleton_or_nontrivial R
  · exact (mk_eq_one _).trans_le (le_max_of_le_right one_le_aleph0)
  · exact cardinalMk_eq_max.le

@[deprecated (since := "2024-11-10")] alias cardinal_mk_le_max := cardinalMk_le_max

end Polynomial
```
