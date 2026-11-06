/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddInclusionWindow
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.StructuredSchurPivotResidual
import Mathlib.NumberTheory.Harmonic.Bounds

/-!
# Source-seed error for the normalized radius-two generators

The second skew pair is invariant when a common multiple of its first
vector is subtracted from its second vector. Subtracting the sum of
the receiving weights times the source signal removes the large common
term from the second covariance generator. Its remaining contribution
divided by the retained mode has a harmonic denominator.

Both skew pairs then have one explicit mode factor per numerator term.
The factor cancels against the sum of the two modes in the squared-node
difference. Consequently uniform normalized generator errors use the
harmonic distance between mode indices. The result supplies the source
comparison before the rounded pivot chain. Literal scalar enclosures
and certified numerical convolution remain separate. Local attribution
is to grwtsk contributors. Independent mathematical review and novelty
assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedError

open Matrix
open OddInclusionWindow
open GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
open GRWTSK.Algebra.LinearAlgebra.StructuredSchurPivotResidual

/-- The structured seed uses pairs `(m,F)` and `(u,m*G)`. -/
def seedMatrix {ι : Type*} [DecidableEq ι] (m diag F u G : ι → ℝ) : Matrix ι ι ℝ :=
  cauchyMatrix (fun i => (m i)^2) diag
    (fun i (k : Fin 2) => if k = 0 then m i else u i)
    (fun i k => if k = 0 then F i else m i * G i)

