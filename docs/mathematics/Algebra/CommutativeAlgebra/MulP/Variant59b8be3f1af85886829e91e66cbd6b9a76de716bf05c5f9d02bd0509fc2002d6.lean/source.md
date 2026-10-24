# Complete source: GRWTSK.Algebra.CommutativeAlgebra.MulP.Variant59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1af44a910933a4471bda4783953472564dff46a6` · SHA-256 `59b8be3f1af85886829e91e66cbd6b9a76de716bf05c5f9d02bd0509fc2002d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin
-/
import Mathlib.RingTheory.WittVector.IsPoly

/-!
## Multiplication by `n` in the ring of Witt vectors

In this file we show that multiplication by `n` in the ring of Witt vectors
is a polynomial function. We then use this fact to show that the composition of Frobenius
and Verschiebung is equal to multiplication by `p`.

### Main declarations

* `mulN_isPoly`: multiplication by `n` is a polynomial function

## References

* [Hazewinkel, *Witt Vectors*][Haze09]

* [Commelin and Lewis, *Formalizing the Ring of Witt Vectors*][CL21]
-/


namespace WittVector

variable {p : ℕ} {R : Type*} [hp : Fact p.Prime] [CommRing R]

local notation "𝕎" => WittVector p -- type as `\bbW`

open MvPolynomial

noncomputable section

variable (p) in
/-- `wittMulN p n` is the family of polynomials that computes
the coefficients of `x * n` in terms of the coefficients of the Witt vector `x`. -/
noncomputable def wittMulN : ℕ → ℕ → MvPolynomial ℕ ℤ
  | 0 => 0
  | n + 1 => fun k => bind₁ (Function.uncurry <| ![wittMulN n, X]) (wittAdd p k)

theorem mulN_coeff (n : ℕ) (x : 𝕎 R) (k : ℕ) :
    (x * n).coeff k = aeval x.coeff (wittMulN p n k) := by
  induction' n with n ih generalizing k
  · simp only [Nat.cast_zero, mul_zero, zero_coeff, wittMulN, Pi.zero_apply, map_zero]
  · rw [wittMulN, Nat.cast_add, Nat.cast_one, mul_add, mul_one, aeval_bind₁, add_coeff]
    apply eval₂Hom_congr (RingHom.ext_int _ _) _ rfl
    ext1 ⟨b, i⟩
    fin_cases b
    · simp [Function.uncurry, Matrix.cons_val_zero, ih]
    · simp [Function.uncurry, Matrix.cons_val_one, Matrix.head_cons, aeval_X]

variable (p)

/-- Multiplication by `n` is a polynomial function. -/
@[is_poly]
theorem mulN_isPoly (n : ℕ) : IsPoly p fun _ _Rcr x => x * n :=
  ⟨⟨wittMulN p n, fun R _Rcr x => by funext k; exact mulN_coeff n x k⟩⟩

@[simp]
theorem bind₁_wittMulN_wittPolynomial (n k : ℕ) :
    bind₁ (wittMulN p n) (wittPolynomial p ℤ k) = n * wittPolynomial p ℤ k := by
  induction' n with n ih
  · simp [wittMulN, Nat.cast_zero, zero_mul, bind₁_zero_wittPolynomial]
  · rw [wittMulN, ← bind₁_bind₁, wittAdd, wittStructureInt_prop]
    simp only [map_add, Nat.cast_succ, bind₁_X_right]
    rw [add_mul, one_mul, bind₁_rename, bind₁_rename]
    simp only [ih, Function.uncurry, Function.comp_def, bind₁_X_left, AlgHom.id_apply,
      Matrix.cons_val_zero, Matrix.head_cons, Matrix.cons_val_one]

end

end WittVector
```
