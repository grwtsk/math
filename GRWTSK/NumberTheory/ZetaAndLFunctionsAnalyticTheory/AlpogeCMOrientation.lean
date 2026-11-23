/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Tactic
import Mathlib.FieldTheory.Finite.Basic

/-! # Frobenius sign and the discriminant −23 local model -/
namespace GRWTSK.NumberTheory.AlpogeCMOrientation

/-- Scaling the Hilbert class polynomial by the cube of 125. -/
theorem scaled_class_polynomial {R : Type*} [CommRing R] (y : R) :
    (125*y)^3 + 3491750*(125*y)^2 - 5151296875*(125*y) + 12771880859375 =
    5^9*(y^3 + 27934*y^2 - 329683*y + 6539203) := by ring

/-- The good short curve has the claimed j-invariant in the *uncancelled* model. -/
theorem short_curve_j {F : Type*} [Field F] [CharZero F] {y b : F}
    (h : 27*y*b^2 = 4*(1728-125*y)) :
    (4*5^3+27*b^2) ≠ 0 ∧ 1728*(4*5^3)/(4*5^3+27*b^2) = 125*y := by
  have hd : y*(4*5^3+27*b^2) = 6912 := by linear_combination h
  have hn : (4*5^3+27*b^2 : F) ≠ 0 := by
    intro hz
    rw [hz, mul_zero] at hd
    norm_num at hd
  refine ⟨hn, (div_eq_iff hn).2 ?_⟩
  linear_combination -125*hd

/-- Scalar negative Frobenius descends along a surjective geometric isogeny. -/
theorem transport_negative_frobenius {A B : Type*} [AddCommGroup A] [AddCommGroup B]
    (f : A →+ B) (hf : Function.Surjective f) (p : ℕ) (π : A → A) (π' : B → B)
    (comm : ∀ x, f (π x) = π' (f x)) (hπ : ∀ x, π x = -(p • x)) :
    ∀ y, π' y = -(p • y) := by
  intro y
  obtain ⟨x, rfl⟩ := hf y
  rw [← comm, hπ, map_neg, map_nsmul]

/-- The first coefficient cannot intertwine opposite height-two signs over the
residue field itself. This uses the actual field cardinality. -/
theorem negative_sign_no_tangent {k : Type*} [Field k] [Fintype k]
    (hchar : (2:k) ≠ 0) {b : k} (hb : -b = b ^ Fintype.card k) : b = 0 := by
  rw [FiniteField.pow_card] at hb
  have h : (2:k)*b = 0 := by linear_combination -hb
  exact (mul_eq_zero.mp h).resolve_left hchar

end GRWTSK.NumberTheory.AlpogeCMOrientation
