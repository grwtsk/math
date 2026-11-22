/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.LinearAlgebra.Lagrange
import Mathlib.RingTheory.RootsOfUnity.Complex
import Mathlib.Tactic

/-!
# The phase polynomial and waveform returns on 95 slots

The roots of X^95 - 1 encode the available complex phases. Scalar
multiplication by those phases is a separate action on waveform values.
The zero waveform collapses all phase observations.
-/

set_option autoImplicit false

noncomputable section
open scoped Polynomial

namespace GRWTSK.OperatorTheory.FinitePhaseWaveformPolynomial

open Polynomial

def generator : ℂ := Complex.exp (2 * (Real.pi : ℂ) * Complex.I / 95)

theorem generator_primitive : IsPrimitiveRoot generator 95 :=
  Complex.isPrimitiveRoot_exp 95 (by decide)

/-- The exact phase associated to the zero-based slot j. -/
def phase (j : Fin 95) : ℂ := generator ^ j.val

theorem phase_eq_exp (j : Fin 95) :
    phase j = Complex.exp (2 * (Real.pi : ℂ) * Complex.I * (j.val : ℂ) / 95) := by
  rw [phase, generator, ← Complex.exp_nat_mul]
  congr 1
  ring

theorem phase_injective : Function.Injective phase := by
  intro i j equal
  exact Fin.ext (generator_primitive.pow_inj i.isLt j.isLt equal)

@[simp]
theorem phase_zero : phase 0 = 1 := by simp [phase]

theorem phase_pow_95 (j : Fin 95) : (phase j)^95 = 1 := by
  rw [phase, ← pow_mul, Nat.mul_comm, pow_mul, generator_primitive.pow_eq_one, one_pow]

theorem phase_norm (j : Fin 95) : ‖phase j‖ = 1 := by
  rw [phase_eq_exp, show 2 * (Real.pi : ℂ) * Complex.I * (j.val : ℂ) / 95 =
      ((2 * Real.pi * (j.val : ℝ) / 95 : ℝ) : ℂ) * Complex.I by push_cast; ring]
  exact Complex.norm_exp_ofReal_mul_I _

def phasePolynomial : ℂ[X] := X ^ 95 - 1

theorem phasePolynomial_eval_zero_iff (z : ℂ) :
    phasePolynomial.eval z = 0 ↔ ∃! j : Fin 95, phase j = z := by
  constructor
  · intro h
    have hp : z ^ 95 = 1 := by simpa [phasePolynomial, sub_eq_zero] using h
    obtain ⟨n, hn, he⟩ := generator_primitive.eq_pow_of_pow_eq_one hp
    exact ⟨⟨n, hn⟩, he, fun j hj => phase_injective (hj.trans he.symm)⟩
  · rintro ⟨j, rfl, _⟩
    simp [phasePolynomial, phase_pow_95]

/-- A rotation acts on a waveform value by the selected phase. -/
def rotate (j : Fin 95) (z : ℂ) : ℂ := phase j * z

theorem rotate_norm (j : Fin 95) (z : ℂ) : ‖rotate j z‖ = ‖z‖ := by
  simp [rotate, phase_norm]

theorem rotate_fixed_iff (j : Fin 95) (z : ℂ) :
    rotate j z = z ↔ j = 0 ∨ z = 0 := by
  constructor
  · intro eq
    have h : (phase j - 1) * z = 0 := by
      rw [sub_mul, one_mul, sub_eq_zero]
      exact eq
    rcases mul_eq_zero.mp h with hp | hz
    · exact Or.inl (phase_injective ((sub_eq_zero.mp hp).trans phase_zero.symm))
    · exact Or.inr hz
  · rintro (rfl | rfl) <;> simp [rotate]

theorem rotate_94_after_1 (z : ℂ) : rotate 94 (rotate 1 z) = z := by
  calc
    rotate 94 (rotate 1 z) = (generator ^ (94 + 1)) * z := by
      change generator ^ (94 : ℕ) * (generator ^ (1 : ℕ) * z) = generator ^ (94 + 1) * z
      rw [pow_add, mul_assoc]
    _ = z := by rw [show (94 + 1 : ℕ) = 95 from rfl, generator_primitive.pow_eq_one, one_mul]

/-- An unprojected nonzero observation retains the phase index exactly. -/
theorem rotate_injective_iff (z : ℂ) : Function.Injective (fun j => rotate j z) ↔ z ≠ 0 := by
  constructor
  · intro hinj hz
    have eq : (0 : Fin 95) = 1 := hinj (by simp [rotate, hz])
    exact (by decide : (0 : Fin 95) ≠ 1) eq
  · intro hz i j h
    exact phase_injective (mul_right_cancel₀ hz h)

end GRWTSK.OperatorTheory.FinitePhaseWaveformPolynomial
