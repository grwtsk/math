/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Group.AddChar
import Mathlib.SetTheory.Cardinal.Finite
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.Normed.Field.Basic

/-!
# The radical in finite quadratic Gauss sums

The finite quadratic phases arising from a triangle of theta intertwiners
can be degenerate. Orthogonality gives a precise formula for the nonzero
sum, including the radical factor. See §17 of `AlpogeEllipticCubicalB4.md`.
-/

namespace GRWTSK.NumberTheory.AlpogeThetaGaussRadical

open scoped BigOperators

variable {A K : Type*} [AddCommGroup A] [Fintype A] [Field K]

private lemma sum_translate (f : A → K) (t : A) : ∑ x, f (x + t) = ∑ x, f x :=
  Fintype.sum_equiv (Equiv.addRight t) _ _ (fun _ => rfl)

/-- A nonzero Gauss sum forces the phase to be trivial on the radical of its polarization. -/
theorem trivial_on_radical (q : A → K) (b : A → AddChar A K)
    (hq : ∀ x y, q (x + y) = q x * q y * b x y) (hs : ∑ x, q x ≠ 0)
    {t : A} (ht : b t = 0) : q t = 1 := by
  apply (mul_eq_right₀ hs).mp
  rw [Finset.mul_sum]
  calc
    ∑ x, q t * q x = ∑ x, q (x + t) := by
      apply Finset.sum_congr rfl
      intro x _
      rw [add_comm x t, hq, ht]
      simp
    _ = _ := sum_translate q t

/-- The product with the reciprocal-phase Gauss sum, including the exact radical size. -/
theorem gauss_mul_reciprocal (q : A → K) (b : A → AddChar A K)
    (hq : ∀ x y, q (x + y) = q x * q y * b x y) (hn : ∀ x, q x ≠ 0)
    (hs : ∑ x, q x ≠ 0) :
    (∑ x, q x) * (∑ x, (q x)⁻¹) = Fintype.card A * Nat.card {x // b x = 0} := by
  classical
  calc
    _ = ∑ y, ∑ x, q (x + y) * (q y)⁻¹ := by
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro y _
      rw [← Finset.sum_mul, sum_translate]
    _ = ∑ x, q x * ∑ y, b x y := by
      rw [Finset.sum_comm]
      apply Finset.sum_congr rfl
      intro x _
      rw [Finset.mul_sum]
      apply Finset.sum_congr rfl
      intro y _
      rw [hq]
      field_simp [hn y]
    _ = ∑ x, if b x = 0 then (Fintype.card A : K) else 0 := by
      apply Finset.sum_congr rfl
      intro x _
      rw [AddChar.sum_eq_ite]
      split_ifs with hx
      · rw [trivial_on_radical q b hq hs hx, one_mul]
      · exact mul_zero _
    _ = _ := by
      rw [← Finset.sum_filter]
      simp [Nat.card_eq_fintype_card, Fintype.card_subtype, mul_comm]

/-- An involution preserving the chosen norm controls a nonzero quadratic Gauss sum
when it sends each phase to its reciprocal. This applies to the primary cyclotomic
field at its unique place above the residue characteristic. -/
theorem norm_gauss_sq {C : Type*} [NormedField C] (q : A → C) (b : A → AddChar A C)
    (hq : ∀ x y, q (x + y) = q x * q y * b x y) (hn : ∀ x, q x ≠ 0)
    (hs : ∑ x, q x ≠ 0) (c : C →+* C) (hc : ∀ z, ‖c z‖ = ‖z‖)
    (hinv : ∀ x, c (q x) = (q x)⁻¹) :
    ‖∑ x, q x‖ ^ 2 = ‖(Fintype.card A : C) * (Nat.card {x // b x = 0} : C)‖ := by
  have h := gauss_mul_reciprocal q b hq hn hs
  simp_rw [← hinv] at h
  rw [← map_sum] at h
  rw [← h, norm_mul, hc, pow_two]

end GRWTSK.NumberTheory.AlpogeThetaGaussRadical
