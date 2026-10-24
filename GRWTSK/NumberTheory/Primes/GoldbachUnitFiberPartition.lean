/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative
import Mathlib.Tactic
import Mathlib.NumberTheory.DirichletCharacter.Orthogonality

/-!
# Finite unit-fiber partition

Each unit residue contributes in exactly one unit fiber. Nonunit
residues contribute in none. This is finite reindexing only.
SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition

open scoped BigOperators
open GRWTSK.NumberTheory.Primes.FiniteCharacterOrthogonality
open GRWTSK.NumberTheory.Primes.GoldbachUnitCharacterPsi
open GRWTSK.NumberTheory.Primes.GoldbachPsiUnitNonunit
open GRWTSK.NumberTheory.Primes.GoldbachUnitFiberMembership
open GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative
open GRWTSK.NumberTheory.Primes.FiniteReducedResidueFibers

/-- Unit-fiber weights partition the finite reduced-residue total. -/
theorem unitPsiWeight_sum_eq_unitPsiTotal (q N : ℕ) :
    (∑ u : (ZMod q)ˣ, unitPsiWeight q N u) =
      unitPsiTotal q N := by
  classical
  unfold unitPsiWeight unitPsiTotal reducedResidueWeight
  simp_rw [Finset.sum_filter]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases hunit : IsUnit (n : ZMod q)
  · obtain ⟨u, hu, huniq⟩ := exists_unique_unit_rep q n hunit
    have hsingle : ∀ v : (ZMod q)ˣ,
        ((n : ZMod q) = (v : ZMod q)) ↔ v = u := by
      intro v
      constructor
      · intro hv
        exact huniq v hv.symm
      · intro hv
        subst v
        exact hu.symm
    simp [hsingle, hunit]
  · have hnone : ∀ u : (ZMod q)ˣ,
        ¬ ((n : ZMod q) = (u : ZMod q)) := by
      intro u heq
      exact hunit (unit_fiber_implies_isUnit q n u heq)
    simp [hnone, hunit]


/-- Principal-mode comparison expressed using the actual reduced-residue
total rather than an abstract sum of unit fibers. -/
theorem norm_unitPsi_sub_reduced_total_main_le
    (q N : ℕ) {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (principal : κ) (E : κ → ℝ)
    (main : ℂ) (P : ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k)
    (hmain : ‖unitPsiTotal q N - main‖ ≤ P) :
    ‖(Fintype.card κ : ℂ) * unitPsiWeight q N a - main‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) + P := by
  apply norm_unitPsi_sub_principal_main_le
    q N χ a principal E main P hχ hprincipal hunit hE
  rw [unitPsiWeight_sum_eq_unitPsiTotal]
  exact hmain



/-- Exact identification of a selected unit fiber with the ordinary
inclusive residue-class psi sum. The representative is canonical
only when q is positive and r is less than q. -/
theorem unitPsiWeight_eq_finitePsiResidue
    (q N r : ℕ) (hq : 0 < q) (hr : r < q)
    (u : (ZMod q)ˣ) (hu : (u : ZMod q) = (r : ZMod q)) :
    unitPsiWeight q N u = (finitePsiResidue N q r : ℂ) := by
  have hf (n : ℕ) :
      ((n : ZMod q) = (u : ZMod q)) ↔ n % q = r := by
    rw [hu]
    constructor
    · intro h
      have hv := congrArg ZMod.val h
      simpa [ZMod.val_natCast, Nat.mod_eq_of_lt hr] using hv
    · intro h
      apply ZMod.val_injective
      simpa [ZMod.val_natCast, Nat.mod_eq_of_lt hr] using h
  unfold unitPsiWeight finitePsiResidue
  simp_rw [hf]
  push_cast
  rfl



