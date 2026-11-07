/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteSignDyadicLDLPacked

/-!
# Direct packing of biased integer lanes

A finite integer lane can be represented by nonnegative base digits
with a common bias. An exact packed comparison can consume that
representation without traversing the decoded entries. The identity
follows from the quotient and remainder decomposition, then subtraction
of the packed bias.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL

def rawLaneDigit (base raw i : ℕ) : ℤ :=
  Int.ofNat ((raw / base^i) % base)

theorem pack_rawLaneDigit (base raw n : ℕ) :
    packDigits base (fun i : Fin n => rawLaneDigit base raw i.val) =
      Int.ofNat (raw % base^n) := by
  induction n generalizing raw with
  | zero => simp [packDigits]
  | succ n ih =>
    have htail (i : Fin n) :
        rawLaneDigit base raw i.succ.val = rawLaneDigit base (raw / base) i.val := by
      simp [rawLaneDigit, pow_succ', Nat.div_div_eq_div_mul]
    have hpack : packDigits base (fun i : Fin (n+1) => rawLaneDigit base raw i.val) =
        rawLaneDigit base raw 0 +
          Int.ofNat base * packDigits base (fun i : Fin n => rawLaneDigit base (raw / base) i.val) := by
      simp only [packDigits, List.ofFn_succ, List.foldr_cons, Fin.val_zero, htail]
      rfl
    rw [hpack, ih]
    have hm := Nat.mod_add_div (raw % (base * base^n)) base
    rw [Nat.mod_mul_right_mod, Nat.mod_mul_right_div_self] at hm
    simp only [rawLaneDigit, pow_zero, Nat.div_one, pow_succ']
    exact congrArg Int.ofNat hm

def biasedLaneDigit (base raw : ℕ) (bias : ℤ) (i : ℕ) : ℤ :=
  rawLaneDigit base raw i - bias

/-- Read the signed packed value directly from its serialized biased lane. -/
theorem pack_biasedLaneDigit (base raw n : ℕ) (bias : ℤ) :
    packDigits base (fun i : Fin n => biasedLaneDigit base raw bias i.val) =
      Int.ofNat (raw % base^n) - bias * packDigits base (fun _ : Fin n => 1) := by
  have h : packDigits base (fun i : Fin n => biasedLaneDigit base raw bias i.val) =
      packDigits base (fun i : Fin n => rawLaneDigit base raw i.val) -
        bias * packDigits base (fun _ : Fin n => 1) := by
    simp only [packDigits_eq_sum, biasedLaneDigit, sub_mul, Finset.sum_sub_distrib,
      one_mul, Finset.mul_sum]
  rw [h, pack_rawLaneDigit]

end GRWTSK.Algebra.LinearAlgebra.FiniteSignDyadicLDL
