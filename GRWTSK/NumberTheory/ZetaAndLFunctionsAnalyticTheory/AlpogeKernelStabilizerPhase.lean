/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.NumberTheory.LegendreSymbol.AddCharacter
import Mathlib.LinearAlgebra.Matrix.Hermitian
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic

/-! # Split Gauss sums and fixed-point determinant ratios on a theta line -/

namespace GRWTSK.NumberTheory.AlpogeKernelStabilizerPhase

/-- Orthogonality computes the finite quadratic sum on two perfectly
paired subgroups, with arbitrary characters on each isotropic summand. -/
theorem split_gauss_sum {X Y K : Type*} [Fintype X] [AddCommGroup Y] [Fintype Y]
    [Field K] (B : X ≃ AddChar Y K) (a : X → K) (d : AddChar Y K) :
    (∑ x, ∑ y, a x * (d y * B x y)) = a (B.symm d⁻¹) * Fintype.card Y := by
  classical
  let x₀ := B.symm d⁻¹
  have h0 : d * B x₀ = 1 := by simp [x₀]
  calc
    _ = ∑ x, a x * ∑ y, (d * B x) y := by simp [Finset.mul_sum]
    _ = _ := by
      rw [Finset.sum_eq_single x₀]
      · rw [AddChar.sum_eq_card_of_eq_one h0]
      · intro x _ hx
        have hc : d * B x ≠ 1 := by
          intro he
          apply hx
          exact B.injective (mul_left_cancel (he.trans h0.symm))
        rw [AddChar.sum_eq_zero_of_ne_one hc, mul_zero]
      · simp

/-- Evenness on an isotropic direct summand forces its linear phase to
be a sign, so the normalized split Gauss sum has square one. -/
theorem normalized_split_gauss_sq {X Y K : Type*} [AddCommGroup X] [Fintype X]
    [AddCommGroup Y] [Fintype Y] [Field K] [CharZero K] (B : X ≃ AddChar Y K)
    (a : AddChar X K) (d : AddChar Y K) (ha : ∀ x, a (-x) = a x) :
    ((∑ x, ∑ y, a x * (d y * B x y)) / Fintype.card Y) ^ 2 = 1 := by
  rw [split_gauss_sum]
  have hcard : (Fintype.card Y : K) ≠ 0 := Nat.cast_ne_zero.mpr Fintype.card_ne_zero
  rw [mul_div_cancel_right₀ _ hcard, sq]
  simpa only [ha] using (show a (-(B.symm d⁻¹)) * a (B.symm d⁻¹) = 1 by
    rw [← a.map_add_eq_mul, neg_add_cancel, a.map_zero_eq_one])

open Matrix in
/-- The complex determinant of the transverse fixed-point denominator has
the indicated conjugation law, including the parity sign. -/
theorem unitary_fixed_det {K ι : Type*} [Field K] [StarRing K] [Fintype ι] [DecidableEq ι]
    (U : Matrix ι ι K) (hU : U.conjTranspose * U = 1) :
    star ((1-U).det) = (-1 : K)^Fintype.card ι * star U.det * (1-U).det := by
  have h : (1-U).conjTranspose = -(U.conjTranspose * (1-U)) := by
    rw [conjTranspose_sub, conjTranspose_one, mul_sub, mul_one, hU, neg_sub]
  rw [← det_conjTranspose, h, det_neg, det_mul, det_conjTranspose, mul_assoc]

open Matrix in
/-- At equal determinant the ratio of the two transverse fixed-point
denominators lies in the fixed field of conjugation. -/
theorem fixed_det_ratio {K ι : Type*} [Field K] [StarRing K] [Fintype ι] [DecidableEq ι]
    (U V : Matrix ι ι K) (hU : U.conjTranspose * U = 1) (hV : V.conjTranspose * V = 1)
    (hdet : U.det = V.det) :
    star ((1-U).det / (1-V).det) = (1-U).det / (1-V).det := by
  have hVdet : V.det ≠ 0 := by
    have := congrArg Matrix.det hV
    rw [det_mul, det_one] at this
    exact right_ne_zero_of_mul_eq_one this
  rw [star_div₀, unitary_fixed_det U hU, unitary_fixed_det V hV, hdet]
  exact mul_div_mul_left _ _ (mul_ne_zero (pow_ne_zero _ (neg_ne_zero.mpr one_ne_zero))
    (by simpa using hVdet))

open Matrix in
/-- The tame character of the inverse full determinant cancels the
upper-block character of the terminal residue datum. -/
theorem terminal_residue_character {K C ι κ : Type*} [Field K] [Field C]
    [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ] (χ : K →*₀ C)
    (A : Matrix ι ι K) (B : Matrix ι κ K) (D : Matrix κ κ K) (hA : A.det ≠ 0) :
    χ (Matrix.fromBlocks A B 0 D).det⁻¹ * χ A.det = (χ D.det)⁻¹ := by
  rw [det_fromBlocks_zero₂₁, map_inv₀, map_mul, _root_.mul_inv_rev, mul_assoc,
    inv_mul_cancel₀ ((map_ne_zero χ).mpr hA), mul_one]

end GRWTSK.NumberTheory.AlpogeKernelStabilizerPhase