/-- Subtracting a common multiple of the first vector in the second
skew pair gives the same matrix with a normalized second generator. -/
theorem seedMatrix_gauge {ι : Type*} [DecidableEq ι] (m diag F u B : ι → ℝ)
    (c : ℝ) (hm : ∀ i, 0 < m i) :
    seedMatrix m diag F u (fun i => (B i - c * u i) / m i) =
      cauchyMatrix (fun i => (m i)^2) diag
        (fun i (k : Fin 2) => if k = 0 then m i else u i)
        (fun i k => if k = 0 then F i else B i) := by
  ext i j
  by_cases hij : i = j
  · simp [seedMatrix, cauchyMatrix, hij]
  · have h10 : (1 : Fin 2) ≠ 0 := by decide
    simp only [seedMatrix, cauchyMatrix, hij, ite_false, numerator, Fin.sum_univ_two,
      h10, ite_true]
    have hscale (k : ι) : m k * ((B k - c * u k) / m k) = B k - c * u k := by
      field_simp [(hm k).ne']
    rw [hscale i, hscale j]
    congr 1
    ring

/-- The normalized covariance generator after the gauge subtraction. -/
theorem normalized_covariance_generator {κ : Type*} [Fintype κ]
    (m u : ℝ) (n U w C : κ → ℝ) (hm : 0 < m) (hsep : ∀ k, m^2 - (n k)^2 ≠ 0)
    (hC : ∀ k, C k = (m * U k - u * n k) / (m^2 - (n k)^2)) :
    ((∑ k, C k * w k * n k) - u * ∑ k, w k) / m =
      ∑ k, w k * (n k * U k - m * u) / (m^2 - (n k)^2) := by
  rw [Finset.mul_sum, ← Finset.sum_sub_distrib, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro k _
  rw [hC]
  field_simp [(hm).ne', hsep k]
  ring

private theorem abs_difference_le_add (a b : ℝ) : |a - b| ≤ |a| + |b| := by
  simpa only [sub_zero, zero_sub, abs_neg] using abs_sub_le a 0 b

variable {ι : Type*} [Fintype ι] [DecidableEq ι]

omit [Fintype ι] in
/-- The physical node sum cancels in the matrix entry uncertainty,
leaving only the ordinary reciprocal separation. -/
theorem abs_seed_entry_sub_le (m diag F u G diag' F' u' G' : ι → ℝ)
    (eD eF eU eG uMax gMax : ℝ) (hm : ∀ i, 0 < m i) (hmInj : Function.Injective m)
    (hd : ∀ i, |diag i - diag' i| ≤ eD)
    (hf : ∀ i, |F i - F' i| ≤ eF)
    (hu : ∀ i, |u i - u' i| ≤ eU)
    (hg : ∀ i, |G i - G' i| ≤ eG)
    (hU : ∀ i, |u i| ≤ uMax) (hG : ∀ i, |G i| ≤ gMax)
    (i j : ι) :
    let price := eF + eU * gMax + (uMax + eU) * eG
    |seedMatrix m diag F u G i j - seedMatrix m diag' F' u' G' i j| ≤
      (if i = j then eD else 0) + price / |m i - m j| := by
  dsimp only
  by_cases hij : i = j
  · subst j
    simpa [seedMatrix, cauchyMatrix] using hd i
  have hu' (a : ι) : |u' a| ≤ uMax + eU := by
    rw [show u' a = u a - (u a - u' a) by ring]
    exact (abs_difference_le_add _ _).trans (add_le_add (hU a) (hu a))
  have heU : 0 ≤ eU := (abs_nonneg _).trans (hu i)
  have hUM : 0 ≤ uMax + eU := (abs_nonneg _).trans (hu' i)
  have hProd (a b : ι) :
      |u a * G b - u' a * G' b| ≤ eU * gMax + (uMax + eU) * eG := by
    rw [show u a * G b - u' a * G' b =
      (u a - u' a) * G b + u' a * (G b - G' b) by ring]
    refine (abs_add_le _ _).trans ?_
    simp only [abs_mul]
    exact add_le_add (mul_le_mul (hu a) (hG b) (abs_nonneg _) heU)
      (mul_le_mul (hu' a) (hg b) (abs_nonneg _) hUM)
  let price := eF + eU * gMax + (uMax + eU) * eG
  have hS : 0 < m i + m j := add_pos (hm i) (hm j)
  have hDiff : m i - m j ≠ 0 := sub_ne_zero.mpr (hmInj.ne hij)
  have hNum :
      |(m i * F j - F i * m j + (u i * (m j * G j) - (m i * G i) * u j)) -
        (m i * F' j - F' i * m j + (u' i * (m j * G' j) - (m i * G' i) * u' j))|
        ≤ (m i + m j) * price := by
    rw [show (m i * F j - F i * m j + (u i * (m j * G j) - (m i * G i) * u j)) -
        (m i * F' j - F' i * m j + (u' i * (m j * G' j) - (m i * G' i) * u' j)) =
        m i * ((F j - F' j) - (u j * G i - u' j * G' i)) +
        m j * ((u i * G j - u' i * G' j) - (F i - F' i)) by ring]
    refine (abs_add_le _ _).trans ?_
    rw [abs_mul, abs_mul, abs_of_pos (hm i), abs_of_pos (hm j), add_mul]
    refine add_le_add (mul_le_mul_of_nonneg_left ?_ (hm i).le)
      (mul_le_mul_of_nonneg_left ?_ (hm j).le)
    · exact (abs_difference_le_add _ _).trans (by simpa [price, add_assoc] using add_le_add (hf j) (hProd j i))
    · exact (abs_difference_le_add _ _).trans (by
        simpa only [price, add_assoc, add_comm, add_left_comm] using add_le_add (hProd i j) (hf i))
  have h10 : (1 : Fin 2) ≠ 0 := by decide
  simp only [seedMatrix, cauchyMatrix, hij, ite_false, zero_add, numerator, Fin.sum_univ_two,
    h10, ite_true]
  rw [← sub_div, abs_div, sq_sub_sq, abs_mul, abs_of_pos hS, ← div_div]
  apply div_le_div_of_nonneg_right _ (abs_nonneg _)
  apply (div_le_iff₀ hS).2
  calc
    _ ≤ (m i + m j) * price := hNum
    _ = _ := mul_comm _ _

/-- Uniform normalized source errors price the seed matrix in quadratic
form, ready to be added to the cumulative rounded-pivot error. -/
theorem abs_seedQuadratic_sub_le (m diag F u G diag' F' u' G' : ι → ℝ)
    (eD eF eU eG uMax gMax H : ℝ) (hm : ∀ i, 0 < m i) (hmInj : Function.Injective m)
    (hd : ∀ i, |diag i - diag' i| ≤ eD)
    (hf : ∀ i, |F i - F' i| ≤ eF)
    (hu : ∀ i, |u i - u' i| ≤ eU)
    (hg : ∀ i, |G i - G' i| ≤ eG)
    (hU : ∀ i, |u i| ≤ uMax) (hG : ∀ i, |G i| ≤ gMax)
    (hH : ∀ i, ∑ j, (|m i - m j|)⁻¹ ≤ H) (x : ι → ℝ) :
    let price := eF + eU * gMax + (uMax + eU) * eG
    |quadratic (seedMatrix m diag F u G) x - quadratic (seedMatrix m diag' F' u' G') x| ≤
      (eD + price * H) * ∑ i, (x i)^2 := by
  dsimp only
  let price := eF + eU * gMax + (uMax + eU) * eG
  let R : Matrix ι ι ℝ :=
    fun i j => (if i = j then eD else 0) + price / |m i - m j|
  apply abs_quadratic_sub_le_of_rowRadius _ _ R
  · exact abs_seed_entry_sub_le m diag F u G diag' F' u' G' eD eF eU eG uMax gMax
      hm hmInj hd hf hu hg hU hG
  · intro i j
    rcases eq_or_ne i j with rfl | hij
    · rfl
    simp only [R, hij, hij.symm, ite_false, abs_sub_comm]
  · intro i
    have hprice : 0 ≤ price := by
      unfold price
      have heF := (abs_nonneg _).trans (hf i)
      have heU := (abs_nonneg _).trans (hu i)
      have heG := (abs_nonneg _).trans (hg i)
      have hUM := (abs_nonneg _).trans (hU i)
      have hGM := (abs_nonneg _).trans (hG i)
      positivity
    have hDiag : (∑ j : ι, if i = j then eD else 0) = eD := by simp
    simp only [R, Finset.sum_add_distrib, hDiag, div_eq_mul_inv, ← Finset.mul_sum]
    exact add_le_add le_rfl (mul_le_mul_of_nonneg_left (hH i) hprice)


private theorem distanceRow_le_harmonic {n : ℕ} (s : ℕ) (i : Fin n) :
    (∑ j : Fin n, (|((s : ℝ) + i.val) - ((s : ℝ) + j.val)|)⁻¹) ≤
      2 * (harmonic n : ℝ) := by
  let f (j : Fin n) : ℝ := (|((s : ℝ) + i.val) - ((s : ℝ) + j.val)|)⁻¹
  let g (k : ℕ) : ℝ := (k : ℝ)⁻¹
  let before := Finset.univ.filter (fun j : Fin n => j.val < i.val)
  let after := Finset.univ.filter (fun j : Fin n => ¬j.val < i.val)
  have hbefore : (∑ j ∈ before, f j) ≤ ∑ k ∈ Finset.range n, g k := by
    refine Finset.sum_le_sum_of_injOn (fun j : Fin n => i.val - j.val) ?_ ?_ ?_ ?_
    · intro j hj k hk h
      have hj' : j.val < i.val := (Finset.mem_filter.mp hj).2
      have hk' : k.val < i.val := (Finset.mem_filter.mp hk).2
      change i.val - j.val = i.val - k.val at h
      exact Fin.ext (by omega)
    · intro k hk
      obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hk
      exact Finset.mem_range.mpr (by have hi := i.isLt; omega)
    · intro j hj
      have hj' : j.val ≤ i.val := (Finset.mem_filter.mp hj).2.le
      have hjR : (j.val : ℝ) ≤ i.val := by exact_mod_cast hj'
      apply le_of_eq
      simp only [f, g, Nat.cast_sub hj', add_sub_add_left_eq_sub, abs_of_nonneg (sub_nonneg.mpr hjR)]
    · intro k _ _
      exact inv_nonneg.mpr (by positivity)
  have hafter : (∑ j ∈ after, f j) ≤ ∑ k ∈ Finset.range n, g k := by
    refine Finset.sum_le_sum_of_injOn (fun j : Fin n => j.val - i.val) ?_ ?_ ?_ ?_
    · intro j hj k hk h
      have hj' : i.val ≤ j.val := Nat.le_of_not_gt (Finset.mem_filter.mp hj).2
      have hk' : i.val ≤ k.val := Nat.le_of_not_gt (Finset.mem_filter.mp hk).2
      change j.val - i.val = k.val - i.val at h
      exact Fin.ext (by omega)
    · intro k hk
      obtain ⟨j, _, rfl⟩ := Finset.mem_image.mp hk
      exact Finset.mem_range.mpr (by have hj := j.isLt; omega)
    · intro j hj
      have hj' : i.val ≤ j.val := Nat.le_of_not_gt (Finset.mem_filter.mp hj).2
      have hjR : (i.val : ℝ) ≤ j.val := by exact_mod_cast hj'
      apply le_of_eq
      simp only [f, g, Nat.cast_sub hj', add_sub_add_left_eq_sub, abs_of_nonpos (sub_nonpos.mpr hjR),
        neg_sub]
    · intro k _ _
      exact inv_nonneg.mpr (by positivity)
  have hg : (∑ k ∈ Finset.range n, g k) ≤ (harmonic n : ℝ) := by
    calc
      _ ≤ ∑ k ∈ Finset.range (n+1), g k :=
        Finset.sum_le_sum_of_subset_of_nonneg (Finset.range_mono (Nat.le_succ _))
          (fun k _ _ => inv_nonneg.mpr (by positivity))
      _ = _ := by simp [Finset.sum_range_succ', harmonic, g]
  change (∑ j, f j) ≤ _
  rw [← Finset.sum_filter_add_sum_filter_not Finset.univ (fun j : Fin n => j.val < i.val) f, two_mul]
  exact add_le_add (hbefore.trans hg) (hafter.trans hg)

/-- An ordinary reciprocal-separation budget for the 399936 retained
modes of the concrete candidate and all shorter consecutive runs. -/
theorem distanceRow_le_28 {n : ℕ} (hn : n ≤ 400000) (s : ℕ) (i : Fin n) :
    (∑ j : Fin n, (|((s + i.val : ℕ) : ℝ) - ((s + j.val : ℕ) : ℝ)|)⁻¹) ≤ 28 := by
  simp only [Nat.cast_add]
  refine (distanceRow_le_harmonic s i).trans ?_
  have hnR : (n : ℝ) ≤ 400000 := by exact_mod_cast hn
  have hnPos : 0 < (n : ℝ) := by exact_mod_cast Nat.zero_lt_of_lt i.isLt
  have hExp : (400000 : ℝ) < Real.exp 13 := by
    rw [show (13 : ℝ) = (13 : ℕ) * (1 : ℝ) by norm_num, Real.exp_nat_mul]
    exact (by norm_num : (400000 : ℝ) < (27 / 10) ^ 13).trans_le
      (pow_le_pow_left₀ (by norm_num) (by linarith [Real.exp_one_gt_d9]) 13)
  have hLog : Real.log (n : ℝ) < 13 := (Real.log_lt_iff_lt_exp hnPos).2 (hnR.trans_lt hExp)
  linarith only [harmonic_le_one_add_log n, hLog]

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSeedError
