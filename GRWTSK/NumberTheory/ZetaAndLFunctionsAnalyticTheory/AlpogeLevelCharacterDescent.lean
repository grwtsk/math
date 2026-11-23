/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Algebra.Group.Subgroup.Ker
import Mathlib.Logic.Function.Basic

/-! # Character cancellation and descent for a marked theta sum

The product uses the Fourier transform on the opposite marking half.
The fibre criterion keeps both the left rational stabilizer and the right
level subgroup when constructing its component character.
-/

namespace GRWTSK.NumberTheory.AlpogeLevelCharacterDescent

open scoped BigOperators

/-- The unnormalized transform of a contragredient coefficient transforms
by the forward character. The pairing compares the two different actions. -/
theorem fourier_character {R X Q : Type*} [CommRing R] [Fintype X]
    (δ : X ≃ X) (σ : Q ≃ Q) (u : Rˣ) (a : X → R) (e : X → Q → R)
    (ha : ∀ x, (u : R) * a (δ x) = a x)
    (he : ∀ x q, e x (σ q) = e (δ x) q) (q : Q) :
    (∑ x, a x * e x (σ q)) = (u : R) * ∑ x, a x * e x q := by
  calc
    _ = ∑ x, (u : R) * (a (δ x) * e (δ x) q) := by
      apply Finset.sum_congr rfl
      intro x _
      rw [he, ← mul_assoc, ha]
    _ = (u : R) * ∑ x, a x * e x q := by
      rw [← Finset.mul_sum, Equiv.sum_comp δ (fun x => a x * e x q)]

/-- The cover multiplier cancels the character for an arbitrary collection of
marked readings. No division by the group order or the number of frames occurs. -/
theorem corrected_sum {R Q : Type*} [CommRing R] [Fintype Q]
    (σ : Q ≃ Q) (u : Rˣ) (c : R) (w t : Q → R)
    (hw : ∀ q, w (σ q) = (u : R) * w q) :
    (c * (u : R)) * (∑ q, w q * t (σ q)) = c * ∑ q, w q * t q := by
  rw [mul_assoc, Finset.mul_sum]
  congr 1
  calc
    _ = ∑ q, w (σ q) * t (σ q) := by
      apply Finset.sum_congr rfl
      intro q _
      rw [hw, mul_assoc]
    _ = _ := Equiv.sum_comp σ (fun q => w q * t q)

/-- Effective descent of a scalar along a surjective map with equal values on
the complete fibre relation. -/
theorem unique_fibre_value {A B T : Type*} (π : A → B) (hp : π.Surjective)
    (f : A → T) (hf : ∀ x y, π x = π y → f x = f y) :
    ∃! v : B → T, ∀ x, v (π x) = f x := by
  refine ⟨fun y => f (Function.surjInv hp y), ?_, ?_⟩
  · exact fun x => hf _ x (Function.surjInv_eq hp _)
  · intro g hg
    funext y
    simpa only [Function.surjInv_eq hp y] using hg (Function.surjInv hp y)

/-- A character on the full adelic group has a unique reading on its marked
double classes exactly when both the rational and the level groups fix it. -/
theorem double_class_character_iff {G C U : Type*} [Group G] [Group U]
    (L K : Subgroup G) (χ : G →* U) (π : G → C) (hp : π.Surjective)
    (hf : ∀ x y, π x = π y ↔ ∃ a ∈ L, ∃ b ∈ K, y = a * x * b) :
    (∃! v : C → U, ∀ x, v (π x) = χ x) ↔ L ≤ χ.ker ∧ K ≤ χ.ker := by
  constructor
  · rintro ⟨v, hv, -⟩
    have doneOne : ∀ x, π 1 = π x → χ x = 1 := by
      intro x hx
      rw [← hv, ← hx, hv, map_one]
    constructor
    · intro a ha
      exact doneOne a ((hf _ _).2 ⟨a, ha, 1, K.one_mem, by simp⟩)
    · intro b hb
      exact doneOne b ((hf _ _).2 ⟨1, L.one_mem, b, hb, by simp⟩)
  · rintro ⟨hL, hK⟩
    apply unique_fibre_value π hp χ
    intro x y hxy
    obtain ⟨a, ha, b, hb, rfl⟩ := (hf _ _).1 hxy
    have hχa : χ a = 1 := hL ha
    have hχb : χ b = 1 := hK hb
    simp [map_mul, hχa, hχb]

/-- The exact character left undetermined by a prescribed deck ratio is one
constant per connected fibre of the quotient map. -/
theorem quotient_of_phases {A B U : Type*} [CommGroup U]
    (π : A → B) (hp : π.Surjective) (c d : A → U)
    (hr : ∀ x y, π x = π y → c x / c y = d x / d y) :
    ∃! u : B → U, ∀ x, u (π x) = c x / d x := by
  apply unique_fibre_value π hp
  intro x y hxy
  have h := div_eq_div_iff_mul_eq_mul.mp (hr x y hxy)
  exact div_eq_div_iff_mul_eq_mul.mpr (by simpa [mul_comm] using h)

end GRWTSK.NumberTheory.AlpogeLevelCharacterDescent
