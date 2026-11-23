/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.NumberField.Discriminant.Basic
import Mathlib.NumberTheory.NumberField.Discriminant.Different
import Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex
import Mathlib.RingTheory.Norm.Transitivity
import Mathlib.Tactic.FieldSimp

/-!
# Integral and trace duals in the target slope

The normalized target in the Alpöge archive uses an integral-valued linear
dual. The ordinary rational trace dual carries a different factor. These
results retain both factors on actual fractional-ideal lattices. See the
comparison in `AlpogeWindowSourceTransport.md`.
-/

open NumberField NumberField.InfinitePlace IsDedekindDomain
open scoped nonZeroDivisors BigOperators Classical

namespace GRWTSK.NumberTheory.AlpogeDualLatticeCovolume

variable {K : Type*} [Field K] [NumberField K]

/-- In dual pseudo-basis coordinates, integrality on the whole source
lattice forces exactly the inverse coefficient ideals, even at nonprincipal
ideals. -/
theorem integral_dual_coordinates {ι : Type*} [Fintype ι]
    (I : ι → (FractionalIdeal (𝓞 K)⁰ K)ˣ) (c : ι → K) :
    (∀ x : ι → K, (∀ i, x i ∈ (I i).val) →
      ∑ i, c i * x i ∈ (1 : FractionalIdeal (𝓞 K)⁰ K)) ↔
      ∀ i, c i ∈ ((I i).val)⁻¹ := by
  classical
  constructor
  · intro h i
    apply (FractionalIdeal.mem_inv_iff (I i).ne_zero).mpr
    intro a ha
    have hx : ∀ j, (Pi.single i a : ι → K) j ∈ (I j).val := by
      intro j
      by_cases hj : j = i
      · simpa [hj] using ha
      · rw [Pi.single_eq_of_ne hj]
        exact (I j).val.zero_mem
    simpa [Pi.single_apply, mul_ite] using h (Pi.single i a) hx
  · intro h x hx
    exact Submodule.sum_mem _ fun i _ =>
      (FractionalIdeal.mem_inv_iff (I i).ne_zero).mp (h i) _ (hx i)

