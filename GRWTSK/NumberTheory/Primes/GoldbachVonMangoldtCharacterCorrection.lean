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


/-- Concrete complex Dirichlet reconstruction relative to the full
finite prime-power mass. The nonunit contribution is charged by the
existing arithmetic bound; only nonprincipal cancellation is supplied. -/
theorem norm_dirichlet_reconstruction_fullPsi_le
    (q N : ℕ) (hq : q ≠ 0)
    [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)]
    (a : (ZMod q)ˣ)
    (E : DirichletCharacter ℂ q → ℝ)
    (hE : ∀ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q),
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤ E χ) :
    ‖(Nat.totient q : ℂ) * unitPsiWeight q N a -
      (∑ n ∈ Finset.range (N + 1),
        (GRWTSK.NumberTheory.Primes.GoldbachPrimePowerCorrection.primePowerWeight n : ℂ))‖ ≤
      (∑ χ ∈ Finset.univ.erase (1 : DirichletCharacter ℂ q), E χ) +
        ((GRWTSK.NumberTheory.Primes.GoldbachNonunitPrimeSupport.finitePrimeDivisorCount q N : ℝ) *
          Real.log (N : ℝ) +
          (Nat.log2 N : ℝ) * Real.log (q : ℝ)) := by
  have h := norm_character_reconstruction_fullPsi_le q N hq
    (fun χ : DirichletCharacter ℂ q =>
      fun b : (ZMod q)ˣ => χ (b : ZMod q))
    a (1 : DirichletCharacter ℂ q) E
    (complexDirichlet_orthogonalAt q a)
    (complexDirichlet_principal_on_units q)
    (fun χ => (complexDirichlet_norm_on_units q χ a).le)
    hE
  rw [card_complexDirichlet_eq_totient q] at h
  exact h


/-- Unconditional finite bound for an actual Dirichlet twist of the
reduced-residue prime-power packet. This is the triangle-inequality
baseline, NOT nonprincipal cancellation or a power saving. -/
theorem norm_dirichlet_twist_le_unit_mass_norms
    (q N : ℕ) (χ : DirichletCharacter ℂ q) :
    ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤
      ∑ b : (ZMod q)ˣ, ‖unitPsiWeight q N b‖ := by
  calc
    ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ (b : ZMod q)‖ ≤
        ∑ b : (ZMod q)ˣ,
          ‖unitPsiWeight q N b * χ (b : ZMod q)‖ :=
      norm_sum_le _ _
    _ = ∑ b : (ZMod q)ˣ, ‖unitPsiWeight q N b‖ := by
      apply Finset.sum_congr rfl
      intro b hb
      rw [norm_mul, complexDirichlet_norm_on_units q χ b, mul_one]

end GRWTSK.NumberTheory.Primes.GoldbachVonMangoldtCharacterCorrection
