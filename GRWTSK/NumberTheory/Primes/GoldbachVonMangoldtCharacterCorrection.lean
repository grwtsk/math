/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
import GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
import Mathlib.Tactic

/-!
# Conditional finite character reconstruction with nonunit correction

The existing character hypotheses hχ, hprincipal, hunit and hE are
preserved verbatim. The unit-fiber partition and finite nonunit norm
bound supply the exact correction. No analytic cancellation or
zero-free-region estimate is inferred.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
open GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtNonunitComplexNorm
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality

/-- Character reconstruction relative to the complete finite psi sum
with the nonunit correction explicitly bounded. -/
theorem norm_character_reconstruction_fullPsi_le
    (q N : ℕ) (hq : q ≠ 0)
    {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k) :
    ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a -
      (∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ))‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
          Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ)) := by
  rw [totalPsi_eq_unit_add_nonunit q N]
  have hchar := norm_unitPsi_reconstruction_error_le
    q N χ a principal E hχ hprincipal hunit hE
  rw [unitPsiWeight_sum_eq_unitPsiTotal q N] at hchar
  calc
    _ = ‖((Fintype.card κ : ℂ) * unitPsiWeight q N a -
          unitPsiTotal q N) - nonunitPsiTotal q N‖ := by
      congr 1
      ring
    _ ≤ ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a -
          unitPsiTotal q N‖ + ‖nonunitPsiTotal q N‖ :=
      norm_sub_le _ _
    _ ≤ (∑ k ∈ Finset.univ.erase principal, E k) +
          ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
            Real.log (N : ℝ) +
            (Nat.log2 N : ℝ) * Real.log (q : ℝ)) :=
      add_le_add hchar (norm_nonunitPsiTotal_le_log_correction q N hq)

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
