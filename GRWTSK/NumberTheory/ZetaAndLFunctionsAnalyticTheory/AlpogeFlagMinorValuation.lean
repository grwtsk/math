/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Algebra.MvPolynomial.Basic
import Mathlib.Analysis.Normed.Field.Ultra

/-! # Coefficient bounds in a monic triangular family

For a fixed Young shape the semistandard flag-minor products have integral
coefficients and distinct monic diagonal pivots. Order their pivots from largest
to smallest to apply the following nonarchimedean bound to the source pairing.
-/

namespace GRWTSK.NumberTheory.AlpogeFlagMinorValuation

open IsUltrametricDist

/-- A polynomial combination has coefficients in a closed ball exactly when its
coordinates in the triangular family lie in that same ball. The radius is any
nonnegative real number, independently of the field's value group. -/
theorem coefficient_bound_iff {K σ : Type*} [NormedField K] [IsUltrametricDist K] {n : ℕ}
    (P : Fin n → MvPolynomial σ K) (pivot : Fin n → σ →₀ ℕ)
    (hdiag : ∀ i, (P i).coeff (pivot i) = 1)
    (htri : ∀ i j, i < j → (P j).coeff (pivot i) = 0)
    (hint : ∀ i m, ‖(P i).coeff m‖ ≤ 1)
    (a : Fin n → K) {B : ℝ} (hB : 0 ≤ B) :
    (∀ m, ‖(∑ i, a i • P i).coeff m‖ ≤ B) ↔ ∀ i, ‖a i‖ ≤ B := by
  classical
  have hcoeff (m : σ →₀ ℕ) : (∑ i, a i • P i).coeff m = ∑ i, a i * (P i).coeff m := by
    simp only [MvPolynomial.coeff_sum, MvPolynomial.coeff_smul, smul_eq_mul]
  have hmul (i : Fin n) (m : σ →₀ ℕ) (ha : ‖a i‖ ≤ B) : ‖a i * (P i).coeff m‖ ≤ B := by
    rw [norm_mul]
    exact (mul_le_of_le_one_right (norm_nonneg _) (hint i m)).trans ha
  constructor
  · intro h i
    refine (wellFounded_lt (α := Fin n)).induction (C := fun j => ‖a j‖ ≤ B) i ?_
    intro i ih
    let term := fun j => a j * (P j).coeff (pivot i)
    have htail : ‖∑ j ∈ Finset.univ.erase i, term j‖ ≤ B := by
      apply norm_sum_le_of_forall_le_of_nonneg hB
      intro j hj
      rcases lt_or_gt_of_ne (Finset.ne_of_mem_erase hj) with hji | hij
      · exact hmul j (pivot i) (ih j hji)
      · simpa [term, htri i j hij] using hB
    have hsum : ‖∑ j, term j‖ ≤ B := by simpa only [hcoeff] using h (pivot i)
    have hid : (∑ j, term j) - (∑ j ∈ Finset.univ.erase i, term j) = a i := by
      rw [← Finset.sum_erase_add _ _ (Finset.mem_univ i)]
      simp [term, hdiag i]
    rw [← hid]
    rw [sub_eq_add_neg]
    exact (norm_add_le_max _ _).trans (max_le hsum (by simpa only [norm_neg] using htail))
  · intro ha m
    rw [hcoeff]
    exact norm_sum_le_of_forall_le_of_nonneg hB (fun i _ => hmul i m (ha i))

end GRWTSK.NumberTheory.AlpogeFlagMinorValuation
