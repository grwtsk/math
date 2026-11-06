/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.Normed.Field.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic

/-!
# Scalar observation errors for the constant-weight covariance seed

The two cross numerators differ by exchanging which mode multiplies
each source signal. Both admit the same ordinary reciprocal-distance
bound after cancellation of the squared-node sum. With one exact
receiving weight, the two seed generator errors use a harmonic price,
and the diagonal covariance error uses a reciprocal-square price.
These prices account for source signal errors. Errors in the arithmetic
used to observe the finite sums are separate.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedCovariance

/-- The physical parity-conjugated cross entry from its two signals. -/
def cross (m n u U : ℝ) : ℝ := (m * U - n * u) / (m^2 - n^2)

/-- The second projected generator, after gauge subtraction and division
by the retained mode, uses this cross coefficient. -/
def normalizedCross (m n u U : ℝ) : ℝ := (n * U - m * u) / (m^2 - n^2)

private theorem abs_sub_le_add (a b : ℝ) : |a - b| ≤ |a| + |b| := by
  simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le a 0 b

private theorem abs_cross_le {m n u U R : ℝ} (hm : 0 < m) (hn : m < n)
    (hu : |u| ≤ R) (hU : |U| ≤ R) : |cross m n u U| ≤ R / (n - m) := by
  have hnp := hm.trans hn
  have hsum : 0 < m + n := add_pos hm hnp
  have hsep : 0 < n - m := sub_pos.mpr hn
  have hden : |m^2 - n^2| = (n - m) * (m + n) := by
    rw [abs_of_nonpos (sub_nonpos.mpr (pow_le_pow_left₀ hm.le hn.le 2))]
    ring
  unfold cross
  rw [abs_div, hden]
  calc
    _ ≤ ((m + n) * R) / ((n - m) * (m + n)) := by
      apply div_le_div_of_nonneg_right _ (mul_nonneg hsep.le hsum.le)
      refine (abs_sub_le_add _ _).trans ?_
      rw [abs_mul, abs_mul, abs_of_pos hm, abs_of_pos hnp, add_mul]
      exact add_le_add (mul_le_mul_of_nonneg_left hU hm.le) (mul_le_mul_of_nonneg_left hu hnp.le)
    _ = _ := by field_simp [hsep.ne', hsum.ne']

private theorem abs_normalizedCross_le {m n u U R : ℝ} (hm : 0 < m) (hn : m < n)
    (hu : |u| ≤ R) (hU : |U| ≤ R) : |normalizedCross m n u U| ≤ R / (n - m) := by
  rw [show normalizedCross m n u U = -cross m n U u by
    unfold normalizedCross cross
    rw [← neg_div, neg_sub], abs_neg]
  exact abs_cross_le hm hn hU hu

variable {κ : Type*} [Fintype κ]

