/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.PrimeOrbitCharacterReturn
import Mathlib.Tactic

/-!
# Exact arithmetic character readout from the totient/Frobenius loop

Retain the native Mathlib DirichletCharacter, native (ZMod n)^x fiber,
and the unchanged primeWeight, correlation and conjugation from
PrimeOrbitCharacterReturn.primePowerHolonomyTerm. For p coprime to n,
Frobenius is ZMod.unitOfCoprime p. Its character phase is exactly
chi(p), and its m-fold return is chi(p^m). This is the missing typed
coefficient-level consumer of TotientFrobeniusInvariantLoops.

The finite complex shift has explicit multiplicative-character
eigenvalue 2-chi(p)-chi(p)^-1, with the backward coefficient expressed
using chi(a^-1). The value chi(p) is a root of unity of period
dividing orderOf(a). Trivial-character-phase modes are invariant,
but a general nontrivial phase is allowed and retained.

The original signed prime-power Weil response receives EXACTLY this
coefficient, not its absolute value. For complex test correlations the
source conjugation remains indispensable. Ramified p|n is excluded
from invertible holonomy; its zero character value requires the
inducing-character/local-Euler-factor treatment, not a fake unit.

The complete source pole, gamma, conductor, character pairing and
infinite analytic limit are NOT derived here. Finite Euler coefficients
do not imply the source's universal Weil positivity, RH or Dirichlet
GRH. Full spectral sine multiplicities would additionally require
finite-character Fourier completeness; that theorem is separate
from the exact eigenvalue proved in the imported loop module.

Source pins: grwtsk/math@5f0b29531affef9d24876b68a48c5238d53cde83,
Mathlib4@d13f23b723b8a846827a245b89c10fc7d3f11612,
Connes--Consani arXiv:2501.06560, and the exact existing
PrimeOrbitCharacterReturn source. Known local Euler-factor algebra,
not a novelty claim. Fresh Lean checking NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusWeilReturn

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

variable (n : ℕ) [NeZero n]

/-- Restrict the ORIGINAL Dirichlet character to the genuine group of
units, without replacing its modulus, conductor or phase convention. -/
def characterOnUnits (χ : DirichletCharacter ℂ n) :
    UnitFiber n →* ℂ where
  toFun u := χ (u : ZMod n)
  map_one' := by simp
  map_mul' := by
    intro u v
    simp

/-- Arithmetic Frobenius evaluation is the actual Dirichlet phase. -/
theorem character_frobenius_value (χ : DirichletCharacter ℂ n)
    (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    characterOnUnits n χ (frobeniusUnit n p hprime hp) = χ p := by
  simp [characterOnUnits, frobeniusUnit]

/-- All prime powers are the iterated arithmetic monodromy,
including the original complex phase. -/
theorem character_frobenius_power (χ : DirichletCharacter ℂ n)
    (p m : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    (characterOnUnits n χ (frobeniusUnit n p hprime hp)) ^ m =
      χ (p ^ m) := by
  rw [character_frobenius_value]
  exact (dirichlet_prime_power_phase χ p m).symm

/-- The prime value is a finite-order phase; no analytic positivity
premise and no absolute-value replacement is made. -/
theorem character_frobenius_period (χ : DirichletCharacter ℂ n)
    (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    (χ p) ^ orderOf (frobeniusUnit n p hprime hp) = 1 := by
  rw [← character_frobenius_value n χ p hprime hp]
  exact character_phase_period (frobeniusUnit n p hprime hp) (characterOnUnits n χ)

/-- The ORIGINAL finite cyclic Laplacian reads the actual character. -/
theorem character_frobenius_laplacian (χ : DirichletCharacter ℂ n)
    (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    cycleLaplacian (frobeniusUnit n p hprime hp)
        (fun u : UnitFiber n => χ (u : ZMod n)) =
      fun u : UnitFiber n =>
        ((2 : ℂ) - χ p -
            χ ((frobeniusUnit n p hprime hp)⁻¹ : ZMod n)) * χ (u : ZMod n) := by
  have h := character_eigen (frobeniusUnit n p hprime hp) (characterOnUnits n χ)
  change cycleLaplacian _ _ = _ at h
  rw [character_frobenius_value] at h
  exact h

/-- Character phase = 1 iff its unit-fiber mode is a loop-invariant,
zero-energy mode in the ACTUAL finite cyclotomic geometry. -/
theorem character_cyclotomic_invariant_iff (χ : DirichletCharacter ℂ n)
    (p : ℕ) (hprime : Nat.Prime p) (hp : Nat.Coprime p n) :
    IsInvariant (frobeniusUnit n p hprime hp)
        (fun u : UnitFiber n => χ (u : ZMod n)) ↔ χ p = 1 := by
  simpa [characterOnUnits, frobeniusUnit] using
    (character_invariant_iff (frobeniusUnit n p hprime hp) (characterOnUnits n χ))

/-- Do not replace the native Weil coefficient or conjugated complex
correlation with a positive or merely real quantity. -/
def originalPrimePowerThroughLoop
    (χ : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) (correlation : ℕ → ℂ) : ℝ :=
  primeWeight (p ^ m) *
    (conj ((characterOnUnits n χ (frobeniusUnit n p hprime hp)) ^ m) *
      correlation (p ^ m)).re

/-- Exact return to the EXISTING arithmetic Weil prime-power expression. -/
theorem originalPrimePowerThroughLoop_eq_source
    (χ : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) (correlation : ℕ → ℂ) :
    originalPrimePowerThroughLoop n χ p m hprime hp correlation =
      primePowerHolonomyTerm χ correlation p m := by
  unfold originalPrimePowerThroughLoop primePowerHolonomyTerm
  rw [character_frobenius_power, dirichlet_prime_power_phase]

/-- The original prime-power phase has the same finite Euler
coefficients. No convergence / analytic logarithmic derivative is
claimed from a finite polynomial identity. -/
theorem finiteEulerHolonomyReturn
    (χ : DirichletCharacter ℂ n) (p : ℕ)
    (hprime : Nat.Prime p) (hp : Nat.Coprime p n) (M : ℕ) (z : ℂ) :
    (∑ m ∈ Finset.range M,
      (characterOnUnits n χ (frobeniusUnit n p hprime hp)) ^ m * z ^ m) =
      ∑ m ∈ Finset.range M, χ (p ^ m) * z ^ m := by
  apply Finset.sum_congr rfl
  intro m hm
  rw [character_frobenius_power]

end GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusWeilReturn
