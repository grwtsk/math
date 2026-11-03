/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.ArithmeticCyclicHamiltonian
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Recovering genuine Dirichlet-character phase from actual arithmetic matrices

The character, its level, and one multiplier k are unchanged between channels.
Only the natural source labels change from m(i) to k*m(i). Multiplicativity
gives Re(chi(k*m)) = Re(chi(k))*Re(chi(m)) - Im(chi(k))*Im(chi(m)).
If Im(chi(k)) is nonzero, the two real diagonal observations recover the full
complex value. A real-valued character needs only its original real channel.

The character-only specialization has exactly u=v=0 and w=1. Subtraction of
the zero-potential Hamiltonian removes the same hopping term even at small
cycle sizes. No fake scalar multiple of a character is introduced.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
This recovers finite character samples, not prime-power labels, an L-function,
its zero divisor, or a GRH estimate. Those analytic bridges remain open.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterPhase

open ArithmeticCyclicHamiltonian

variable (N : ℕ) [hN : NeZero N]
include hN

def characterPotential (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) : ZMod N → ℝ :=
  arithmeticPotential N level χ m 0 0 1

theorem characterPotential_eq_re (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (i : ZMod N) :
    characterPotential N level χ m i = (χ (m i : ZMod level)).re := by
  simp [characterPotential, arithmeticPotential]

/-- The observed diagonal belongs to the original signed matrices with identical hopping. -/
theorem matrix_difference_diagonal_re (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (t : ℝ) (i : ZMod N) :
    ((arithmeticHamiltonian N level χ m t 0 0 1 -
        hamiltonian N t (fun _ => 0)) i i).re = characterPotential N level χ m i := by
  change ((hamiltonian N t (characterPotential N level χ m) -
    hamiltonian N t (fun _ => 0)) i i).re = _
  rw [hamiltonian_sub]
  simp

theorem multiplied_label_observation (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (k : ℕ) (i : ZMod N) :
    characterPotential N level χ (fun j => k * m j) i =
      (χ (k : ZMod level)).re * characterPotential N level χ m i -
        (χ (k : ZMod level)).im * (χ (m i : ZMod level)).im := by
  simp only [characterPotential_eq_re, Nat.cast_mul, map_mul, Complex.mul_re]

/-- The multiplier is fixed from the character before observing a target sample. -/
theorem imaginary_part_recovery (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (k : ℕ) (hk : (χ (k : ZMod level)).im ≠ 0)
    (i : ZMod N) :
    (χ (m i : ZMod level)).im =
      ((χ (k : ZMod level)).re * characterPotential N level χ m i -
        characterPotential N level χ (fun j => k * m j) i) /
          (χ (k : ZMod level)).im := by
  apply (eq_div_iff hk).mpr
  have h := multiplied_label_observation N level χ m k i
  nlinarith

theorem complex_value_recovery (level : ℕ) (χ : DirichletCharacter ℂ level)
    (m : ZMod N → ℕ) (k : ℕ) (hk : (χ (k : ZMod level)).im ≠ 0)
    (i : ZMod N) :
    χ (m i : ZMod level) =
      (characterPotential N level χ m i : ℂ) +
        (((χ (k : ZMod level)).re * characterPotential N level χ m i -
          characterPotential N level χ (fun j => k * m j) i) /
            (χ (k : ZMod level)).im : ℝ) * Complex.I := by
  apply Complex.ext
  · simp [characterPotential_eq_re]
  · simpa using imaginary_part_recovery N level χ m k hk i

/-- The alternative has no analytic premise: real samples, or a nonreal multiplier witness. -/
theorem real_samples_or_nonreal_multiplier (level : ℕ) (χ : DirichletCharacter ℂ level) :
    (∀ k : ℕ, (χ (k : ZMod level)).im = 0) ∨
      ∃ k : ℕ, (χ (k : ZMod level)).im ≠ 0 := by
  by_cases h : ∀ k : ℕ, (χ (k : ZMod level)).im = 0
  · exact Or.inl h
  · push_neg at h
    exact Or.inr h

theorem real_sample_recovery (level : ℕ) (χ : DirichletCharacter ℂ level)
    (hreal : ∀ k : ℕ, (χ (k : ZMod level)).im = 0)
    (m : ZMod N → ℕ) (i : ZMod N) :
    χ (m i : ZMod level) = (characterPotential N level χ m i : ℂ) := by
  apply Complex.ext
  · simp [characterPotential_eq_re]
  · simpa using hreal (m i)

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicCharacterPhase
