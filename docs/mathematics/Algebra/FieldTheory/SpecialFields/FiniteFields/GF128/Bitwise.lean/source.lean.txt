/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import Std.Tactic

namespace GRWTSK.Algebra.FiniteField.GF128

abbrev Word := BitVec 128

/-- The exact polynomial reduction step in Rust `field::double`. -/
def double (a : Word) : Word :=
  (a <<< (1 : Nat)) ^^^ (if a.getLsbD 127 then 0x87 else 0)

/-- Bounded unrolling of the carryless multiply loop, with exhausted high bits zero. -/
def mulFuel : Nat → Word → Word → Word
  | 0, _, _ => 0
  | n + 1, a, b => (if b.getLsbD 0 then a else 0) ^^^
      mulFuel n (double a) (b >>> (1 : Nat))

def mul (a b : Word) : Word := mulFuel 128 a b

def fastMulFuel : Nat → Word → Word → Word
  | 0, _, _ => 0
  | n + 1, a, b => if b = 0 then 0 else
    (if b.getLsbD 0 then a else 0) ^^^ fastMulFuel n (double a) (b >>> (1 : Nat))

def powFuel : Nat → Nat → Word → Word → Word
  | 0, _, _, result => result
  | n + 1, exponent, base, result =>
    if exponent = 0 then result else
      powFuel n (exponent / 2) (mul base base)
        (if exponent % 2 = 1 then mul result base else result)

def inv (a : Word) : Option Word :=
  if a = 0 then none else some (powFuel 128 (2 ^ 128 - 2) a 1)

theorem xor_left_comm (a b c : Word) : a ^^^ (b ^^^ c) = b ^^^ (a ^^^ c) := by
  ac_rfl

@[simp] theorem xor_cancel_left (a b : Word) : a ^^^ (a ^^^ b) = b := by
  rw [← BitVec.xor_assoc, BitVec.xor_self, BitVec.zero_xor]

theorem double_xor (a b : Word) : double (a ^^^ b) = double a ^^^ double b := by
  simp only [double, BitVec.shiftLeft_xor_distrib, BitVec.getLsbD_xor]
  cases ha : a.getLsbD 127 <;> cases hb : b.getLsbD 127 <;>
    simp [BitVec.xor_assoc, BitVec.xor_comm, xor_left_comm]

@[simp] theorem double_zero : double 0 = 0 := by decide

theorem xor_four (a b c d : Word) :
    (a ^^^ b) ^^^ (c ^^^ d) = (a ^^^ c) ^^^ (b ^^^ d) := by
  ac_rfl

theorem mulFuel_xor_left (n : Nat) (a b c : Word) :
    mulFuel n (a ^^^ b) c = mulFuel n a c ^^^ mulFuel n b c := by
  induction n generalizing a b c with
  | zero => simp [mulFuel]
  | succ n ih =>
    simp only [mulFuel, double_xor, ih]
    cases hc : c.getLsbD 0 <;> simp [xor_four]

@[simp] theorem mulFuel_zero_left (n : Nat) (a : Word) : mulFuel n 0 a = 0 := by
  induction n generalizing a with
  | zero => rfl
  | succ n ih =>
    rw [mulFuel, double_zero, ih]
    simp

@[simp] theorem mulFuel_zero_right (n : Nat) (a : Word) : mulFuel n a 0 = 0 := by
  induction n generalizing a with
  | zero => rfl
  | succ n ih =>
    simpa [mulFuel] using ih (double a)

theorem mulFuel_xor_right (n : Nat) (a b c : Word) :
    mulFuel n a (b ^^^ c) = mulFuel n a b ^^^ mulFuel n a c := by
  induction n generalizing a b c with
  | zero => simp [mulFuel]
  | succ n ih =>
    simp only [mulFuel, BitVec.ushiftRight_xor_distrib, ih,
      BitVec.getLsbD_xor]
    cases hb : b.getLsbD 0 <;> cases hc : c.getLsbD 0 <;>
      simp [BitVec.xor_assoc, xor_left_comm]

theorem mul_xor_left (a b c : Word) : mul (a ^^^ b) c = mul a c ^^^ mul b c :=
  mulFuel_xor_left 128 a b c

theorem mul_xor_right (a b c : Word) : mul a (b ^^^ c) = mul a b ^^^ mul a c :=
  mulFuel_xor_right 128 a b c

@[simp] theorem mul_zero_left (a : Word) : mul 0 a = 0 := mulFuel_zero_left 128 a
@[simp] theorem mul_zero_right (a : Word) : mul a 0 = 0 := mulFuel_zero_right 128 a

