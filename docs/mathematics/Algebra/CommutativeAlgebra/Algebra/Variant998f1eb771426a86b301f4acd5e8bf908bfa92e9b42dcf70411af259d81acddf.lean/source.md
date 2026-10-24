# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Algebra.Variant998f1eb771426a86b301f4acd5e8bf908bfa92e9b42dcf70411af259d81acddf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04e694d3803e64faeda8c52cb4a044280133bbac` · SHA-256 `998f1eb771426a86b301f4acd5e8bf908bfa92e9b42dcf70411af259d81acddf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
module

public import Mathlib.Algebra.Algebra.Defs
public import Mathlib.Algebra.Polynomial.Eval.Defs

/-!
# Evaluation of polynomials in an algebra

This file concerns evaluating polynomials where the map is `algebraMap`

TODO: merge with parts of `Mathlib/Algebra/Polynomial/AlgebraMap.lean`?
-/

public section

noncomputable section

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {a : R} {n : ℕ}

section CommSemiring

section Eval

section Algebra

variable [CommSemiring R] [Semiring S] [Algebra R S] (x : S) (p q : R[X])

@[simp]
theorem eval₂_mul' :
    (p * q).eval₂ (algebraMap R S) x = p.eval₂ (algebraMap R S) x * q.eval₂ (algebraMap R S) x := by
  exact eval₂_mul_noncomm _ _ fun k => Algebra.commute_algebraMap_left (coeff q k) x

@[simp]
theorem eval₂_pow' (n : ℕ) :
    (p ^ n).eval₂ (algebraMap R S) x = (p.eval₂ (algebraMap R S) x) ^ n := by
  induction n with
  | zero => simp only [pow_zero, eval₂_one]
  | succ n ih => rw [pow_succ, pow_succ, eval₂_mul', ih]

@[simp]
theorem eval₂_comp' : eval₂ (algebraMap R S) x (p.comp q) =
    eval₂ (algebraMap R S) (eval₂ (algebraMap R S) x q) p := by
  induction p using Polynomial.induction_on' with
  | add r s hr hs => simp only [add_comp, eval₂_add, hr, hs]
  | monomial n a => simp only [monomial_comp, eval₂_mul', eval₂_C, eval₂_monomial, eval₂_pow']

end Algebra

end Eval

end CommSemiring

end Polynomial
```
