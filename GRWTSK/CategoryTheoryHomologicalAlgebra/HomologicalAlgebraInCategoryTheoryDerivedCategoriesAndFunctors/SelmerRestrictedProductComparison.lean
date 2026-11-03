/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The exact missing reverse inclusion in restricted-product Selmer comparisons

At a fixed p-power level, let H be the ACTUAL global continuous
Galois H¹ and L_v the ACTUAL local H¹, with their genuine
restriction maps. The local Kummer subgroup K_v is known, in the
inspected upstream good-reduction theorem, to satisfy
K_v <= H¹_ur at the good primes away from p. That ONE direction
only gives full Selmer <= finite-S/unramified Selmer.

This algebraic lemma separates the logically missing reverse
inclusion. It DOES NOT prove it for elliptic curves, construct the
restricted-product cochain complex, or identify derived limits.
It does not use a chosen rank or a guessed duality pairing.
-/

namespace GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerRestrictedProduct

variable {ι H : Type*} {L : ι → Type*}
variable [AddCommGroup H] [∀ v, AddCommGroup (L v)]
variable {S : Set ι}

/-- Source-shape localization data. In a genuine elliptic instance,
H and L_v are H¹ of the actual continuous Galois complexes. -/
structure LocalComparison (S : Set ι) where
  restriction : ∀ v, H →+ L v
  kummer : ∀ v, AddSubgroup (L v)
  unramified : ∀ v, AddSubgroup (L v)
  outside_le : ∀ v, v ∉ S → kummer v ≤ unramified v

/-- The genuine all-place Kummer condition, at H¹ level only. -/
def LocalComparison.fullSelmer (D : LocalComparison (H := H) (L := L) S) :
    AddSubgroup H :=
  ⨅ v, (D.kummer v).comap (D.restriction v)

/-- Kummer at the selected S-places, unramified outside S.
The unrestricted cochain PRODUCTS are not constructed here. -/
def LocalComparison.restrictedSelmer
    (D : LocalComparison (H := H) (L := L) S) : AddSubgroup H :=
  (⨅ v : {v // v ∈ S},
    (D.kummer v.1).comap (D.restriction v.1)) ⊓
  (⨅ v : {v // v ∉ S},
    (D.unramified v.1).comap (D.restriction v.1))

theorem LocalComparison.mem_fullSelmer_iff
    (D : LocalComparison (H := H) (L := L) S) (x : H) :
    x ∈ D.fullSelmer ↔ ∀ v, D.restriction v x ∈ D.kummer v := by
  simp [LocalComparison.fullSelmer]

theorem LocalComparison.mem_restrictedSelmer_iff
    (D : LocalComparison (H := H) (L := L) S) (x : H) :
    x ∈ D.restrictedSelmer ↔
      (∀ v, v ∈ S → D.restriction v x ∈ D.kummer v) ∧
      (∀ v, v ∉ S → D.restriction v x ∈ D.unramified v) := by
  simp only [LocalComparison.restrictedSelmer, mem_inf, mem_iInf,
    AddSubgroup.mem_comap]
  constructor
  · rintro ⟨hS, hOutside⟩
    constructor
    · intro v hv
      exact hS ⟨v, hv⟩
    · intro v hv
      exact hOutside ⟨v, hv⟩
  · rintro ⟨hS, hOutside⟩
    constructor
    · intro v
      exact hS v.1 v.2
    · intro v
      exact hOutside v.1 v.2

/-- The EXISTING away-from-p good-reduction Kummer inclusion
implies only this one-sided global inclusion. -/
theorem LocalComparison.full_le_restricted
    (D : LocalComparison (H := H) (L := L) S) :
    D.fullSelmer ≤ D.restrictedSelmer := by
  intro x hx
  apply (D.mem_restrictedSelmer_iff x).2
  constructor
  · intro v _
    exact (D.mem_fullSelmer_iff x).1 hx v
  · intro v hv
    exact D.outside_le v hv ((D.mem_fullSelmer_iff x).1 hx v)

/-- The missing direction is precisely the reverse local inclusion,
on the actual localized classes at every outside-S place. -/
theorem LocalComparison.restricted_le_full_of_away_reverse
    (D : LocalComparison (H := H) (L := L) S)
    (hreverse : ∀ v, v ∉ S → D.unramified v ≤ D.kummer v) :
    D.restrictedSelmer ≤ D.fullSelmer := by
  intro x hx
  apply (D.mem_fullSelmer_iff x).2
  intro v
  by_cases hv : v ∈ S
  · exact ((D.mem_restrictedSelmer_iff x).1 hx).1 v hv
  · exact hreverse v hv ((D.mem_restrictedSelmer_iff x).1 hx).2 v hv

/-- A source-established local equality away from S would finish
the H¹ finite-S/all-place comparison. This is a conditional transfer,
not the missing arithmetic proof. -/
theorem LocalComparison.full_eq_restricted_of_away_eq
    (D : LocalComparison (H := H) (L := L) S)
    (heq : ∀ v, v ∉ S → D.kummer v = D.unramified v) :
    D.fullSelmer = D.restrictedSelmer := by
  apply le_antisymm D.full_le_restricted
  apply D.restricted_le_full_of_away_reverse
  intro v hv
  rw [← heq v hv]

/-! An exact hostile instance: an inclusion K <= U alone does not
justify the reverse comparison, even at a single outside-S place. -/

private def hostile :
    LocalComparison (ι := PUnit) (H := ℤ)
      (L := fun _ : PUnit => ℤ) (∅ : Set PUnit) where
  restriction _ := AddMonoidHom.id ℤ
  kummer _ := ⊥
  unramified _ := ⊤
  outside_le _ _ := bot_le

theorem hostile_inclusion_not_equality :
    (1 : ℤ) ∈ hostile.restrictedSelmer ∧
      (1 : ℤ) ∉ hostile.fullSelmer := by
  constructor
  · apply (hostile.mem_restrictedSelmer_iff 1).2
    constructor
    · intro v hv
      cases hv
    · intro v _
      trivial
  · intro hh
    have h := (hostile.mem_fullSelmer_iff 1).1 hh PUnit.unit
    have hbot : (1 : ℤ) ∈ (⊥ : AddSubgroup ℤ) := by
      simpa [hostile] using h
    norm_num at hbot

end GRWTSK.CategoryTheoryHomologicalAlgebra.SelmerRestrictedProduct