theorem fastMulFuel_eq (n : Nat) (a b : Word) : fastMulFuel n a b = mulFuel n a b := by
  induction n generalizing a b with
  | zero => rfl
  | succ n ih =>
    by_cases hb : b = 0
    · subst b
      calc
        fastMulFuel (n + 1) a 0 = 0 := rfl
        _ = mulFuel (n + 1) a 0 := (mulFuel_zero_right (n + 1) a).symm
    · simp only [fastMulFuel, if_neg hb, mulFuel, ih]

def fastMul (a b : Word) : Word := fastMulFuel 128 a b

theorem fastMul_eq (a b : Word) : fastMul a b = mul a b := fastMulFuel_eq 128 a b

def basis (i : Nat) : Word := (1 : Word) <<< i

def XorLinear (f : Word → Word) : Prop :=
  f 0 = 0 ∧ ∀ a b, f (a ^^^ b) = f a ^^^ f b

theorem split_low_bit (a : Word) :
    a = (if a.getLsbD 0 then 1 else 0) ^^^ ((a >>> (1 : Nat)) <<< (1 : Nat)) := by
  apply BitVec.eq_of_getLsbD_eq
  intro i hi
  by_cases hz : i = 0
  · subst i
    cases a.getLsbD 0 <;> simp
  · have hi1 : 1 ≤ i := by omega
    have his : 1 + (i - 1) = i := by omega
    cases a.getLsbD 0 <;>
      simp [hi, Nat.not_lt.mpr hi1, his, hz]

theorem linear_eq_of_basis_low (n : Nat) (f g : Word → Word)
    (hf : XorLinear f) (hg : XorLinear g)
    (hb : ∀ i, i < n → f (basis i) = g (basis i))
    (a : Word) (ha : a >>> n = 0) : f a = g a := by
  induction n generalizing f g a with
  | zero =>
    simp only [BitVec.ushiftRight_zero] at ha
    simpa [ha] using hf.1.trans hg.1.symm
  | succ n ih =>
    let f' := fun a : Word => f (a <<< (1 : Nat))
    let g' := fun a : Word => g (a <<< (1 : Nat))
    have hf' : XorLinear f' := by
      constructor
      · simpa [f'] using hf.1
      · intro x y
        simpa [f', BitVec.shiftLeft_xor_distrib] using
          hf.2 (x <<< (1 : Nat)) (y <<< (1 : Nat))
    have hg' : XorLinear g' := by
      constructor
      · simpa [g'] using hg.1
      · intro x y
        simpa [g', BitVec.shiftLeft_xor_distrib] using
          hg.2 (x <<< (1 : Nat)) (y <<< (1 : Nat))
    have hb' : ∀ i, i < n → f' (basis i) = g' (basis i) := by
      intro i hi
      simpa [f', g', basis, ← BitVec.shiftLeft_add] using hb (i + 1) (by omega)
    have ha' : (a >>> (1 : Nat)) >>> n = 0 := by
      simpa [← BitVec.shiftRight_add, Nat.add_comm 1 n] using ha
    have hs := ih f' g' hf' hg' hb' (a >>> (1 : Nat)) ha'
    change f ((a >>> (1 : Nat)) <<< (1 : Nat)) =
      g ((a >>> (1 : Nat)) <<< (1 : Nat)) at hs
    have hb0 := hb 0 (by omega)
    have hl : f (if a.getLsbD 0 then 1 else 0) =
        g (if a.getLsbD 0 then 1 else 0) := by
      cases a.getLsbD 0
      · exact hf.1.trans hg.1.symm
      · simpa [basis] using hb0
    calc
      f a = f ((if a.getLsbD 0 then 1 else 0) ^^^
        ((a >>> (1 : Nat)) <<< (1 : Nat))) := congrArg f (split_low_bit a)
      _ = f (if a.getLsbD 0 then 1 else 0) ^^^
        f ((a >>> (1 : Nat)) <<< (1 : Nat)) := hf.2 _ _
      _ = g (if a.getLsbD 0 then 1 else 0) ^^^
        g ((a >>> (1 : Nat)) <<< (1 : Nat)) := by rw [hl, hs]
      _ = g ((if a.getLsbD 0 then 1 else 0) ^^^
        ((a >>> (1 : Nat)) <<< (1 : Nat))) := (hg.2 _ _).symm
      _ = g a := congrArg g (split_low_bit a).symm

theorem linear_eq_of_basis (f g : Word → Word)
    (hf : XorLinear f) (hg : XorLinear g)
    (hb : ∀ i, i < 128 → f (basis i) = g (basis i)) : f = g := by
  funext a
  exact linear_eq_of_basis_low 128 f g hf hg hb a
    (BitVec.ushiftRight_eq_zero (by decide))

end GRWTSK.Algebra.FiniteField.GF128
