/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
This module consumes the source-only Farey/ResolvableQuintic module.
No root import or Lean/kernel acceptance is asserted.
-/
import GRWTSK.NumberTheory.Farey.ResolvableQuintic
import Mathlib.Data.Matrix.Notation
import Mathlib.Tactic

/-!
# Farey refinement as a genuine integral matrix-group superwalk

For a Farey cell with a/b < c/d and bc-ad=1, use the ordered frame
F = [[c,a],[d,b]] of determinant one. A left mediant child multiplies
F on the RIGHT by [[1,0],[1,1]], and a right child multiplies F on
the RIGHT by [[1,1],[0,1]]. The two matrices are genuine units over Z.

A word is a positive-monoid action on Farey cells, NOT an action of all
of GL(2,Z) on positive Farey cells: inverses can exit the Farey domain.
The matrix word does extend to the full group of units.

The noncommuting two-step witness remembers order. It is not itself a
spectral theorem, spiral shape, irrational-frequency result, or RH bridge.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.Farey.GroupSuperwalk

open Matrix

abbrev MatZ := Matrix (Fin 2) (Fin 2) ℤ

inductive Turn
  | left
  | right
  deriving DecidableEq, Repr

/-- One sourced Farey mediant step, retaining the whole endpoint certificate. -/
def turnCell (I : Cell) : Turn → Cell
  | .left => I.leftChild
  | .right => I.rightChild

/-- Chronological left-to-right Farey word action. -/
def walk : Cell → List Turn → Cell
  | I, [] => I
  | I, t :: ts => walk (turnCell I t) ts

@[simp] theorem walk_nil (I : Cell) : walk I [] = I := rfl

@[simp] theorem walk_cons (I : Cell) (t : Turn) (ts : List Turn) :
    walk I (t :: ts) = walk (turnCell I t) ts := rfl

theorem walk_append (I : Cell) (u v : List Turn) :
    walk I (u ++ v) = walk (walk I u) v := by
  induction u generalizing I with
  | nil => rfl
  | cons t ts ih => simpa [walk] using ih (turnCell I t)

/-- Reversed endpoint columns yield positive orientation and determinant +1. -/
def frame (I : Cell) : MatZ :=
  !![(I.rightNum : ℤ), (I.leftNum : ℤ);
     (I.rightDen : ℤ), (I.leftDen : ℤ)]

/-- The two canonical integral elementary shears, polymorphic in the semiring. -/
def leftShear {R : Type*} [Semiring R] : Matrix (Fin 2) (Fin 2) R :=
  !![1, 0; 1, 1]

def rightShear {R : Type*} [Semiring R] : Matrix (Fin 2) (Fin 2) R :=
  !![1, 1; 0, 1]

def turnShear {R : Type*} [Semiring R] : Turn → Matrix (Fin 2) (Fin 2) R
  | .left => leftShear
  | .right => rightShear

