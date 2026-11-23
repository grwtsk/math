/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE; Lean v4.34.1 /
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Elaboration, fresh kernel replay and transitive axiom audit: NOT_RUN.
-/
import Mathlib.Analysis.Fourier.FiniteAbelian.PontryaginDuality
import Mathlib.Tactic

/-!
# Exact inertia/Frobenius finite Fourier readout for Alpoge (M)

Source primary:
  leanprover-community/riemann-hypothesis
  @40e56bab026552e089d7afcfeff08d2defb9c005
  src/Formalism/SizeWindowBrackets/FirstPrimeNeSecondPrime.lean
  blob 18deb7cb85d6f650a69f01fda6e0c789b9f04d89
  declarations cosetMean, primVal, GPsi, ASK, MAIN, AskMainBalance.
  Source exact primitive-character and conductor bridges remain OPEN.

Pinnned Mathlib:
  Mathlib/Analysis/Fourier/FiniteAbelian/PontryaginDuality.lean
  blob 58bd84ccac8ac366e0c35745471db38ea7474381
  lemma AddChar.sum_apply_eq_ite.

The source-preserving analytic argument and full normalized
complex character orthogonality are in AlpogeInertiaFourier.md.
Only elementary FINITE character algebra is formalized below.
No theorem of Alpoge, no RH, no Weil positivity is used.

IMPORTANT: local finite-group orthogonal projection is NOT
a self-adjoint Hilbert-Polya operator for the original Xi.
The arithmetic (M) and all theta/lattice sources remain OPEN.
-/

set_option autoImplicit false
noncomputable section

open scoped BigOperators

namespace GRWTSK.NumberTheory.AlpogeInertiaFourier

variable {G : Type*} [AddCommGroup G] [Fintype G] [DecidableEq G]

/-- Exactly the prime-power inertia-coset average of the original
Alpoge \`cosetMean\`, indexed by the full subgroup subtype.
This source keeps the ramified inertia subgroup I, rather than
silently replacing it with the trivial group. -/
def inertiaCosetMean (I : AddSubgroup G) (x : G)
    (ψ : AddChar G ℂ) : ℂ :=
  (∑ h : I, ψ (x + (h : G))) / (Fintype.card I : ℂ)

/-- The source's finite Frobenius twist splits exactly from
the inertia sum. In particular, the source is not a positive
matrix with arbitrary reassigned character coefficients. -/
theorem coset_sum_factor_twist
    (I : AddSubgroup G) (x : G) (ψ : AddChar G ℂ) :
    (∑ h : I, ψ (x + (h : G))) =
      ψ x * ∑ h : I, ψ (h : G) := by
  classical
  simp_rw [map_add_eq_mul]
  rw [Finset.mul_sum]

/-- The finite Fourier sum over ALL complex additive characters.
Its output is the cardinality of G times the exact source
inertia-coset OCCUPANCY, not an assumed positive global Weil form.
The known pinned Mathlib orthogonality is the ONLY analytic input. -/
def originalCosetFourierSum (I : AddSubgroup G)
    (x g : G) : ℂ :=
  ∑ ψ : AddChar G ℂ, ∑ h : I, ψ (x + (h : G) - g)

/-- Finite Fourier inversion before dividing by |G| and |I|.
The displayed term has exactly one nonzero h when g-x is in I,
and none otherwise. Full normalization is in the adjacent .md. -/
theorem original_coset_fourier_unnormalized
    (I : AddSubgroup G) (x g : G) :
    originalCosetFourierSum I x g =
      ∑ h : I, if x + (h : G) = g then
        (Fintype.card G : ℂ) else 0 := by
  classical
  unfold originalCosetFourierSum
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _
  simpa only [sub_eq_zero] using
    (AddChar.sum_apply_eq_ite (x + (h : G) - g))

/-- A local Euler factor for a character nontrivial on inertia
is 1, not the generic unramified reciprocal factor. This
lemma is only finite algebra; the true global Artin/Dirichlet
identification remains a separate source obligation. -/
theorem ramified_euler_factor_one (b z : ℂ) (hb : b = 0) :
    (1 - b * z)⁻¹ = 1 := by
  simp [hb]

end GRWTSK.NumberTheory.AlpogeInertiaFourier