/-- Exact finite residue-class psi discrepancy inherited from
conditional character cancellation and a separate principal estimate. -/
theorem norm_finitePsiResidue_sub_reduced_main_le
    (q N r : ℕ) (hq : 0 < q) (hr : r < q)
    {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (ha : (a : ZMod q) = (r : ZMod q))
    (principal : κ) (E : κ → ℝ)
    (main : ℂ) (P : ℝ)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k)
    (hmain : ‖unitPsiTotal q N - main‖ ≤ P) :
    ‖(Fintype.card κ : ℂ) * (finitePsiResidue N q r : ℂ) - main‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) + P := by
  rw [← unitPsiWeight_eq_finitePsiResidue q N r hq hr a ha]
  exact norm_unitPsi_sub_reduced_total_main_le
    q N χ a principal E main P hχ hprincipal hunit hE hmain


/-- Under an explicit cardinality identification, character reconstruction
controls the totient-scaled finite theta error. Prime-power correction
is retained as a separate supplied bound, not silently discarded. -/
theorem norm_totient_theta_sub_main_le
    (q N r : ℕ) (hq : 0 < q) (hr : r < q)
    {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (ha : (a : ZMod q) = (r : ZMod q))
    (principal : κ) (E : κ → ℝ)
    (main : ℂ) (P C : ℝ)
    (hcard : Fintype.card κ = Nat.totient q)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k)
    (hmain : ‖unitPsiTotal q N - main‖ ≤ P)
    (hcorr :
      ‖(Nat.totient q : ℂ) *
          (finiteProperPrimePowerCorrection N q r : ℂ)‖ ≤ C) :
    ‖(Nat.totient q : ℂ) * finiteThetaResidue N q r - main‖ ≤
      (∑ k ∈ Finset.univ.erase principal, E k) + P + C := by
  have hpsi := norm_finitePsiResidue_sub_reduced_main_le
    q N r hq hr χ a ha principal E main P
    hχ hprincipal hunit hE hmain
  rw [hcard] at hpsi
  have hsplit := finitePsiResidue_eq_theta_add_correction N q r
  have hdecomp :
      (Nat.totient q : ℂ) * finiteThetaResidue N q r - main =
        ((Nat.totient q : ℂ) * (finitePsiResidue N q r : ℂ) - main) -
          (Nat.totient q : ℂ) *
            (finiteProperPrimePowerCorrection N q r : ℂ) := by
    rw [hsplit]
    ring
  rw [hdecomp]
  exact (norm_sub_le _ _).trans (add_le_add hpsi hcorr)


/-- Normalize the totient-scaled theta discrepancy without losing its
prime-power, principal, or nonprincipal error budgets. -/
theorem norm_theta_sub_divided_main_le
    (q N r : ℕ) (hq : 0 < q) (hr : r < q)
    {κ : Type*} [Fintype κ]
    (χ : κ → (ZMod q)ˣ → ℂ)
    (a : (ZMod q)ˣ) (ha : (a : ZMod q) = (r : ZMod q))
    (principal : κ) (E : κ → ℝ)
    (main : ℂ) (P C : ℝ)
    (hcard : Fintype.card κ = Nat.totient q)
    (hχ : OrthogonalAt χ a)
    (hprincipal : ∀ b : (ZMod q)ˣ, χ principal b = 1)
    (hunit : ∀ k : κ, ‖χ k a‖ ≤ 1)
    (hE : ∀ k ∈ Finset.univ.erase principal,
      ‖∑ b : (ZMod q)ˣ, unitPsiWeight q N b * χ k b‖ ≤ E k)
    (hmain : ‖unitPsiTotal q N - main‖ ≤ P)
    (hcorr :
      ‖(Nat.totient q : ℂ) *
          (finiteProperPrimePowerCorrection N q r : ℂ)‖ ≤ C)
    (hphi : 0 < Nat.totient q) :
    ‖finiteThetaResidue N q r - main / (Nat.totient q : ℂ)‖ ≤
      ((∑ k ∈ Finset.univ.erase principal, E k) + P + C) /
        (Nat.totient q : ℝ) := by
  have hscaled := norm_totient_theta_sub_main_le
    q N r hq hr χ a ha principal E main P C hcard
    hχ hprincipal hunit hE hmain hcorr
  have hne : (Nat.totient q : ℂ) ≠ 0 := by
    exact_mod_cast (Nat.ne_of_gt hphi)
  have hnorm : ‖(Nat.totient q : ℂ)‖ =
      (Nat.totient q : ℝ) := by simp
  have hrewrite :
      finiteThetaResidue N q r - main / (Nat.totient q : ℂ) =
        ((Nat.totient q : ℂ) * finiteThetaResidue N q r - main) /
          (Nat.totient q : ℂ) := by
    field_simp
  rw [hrewrite, norm_div, hnorm]
  exact (div_le_div_of_nonneg_right hscaled (Nat.cast_nonneg _))