/-- Explicit integral inverses: these are actual units, not determinant labels. -/
def leftUnit : MatZˣ where
  val := leftShear
  inv := !![1, 0; -1, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [leftShear, Matrix.mul_apply, Fin.sum_univ_two]

def rightUnit : MatZˣ where
  val := rightShear
  inv := !![1, -1; 0, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [rightShear, Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;>
      norm_num [rightShear, Matrix.mul_apply, Fin.sum_univ_two]

def turnUnit : Turn → MatZˣ
  | .left => leftUnit
  | .right => rightUnit

/-- The first chronological turn occurs on the left in the word product.
The word product then acts on a Farey frame on the right. -/
def wordUnit : List Turn → MatZˣ
  | [] => 1
  | t :: ts => turnUnit t * wordUnit ts

@[simp] theorem wordUnit_nil : wordUnit [] = 1 := rfl

@[simp] theorem wordUnit_cons (t : Turn) (ts : List Turn) :
    wordUnit (t :: ts) = turnUnit t * wordUnit ts := rfl

/-- Positive Farey words map multiplicatively into the actual matrix unit group. -/
theorem wordUnit_append (u v : List Turn) :
    wordUnit (u ++ v) = wordUnit u * wordUnit v := by
  induction u with
  | nil => simp [wordUnit]
  | cons t ts ih => simp [wordUnit, ih, mul_assoc]

/-- A mediant-left refinement is exactly the left shear on endpoint columns. -/
theorem frame_leftChild (I : Cell) :
    frame I.leftChild = frame I * (leftShear : MatZ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [frame, Cell.leftChild, leftShear, Matrix.mul_apply, Fin.sum_univ_two] <;>
      ring

/-- A mediant-right refinement is exactly the right shear on endpoint columns. -/
theorem frame_rightChild (I : Cell) :
    frame I.rightChild = frame I * (rightShear : MatZ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    simp [frame, Cell.rightChild, rightShear, Matrix.mul_apply, Fin.sum_univ_two] <;>
      ring

theorem frame_turn (I : Cell) (t : Turn) :
    frame (turnCell I t) = frame I * (turnUnit t : MatZ) := by
  cases t with
  | left => simpa [turnCell, turnUnit, leftUnit] using frame_leftChild I
  | right => simpa [turnCell, turnUnit, rightUnit] using frame_rightChild I

/-- THE source-preserving superwalk theorem: actual Farey cells and GL2(Z) word
transports agree, with no reversal of the chronological matrix order. -/
theorem frame_walk (I : Cell) (w : List Turn) :
    frame (walk I w) = frame I * (wordUnit w : MatZ) := by
  induction w generalizing I with
  | nil => simp [walk, wordUnit]
  | cons t ts ih =>
      change frame (walk (turnCell I t) ts) =
        frame I * ((turnUnit t * wordUnit ts : MatZˣ) : MatZ)
      rw [ih (turnCell I t), frame_turn]
      simp only [Units.val_mul, Matrix.mul_assoc]

/-- The Farey parent determinant certificate becomes the actual matrix det. -/
theorem frame_det (I : Cell) : (frame I).det = 1 := by
  have h : (I.leftDen : ℤ) * (I.rightNum : ℤ) =
      (I.leftNum : ℤ) * (I.rightDen : ℤ) + 1 := by
    exact_mod_cast I.unimodular
  rw [Matrix.det_fin_two]
  change (I.rightNum : ℤ) * (I.leftDen : ℤ) -
    (I.leftNum : ℤ) * (I.rightDen : ℤ) = 1
  linear_combination h

theorem walk_frame_det (I : Cell) (w : List Turn) :
    (frame (walk I w)).det = 1 := frame_det _

/-- Distinct chronological orders have distinct integral transfer matrices. -/
theorem left_right_product :
    (leftShear : MatZ) * rightShear = !![1, 1; 1, 2] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [leftShear, rightShear, Matrix.mul_apply, Fin.sum_univ_two]

theorem right_left_product :
    (rightShear : MatZ) * leftShear = !![2, 1; 1, 1] := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [leftShear, rightShear, Matrix.mul_apply, Fin.sum_univ_two]

theorem shears_do_not_commute :
    (leftShear : MatZ) * rightShear ≠ rightShear * leftShear := by
  intro h
  rw [left_right_product, right_left_product] at h
  have h00 := congrArg (fun M : MatZ => M 0 0) h
  norm_num at h00

/-- Trace three is a genuine two-step hyperbolic-type witness, not a proof
of a spectral gap for any infinite Farey/Schrodinger operator. -/
theorem left_right_trace_three :
    Matrix.trace ((leftShear : MatZ) * rightShear) = 3 := by
  rw [left_right_product]
  norm_num [Matrix.trace, Fin.sum_univ_two]

/-- The updated Farey-source endpoint-local positivity theorem applies at
the ACTUAL refined cell; no positivity away from its two endpoints is assumed. -/
theorem quintic_eye_on_walk_iff_of_endpoint_pos (q c : Polynomial ℚ)
    (I : Cell) (w : List Turn)
    (hleft : 0 < q.eval (walk I w).left)
    (hright : 0 < q.eval (walk I w).right) :
    ResolvableEye (q * c) (walk I w) ↔
      ResolvableEye c (walk I w) :=
  resolvableEye_mul_iff_of_pos_at_endpoints q c (walk I w) hleft hright

/-- The original global-positivity supplier is a sufficient specialization;
neither route proves existence of a root or completeness of a rational search. -/
theorem quintic_eye_on_walk_iff (q c : Polynomial ℚ)
    (hq : ∀ x : ℚ, 0 < q.eval x) (I : Cell) (w : List Turn) :
    ResolvableEye (q * c) (walk I w) ↔
      ResolvableEye c (walk I w) :=
  quintic_eye_on_walk_iff_of_endpoint_pos q c I w
    (hq (walk I w).left) (hq (walk I w).right)

/-- A nonempty source cell, used to rule out empty-carrier interpretations. -/
def rootCell : Cell where
  leftNum := 0
  leftDen := 1
  rightNum := 1
  rightDen := 1
  leftDen_pos := by decide
  rightDen_pos := by decide
  unimodular := by decide

end GRWTSK.NumberTheory.Farey.GroupSuperwalk
