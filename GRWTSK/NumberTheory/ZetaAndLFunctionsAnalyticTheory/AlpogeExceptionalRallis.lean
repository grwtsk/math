/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Basic.Complex.Basic
import Mathlib.GroupTheory.GroupAction.Basic
import Mathlib.GroupTheory.Index
import Mathlib.Tactic

/-! Residue-group coefficients for the split level and twist test vectors in the
Rallis pairing. The unnormalized sum is on the second level subgroup. At equal
types this sum contributes its full order. At different types its support and
vanishing depend on the intersection of the two levels. -/

namespace GRWTSK.NumberTheory.AlpogeExceptionalRallis

variable {G : Type*} [Group G]

open Classical in
/-- The character of a subgroup, extended by zero. -/
noncomputable def typeFunction (P : Subgroup G) (χ : P →* ℂˣ) (g : G) : ℂ :=
  if hg : g ∈ P then (χ ⟨g, hg⟩ : ℂ) else 0

theorem typeFunction_left (P : Subgroup G) (χ : P →* ℂˣ) (u : P) (g : G) :
    typeFunction P χ (u.1 * g) = (χ u : ℂ) * typeFunction P χ g := by
  classical
  by_cases h : g ∈ P
  · rw [typeFunction, dite_eq_left (P.mul_mem u.2 h), typeFunction, dite_eq_left h]
    exact congrArg Units.val (map_mul χ u ⟨g, h⟩)
  · have h' : u.1 * g ∉ P := fun h' => h (by simpa using P.mul_mem (P.inv_mem u.2) h')
    simp [typeFunction, h, h']

/-- The paired finite coefficient before division by the ambient additive
matrix volume. For finite subgroup characters, inverse equals conjugate. -/
noncomputable def mixedCoefficient (P Q : Subgroup G) [Fintype Q]
    (χ : P →* ℂˣ) (ψ : Q →* ℂˣ) (g : G) : ℂ :=
  ∑ h : Q, typeFunction P χ (h.1 * g) / (ψ h : ℂ)

theorem mixedCoefficient_eq_zero_of_disjoint (P Q : Subgroup G) [Fintype Q]
    (χ : P →* ℂˣ) (ψ : Q →* ℂˣ) {g : G} (h : ∀ y : Q, y.1 * g ∉ P) :
    mixedCoefficient P Q χ ψ g = 0 := by
  classical
  simp [mixedCoefficient, typeFunction, h]

theorem diagonal_coefficient (P : Subgroup G) [Fintype P] (χ : P →* ℂˣ) (g : G) :
    mixedCoefficient P P χ χ g = (Fintype.card P : ℂ) * typeFunction P χ g := by
  classical
  unfold mixedCoefficient
  simp_rw [typeFunction_left]
  simp [mul_comm]

/-- The two residue characters must agree on the whole common subgroup for
any matrix coefficient between their translates to survive. -/
theorem mixedCoefficient_eq_zero_of_disagree (P Q : Subgroup G) [Fintype Q]
    (χ : P →* ℂˣ) (ψ : Q →* ℂˣ) (u : G) (hp : u ∈ P) (hq : u ∈ Q)
    (hne : χ ⟨u, hp⟩ ≠ ψ ⟨u, hq⟩) (g : G) : mixedCoefficient P Q χ ψ g = 0 := by
  classical
  let a : P := ⟨u, hp⟩
  let b : Q := ⟨u, hq⟩
  let f : Q → ℂ := fun z => typeFunction P χ (z.1 * g) / (ψ z : ℂ)
  have hscale (z : Q) : f (b * z) = ((χ a : ℂ) / (ψ b : ℂ)) * f z := by
    change typeFunction P χ ((u * z.1) * g) / (ψ (b * z) : ℂ) = _
    rw [mul_assoc, typeFunction_left P χ a, map_mul]
    simp only [f, Units.val_mul]
    ring
  have he := Equiv.sum_comp (Equiv.mulLeft b) f
  change (∑ z : Q, f (b * z)) = ∑ z : Q, f z at he
  simp_rw [hscale] at he
  rw [← Finset.mul_sum] at he
  have hn : ((χ a : ℂ) / (ψ b : ℂ)) ≠ 1 := by
    intro h
    apply hne
    exact Units.ext ((div_eq_one_iff_eq (Units.ne_zero _)).mp h)
  change ∑ z : Q, f z = 0
  exact (mul_eq_zero.mp (show (((χ a : ℂ) / (ψ b : ℂ)) - 1) * (∑ z : Q, f z) = 0 by
    rw [sub_mul, he, one_mul, sub_self])).resolve_left (sub_ne_zero.mpr hn)

/-- The exact nonzero cross term is the common subgroup size times the ratio
of the two phases at any one witness. The count is taken inside the second level. -/
theorem mixedCoefficient_of_agree (P Q : Subgroup G) [Fintype Q]
    (χ : P →* ℂˣ) (ψ : Q →* ℂˣ)
    (hagree : ∀ (z : Q) (hz : z.1 ∈ P), χ ⟨z.1, hz⟩ = ψ z)
    (g : G) (w : Q) (hw : w.1 * g ∈ P) :
    mixedCoefficient P Q χ ψ g =
      (Nat.card {z : Q // z.1 ∈ P} : ℂ) * ((χ ⟨w.1 * g, hw⟩ : ℂ) / (ψ w : ℂ)) := by
  classical
  let f : Q → ℂ := fun z => typeFunction P χ (z.1 * g) / (ψ z : ℂ)
  let c : ℂ := (χ ⟨w.1 * g, hw⟩ : ℂ) / (ψ w : ℂ)
  have hev (z : Q) : f (z * w) = if z.1 ∈ P then c else 0 := by
    change typeFunction P χ ((z.1 * w.1) * g) / (ψ (z * w) : ℂ) = _
    rw [mul_assoc, map_mul]
    by_cases hz : z.1 ∈ P
    · rw [ite_eq_left hz, typeFunction_left P χ ⟨z.1, hz⟩, typeFunction, dite_eq_left hw,
        hagree z hz, Units.val_mul]
      dsimp only [c]
      field_simp
    · have hn : z.1 * (w.1 * g) ∉ P := fun h => hz (by
        have hm := P.mul_mem h (P.inv_mem hw)
        rwa [mul_assoc, mul_inv_cancel, mul_one] at hm)
      simp [hz, hn, typeFunction]
  have hsum := Equiv.sum_comp (Equiv.mulRight w) f
  change (∑ z : Q, f (z * w)) = ∑ z : Q, f z at hsum
  change (∑ z : Q, f z) = _ * c
  rw [← hsum]
  simp_rw [hev]
  rw [← Finset.sum_filter]
  simp [Nat.card_eq_fintype_card, Fintype.card_subtype, nsmul_eq_mul]

end GRWTSK.NumberTheory.AlpogeExceptionalRallis
