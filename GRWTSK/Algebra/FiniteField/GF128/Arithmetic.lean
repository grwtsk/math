/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.Algebra.FiniteField.GF128.Bitwise

namespace GRWTSK.Algebra.FiniteField.GF128

@[simp] theorem word_zero_xor (a : Word) : (0 : Word) ^^^ a = a := BitVec.zero_xor
@[simp] theorem word_xor_zero (a : Word) : a ^^^ (0 : Word) = a := BitVec.xor_zero

def iter : Nat → Word → Word
  | 0, a => a
  | n + 1, a => iter n (double a)

theorem iter_double (n : Nat) (a : Word) : iter n (double a) = double (iter n a) := by
  induction n generalizing a with
  | zero => rfl
  | succ n ih => exact ih (double a)

theorem iter_linear (n : Nat) : XorLinear (iter n) := by
  induction n with
  | zero => exact ⟨rfl, fun _ _ => rfl⟩
  | succ n ih =>
    constructor
    · simpa only [iter, double_zero] using ih.1
    · intro a b
      simp only [iter, double_xor, ih.2]

theorem basis_bits (i : Nat) (hi : i < 128) (j : Nat) (hj : j < 128) :
    (basis i).getLsbD j = decide (j = i) := by
  simp only [basis, BitVec.getLsbD_shiftLeft, BitVec.getLsbD_one]
  by_cases hji : j = i
  · subst j
    simp [hi]
  · have hh : j < i ∨ i < j := by omega
    cases hh with
    | inl h => simp [hj, h, hji]
    | inr h =>
      have h0 : j - i ≠ 0 := by omega
      simp [hj, Nat.not_lt.mpr (Nat.le_of_lt h), h0, hji]

theorem basis_low_succ (i : Nat) (hi : i + 1 < 128) :
    (basis (i + 1)).getLsbD 0 = false := by
  rw [basis_bits (i + 1) hi 0 (by decide)]
  simp

theorem basis_shift_right (i : Nat) (hi : i + 1 < 128) :
    basis (i + 1) >>> (1 : Nat) = basis i := by
  apply BitVec.eq_of_getLsbD_eq
  intro j hj
  rw [BitVec.getLsbD_ushiftRight, basis_bits i (by omega) j hj]
  by_cases hj1 : 1 + j < 128
  · rw [basis_bits (i + 1) hi (1 + j) hj1]
    apply Bool.eq_iff_iff.mpr
    simp only [decide_eq_true_eq]
    omega
  · have heq : j ≠ i := by omega
    simp [BitVec.getLsbD_of_ge (basis (i + 1)) (1 + j) (Nat.le_of_not_gt hj1), heq]

theorem mulFuel_basis (n i : Nat) (a : Word) (hi : i < n) (hw : i < 128) :
    mulFuel n a (basis i) = iter i a := by
  induction i generalizing n a with
  | zero =>
    cases n with
    | zero => omega
    | succ n =>
      simp only [basis, BitVec.shiftLeft_zero, mulFuel, BitVec.getLsbD_one,
        Nat.zero_eq, decide_true, ite_true, BitVec.ushiftRight_eq_zero (by decide : 128 ≤ 128)]
      have hz : (1 : Word) >>> (1 : Nat) = 0 := by decide
      rw [hz, mulFuel_zero_right]
      simp [iter]
  | succ i ih =>
    cases n with
    | zero => omega
    | succ n =>
      rw [mulFuel, basis_low_succ i hw, if_neg (by decide),
        word_zero_xor, basis_shift_right i hw]
      exact ih n (double a) (by omega) (by omega)

theorem mul_basis (a : Word) (i : Nat) (hi : i < 128) : mul a (basis i) = iter i a :=
  mulFuel_basis 128 i a hi hi

theorem double_basis (i : Nat) (hi : i < 127) : double (basis i) = basis (i + 1) := by
  have ht : (basis i).getLsbD 127 = false := by
    rw [basis_bits i (by omega) 127 (by decide)]
    simp [show 127 ≠ i by omega]
  simp only [double, ht, Bool.false_eq_true, ite_false, word_xor_zero]
  simp only [basis, ← BitVec.shiftLeft_add]

theorem iter_one_basis (i : Nat) (hi : i < 128) : iter i 1 = basis i := by
  induction i with
  | zero => simp [iter, basis]
  | succ i ih =>
    rw [iter, iter_double, ih (by omega), double_basis i (by omega)]

theorem iter_comm (n m : Nat) (a : Word) : iter n (iter m a) = iter m (iter n a) := by
  induction m generalizing a with
  | zero => rfl
  | succ m ih =>
    simp only [iter]
    rw [ih, iter_double]

