/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Module.Submodule.Basic
import Mathlib.Algebra.Algebra.Tower
import Mathlib.Algebra.Order.Field.Rat
import Mathlib.Algebra.Module.LinearMap.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Tactic.Ring

/-! # Character differences and normalized toric Fourier coefficients

The first lemma works with the lattice in the extension. Only the vertical
part is tested for integrality. The second removes a commuting contraction
at every order on its harmonic kernel. The last two lemmas compare the
quadratic Fourier exponents before and after normalized torsion translation.
-/

namespace GRWTSK.NumberTheory.AlpogeRamifiedHarmonicJets

open scoped BigOperators

/-- When the projected vector and the adjoint functional transform by two
characters, their difference clears the pairing of an integral lift. -/
theorem character_difference_pairing {R K V W : Type*} [CommRing R] [Field K] [Algebra R K]
    [AddCommGroup V] [Module K V] [Module R V] [IsScalarTower R K V]
    [AddCommGroup W] [Module K W] (L : Submodule R V) (J : Submodule R K)
    (pr : V →ₗ[K] W) (f : V →ₗ[K] K) (A : V →ₗ[K] V) (v : V) (s t : R)
    (hv : v ∈ L) (hA : A v ∈ L)
    (hs : pr (A v) = algebraMap R K s • pr v)
    (ht : f (A v) = algebraMap R K t * f v)
    (hvert : ∀ x ∈ L, pr x = 0 → f x ∈ J) :
    (algebraMap R K t - algebraMap R K s) * f v ∈ J := by
  have hmem : A v - algebraMap R K s • v ∈ L := by
    rw [IsScalarTower.algebraMap_smul]
    exact L.sub_mem hA (L.smul_mem s hv)
  have hz : pr (A v - algebraMap R K s • v) = 0 := by rw [map_sub, map_smul, hs, sub_self]
  have h := hvert _ hmem hz
  simpa only [map_sub, map_smul, ht, smul_eq_mul, sub_mul] using h

/-- A commuting correction that kills the input disappears from each ordinary
power, hence also from every divided power over a characteristic-zero field. -/
theorem remove_harmonic_contraction {V : Type*} [AddCommGroup V]
    (D H : V →+ V) (hcomm : ∀ v, H (D v) = D (H v)) (v : V) (hv : H v = 0) (n : ℕ) :
    ((D + H)^[n]) v = (D^[n]) v := by
  have hzero (k : ℕ) : H ((D^[k]) v) = 0 := by
    induction k with
    | zero => exact hv
    | succ k ih => rw [Function.iterate_succ_apply', hcomm, ih, map_zero]
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [Function.iterate_succ_apply', Function.iterate_succ_apply', ih,
      AddMonoidHom.add_apply, hzero, add_zero]

/-- Completing every square simultaneously includes the scalar multiplying
the translated section and the character by which its torus frame changes. -/
theorem toric_translation_cost {V : Type*} [AddCommGroup V] [Module ℚ V]
    (B : V →ₗ[ℚ] V →ₗ[ℚ] ℚ) (hsym : ∀ v w, B v w = B w v)
    {k : ℕ} (x : Fin k → V) (shift : V) :
    (∑ i, B (x i) (x i) / 2) + (∑ i, B (x i) shift) + k * (B shift shift / 2) =
      ∑ i, B (x i + shift) (x i + shift) / 2 := by
  have term (i : Fin k) : B (x i + shift) (x i + shift) / 2 =
      B (x i) (x i) / 2 + B (x i) shift + B shift shift / 2 := by
    simp only [map_add, LinearMap.add_apply]
    rw [hsym shift (x i)]
    ring
  simp only [term, Finset.sum_add_distrib, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul]

/-- Every exponent of the normalized translated product is nonnegative for
a positive semidefinite valuation pairing, including nonintegral shifts. -/
theorem toric_translation_nonnegative {V : Type*} [AddCommGroup V] [Module ℚ V]
    (B : V →ₗ[ℚ] V →ₗ[ℚ] ℚ) (hsym : ∀ v w, B v w = B w v)
    (hpos : ∀ v, 0 ≤ B v v) {k : ℕ} (x : Fin k → V) (shift : V) :
    0 ≤ (∑ i, B (x i) (x i) / 2) + (∑ i, B (x i) shift) + k * (B shift shift / 2) := by
  rw [toric_translation_cost B hsym]
  exact Finset.sum_nonneg fun i _ => div_nonneg (hpos _) (by decide)

end GRWTSK.NumberTheory.AlpogeRamifiedHarmonicJets
