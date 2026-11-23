/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.RingTheory.Trace.Defs

/-! # Trace divisibility and the two factors in a marked isogeny sum -/

namespace GRWTSK.NumberTheory.AlpogeTorsionTrace

open Module

variable {R S T I J : Type*} [CommRing R] [CommRing S] [Algebra R S]
    [Fintype I] (b : Basis I R S) (c : I → S) (t : S →ₗ[R] R)

/-- Express the trace through the diagonal of a perfect associative pairing. -/
theorem trace_from_dual_basis
    (h : ∀ x i, (b.repr x) i = t (c i * x)) (x : S) :
    Algebra.trace R S x = t ((∑ i, b i * c i) * x) := by
  classical
  rw [Algebra.trace_eq_matrix_trace b, Matrix.trace, Finset.sum_mul, map_sum]
  apply Finset.sum_congr rfl
  intro i _
  rw [Matrix.diag_apply, Algebra.leftMulMatrix_eq_repr_mul, h]
  congr 1
  ac_rfl

/-- A Jacobian generating the Euler-element ideal gives the exact trace image. -/
theorem trace_image_iff_dvd
    (h : ∀ x i, (b.repr x) i = t (c i * x))
    (j : R) (u : Sˣ) (he : (∑ i, b i * c i) = algebraMap R S j * (u : S))
    (ht : Function.Surjective t) (y : R) :
    (∃ x : S, Algebra.trace R S x = y) ↔ j ∣ y := by
  have calcTrace (x : S) : Algebra.trace R S x = j * t ((u : S) * x) := by
    rw [trace_from_dual_basis b c t h, he, mul_assoc, ← Algebra.smul_def, map_smul, smul_eq_mul]
  constructor
  · rintro ⟨x, rfl⟩
    exact ⟨_, calcTrace x⟩
  · rintro ⟨k, rfl⟩
    obtain ⟨w, hw⟩ := ht k
    refine ⟨(↑u⁻¹ : S) * w, ?_⟩
    rw [calcTrace, ← mul_assoc, Units.mul_inv, one_mul, hw]

variable [CommRing T] [Algebra R T] [Algebra S T] [IsScalarTower R S T]
    [Fintype J] (d : Basis J S T)

include b d

/-- Descent through the first map in an isogeny tower contributes its whole
degree, even at a prime dividing it. -/
theorem trace_of_descended_element (x : S) :
    Algebra.trace R T (algebraMap S T x) =
      (Fintype.card J : R) * Algebra.trace R S x := by
  rw [← Algebra.trace_trace_of_basis b d, Algebra.trace_algebraMap_of_basis d, map_nsmul,
    nsmul_eq_mul]

/-- The image on descended elements has both factors exactly. -/
theorem trace_on_descended_image
    (j : R) (h : ∀ y : R, (∃ x : S, Algebra.trace R S x = y) ↔ j ∣ y) (y : R) :
    (∃ x : S, Algebra.trace R T (algebraMap S T x) = y) ↔
      (Fintype.card J : R) * j ∣ y := by
  constructor
  · rintro ⟨x, rfl⟩
    obtain ⟨k, hk⟩ := (h _).mp ⟨x, rfl⟩
    exact ⟨k, by rw [trace_of_descended_element b d, hk, mul_assoc]⟩
  · rintro ⟨k, rfl⟩
    obtain ⟨x, hx⟩ := (h (j * k)).mpr ⟨k, rfl⟩
    exact ⟨x, by rw [trace_of_descended_element b d, hx, mul_assoc]⟩

end GRWTSK.NumberTheory.AlpogeTorsionTrace
