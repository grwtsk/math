import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Finite translates of the real tent kernel

The overlap of length-`r` intervals gives the translation kernel
`max (r - |u-v|) 0`. Its finite quadratic form is the Lebesgue integral
of a square. This supplies the positive kernel factor in finite Weil
Gram comparisons; controlling the signed arithmetic form is a separate premise.
-/

open Set MeasureTheory
open scoped BigOperators

noncomputable section

namespace GRWTSK.XiWeilTentKernel

/-- Indicator of the interval translated to the point `u`. -/
def box (r u x : ℝ) : ℝ := (Icc u (u+r)).indicator (fun _ => (1 : ℝ)) x

private theorem box_mul (r u v x : ℝ) :
    box r u x * box r v x =
      (Icc (max u v) (min (u+r) (v+r))).indicator (fun _ => (1 : ℝ)) x := by
  rw [← Set.Icc_inter_Icc]
  by_cases hu : x ∈ Icc u (u+r) <;> by_cases hv : x ∈ Icc v (v+r) <;>
    simp [box, Set.indicator, hu, hv]

private theorem integrable_box_mul (r u v : ℝ) :
    Integrable (fun x => box r u x * box r v x) := by
  simp_rw [box_mul]
  exact (integrable_indicator_iff measurableSet_Icc).2 (integrableOn_const (by simp [Real.volume_Icc]))

/-- The tent value, including at disjoint endpoints, is the exact interval overlap. -/
theorem integral_box_mul (r u v : ℝ) :
    (∫ x : ℝ, box r u x * box r v x) = max (r - |u-v|) 0 := by
  simp_rw [box_mul]
  rw [integral_indicator_const 1 measurableSet_Icc, Real.volume_real_Icc]
  simp only [smul_eq_mul, mul_one]
  congr 1
  rcases le_total u v with h | h
  · rw [max_eq_right h, min_eq_left (add_le_add_left h _), abs_of_nonpos (sub_nonpos.mpr h)]
    ring
  · rw [max_eq_left h, min_eq_right (add_le_add_left h _), abs_of_nonneg (sub_nonneg.mpr h)]
    ring

