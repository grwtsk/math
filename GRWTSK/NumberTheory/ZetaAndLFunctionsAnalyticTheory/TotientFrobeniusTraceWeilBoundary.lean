/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.TotientFrobeniusWeilReturn
import Mathlib.Tactic

/-!
# An exact noncoercibility boundary: permutation Frobenius trace versus Weil character

Pinned inputs on grwtsk/math@c779a67fa824da8f9b75384f7d61c46baeb2ce1f:
* TotientFrobeniusInvariantLoops (cyclotomicUnit and positive-modulus type);
* TotientFrobeniusWeilReturn.characterOnUnits and character_frobenius_value;
* PrimeOrbitCharacterReturn.primePowerHolonomyTerm (signed source).
The connected TotientFrobeniusFourierTrace leaf supplies the complete
finite character basis and exact fixed-point trace.

For prime p coprime to modulus n and any ORIGINAL DirichletCharacter chi,
the value chi(p) is nonzero because it is the character of an invertible
residue. If p is NOT 1 modulo n, its action on the full unit fiber has
NO fixed point, so the unweighted first-lap permutation trace is ZERO.
Therefore Tr(T_p) != chi(p), even in the trivial character sector.

This is an actual obstruction to the proposed literal replacement
of the Weil prime coefficient by an unweighted permutation trace:
  Tr(T_p^m) / phi(n) = 1_{order(p)|m}
  whereas the original local character readout uses chi(p)^m
  for EVERY unramified prime power.
The two quantities are mathematically distinct. Neither a graph
energy nor a positive Markov kernel supplies their equality.

The existing character-aware return is the legitimate finite bridge.
The complete Weil form still needs conductor, archimedean gamma terms,
zeta poles, analytic domains, residuals and all-sector positivity.
No RH or Dirichlet GRH result is claimed. Native Lean verification
and independent analytic review remain NOT_RUN.
-/
set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusTraceWeilBoundary

open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusInvariantLoops
open GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.TotientFrobeniusFourierTrace
open GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusWeilReturn

variable (n : ℕ) [NeZero n]

/-- A native unramified Dirichlet character cannot vanish at the
Frobenius unit: its value times the inverse-unit value equals one. -/
theorem unramified_character_value_ne_zero
    (χ : DirichletCharacter ℂ n) (p : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n) :
    χ p ≠ 0 := by
  let a : UnitFiber n := frobeniusUnit n p hprime hcoprime
  have hprod :
      characterOnUnits n χ a * characterOnUnits n χ a⁻¹ = 1 := by
    calc
      characterOnUnits n χ a * characterOnUnits n χ a⁻¹ =
          characterOnUnits n χ (a * a⁻¹) :=
            (map_mul (characterOnUnits n χ) a a⁻¹).symm
      _ = 1 := by simp
  have hne : characterOnUnits n χ a ≠ 0 := by
    intro hz
    rw [hz, zero_mul] at hprod
    exact zero_ne_one hprod
  simpa only [a, character_frobenius_value] using hne

/-- The unweighted complete unit-fiber trace cannot replace the first
nonzero arithmetic character phase when Frobenius is nontrivial. -/
theorem first_lap_unweighted_trace_ne_character
    (χ : DirichletCharacter ℂ n) (p : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n)
    (hnontrivial : frobeniusUnit n p hprime hcoprime ≠ 1) :
    cyclotomicTrace n p hprime hcoprime 1 ≠ χ p := by
  have ht :
      cyclotomicTrace n p hprime hcoprime 1 = 0 := by
    simpa only [cyclotomicTrace] using
      (first_lap_trace_zero (frobeniusUnit n p hprime hcoprime)
        hnontrivial)
  have hphase := unramified_character_value_ne_zero n χ p hprime hcoprime
  intro heq
  exact hphase (heq.symm.trans ht)

/-- Full sign and complex phase stay attached to the ORIGINAL prime-power
source and are not defined by the permutation trace. -/
theorem character_prime_power_unchanged
    (χ : DirichletCharacter ℂ n) (p m : ℕ)
    (hprime : Nat.Prime p) (hcoprime : Nat.Coprime p n)
    (correlation : ℕ → ℂ) :
    originalPrimePowerThroughLoop n χ p m hprime hcoprime correlation =
      GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn.primePowerHolonomyTerm
        χ correlation p m :=
  originalPrimePowerThroughLoop_eq_source n χ p m hprime hcoprime correlation

end GRWTSK.NumberTheory.WeilQuadraticForm.TotientFrobeniusTraceWeilBoundary
