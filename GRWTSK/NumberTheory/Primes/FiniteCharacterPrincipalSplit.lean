/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
import Mathlib.Tactic

/-!
# Finite character reconstruction with a principal mode

The principal mode and constant-one values are explicit hypotheses.
This is not an identification with Dirichlet characters and supplies
no prime-weighted cancellation estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.FiniteCharacterPrincipalSplit

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality

noncomputable section

/-- A designated constant-one character contributes exactly the
unweighted coefficient sum to the orthogonality reconstruction. -/
theorem reconstruct_with_principal
    {ι κ : Type*} [Fintype ι] [Fintype κ]
    (χ : κ → ι → ℂ) (w : ι → ℂ)
    (a : ι) (principal : κ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : ι, χ principal b = 1) :
    (Fintype.card κ : ℂ) * w a =
      (∑ b : ι, w b) +
        ∑ k ∈ (Finset.univ.erase principal),
          (∑ b : ι, w b * χ k b) * star (χ k a) := by
  classical
  rw [reconstruct_coefficient χ w a hχ]
  conv_lhs =>
    rw [← Finset.add_sum_erase Finset.univ
      (fun k : κ => (∑ b : ι, w b * χ k b) * star (χ k a))
      (Finset.mem_univ principal)]
  simp [hprincipal]

end
end GRWTSK.NumberTheory.Primes.FiniteCharacterPrincipalSplit
