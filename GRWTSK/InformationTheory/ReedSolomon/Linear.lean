/-
Copyright (c) 2026. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
-/
import GRWTSK.Algebra.FiniteField.GF128.Arithmetic

namespace GRWTSK.InformationTheory.ReedSolomon
open GRWTSK.Algebra.FiniteField.GF128

structure Four where
  a : Word
  b : Word
  c : Word
  d : Word
deriving DecidableEq

def zero : Four := ⟨0, 0, 0, 0⟩
def xor (x y : Four) : Four := ⟨x.a ^^^ y.a, x.b ^^^ y.b, x.c ^^^ y.c, x.d ^^^ y.d⟩
def slot (j : Fin 4) (x : Word) : Four :=
  if j = 0 then ⟨x,0,0,0⟩ else if j = 1 then ⟨0,x,0,0⟩ else
  if j = 2 then ⟨0,0,x,0⟩ else ⟨0,0,0,x⟩
def get (x : Four) (j : Fin 4) : Word :=
  if j = 0 then x.a else if j = 1 then x.b else if j = 2 then x.c else x.d

theorem Four.ext {x y : Four} (ha : x.a = y.a) (hb : x.b = y.b)
    (hc : x.c = y.c) (hd : x.d = y.d) : x = y := by
  cases x; cases y; simp_all

abbrev Row := Four
abbrev Matrix := Fin 4 → Row
def rowEval (r : Row) (x : Four) : Word :=
  mul r.a x.a ^^^ mul r.b x.b ^^^ mul r.c x.c ^^^ mul r.d x.d
def transform (m : Matrix) (x : Four) : Four :=
  ⟨rowEval (m 0) x, rowEval (m 1) x, rowEval (m 2) x, rowEval (m 3) x⟩

def column (m : Matrix) (j : Fin 4) : Four :=
  ⟨get (m 0) j, get (m 1) j, get (m 2) j, get (m 3) j⟩

def composeRow (r : Row) (m : Matrix) : Row :=
  ⟨rowEval r (column m 0), rowEval r (column m 1),
    rowEval r (column m 2), rowEval r (column m 3)⟩

def compose (m n : Matrix) : Matrix := fun j => composeRow (m j) n

def identityMatrix : Matrix := fun j => slot j 1

theorem rowEval_transform (r : Row) (m : Matrix) (x : Four) :
    rowEval r (transform m x) = rowEval (composeRow r m) x := by
  simp only [rowEval, transform, composeRow, column, get]
  simp only [mul_xor_right, mul_xor_left, ← mul_assoc]
  ac_rfl

theorem transform_compose (m n : Matrix) (x : Four) :
    transform m (transform n x) = transform (compose m n) x := by
  apply Four.ext <;> exact rowEval_transform _ _ _

theorem transform_identity (x : Four) : transform identityMatrix x = x := by
  have h0 (a : Word) : mul (0#128) a = 0#128 := mul_zero_left a
  have h1 (a : Word) : mul (1#128) a = a := mul_one_left a
  apply Four.ext <;>
    simp [transform, identityMatrix, slot, rowEval, h0, h1]

def XorLinear4 (f : Four → Word) : Prop :=
  f zero = 0 ∧ ∀ x y, f (xor x y) = f x ^^^ f y

theorem rowEval_linear (r : Row) : XorLinear4 (rowEval r) := by
  constructor
  · simp only [rowEval, zero, mul_zero_right]
    decide
  · intro x y
    simp only [rowEval, xor, mul_xor_right]
    simp [BitVec.xor_assoc, BitVec.xor_comm, xor_left_comm]

theorem transform_zero (m : Matrix) : transform m zero = zero := by
  apply Four.ext <;> simp only [transform, rowEval, zero, mul_zero_right] <;> decide

theorem transform_xor (m : Matrix) (x y : Four) :
    transform m (xor x y) = xor (transform m x) (transform m y) := by
  apply Four.ext <;> exact (rowEval_linear _).2 x y

theorem linear4_eq_of_basis (f g : Four → Word)
    (hf : XorLinear4 f) (hg : XorLinear4 g)
    (hb : ∀ j : Fin 4, ∀ i, i < 128 → f (slot j (basis i)) = g (slot j (basis i))) :
    f = g := by
  have hp : ∀ j : Fin 4, ∀ a, f (slot j a) = g (slot j a) := by
    intro j
    apply congrFun (linear_eq_of_basis (fun a => f (slot j a)) (fun a => g (slot j a))
      ?_ ?_ (hb j))
    · constructor
      · simpa [slot, zero] using hf.1
      · intro a b
        have hs : slot j (a ^^^ b) = xor (slot j a) (slot j b) := by
          unfold slot
          split <;> (try split) <;> (try split) <;> simp_all [xor]
        change f (slot j (a ^^^ b)) = _
        rw [hs, hf.2]
    · constructor
      · simpa [slot, zero] using hg.1
      · intro a b
        have hs : slot j (a ^^^ b) = xor (slot j a) (slot j b) := by
          unfold slot
          split <;> (try split) <;> (try split) <;> simp_all [xor]
        change g (slot j (a ^^^ b)) = _
        rw [hs, hg.2]
  funext x
  have hx : x = xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d)) := by
    apply Four.ext <;> simp [slot, xor]
  calc
    f x = f (xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d))) := congrArg f hx
    _ = (f (slot 0 x.a) ^^^ f (slot 1 x.b)) ^^^
      (f (slot 2 x.c) ^^^ f (slot 3 x.d)) := by rw [hf.2, hf.2, hf.2]
    _ = (g (slot 0 x.a) ^^^ g (slot 1 x.b)) ^^^
      (g (slot 2 x.c) ^^^ g (slot 3 x.d)) := by rw [hp, hp, hp, hp]
    _ = g (xor (xor (slot 0 x.a) (slot 1 x.b))
      (xor (slot 2 x.c) (slot 3 x.d))) := by rw [hg.2, hg.2, hg.2]
    _ = g x := congrArg g hx.symm

end GRWTSK.InformationTheory.ReedSolomon
