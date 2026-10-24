/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteCharacterErrorTransfer
import Mathlib.Tactic

/-!
# Finite residue-class reconstruction from supplied character data

The map from integers to finite reduced-residue coordinates is an explicit
input. This interface does not claim it is a Dirichlet character or
establish its orthogonality from the modulus.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteResidueCharacterTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.FiniteCharacterErrorTransfer

noncomputable section

/-- Aggregate an arbitrary finite integer-indexed weight by a supplied
finite residue-coordinate map. This is a fiber sum, not an asymptotic. -/
def residueFiberWeight
    {ι : Type*} [Fintype ι] [DecidableEq ι]
    (N : ℕ) (residue : ℕ → ι) (weight : ℕ → ℂ) (b : ι) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with residue n = b, weight n

/-- Exact reconstruction-error transfer for the finite residue fibers.
The orthogonality and character bounds are explicit hypotheses. -/
theorem norm_residue_fiber_error_le
    {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ]
    (N : ℕ) (residue : ℕ → ι) (weight : ℕ → ℂ)
    (χ : κ → ι → ℂ) (a : ι) (principal : κ)
    (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : ι, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : ι, residueFiberWeight N residue weight b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) *
        residueFiberWeight N residue weight a -
        (∑ b : ι, residueFiberWeight N residue weight b)‖ ≤
      ∑ k ∈ Finset.univ.erase principal, E k := by
  exact norm_reconstruction_error_le_of_character_bounds
    χ (residueFiberWeight N residue weight) a principal E
    hχ hprincipal hunit hE

end
end GRWTSK.NumberTheory.Primes.FiniteResidueCharacterTransfer
