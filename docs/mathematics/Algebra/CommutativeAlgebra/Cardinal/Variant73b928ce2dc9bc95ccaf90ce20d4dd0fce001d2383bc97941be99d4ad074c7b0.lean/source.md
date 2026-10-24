# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cardinal.Variant73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b2cd15900b0217f38e942fee08f3f6dd3ebbefc9` · SHA-256 `73b928ce2dc9bc95ccaf90ce20d4dd0fce001d2383bc97941be99d4ad074c7b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Chris Hughes, Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Junyan Xu
-/
module

public import Mathlib.Algebra.MonoidAlgebra.Cardinal
public import Mathlib.Algebra.Polynomial.Basic
public import Mathlib.SetTheory.Cardinal.Finsupp

/-!
# Cardinality of Polynomial Ring

The result in this file is that the cardinality of `R[X]` is at most the maximum
of `#R` and `ℵ₀`.
-/

public section

open Cardinal

universe u v
variable {R : Type u} [Semiring R]

namespace Polynomial

@[simp]
lemma cardinalMk_eq_max {R : Type u} [Semiring R] [Nontrivial R] : #(R[X]) = max #R ℵ₀ := by
  simp [(toFinsuppIso R).toEquiv.cardinal_eq]

lemma cardinalMk_le_max {R : Type u} [Semiring R] : #(R[X]) ≤ max #R ℵ₀ := by
  cases subsingleton_or_nontrivial R
  · exact (mk_eq_one _).trans_le (le_max_of_le_right one_le_aleph0)
  · exact cardinalMk_eq_max.le

end Polynomial
```
