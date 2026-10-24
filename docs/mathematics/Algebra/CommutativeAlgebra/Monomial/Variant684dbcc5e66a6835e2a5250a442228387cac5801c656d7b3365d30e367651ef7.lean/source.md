# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Monomial.Variant684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `da4c2768e33716361fad78d27ae2a33be949ce63` · SHA-256 `684dbcc5e66a6835e2a5250a442228387cac5801c656d7b3365d30e367651ef7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Monomial
public import Mathlib.Data.Nat.SuccPred

/-!
# Degree of univariate monomials
-/

public section

noncomputable section

open Finset Polynomial

namespace Polynomial

universe u v

variable {R : Type u} {a : R} {n : ℕ}

section Semiring

variable [Semiring R] {p : R[X]}

lemma natDegree_le_pred (hf : p.natDegree ≤ n) (hn : p.coeff n = 0) : p.natDegree ≤ n - 1 := by
  obtain _ | n := n
  · exact hf
  · refine (Nat.le_succ_iff_eq_or_le.1 hf).resolve_left fun h ↦ ?_
    rw [← Nat.succ_eq_add_one, ← h, coeff_natDegree, leadingCoeff_eq_zero] at hn
    simp_all

theorem monomial_natDegree_leadingCoeff_eq_self (h : #p.support ≤ 1) :
    monomial p.natDegree p.leadingCoeff = p := by
  classical
  rcases card_support_le_one_iff_monomial.1 h with ⟨n, a, rfl⟩
  by_cases ha : a = 0 <;> simp [ha]

theorem C_mul_X_pow_eq_self (h : #p.support ≤ 1) : C p.leadingCoeff * X ^ p.natDegree = p := by
  rw [C_mul_X_pow_eq_monomial, monomial_natDegree_leadingCoeff_eq_self h]

end Semiring

end Polynomial
```
