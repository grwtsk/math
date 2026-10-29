/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Lean checks the proof terms.
-/
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Data.Matrix.Diagonal
import Mathlib.Tactic

/-!
# Noncommuting rational shear counterexamples

Established two-by-two rational matrix examples. Individual sign-conjugation
laws do not imply the inverse-product law without the commutativity premise.
The assigned shear edges do not represent arithmetic transport or an RH bridge.
Lean and mathlib retain their upstream identities and credit.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples

universe u v

/-- Upper shear fixture: this is not a common-J circle rotation. -/
def hostileUpper : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 1; 0, 1]
  inv := !![1, -1; 0, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]



/-- Lower shear fixture, deliberately outside the common-J family. -/
def hostileLower : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 0; 1, 1]
  inv := !![1, 0; -1, 1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]



/-- The shear sign flip is an involutive diagonal unit. -/
def hostileSign : (Matrix (Fin 2) (Fin 2) ℚ)ˣ where
  val := !![1, 0; 0, -1]
  inv := !![1, 0; 0, -1]
  val_inv := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]
  inv_val := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [Matrix.mul_apply, Fin.sum_univ_two]



/-- First hostile edge individually obeys sign conjugation to inverse. -/
theorem hostileUpper_sign_inverse :
    hostileSign * hostileUpper * hostileSign⁻¹ = hostileUpper⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hostileSign, hostileUpper, Matrix.mul_apply, Fin.sum_univ_two]



/-- Second hostile edge individually obeys the same inverse conjugation law. -/
theorem hostileLower_sign_inverse :
    hostileSign * hostileLower * hostileSign⁻¹ = hostileLower⁻¹ := by
  apply Units.ext
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [hostileSign, hostileLower, Matrix.mul_apply, Fin.sum_univ_two]



/-- Hostile fixture: individual sign-inverse laws do not imply the product law. -/
theorem noncommuting_sign_loop_fails :
    hostileSign * (hostileLower * hostileUpper) * hostileSign⁻¹ ≠
      (hostileLower * hostileUpper)⁻¹ := by
  intro h
  have he := congrArg (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 0) h
  norm_num [mul_inv_rev, hostileSign, hostileUpper, hostileLower,
    Matrix.mul_apply, Fin.sum_univ_two] at he



/-- The same two edges have a checked, explicit noncommutativity obstruction. -/
theorem hostile_edges_noncommute : ¬ Commute hostileUpper hostileLower := by
  intro h
  have he := congrArg
    (fun g : (Matrix (Fin 2) (Fin 2) ℚ)ˣ => (g : Matrix (Fin 2) (Fin 2) ℚ) 0 0) h.eq
  norm_num [hostileUpper, hostileLower, Matrix.mul_apply, Fin.sum_univ_two] at he




end GRWTSK.Algebra.LinearAlgebra.CommonJCounterexamples