/-- A mixed embedding counts a conjugate pair just once. The two algebraic
dual covolumes multiply to the square of the integer-ring covolume. -/
theorem integral_dual_covolume_product (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ZLattice.covolume (mixedEmbedding.idealLattice K I) *
      ZLattice.covolume (mixedEmbedding.idealLattice K I⁻¹) =
        ZLattice.covolume (mixedEmbedding.integerLattice K) ^ 2 := by
  rw [mixedEmbedding.covolume_idealLattice, mixedEmbedding.covolume_idealLattice,
    mixedEmbedding.covolume_integerLattice, Units.val_inv_eq_inv_val, map_inv₀, Rat.cast_inv]
  have h : (FractionalIdeal.absNorm I.val : ℝ) ≠ 0 := by
    exact_mod_cast (FractionalIdeal.absNorm_eq_zero_iff.not.mpr I.ne_zero)
  field_simp

/-- For the archive's local realization by the inverse frame and the
dual transpose-inverse frame, the real Jacobians cancel in every rank. -/
theorem local_frame_dual_jacobians {ι : Type*} [Fintype ι] [DecidableEq ι]
    (X : Matrix ι ι ℂ) (hX : IsUnit X.det) :
    LinearMap.det ((Matrix.toLin' X⁻¹).restrictScalars ℝ) *
      LinearMap.det ((Matrix.toLin' ((X.transpose)⁻¹)⁻¹).restrictScalars ℝ) = 1 := by
  rw [Matrix.nonsing_inv_nonsing_inv _ (X.det_transpose ▸ hX)]
  simp only [LinearMap.det_restrictScalars, LinearMap.det_toLin', Matrix.det_transpose]
  rw [← map_mul, Matrix.det_nonsing_inv_mul_det _ hX, map_one]

/-- The trace-dual norm contains the absolute discriminant in the
denominator, with both fractional ideals in their original normalization. -/
theorem trace_dual_norm_product (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    FractionalIdeal.absNorm I.val * FractionalIdeal.absNorm (FractionalIdeal.dual ℤ ℚ I.val) =
      ((NumberField.discr K).natAbs : ℚ)⁻¹ := by
  rw [← map_mul, FractionalIdeal.self_mul_dual ℤ ℚ I.ne_zero]
  have h := congrArg Inv.inv (coeIdeal_differentIdeal ℤ ℚ K (𝓞 K))
  simp only [inv_inv] at h
  rw [← h, map_inv₀, FractionalIdeal.coeIdeal_absNorm, NumberField.absNorm_differentIdeal K]

/-- The ideal of coefficients representing the integral half-trace pairing. -/
noncomputable def halfTraceDual (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    (FractionalIdeal (𝓞 K)⁰ K)ˣ :=
  Units.mk0 (FractionalIdeal.spanSingleton (𝓞 K)⁰ (2 : K) * FractionalIdeal.dual ℤ ℚ I.val)
    (mul_ne_zero (FractionalIdeal.spanSingleton_ne_zero_iff.mpr (by norm_num)) (FractionalIdeal.dual_ne_zero ℤ ℚ I.ne_zero))

/-- This membership is the half-trace integrality test on all elements
of the fractional ideal, including fractional elements. -/
theorem mem_halfTraceDual_iff (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) (y : K) :
    y ∈ (halfTraceDual I).val ↔ ∀ a ∈ I.val,
      Algebra.traceForm ℚ K y a / 2 ∈ (algebraMap ℤ ℚ).range := by
  change y ∈ FractionalIdeal.spanSingleton (𝓞 K)⁰ (2 : K) *
    FractionalIdeal.dual ℤ ℚ I.val ↔ _
  rw [FractionalIdeal.mem_singleton_mul]
  have he : (2 : K) * ((1/2 : ℚ) • y) = y := by
    simp [Algebra.smul_def]
  have ht (a : K) : Algebra.traceForm ℚ K ((1/2 : ℚ) • y) a =
      Algebra.traceForm ℚ K y a / 2 := by
    rw [map_smul, LinearMap.smul_apply, smul_eq_mul]
    ring
  constructor
  · rintro ⟨z,hz,hy⟩ a ha
    rw [← ht]
    have hed : (1/2 : ℚ) • y = z := mul_left_cancel₀ (by norm_num : (2:K) ≠ 0) (he.trans hy)
    rw [hed]
    exact (FractionalIdeal.mem_dual I.ne_zero).mp hz a ha
  · intro h
    exact ⟨_, (FractionalIdeal.mem_dual I.ne_zero).mpr (fun a ha => (ht a).symm ▸ h a ha),
      he.symm⟩

/-- For a totally complex number field, scaling the rational trace dual
by two makes the canonical covolumes reciprocal. -/
theorem half_trace_dual_covolume_product [IsTotallyComplex K] (I : (FractionalIdeal (𝓞 K)⁰ K)ˣ) :
    ZLattice.covolume (mixedEmbedding.idealLattice K I) *
      ZLattice.covolume (mixedEmbedding.idealLattice K (halfTraceDual I)) = 1 := by
  rw [mixedEmbedding.covolume_idealLattice, mixedEmbedding.covolume_idealLattice]
  simp only [halfTraceDual, Units.val_mk0, map_mul, FractionalIdeal.absNorm_span_singleton]
  have hnorm : |Algebra.norm ℚ (2 : K)| = (2 : ℚ) ^ (Module.finrank ℚ K) := by
    have h := Algebra.norm_natCast (S := K) ℚ 2
    norm_num at h
    rw [h,abs_of_nonneg (by positivity)]
  rw [hnorm, IsTotallyComplex.finrank K, pow_mul]
  have hD : 0 < |(NumberField.discr K : ℝ)| := by
    exact abs_pos.mpr (Int.cast_ne_zero.mpr (NumberField.discr_ne_zero K))
  have hprod : (FractionalIdeal.absNorm I.val : ℝ) *
      (FractionalIdeal.absNorm (FractionalIdeal.dual ℤ ℚ I.val) : ℝ) =
        |(NumberField.discr K : ℝ)|⁻¹ := by
    have h := congrArg (fun q : ℚ => (q : ℝ)) (trace_dual_norm_product I)
    simpa only [Rat.cast_mul, Rat.cast_inv, Rat.cast_natCast, Nat.cast_natAbs, Int.cast_abs, Rat.cast_abs, Rat.cast_intCast] using h
  push_cast
  rw [show (2:ℝ)^2 = 2*2 by ring, mul_pow, inv_pow]
  calc _ = ((FractionalIdeal.absNorm I.val : ℝ) *
        (FractionalIdeal.absNorm (FractionalIdeal.dual ℤ ℚ I.val) : ℝ)) *
        (Real.sqrt |(NumberField.discr K : ℝ)|)^2 := by field_simp
       _ = 1 := by rw [hprod, Real.sq_sqrt hD.le, inv_mul_cancel₀ hD.ne']

end GRWTSK.NumberTheory.AlpogeDualLatticeCovolume
