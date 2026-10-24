/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.FiniteUnitCharacterTransfer
import GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection
import Mathlib.Tactic

/-!
# Prime-power-weighted finite unit-residue character interface

This module connects the actual finite prime-power weight to the unit-group
character reconstruction interface. It keeps the orthogonality and all
nonprincipal twisted-sum estimates as explicit hypotheses. It does not
identify the prime-power weight with Mathlib's von Mangoldt function.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.FiniteUnitCharacterTransfer
open GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection

noncomputable section

/-- The prime-power-weighted sum in a reduced residue class represented
by a unit of ZMod q, through the inclusive cutoff N. -/
def unitPsiWeight (q N : ℕ) (u : (ZMod q)ˣ) : ℂ :=
  ∑ n ∈ Finset.range (N + 1) with
    (n : ZMod q) = (u : ZMod q),
      (primePowerWeight n : ℂ)

/-- Character-error reconstruction for actual finite prime-power
weights on reduced residue classes. The character family is not yet
identified with the Dirichlet dual group, and the errors are supplied. -/
theorem norm_unitPsi_reconstruction_error_le
    (q N : ℕ) {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a -
        (∑ b : (ZMod q)ˣ, unitPsiWeight q N b)‖ ≤
      ∑ k ∈ Finset.univ.erase principal, E k := by
  exact norm_unit_character_reconstruction_error_le
    q χ (unitPsiWeight q N) a principal E
    hχ hprincipal hunit hE


/-- Character cancellation controls the nonprincipal part; comparison
with an analytic principal main term remains a separate error. -/
theorem norm_unitPsi_sub_principal_main_le
    (q N : ℕ) {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (main : ℂ) (P : ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k)
    (hmain : ‖(∑ b : (ZMod q)ˣ, unitPsiWeight q N b) - main‖ ≤ P) :
    ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a - main‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) + P := by
  have hchar := norm_unitPsi_reconstruction_error_le
    q N χ a principal E hχ hprincipal hunit hE
  have hdecomp :
      (Fintype.card κ : ℂ) * unitPsiWeight q N a - main =
        ((Fintype.card κ : ℂ) * unitPsiWeight q N a -
          (∑ b : (ZMod q)ˣ, unitPsiWeight q N b)) +
        ((∑ b : (ZMod q)ˣ, unitPsiWeight q N b) - main) := by
    ring
  rw [hdecomp]
  exact (norm_add_le _ _).trans (add_le_add hchar hmain)

end
end GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
