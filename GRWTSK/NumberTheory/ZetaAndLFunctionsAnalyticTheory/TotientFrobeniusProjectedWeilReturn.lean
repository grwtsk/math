/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusCharacterProjector
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.TotientFrobeniusTraceWeilBoundary
import Mathlib.Tactic

/-!
# Character-projected Frobenius returns to the actual signed Weil prime term

Source revision grwtsk/math@e427072a9b8c1ecf68039a827c88748ecc5a0846.
The incoming native source is PrimeOrbitCharacterReturn.primePowerHolonomyTerm
on Mathlib DirichletCharacter C n and the existing LowSchur.primeWeight.
The actual cyclotomic fiber is (ZMod n)^x and its Frobenius is exactly
TotientFrobeniusInvariantLoops.frobeniusUnit n p hprime hcoprime.
The character restriction is the existing
TotientFrobeniusWeilReturn.characterOnUnits, not a new L-function.

For prime p coprime to the positive modulus n, set a to its true
Frobenius unit and P_chi to the ACTUAL rank-one projector matrix.
The Frobenius power matrix is the earlier windingMatrix a m.
The new finite *projected trace* is exactly

  Tr(windingMatrix(a,m) * P_characterOnUnits(chi)) = chi(p)^m.

This is nonzero for every m at every unramified p, in contrast to the
unweighted trace which vanishes if the Frobenius order does not divide m.
The exact original conjugated signed prime-power term is

  primeWeight(p^m) *
    Re(conj(Tr(windingMatrix(a,m) P_chi)) * correlation(p^m)),

with no absolute-value substitution, changed support, or lost phase.

The finite inventory theorem works only for a supplied FINITE set of
(p,m) with a proved prime/coprime premise on every member. Its attached
subtype retains every original occurrence. In particular it does NOT
claim this inventory equals all activePrimePowers T: the latter may
contain ramified primes, and the full Weil source also includes
archimedean gamma, conductor, real/odd test domains and zeta pole.
A fully covered source return requires a separate arithmetic inventory
bijection plus the complete signed residual; it is NOT supplied here.

This is a legitimate exact finite operator-to-coefficient bridge,
not a global Weil operator intertwining, a positivity theorem, a
trace-class spectral construction, a null geodesic, RH or Dirichlet GRH.
Standard finite harmonic analysis, no novelty claim. Lean elaboration,
kernel replay, transitive axiom audit and independent review NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators ComplexConjugate

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusProjectedWeilReturn

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace
open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusCharacterProjector
open GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusWeilReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

variable (n : ℕ) [NeZero n]

/-- This is the trace of the ORIGINAL m-fold Frobenius permutation
matrix after the ACTUAL native character is projected onto it. -/
def cyclotomicProjectedTrace (chi : DirichletCharacter ℂ n)
    (p m : ℕ) (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n) : ℂ :=
  (windingMatrix (frobeniusUnit n p hprime hcoprime) m *
    characterProjector (characterOnUnits n chi)).trace

/-- Projected trace gives the right complex prime power, not the
unweighted fixed-point count or a signed Boolean surrogate. -/
theorem cyclotomicProjectedTrace_eq_character_power
    (chi : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n) :
    cyclotomicProjectedTrace n chi p m hprime hcoprime = (chi p) ^ m := by
  unfold cyclotomicProjectedTrace
  rw [projected_winding_trace, character_frobenius_value]

/-- Every finite prime-power phase agrees with the ORIGINAL Dirichlet
character of p^m, including complex-valued characters. -/
theorem cyclotomicProjectedTrace_eq_native_power
    (chi : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n) :
    cyclotomicProjectedTrace n chi p m hprime hcoprime = chi (p ^ m) := by
  rw [cyclotomicProjectedTrace_eq_character_power]
  exact (dirichlet_prime_power_phase chi p m).symm

/-- The original signed von-Mangoldt-weighted Weil readout, now
through an ACTUAL projected finite Frobenius matrix trace. -/
def projectedPrimePowerTerm
    (chi : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n)
    (correlation : ℕ → ℂ) : ℝ :=
  primeWeight (p ^ m) *
    (conj (cyclotomicProjectedTrace n chi p m hprime hcoprime) *
      correlation (p ^ m)).re

/-- Exact return to the ALREADY EXISTING prime-power source term:
no change of weight, sign, prime-power exponent, complex conjugation,
or physical correlation is permitted. -/
theorem projectedPrimePowerTerm_eq_original
    (chi : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n)
    (correlation : ℕ → ℂ) :
    projectedPrimePowerTerm n chi p m hprime hcoprime correlation =
      primePowerHolonomyTerm chi correlation p m := by
  unfold projectedPrimePowerTerm primePowerHolonomyTerm
  rw [cyclotomicProjectedTrace_eq_character_power]

/-- One finite inventory retains every selected prime/exponent PAIR.
The member-level typing prevents ramified labels from being called
unit-valued holonomy. No complete Weil inventory is presumed. -/
def finiteProjectedInventory
    (chi : DirichletCharacter ℂ n) (I : Finset (ℕ × ℕ))
    (hvalid : ∀ pair ∈ I, Nat.Prime pair.1 ∧ Nat.Coprime pair.1 n)
    (correlation : ℕ → ℂ) : ℝ :=
  ∑ pair ∈ I.attach,
    projectedPrimePowerTerm n chi pair.1.1 pair.1.2
      (hvalid pair.1 pair.2).1 (hvalid pair.1 pair.2).2 correlation

/-- The full selected finite inventory returns to the identical sum
of original signed arithmetic prime-power terms. The pair inventory
and every multiplicity stay explicit. -/
theorem finiteProjectedInventory_eq_original
    (chi : DirichletCharacter ℂ n) (I : Finset (ℕ × ℕ))
    (hvalid : ∀ pair ∈ I, Nat.Prime pair.1 ∧ Nat.Coprime pair.1 n)
    (correlation : ℕ → ℂ) :
    finiteProjectedInventory n chi I hvalid correlation =
      ∑ pair ∈ I.attach,
        primePowerHolonomyTerm chi correlation pair.1.1 pair.1.2 := by
  unfold finiteProjectedInventory
  apply Finset.sum_congr rfl
  intro pair hpair
  exact projectedPrimePowerTerm_eq_original n chi
    pair.1.1 pair.1.2
      (hvalid pair.1 pair.2).1
      (hvalid pair.1 pair.2).2 correlation

/-- The number of unit states, the Frobenius period and each selected
character-projected coefficient coexist as distinct, source-bound data.
This is a joint finite observation, not a statement about full Weil
positivity or the completed L-function zero divisor. -/
theorem totient_period_and_projected_trace
    (chi : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n) :
    cyclotomicLoopCount n p hprime hcoprime *
        orderOf (frobeniusUnit n p hprime hcoprime) = Nat.totient n ∧
    cyclotomicProjectedTrace n chi p m hprime hcoprime = chi (p ^ m) := by
  exact ⟨cyclotomicLoopCount_mul_period n p hprime hcoprime,
    cyclotomicProjectedTrace_eq_native_power n chi p m hprime hcoprime⟩

end GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusProjectedWeilReturn
