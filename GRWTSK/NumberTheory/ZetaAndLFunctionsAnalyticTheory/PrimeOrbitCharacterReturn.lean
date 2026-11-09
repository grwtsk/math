/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.AlgebraicNumberTheoryGlobalFields.PrimeOrbitHolonomy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.CharacterWeilWindowBounds
import Mathlib.Tactic

/-!
# Character readout of finite abelian prime-orbit holonomy

Primary geometric source: Connes--Consani, "Knots, primes and class field
theory", arXiv:2501.06560v1, Theorems 3.9 and 3.12.
Existing arithmetic source: CharacterWeilWindowBounds.twistedPrime and
LowSchur.primeWeight, at the repository revision recorded for this file.

For a primitive character sector of conductor `N` and a prime `p` with
`Nat.Coprime p N`, the arithmetic Frobenius acts on the character line
by the scalar `χ p`. Its `m`-th return acts by `(χ p)^m`.
The mathlib Dirichlet character itself is reused; no new L-function
or character surrogate is defined. The formal statement below is the
exact coefficient identity for all powers (even for ramified labels,
where the Dirichlet character value may be zero and MUST NOT be called
invertible holonomy). All source weights are retained.

It does not prove the Connes--Consani adelic cover equivalence in Lean,
reindex the entire active-prime-power inventory, identify the Weil
operator with a holonomy Laplacian, or prove any spectral sign, RH, GRH.
-/

set_option autoImplicit false
open scoped ComplexConjugate

noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn

open GRWTSK.NumberTheory.WeilQuadraticForm.CharacterWindow
open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur

variable {N : ℕ} [NeZero N]

/-- The character value on a prime power is the iterated holonomy phase.
This equality is algebraic; for ramified `p` the zero value is not
a unit-valued covering monodromy. -/
theorem dirichlet_prime_power_phase (χ : DirichletCharacter ℂ N)
    (p m : ℕ) :
    χ (p ^ m) = (χ p) ^ m := by
  simpa only [Nat.cast_pow] using (map_pow χ (p : ZMod N) m)

/-- The literal von Mangoldt-weighted source term at `p^m`, retaining its
complex conjugation and the supplied physical correlation. -/
def primePowerHolonomyTerm (χ : DirichletCharacter ℂ N)
    (correlation : ℕ → ℂ) (p m : ℕ) : ℝ :=
  primeWeight (p ^ m) *
    (conj ((χ p) ^ m) * correlation (p ^ m)).re

/-- Character holonomy returns EXACTLY the original source coefficient
at each prime power, without a new independent arithmetic weighting. -/
theorem primePowerHolonomyTerm_eq_source (χ : DirichletCharacter ℂ N)
    (correlation : ℕ → ℂ) (p m : ℕ) :
    primePowerHolonomyTerm χ correlation p m =
      primeWeight (p ^ m) *
        (conj (χ (p ^ m)) * correlation (p ^ m)).re := by
  rw [primePowerHolonomyTerm, dirichlet_prime_power_phase]

/-- Lossless character-phase replacement on ANY finite inventory of
prime-power labels, with repeats and all original weight factors paid.
It is not yet a theorem that a proposed inventory equals every active
von Mangoldt term of the restricted Weil operator. -/
theorem finite_prime_power_holonomy_return
    (χ : DirichletCharacter ℂ N) (correlation : ℕ → ℂ)
    (inventory : Finset (ℕ × ℕ)) :
    (∑ pm ∈ inventory,
        primePowerHolonomyTerm χ correlation pm.1 pm.2) =
      ∑ pm ∈ inventory,
        primeWeight (pm.1 ^ pm.2) *
          (conj (χ (pm.1 ^ pm.2)) *
            correlation (pm.1 ^ pm.2)).re := by
  apply Finset.sum_congr rfl
  intro pm hpm
  exact primePowerHolonomyTerm_eq_source χ correlation pm.1 pm.2

end GRWTSK.NumberTheory.WeilQuadraticForm.PrimeOrbitCharacterReturn