private theorem sum_box_sq {ι : Type*} (s : Finset ι) (r : ℝ) (u c : ι → ℝ) (x : ℝ) :
    (∑ i ∈ s, c i * box r (u i) x)^2 =
      ∑ i ∈ s, ∑ j ∈ s, (c i * c j) * (box r (u i) x * box r (u j) x) := by
  rw [pow_two, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro i _
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro j _
  ring

/-- Exact Gram representation for an arbitrary finite configuration of translates. -/
theorem finite_tent_gram {ι : Type*} (s : Finset ι) (r : ℝ) (u c : ι → ℝ) :
    (∑ i ∈ s, ∑ j ∈ s, (c i * c j) * max (r - |u i-u j|) 0) =
      ∫ x : ℝ, (∑ i ∈ s, c i * box r (u i) x)^2 := by
  classical
  let f (i j : ι) (x : ℝ) := (c i * c j) * (box r (u i) x * box r (u j) x)
  have hf (i j : ι) : Integrable (f i j) :=
    (integrable_box_mul r (u i) (u j)).const_mul _
  simp_rw [sum_box_sq s r u c]
  rw [integral_finsetSum s (fun i _ => integrable_finsetSum s (fun j _ => hf i j))]
  apply Finset.sum_congr rfl
  intro i _
  rw [integral_finsetSum s (fun j _ => hf i j)]
  apply Finset.sum_congr rfl
  intro j _
  dsimp [f]
  rw [integral_const_mul, integral_box_mul]

/-- Every finite real quadratic form of the translated tent is nonnegative. -/
theorem finite_tent_nonneg {ι : Type*} (s : Finset ι) (r : ℝ) (u c : ι → ℝ) :
    0 ≤ ∑ i ∈ s, ∑ j ∈ s, (c i * c j) * max (r - |u i-u j|) 0 := by
  rw [finite_tent_gram]
  exact integral_nonneg fun _ => sq_nonneg _

/-- The finite tent matrix is positive semidefinite in Mathlib's matrix order. -/
theorem tent_matrix_posSemidef {ι : Type*} [Fintype ι] (r : ℝ) (u : ι → ℝ) :
    (Matrix.of (fun i j => max (r - |u i-u j|) 0)).PosSemidef := by
  classical
  apply Matrix.posSemidef_iff_dotProduct_mulVec.mpr
  constructor
  · ext i j
    simp [Matrix.conjTranspose_apply, abs_sub_comm]
  · intro c
    simpa only [Matrix.mulVec, dotProduct, Pi.star_apply, star_trivial, Matrix.of_apply,
      Finset.mul_sum, mul_comm, mul_left_comm, mul_assoc] using
      finite_tent_nonneg Finset.univ r u c

/-- At separated centers the Gram form is exactly diagonal at this scale. -/
theorem finite_tent_gram_of_separated {ι : Type*} (s : Finset ι) {r : ℝ} (hr : 0 ≤ r)
    (u c : ι → ℝ) (hsep : ∀ i ∈ s, ∀ j ∈ s, i ≠ j → r ≤ |u i-u j|) :
    (∑ i ∈ s, ∑ j ∈ s, (c i * c j) * max (r - |u i-u j|) 0) =
      r * ∑ i ∈ s, c i ^ 2 := by
  classical
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i hi
  rw [Finset.sum_eq_single i]
  · simp [max_eq_left hr, pow_two, mul_comm]
  · intro j hj hji
    simp [max_eq_right (sub_nonpos.mpr (hsep i hi j hj hji.symm))]
  · exact fun h => (h hi).elim

/-- Distinct translates of a positive-width interval are linearly independent in the
Lebesgue square norm. The first nonzero coefficient is visible on an open subinterval. -/
theorem finite_tent_pos {ι : Type*} (s : Finset ι) {r : ℝ} (hr : 0 < r)
    (u c : ι → ℝ) (hu : Set.InjOn u (s : Set ι)) (hc : ∃ i ∈ s, c i ≠ 0) :
    0 < ∑ i ∈ s, ∑ j ∈ s, (c i * c j) * max (r - |u i-u j|) 0 := by
  classical
  let t := s.filter fun i => c i ≠ 0
  have ht : t.Nonempty := by
    obtain ⟨i, hi, hci⟩ := hc
    exact ⟨i, Finset.mem_filter.mpr ⟨hi, hci⟩⟩
  obtain ⟨i, hi, hmin⟩ := t.exists_min_image u ht
  obtain ⟨his, hci⟩ := Finset.mem_filter.mp hi
  let gap (j : ι) := if u i < u j then u j-u i else r
  let d := min r (t.inf' ht gap)
  have hd : 0 < d := lt_min hr ((Finset.lt_inf'_iff ht).mpr fun j _ => by
    unfold gap
    split <;> first | assumption | linarith)
  let J := Ioo (u i) (u i+d)
  have hval (x : ℝ) (hx : x ∈ J) : (∑ j ∈ s, c j * box r (u j) x) = c i := by
    have hx₁ := hx.1
    have hx₂ := hx.2
    have hdr : d ≤ r := min_le_left _ _
    rw [Finset.sum_eq_single i]
    · have hx' : x ∈ Icc (u i) (u i+r) := ⟨hx₁.le, by linarith⟩
      simp [box, hx']
    · intro j hjs hji
      by_cases hjc : c j = 0
      · simp [hjc]
      have hj : j ∈ t := Finset.mem_filter.mpr ⟨hjs, hjc⟩
      have huij : u i < u j := lt_of_le_of_ne (hmin j hj) (fun h => hji (hu his hjs h).symm)
      have hdj : d ≤ u j-u i := calc
        d ≤ t.inf' ht gap := min_le_right _ _
        _ ≤ gap j := Finset.inf'_le gap hj
        _ = u j-u i := by simp [gap, huij]
      have hx' : x ∉ Icc (u j) (u j+r) := fun h => (not_le_of_gt (by linarith : x < u j)) h.1
      simp [box, hx']
    · exact fun h => (h his).elim
  rw [finite_tent_gram]
  let I (x : ℝ) := J.indicator (fun _ => c i ^ 2) x
  have hint : Integrable I :=
    (integrable_indicator_iff measurableSet_Ioo).2 (integrableOn_const (by simp [Real.volume_Ioo]))
  have hsint : Integrable (fun x => (∑ j ∈ s, c j * box r (u j) x)^2) := by
    simp_rw [sum_box_sq]
    exact integrable_finsetSum _ fun j _ => integrable_finsetSum _ fun k _ =>
      (integrable_box_mul r (u j) (u k)).const_mul _
  have hbound : (∫ x, I x) ≤ ∫ x, (∑ j ∈ s, c j * box r (u j) x)^2 := by
    apply integral_mono hint hsint
    intro x
    by_cases hx : x ∈ J
    · simp [I, Set.indicator_of_mem hx, hval x hx]
    · simpa [I, Set.indicator_of_notMem hx] using sq_nonneg (∑ j ∈ s, c j * box r (u j) x)
  apply lt_of_lt_of_le _ hbound
  dsimp [I, J]
  rw [integral_indicator_const _ measurableSet_Ioo, Real.volume_real_Ioo_of_le (by linarith), smul_eq_mul]
  exact mul_pos (by linarith) (sq_pos_of_ne_zero hci)

/-- Positive width and injective centers give a strictly positive definite finite matrix. -/
theorem tent_matrix_posDef {ι : Type*} [Fintype ι] {r : ℝ} (hr : 0 < r)
    (u : ι → ℝ) (hu : Function.Injective u) :
    (Matrix.of (fun i j => max (r - |u i-u j|) 0)).PosDef := by
  classical
  apply Matrix.PosDef.of_dotProduct_mulVec_pos (tent_matrix_posSemidef r u).1
  intro c hc
  have hw : ∃ i ∈ Finset.univ, c i ≠ 0 := by
    by_contra! h
    exact hc (funext fun i => h i (Finset.mem_univ i))
  simpa only [Matrix.mulVec, dotProduct, Pi.star_apply, star_trivial, Matrix.of_apply,
    Finset.mul_sum, mul_comm, mul_left_comm, mul_assoc] using
    finite_tent_pos Finset.univ hr u c hu.injOn hw

end GRWTSK.XiWeilTentKernel
