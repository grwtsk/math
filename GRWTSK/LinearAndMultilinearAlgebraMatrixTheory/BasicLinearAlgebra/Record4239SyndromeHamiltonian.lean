/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
The record curve and rational-point source retain the upstream attribution
to Noam D. Elkies, Zev Klagsbrun and Samuel Li in the imported modules.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.Record4239SquareClassBridge
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# The actual source-oriented mod-two syndrome as an arithmetic Hamiltonian

The point-first character matrix is transposed before acting on relation
coefficients. The existing actual arithmetic Hamiltonian encodes its syndrome
using natural labels 1 and 2, hopping zero, von Mangoldt coefficient 1/log(2),
and both other coefficients zero. Thus its diagonal is the exact nonzero-bit
indicator, and it is an idempotent matrix. The retained transpose injectivity
then gives operator=0 iff coefficient vector=0.

This is finite source mathematics only. It constructs no global descent map,
local character specialization, SourceBitsMatch, Mordell-Weil theorem, analytic
rank identity or leading-term formula. A nonzero indicator operator can still
have a large kernel; no full-space positive spectral gap is asserted.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicHamiltonian

def siteIndex (i : ZMod 32) : Fin 32 := (ZMod.finEquiv 32).symm i

def syndrome (c : Fin 32 → ZMod 2) (i : ZMod 32) : ZMod 2 :=
  characterMatrix.transpose.mulVec c (siteIndex i)

def labels (c : Fin 32 → ZMod 2) (i : ZMod 32) : ℕ :=
  if syndrome c i = 0 then 1 else 2

/-- The character and level remain genuine inputs; their coefficient is exactly zero. -/
def operator (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : Matrix (ZMod 32) (ZMod 32) ℂ :=
  arithmeticHamiltonian 32 level χ (labels c) 0 (Real.log 2)⁻¹ 0 0

theorem potential_eq_indicator (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) (i : ZMod 32) :
    arithmeticPotential 32 level χ (labels c) (Real.log 2)⁻¹ 0 0 i =
      if syndrome c i = 0 then 0 else 1 := by
  have hlog : Real.log (2 : ℝ) ≠ 0 := ne_of_gt (Real.log_pos (by norm_num))
  by_cases h : syndrome c i = 0
  · simp [labels, h, arithmeticPotential]
  · simp [labels, h, arithmeticPotential,
      ArithmeticFunction.vonMangoldt_apply_prime Nat.prime_two, hlog]

theorem operator_eq_diagonal (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) :
    operator level χ c = Matrix.diagonal
      (fun i => if syndrome c i = 0 then (0 : ℂ) else 1) := by
  unfold operator arithmeticHamiltonian
  simp only [hamiltonian, Complex.ofReal_zero, zero_smul, zero_add]
  congr 1
  funext i
  rw [potential_eq_indicator]
  by_cases h : syndrome c i = 0 <;> simp [h]

/-- The finite diagnostic is a genuine projection, not an assumed positive source metric. -/
theorem operator_idempotent (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : operator level χ c * operator level χ c = operator level χ c := by
  simp only [operator_eq_diagonal, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  by_cases h : syndrome c i = 0 <;> simp [h]

/-- The exact source matrix orientation and its retained inverse are essential here. -/
theorem operator_eq_zero_iff (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : operator level χ c = 0 ↔ c = 0 := by
  constructor
  · intro hoperator
    have hbits : ∀ i : ZMod 32, syndrome c i = 0 := by
      intro i
      by_contra hne
      have hdiag := congrArg (fun A : Matrix (ZMod 32) (ZMod 32) ℂ => A i i) hoperator
      rw [operator_eq_diagonal] at hdiag
      simp [hne] at hdiag
    have hzero : characterMatrix.transpose.mulVec c = 0 := by
      funext j
      have h := hbits ((ZMod.finEquiv 32) j)
      simpa [syndrome, siteIndex] using h
    exact characterTranspose_mulVec_injective (by simpa using hzero)
  · rintro rfl
    simp [operator_eq_diagonal, syndrome]

theorem operator_ne_zero_of_coeff_ne_zero (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) (hc : c ≠ 0) : operator level χ c ≠ 0 := by
  intro h
  exact hc ((operator_eq_zero_iff level χ c).mp h)

theorem syndrome_add (c d : Fin 32 → ZMod 2) (i : ZMod 32) :
    syndrome (c + d) i = syndrome c i + syndrome d i := by
  simp [syndrome, Matrix.mulVec_add]

def bitSign (b : ZMod 2) : ℂ := if b = 0 then 1 else -1

private theorem bitSign_add (a b : ZMod 2) : bitSign (a + b) = bitSign a * bitSign b := by
  fin_cases a <;> fin_cases b <;> norm_num [bitSign]

/-- The indicator gives an actual commuting reflection representation of the finite quotient. -/
def reflectionOperator (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : Matrix (ZMod 32) (ZMod 32) ℂ :=
  1 - (2 : ℂ) • operator level χ c

theorem reflectionOperator_eq_diagonal (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) :
    reflectionOperator level χ c = Matrix.diagonal (fun i => bitSign (syndrome c i)) := by
  ext i j
  by_cases hij : i = j
  · subst j
    by_cases hb : syndrome c i = 0 <;>
      simp [reflectionOperator, operator_eq_diagonal, bitSign, hb, smul_eq_mul]
  · simp [reflectionOperator, operator_eq_diagonal, bitSign, hij, smul_eq_mul]

theorem reflectionOperator_add (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c d : Fin 32 → ZMod 2) :
    reflectionOperator level χ (c + d) =
      reflectionOperator level χ c * reflectionOperator level χ d := by
  simp only [reflectionOperator_eq_diagonal, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  rw [syndrome_add, bitSign_add]

theorem reflectionOperator_involutive (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) :
    reflectionOperator level χ c * reflectionOperator level χ c = 1 := by
  simp only [reflectionOperator_eq_diagonal, Matrix.diagonal_mul_diagonal]
  ext i j
  by_cases hij : i = j
  · subst j
    by_cases hb : syndrome c i = 0 <;> simp [bitSign, hb]
  · simp [hij]

theorem reflectionOperator_isHermitian (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : (reflectionOperator level χ c).IsHermitian := by
  rw [reflectionOperator_eq_diagonal]
  apply Matrix.isHermitian_diagonal_iff.mpr
  intro i
  change star (bitSign (syndrome c i)) = bitSign (syndrome c i)
  by_cases hb : syndrome c i = 0 <;> simp [bitSign, hb]

/-- Trivial kernel on the finite coefficient space; no kernel statement for native E(Q). -/
theorem reflectionOperator_eq_one_iff (level : ℕ) (χ : DirichletCharacter ℂ level)
    (c : Fin 32 → ZMod 2) : reflectionOperator level χ c = 1 ↔ c = 0 := by
  constructor
  · intro h
    have hs : (2 : ℂ) • operator level χ c = 0 := sub_eq_self.mp h
    have hp : operator level χ c = 0 :=
      (smul_eq_zero.mp hs).resolve_left (by norm_num)
    exact (operator_eq_zero_iff level χ c).mp hp
  · intro hc
    have hp := (operator_eq_zero_iff level χ c).mpr hc
    simp [reflectionOperator, hp]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239.SyndromeOperator
