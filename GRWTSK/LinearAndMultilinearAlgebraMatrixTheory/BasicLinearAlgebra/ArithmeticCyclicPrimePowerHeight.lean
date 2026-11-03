/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.ArithmeticCyclicPrimePowerBlindness
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Source-preserving prime-power height recovery

The matrix alone loses positive prime-power exponents when the character
coefficient is zero. If those source exponents are retained and u+v is nonzero,
the same actual potential recovers each raw label log-height, log-radical and
their exact excess. The singular coefficient choice u+v=0 is kept separate.

These are identities for the stated prime-power label family. No additive
triple is supplied, and no uniform exponent/radical-height inequality or ABC
theorem follows from the identities alone.

SOURCE_PROOF_CANDIDATES / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerHeight

open ArithmeticCyclicHamiltonian ArithmeticCyclicPrimePowerBlindness

variable (N : ℕ) [hN : NeZero N]
include hN

theorem log_height_recovery (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i)
    (u v : ℝ) (hcoef : u + v ≠ 0) (i : ZMod N) :
    Real.log ((p i ^ k i : ℕ) : ℝ) =
      (k i : ℝ) * arithmeticPotential N level χ (fun j => p j ^ k j) u v 0 i / (u + v) := by
  have hq := congrFun (potential_of_prime_power_labels N level χ p k hp hk u v) i
  apply (eq_div_iff hcoef).mpr
  rw [hq]
  simp only [Nat.cast_pow, Real.log_pow]
  ring

theorem log_radical_recovery (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i)
    (u v : ℝ) (hcoef : u + v ≠ 0) (i : ZMod N) :
    Real.log (UniqueFactorizationMonoid.radical (p i ^ k i) : ℝ) =
      arithmeticPotential N level χ (fun j => p j ^ k j) u v 0 i / (u + v) := by
  have hq := congrFun (potential_of_prime_power_labels N level χ p k hp hk u v) i
  apply (eq_div_iff hcoef).mpr
  rw [ArithmeticFeatureGram.radical_prime_power (hp i) (hk i), hq]
  ring

theorem exact_log_height_excess (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i)
    (u v : ℝ) (hcoef : u + v ≠ 0) (i : ZMod N) :
    Real.log ((p i ^ k i : ℕ) : ℝ) -
        Real.log (UniqueFactorizationMonoid.radical (p i ^ k i) : ℝ) =
      ((k i : ℝ) - 1) * arithmeticPotential N level χ (fun j => p j ^ k j) u v 0 i /
        (u + v) := by
  have hq := congrFun (potential_of_prime_power_labels N level χ p k hp hk u v) i
  apply (eq_div_iff hcoef).mpr
  rw [ArithmeticFeatureGram.radical_prime_power (hp i) (hk i), hq]
  simp only [Nat.cast_pow, Real.log_pow]
  ring

/-- Cancellation of the two arithmetic coefficients destroys this reconstruction channel. -/
theorem cancelled_potential (level : ℕ) (χ : DirichletCharacter ℂ level)
    (p k : ZMod N → ℕ) (hp : ∀ i, (p i).Prime) (hk : ∀ i, 0 < k i) (u : ℝ) :
    arithmeticPotential N level χ (fun j => p j ^ k j) u (-u) 0 = 0 := by
  rw [potential_of_prime_power_labels N level χ p k hp hk u (-u)]
  simp

end GRWTSK.Algebra.LinearAlgebra.MatrixTheory.ArithmeticCyclicPrimePowerHeight