/-- A common outward signal error prices all three covariance observations.
The exact constant receiving weight incurs no further scalar error. -/
theorem covariance_errors (m u u' W R e : ℝ) (n U U' : κ → ℝ)
    (hm : 0 < m) (hn : ∀ k, m < n k) (hW : 0 ≤ W)
    (hu : |u| ≤ R) (hu' : |u'| ≤ R) (huErr : |u - u'| ≤ e)
    (hU : ∀ k, |U k| ≤ R) (hU' : ∀ k, |U' k| ≤ R) (hUErr : ∀ k, |U k - U' k| ≤ e) :
    let C := fun k => cross m (n k) u (U k)
    let C' := fun k => cross m (n k) u' (U' k)
    let G := fun k => normalizedCross m (n k) u (U k)
    let G' := fun k => normalizedCross m (n k) u' (U' k)
    let H := ∑ k, (n k - m)⁻¹
    let H₂ := ∑ k, ((n k - m)⁻¹)^2
    |(∑ k, W * C k * U k) - ∑ k, W * C' k * U' k| ≤ 2 * W * R * e * H ∧
      |(∑ k, W * G k) - ∑ k, W * G' k| ≤ W * e * H ∧
      |(∑ k, W * (C k)^2) - ∑ k, W * (C' k)^2| ≤ 2 * W * R * e * H₂ ∧
      |∑ k, W * G k| ≤ W * R * H := by
  dsimp only
  let C := fun k => cross m (n k) u (U k)
  let C' := fun k => cross m (n k) u' (U' k)
  let G := fun k => normalizedCross m (n k) u (U k)
  let G' := fun k => normalizedCross m (n k) u' (U' k)
  have hR : 0 ≤ R := (abs_nonneg _).trans hu
  have he : 0 ≤ e := (abs_nonneg _).trans huErr
  have hInv (k : κ) : 0 ≤ (n k - m)⁻¹ := inv_nonneg.mpr (sub_nonneg.mpr (hn k).le)
  have hC (k : κ) : |C k| ≤ R * (n k - m)⁻¹ := by
    simpa only [C, div_eq_mul_inv] using abs_cross_le hm (hn k) hu (hU k)
  have hC' (k : κ) : |C' k| ≤ R * (n k - m)⁻¹ := by
    simpa only [C', div_eq_mul_inv] using abs_cross_le hm (hn k) hu' (hU' k)
  have hCerr (k : κ) : |C k - C' k| ≤ e * (n k - m)⁻¹ := by
    rw [show C k - C' k = cross m (n k) (u-u') (U k-U' k) by
      simp only [C, C', cross, ← sub_div]
      congr 1
      ring]
    simpa only [div_eq_mul_inv] using abs_cross_le hm (hn k) huErr (hUErr k)
  have hGerr (k : κ) : |G k - G' k| ≤ e * (n k - m)⁻¹ := by
    rw [show G k - G' k = normalizedCross m (n k) (u-u') (U k-U' k) by
      simp only [G, G', normalizedCross, ← sub_div]
      congr 1
      ring]
    simpa only [div_eq_mul_inv] using abs_normalizedCross_le hm (hn k) huErr (hUErr k)
  refine ⟨?_, ?_, ?_, ?_⟩
  · change |(∑ k, W * C k * U k) - ∑ k, W * C' k * U' k| ≤ _
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
    have hProd : |C k * U k - C' k * U' k| ≤ 2 * R * e * (n k - m)⁻¹ := by
      rw [show C k * U k - C' k * U' k =
        (C k - C' k) * U k + C' k * (U k - U' k) by ring]
      refine (abs_add_le _ _).trans ?_
      simp only [abs_mul]
      calc
        _ ≤ (e * (n k - m)⁻¹) * R + (R * (n k - m)⁻¹) * e :=
          add_le_add (mul_le_mul (hCerr k) (hU k) (abs_nonneg _) (mul_nonneg he (hInv k)))
            (mul_le_mul (hC' k) (hUErr k) (abs_nonneg _) (mul_nonneg hR (hInv k)))
        _ = _ := by ring
    rw [show W * C k * U k - W * C' k * U' k = W * (C k * U k - C' k * U' k) by ring,
      abs_mul, abs_of_nonneg hW]
    exact (mul_le_mul_of_nonneg_left hProd hW).trans_eq (by ring)
  · change |(∑ k, W * G k) - ∑ k, W * G' k| ≤ _
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
    rw [← mul_sub, abs_mul, abs_of_nonneg hW, mul_assoc]
    exact mul_le_mul_of_nonneg_left (hGerr k) hW
  · change |(∑ k, W * (C k)^2) - ∑ k, W * (C' k)^2| ≤ _
    rw [← Finset.sum_sub_distrib, Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
    have hAdd : |C k + C' k| ≤ 2 * R * (n k - m)⁻¹ :=
      (abs_add_le _ _).trans (by
        calc
          _ ≤ _ := add_le_add (hC k) (hC' k)
          _ = _ := by ring)
    rw [← mul_sub, abs_mul, abs_of_nonneg hW, sq_sub_sq, abs_mul]
    have h := mul_le_mul hAdd (hCerr k) (abs_nonneg _)
      (mul_nonneg (mul_nonneg (by norm_num) hR) (hInv k))
    exact (mul_le_mul_of_nonneg_left h hW).trans_eq (by ring)
  · change |∑ k, W * G k| ≤ _
    rw [Finset.mul_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
    rw [abs_mul, abs_of_nonneg hW, mul_assoc]
    exact mul_le_mul_of_nonneg_left
      (by simpa only [G, div_eq_mul_inv] using abs_normalizedCross_le hm (hn k) hu (hU k)) hW


/-- Toeplitz moment of the cross indices with the indicated reciprocal power. -/
def toeplitz (p : ℕ) (m : ℝ) (n z : κ → ℝ) : ℝ :=
  ∑ k, z k / (m - n k)^p

/-- Hankel moment of the cross indices with the indicated reciprocal power. -/
def hankel (p : ℕ) (m : ℝ) (n z : κ → ℝ) : ℝ :=
  ∑ k, z k / (m + n k)^p

/-- The two generators and covariance diagonal are evaluations of the
twelve shared Toeplitz and Hankel moments. This is an exact finite
identity for arbitrary signals on the actual mode coordinates. -/
theorem covariance_eq_moments (m u W : ℝ) (n U : κ → ℝ)
    (hm : 0 < m) (hn : ∀ k, m < n k) :
    let T := fun p z => toeplitz p m n z
    let J := fun p z => hankel p m n z
    let S := fun k => (U k)^2
    let one : κ → ℝ := fun _ => 1
    (∑ k, W * cross m (n k) u (U k) * U k) =
      (W/2) * (T 1 S + J 1 S + u * (J 1 U - T 1 U)) ∧
    (∑ k, W * normalizedCross m (n k) u (U k)) =
      (W/2) * (T 1 U - J 1 U - u * (T 1 one + J 1 one)) ∧
    (∑ k, W * (cross m (n k) u (U k))^2) =
      (W/4) * (T 2 S + J 2 S + 2*u * (J 2 U - T 2 U) +
        u^2 * (T 2 one + J 2 one) +
        (T 1 S + J 1 S - u^2 * (T 1 one + J 1 one))/m) := by
  dsimp only
  have hminus (k : κ) : m - n k ≠ 0 := (sub_neg.mpr (hn k)).ne
  have hplus (k : κ) : m + n k ≠ 0 := (add_pos hm (hm.trans (hn k))).ne'
  have hsquare (k : κ) : m^2 - (n k)^2 ≠ 0 := by
    rw [sq_sub_sq]
    exact mul_ne_zero (hplus k) (hminus k)
  refine ⟨?_, ?_, ?_⟩ <;>
    simp only [toeplitz, hankel, pow_one, Finset.mul_sum,
      ← Finset.sum_add_distrib, ← Finset.sum_sub_distrib, Finset.sum_div] <;>
    apply Finset.sum_congr rfl <;>
    intro k hk <;>
    simp only [cross, normalizedCross] <;>
    field_simp [hm.ne', hminus k, hplus k, hsquare k] <;>
    ring

/-- Gridding the reciprocal kernel costs its uniform error times the
absolute signal sum. The moment of the gridded data is exact. -/
theorem abs_gridded_moment_error (z kernel grid : κ → ℝ) (e : ℝ)
    (h : ∀ k, |kernel k - grid k| ≤ e) :
    |(∑ k, z k * kernel k) - ∑ k, z k * grid k| ≤ e * ∑ k, |z k| := by
  rw [← Finset.sum_sub_distrib, Finset.mul_sum]
  refine (Finset.abs_sum_le_sum_abs _ _).trans (Finset.sum_le_sum fun k _ => ?_)
  rw [← mul_sub, abs_mul, mul_comm e]
  exact mul_le_mul_of_nonneg_left (h k) (abs_nonneg _)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedCovariance
