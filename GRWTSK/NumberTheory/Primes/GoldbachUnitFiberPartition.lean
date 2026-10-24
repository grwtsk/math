/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.Primes.GoldbachUnitFiberRepresentative
import Mathlib.Tactic

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


end GRWTSK.NumberTheory.Primes.GoldbachUnitFiberPartition
