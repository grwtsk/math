/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteCharacterCancellation
import Mathlib.Tactic

/-!
# Quantitative finite character-sum transfer

Every nonprincipal character-sum bound is supplied explicitly. The
result is a reusable algebraic estimate, not a Dirichlet character
orthogonality theorem or a prime-distribution improvement.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteCharacterErrorTransfer

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.FiniteCharacterCancellation

noncomputable section

/-- A family of supplied nonprincipal twisted-sum estimates yields
an explicit total error bound for the reconstructed coordinate. -/
theorem norm_reconstruction_error_le_of_character_bounds
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (χ : κ → ι → ℂ) (w : ι → ℂ)
    (a : ι) (principal : κ) (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : ι, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : ι, w b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) * w a - (∑ b : ι, w b)‖ ≤
      ∑ k ∈ Finset.univ.erase principal, E k := by
  exact (norm_principal_reconstruction_error_le
    χ w a principal hχ hprincipal hunit).trans
      (Finset.sum_le_sum (fun k hk => hE k hk))

end
end GRWTSK.NumberTheory.Primes.FiniteCharacterErrorTransfer
