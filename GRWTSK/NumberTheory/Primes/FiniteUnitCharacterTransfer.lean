/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers
import Mathlib.Tactic

/-!
# Finite reduced-residue character interface

The character family is indexed abstractly and evaluated on the unit
group (ZMod q)ˣ. Orthogonality is an explicit hypothesis, not a
claim about all Dirichlet characters. No prime estimate is supplied.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteUnitCharacterTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.FiniteCharacterErrorTransfer

noncomputable section

/-- Finite weights on the actual multiplicative unit group modulo q. -/
def unitWeight
    (q : ℕ) (w : (ZMod q)ˣ → ℂ) : (ZMod q)ˣ → ℂ := w

/-- Conditional orthogonality reconstruction on the reduced-residue
unit group. This does not assert that χ is the full dual group. -/
theorem norm_unit_character_reconstruction_error_le
    (q : ℕ) {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (w : (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, w b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) * w a -
        (∑ b : (ZMod q)ˣ, w b)‖ ≤
      ∑ k ∈ Finset.univ.erase principal, E k := by
  exact norm_reconstruction_error_le_of_character_bounds
    χ w a principal E hχ hprincipal hunit hE

end
end GRWTSK.NumberTheory.Primes.FiniteUnitCharacterTransfer
