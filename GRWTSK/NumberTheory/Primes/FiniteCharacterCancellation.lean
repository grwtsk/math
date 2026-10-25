/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteCharacterPrincipalSplit
import Mathlib.Tactic

/-!
# Finite character cancellation with a principal mode

The modulus and Dirichlet-character interpretation remain external.
This finite result only converts supplied character-sum bounds into
an error bound for the reconstructed coordinate. No cancellation
bound is established by the theorem itself.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteCharacterCancellation

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.FiniteCharacterPrincipalSplit

noncomputable section

/-- A finite reconstruction error bound with explicit principal
contribution and a sum of nonprincipal character errors. -/
theorem norm_principal_reconstruction_error_le
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (χ : κ → ι → ℂ) (w : ι → ℂ)
    (a : ι) (principal : κ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : ι, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1) :
    ‖(Fintype.card κ : ℂ) * w a - (∑ b : ι, w b)‖ ≤
      ∑ k ∈ Finset.univ.erase principal,
        ‖∑ b : ι, w b * χ k b‖ := by
  have hsplit := reconstruct_with_principal
    χ w a principal hχ hprincipal
  rw [hsplit]
  simp only [add_sub_cancel_left]
  calc
    ‖∑ k ∈ Finset.univ.erase principal,
        (∑ b : ι, w b * χ k b) * star (χ k a)‖ ≤
      ∑ k ∈ Finset.univ.erase principal,
        ‖(∑ b : ι, w b * χ k b) * star (χ k a)‖ :=
          norm_sum_le _ _
    _ ≤ ∑ k ∈ Finset.univ.erase principal,
        ‖∑ b : ι, w b * χ k b‖ := by
          apply Finset.sum_le_sum
          intro k hk
          rw [norm_mul, norm_star]
          exact mul_le_of_le_one_right (norm_nonneg _) (hunit k)

end
end GRWTSK.NumberTheory.Primes.FiniteCharacterCancellation