def reduction (a : Word) : Word := iter 7 a ^^^ iter 2 a ^^^ iter 1 a ^^^ a

theorem reduction_linear : XorLinear reduction := by
  constructor
  · simp only [reduction, (iter_linear 7).1, (iter_linear 2).1, (iter_linear 1).1]
    decide
  · intro a b
    simp only [reduction, (iter_linear 7).2, (iter_linear 2).2, (iter_linear 1).2]
    simp [BitVec.xor_assoc, xor_left_comm]

theorem reduction_iter (n : Nat) (a : Word) : reduction (iter n a) = iter n (reduction a) := by
  simp only [reduction, (iter_linear n).2]
  rw [iter_comm 7 n, iter_comm 2 n, iter_comm 1 n]

theorem iter128_one : iter 128 1 = (135 : Word) := by
  change iter 127 (double 1) = _
  rw [iter_double, iter_one_basis 127 (by decide)]
  decide

theorem reduction_one : reduction 1 = (135 : Word) := by decide

/-- The declared reduction polynomial annihilates the concrete doubling operator. -/
theorem iter_modulus (a : Word) : iter 128 a = reduction a := by
  have h := linear_eq_of_basis (iter 128) reduction (iter_linear 128) reduction_linear
    (by
      intro i hi
      rw [← iter_one_basis i hi, iter_comm 128 i, reduction_iter,
        iter128_one, reduction_one])
  exact congrFun h a

theorem mul_double_right (a b : Word) : mul a (double b) = double (mul a b) := by
  have hf : XorLinear (fun b => mul a (double b)) := by
    constructor
    · simp only [double_zero, mul_zero_right]
    · intro x y
      simp only [double_xor, mul_xor_right]
  have hg : XorLinear (fun b => double (mul a b)) := by
    constructor
    · simp only [mul_zero_right, double_zero]
    · intro x y
      simp only [mul_xor_right, double_xor]
  have h := linear_eq_of_basis (fun b => mul a (double b)) (fun b => double (mul a b)) hf hg
    (by
      intro i hi
      change mul a (double (basis i)) = double (mul a (basis i))
      by_cases hil : i < 127
      · rw [double_basis i hil, mul_basis a (i + 1) (by omega), mul_basis a i hi]
        exact iter_double i a
      · have hie : i = 127 := by omega
        subst i
        rw [mul_basis a 127 (by decide)]
        have hd : double (basis 127) = (135 : Word) := by decide
        rw [hd, ← iter_double]
        change mul a 135 = iter 128 a
        rw [iter_modulus]
        have hp : (135 : Word) = basis 0 ^^^ basis 1 ^^^ basis 2 ^^^ basis 7 := by decide
        rw [hp, mul_xor_right, mul_xor_right, mul_xor_right,
          mul_basis a 0 (by decide), mul_basis a 1 (by decide),
          mul_basis a 2 (by decide), mul_basis a 7 (by decide)]
        change a ^^^ iter 1 a ^^^ iter 2 a ^^^ iter 7 a = reduction a
        unfold reduction
        ac_rfl)
  exact congrFun h b

theorem mul_iter_right (a b : Word) (n : Nat) : mul a (iter n b) = iter n (mul a b) := by
  induction n generalizing b with
  | zero => rfl
  | succ n ih =>
    simp only [iter]
    rw [ih, mul_double_right]

theorem mul_assoc (a b c : Word) : mul (mul a b) c = mul a (mul b c) := by
  have hf : XorLinear (fun c => mul (mul a b) c) :=
    ⟨mul_zero_right _, mul_xor_right _⟩
  have hg : XorLinear (fun c => mul a (mul b c)) := by
    constructor
    · simp only [mul_zero_right]
    · intro x y
      simp only [mul_xor_right]
  have h := linear_eq_of_basis (fun c => mul (mul a b) c) (fun c => mul a (mul b c)) hf hg
    (by
      intro i hi
      change mul (mul a b) (basis i) = mul a (mul b (basis i))
      rw [mul_basis _ i hi, mul_basis b i hi, mul_iter_right])
  exact congrFun h c

theorem mul_one_left (a : Word) : mul 1 a = a := by
  have h := linear_eq_of_basis (mul 1) id ⟨mul_zero_right _, mul_xor_right _⟩
    ⟨rfl, fun _ _ => rfl⟩ (by
      intro i hi
      simp only [mul_basis 1 i hi, iter_one_basis i hi, id_eq])
  exact congrFun h a

theorem mul_one_right (a : Word) : mul a 1 = a := by
  have h := mul_basis a 0 (by decide)
  simpa only [basis, BitVec.shiftLeft_zero, iter] using h

end GRWTSK.Algebra.FiniteField.GF128
