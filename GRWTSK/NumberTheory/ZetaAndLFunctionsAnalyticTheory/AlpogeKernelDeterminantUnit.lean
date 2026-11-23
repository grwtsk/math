/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.Group.Torsion
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.RingTheory.LocalRing.Basic
import Mathlib.RingTheory.ClassGroup.Basic
import Mathlib.RingTheory.Ideal.Quotient.Operations

/-! # Local lattice frames and determinant-character normalization

The row selection applies to local coordinates of finite presentations
of a lattice basis (transpose to apply it to the source columns).
The valuation computation retains the signed infinity type and permits
a torsion error on the finite integral ideles.
-/

namespace GRWTSK.NumberTheory.AlpogeKernelDeterminantUnit

/-- Over any local ring, if independently weighted row sums form an
invertible matrix, choosing one original row from each sum already gives
an invertible matrix. The lists may differ between rows. -/
theorem exists_unit_det_selection {R ι : Type*} [CommRing R] [IsLocalRing R]
    [Fintype ι] [DecidableEq ι] {κ : ι → Type*} [∀ i, Fintype (κ i)]
    (row : ∀ i, κ i → ι → R) (w : ∀ i, κ i → R)
    (h : IsUnit (Matrix.of fun i => ∑ k, w i k • row i k).det) :
    ∃ j : ∀ i, κ i, IsUnit (Matrix.of fun i => row i (j i)).det := by
  classical
  let f := (Matrix.detRowAlternating : (ι → R) [⋀^ι]→ₗ[R] R).toMultilinearMap
  change IsUnit (f fun i => ∑ k, w i k • row i k) at h
  rw [f.map_sum] at h
  obtain ⟨j, _, hj⟩ := IsLocalRing.exists_of_isUnit_sum h
  rw [f.map_smul_univ, smul_eq_mul] at hj
  exact ⟨j, isUnit_of_mul_isUnit_right hj⟩

/-- A common global tuple realizes independently chosen residue frames in a
module at finitely many pairwise coprime primes. The targets may be different
coordinate spaces at the different primes. -/
theorem simultaneous_residue_frames {R M π ι : Type*} [CommRing R] [AddCommGroup M]
    [Module R M] [Fintype π] (P : π → Ideal R)
    (hcop : Pairwise fun p q => IsCoprime (P p) (P q))
    {V : π → Type*} [∀ p, AddCommGroup (V p)] [∀ p, Module (R ⧸ P p) (V p)]
    (reduce : ∀ p, M →ₛₗ[Ideal.Quotient.mk (P p)] V p)
    (frame : π → ι → M) :
    ∃ lifted : ι → M, ∀ p i, reduce p (lifted i) = reduce p (frame p i) := by
  classical
  choose e he using fun s : π => Ideal.pi_quotient_surjective hcop
    (fun p => if s = p then (1 : R ⧸ P p) else 0)
  refine ⟨fun i => ∑ s, e s • frame s i, fun p i => ?_⟩
  simp only [map_sum, LinearMap.map_smulₛₗ]
  rw [Finset.sum_eq_single p]
  · simp [he]
  · intro q _ hqp
    simp [he, hqp]
  · simp

open scoped nonZeroDivisors

/-- Twice the order of the determinant ideal class is an explicit positive
exponent for principalization by a norm-one element. The conjugation maps
on elements and ideals need only be compatible on principal ideals. -/
theorem norm_one_principal_power {R K : Type*} [CommRing R] [IsDomain R] [Field K]
    [Algebra R K] [IsFractionRing R K] [Finite (ClassGroup R)]
    (c : Kˣ →* Kˣ) (cI : (FractionalIdeal R⁰ K)ˣ →* (FractionalIdeal R⁰ K)ˣ)
    (hc : Function.Involutive c) (hP : ∀ a, cI (toPrincipalIdeal R K a) = toPrincipalIdeal R K (c a))
    (I : (FractionalIdeal R⁰ K)ˣ) (hI : cI I = I⁻¹) :
    let n := orderOf (ClassGroup.mk K I)
    0 < n ∧ ∃ z : Kˣ, c z * z = 1 ∧ I ^ (n + n) = toPrincipalIdeal R K z := by
  dsimp only
  let n := orderOf (ClassGroup.mk K I)
  refine ⟨orderOf_pos _, ?_⟩
  have hp : ClassGroup.mk K (I ^ n) = 1 := by rw [map_pow, pow_orderOf_eq_one]
  have h := congrArg (ClassGroup.equiv K) hp
  simp only [ClassGroup.equiv_mk, FractionalIdeal.canonicalEquiv_self, RingEquiv.coe_mulEquiv_refl,
    QuotientGroup.mk'_apply, map_one, QuotientGroup.eq_one_iff, MonoidHom.mem_range] at h
  obtain ⟨a, ha⟩ := h
  change toPrincipalIdeal R K a = I ^ n at ha
  have hca : toPrincipalIdeal R K (c a) = (I ^ n)⁻¹ := by
    rw [← hP, ha, map_pow, hI, inv_pow]
  refine ⟨a / c a, ?_, ?_⟩
  · rw [map_div, hc]
    simp [div_eq_mul_inv, mul_assoc]
  · rw [map_div, ha, hca, pow_add, div_inv_eq_mul]

/-- An idele class raised to a positive power is principal up to a finite
unit. If the powered lattice determinants match that principal generator
at each embedding, the signed determinant correction has trivial valuation. -/
theorem normalized_character_unit {T K Γ ι : Type*}
    [CommGroup T] [CommGroup K] [CommGroup Γ] [IsMulTorsionFree Γ] [Fintype ι]
    (χ : T →* K) (v : K →* Γ) (t z u : T) {h n : ℕ} (hh : h ≠ 0) (hn : n ≠ 0)
    (hclass : t ^ h = z * u) (htors : χ u ^ n = 1)
    (a d : ι → K) (s : ι → ℤ) (hprincipal : χ z = ∏ i, a i ^ (-s i))
    (hdet : ∀ i, (v (d i)) ^ h = v (a i)) :
    v (χ t * ∏ i, d i ^ s i) = 1 := by
  have hu : v (χ u) = 1 := (pow_eq_one_iff_left hn).mp (by rw [← map_pow, htors, map_one])
  apply (pow_eq_one_iff_left hh).mp
  rw [map_mul, mul_pow, ← map_pow, ← map_pow, hclass, map_mul, map_mul, hu, mul_one,
    hprincipal, map_prod, map_prod, ← Finset.prod_pow, ← Finset.prod_mul_distrib]
  apply Finset.prod_eq_one
  intro i _
  rw [map_zpow, map_zpow, ← hdet, zpow_neg, ← zpow_natCast (v (d i)),
    ← zpow_natCast (v (d i) ^ s i), ← zpow_mul, ← zpow_mul, mul_comm]
  rw [mul_comm (s i) (h : ℤ), mul_inv_cancel]

end GRWTSK.NumberTheory.AlpogeKernelDeterminantUnit