/-- The actual complex Dirichlet-character index has totient cardinality.
The required roots-of-unity instance is kept explicit in the interface. -/
theorem card_complexDirichlet_eq_totient
    (q : ℕ) [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)] :
    Fintype.card (DirichletCharacter ℂ q) = Nat.totient q := by
  simpa only [Nat.card_eq_fintype_card] using
    (DirichletCharacter.card_eq_totient_of_hasEnoughRootsOfUnity ℂ q)


/-- Concrete Dirichlet orthogonality on reduced residue units, in the
inverse-evaluation orientation supplied by pinned Mathlib. Translating
the inverse evaluation into the complex conjugation used by
`OrthogonalAt` is a distinct, still-unverified bridge. -/
theorem complexDirichlet_unit_orthogonality_inverse
    (q : ℕ) [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)]
    (a b : (ZMod q)ˣ) :
    (∑ χ : DirichletCharacter ℂ q,
      χ ((a : ZMod q)⁻¹) * χ (b : ZMod q)) =
        if b = a then (Nat.totient q : ℂ) else 0 := by
  have h := DirichletCharacter.sum_char_inv_mul_char_eq ℂ a.isUnit
    (b : ZMod q)
  simpa only [Units.val_inj] using h


/-- Complex conjugation of an actual Dirichlet character value equals
evaluation of the inverse character. This is a pointwise fact, not
yet the inverse-residue comparison used by unit orthogonality. -/
theorem complexDirichlet_star_apply_eq_inv_character
    (q : ℕ) (χ : DirichletCharacter ℂ q) (a : ZMod q) :
    star (χ a) = (χ⁻¹) a := by
  exact MulChar.star_apply' χ a


/-- On reduced residues, inverse-character evaluation equals
inverse-residue evaluation. This relies on the actual multiplicative
character inverse law, not a formal identification on nonunits. -/
theorem complexDirichlet_inv_character_eq_inv_residue
    (q : ℕ) (χ : DirichletCharacter ℂ q) (a : (ZMod q)ˣ) :
    (χ⁻¹) (a : ZMod q) = χ ((a : ZMod q)⁻¹) := by
  exact MulChar.inv_apply' χ (a : ZMod q)

/-- Conjugation equals inverse-residue evaluation on the unit group. -/
theorem complexDirichlet_star_eq_inv_residue
    (q : ℕ) (χ : DirichletCharacter ℂ q) (a : (ZMod q)ˣ) :
    star (χ (a : ZMod q)) = χ ((a : ZMod q)⁻¹) := by
  rw [complexDirichlet_star_apply_eq_inv_character]
  exact complexDirichlet_inv_character_eq_inv_residue q χ a


/-- Instantiate the abstract coefficient-orthogonality interface with
the full complex Dirichlet-character family on reduced residues. -/
theorem complexDirichlet_orthogonalAt
    (q : ℕ) [NeZero q]
    [HasEnoughRootsOfUnity ℂ (Monoid.exponent (ZMod q)ˣ)]
    (a : (ZMod q)ˣ) :
    OrthogonalAt
      (fun χ : DirichletCharacter ℂ q =>
        fun b : (ZMod q)ˣ => χ (b : ZMod q)) a := by
  intro b
  change (∑ χ : DirichletCharacter ℂ q,
      χ (b : ZMod q) * star (χ (a : ZMod q))) =
    if b = a then (Fintype.card (DirichletCharacter ℂ q) : ℂ) else 0
  simp_rw [complexDirichlet_star_eq_inv_residue q]
  have h := complexDirichlet_unit_orthogonality_inverse q a b
  rw [card_complexDirichlet_eq_totient q]
  convert h using 1 <;> ring

end GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
