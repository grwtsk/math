/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm

/-!
# Exponentially weighted row bounds for the literal prime energy

For two supported neighbors the weighted square bounds twice the absolute
product by the sum of their squares weighted by reciprocal ratios. Lebesgue
translation assigns those charges to the two orientations of each prime shift.
This gives a pointwise row bound for the literal real prime quadratic form.
At slope zero the weights are the two support indicators. At a nonnegative
slope the ratio is bounded by the exponential of the shift magnitude, so the
weighted squares are integrable on the same `L²` domain.

The row bound below is a premise for a numerical application. The gamma term,
pole, and complete high floor use separate source estimates. Independent
analytical review is pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedPrimeNorm

open LowSchur OddSineForm

/-- Charge at `t` from the supported neighbor at `t + r` using the weight
`exp (a * |t|)`. -/
def neighbor (T a r t : ℝ) : ℝ := by
  classical
  exact if t + r ∈ Icc (-T) T then Real.exp (a * (|t + r| - |t|)) else 0

def orientations (T a r t : ℝ) : ℝ := neighbor T a r t + neighbor T a (-r) t

/-- Both oriented translations in each supported prime row. -/
def rowMass (T a t : ℝ) : ℝ :=
  ∑ q ∈ activePrimePowers T, primeWeight q * orientations T a (Real.log q) t

theorem neighbor_nonneg (T a r t : ℝ) : 0 ≤ neighbor T a r t := by
  classical
  unfold neighbor
  split_ifs <;> positivity

private theorem neighbor_neg (T a r t : ℝ) : neighbor T a (-r) (-t) = neighbor T a r t := by
  classical
  have h : -(t + r) ∈ Icc (-T) T ↔ t + r ∈ Icc (-T) T := by
    simp only [mem_Icc]
    constructor <;> intro h <;> constructor <;> linarith [h.1, h.2]
  simp only [neighbor, ← neg_add, h, abs_neg]

theorem rowMass_neg (T a t : ℝ) : rowMass T a (-t) = rowMass T a t := by
  unfold rowMass
  apply Finset.sum_congr rfl
  intro q _
  rw [orientations, orientations, neighbor_neg,
    show neighbor T a (Real.log q) (-t) = neighbor T a (-Real.log q) t by
      simpa only [neg_neg] using neighbor_neg T a (-Real.log q) t, add_comm]

private theorem measurable_neighbor (T a r : ℝ) : Measurable (neighbor T a r) := by
  classical
  apply Measurable.ite (measurableSet_Icc.preimage (measurable_id.add_const r))
  · exact (show Continuous (fun t : ℝ => Real.exp (a * (|t + r| - |t|))) by fun_prop).measurable
  · exact measurable_const

private theorem neighbor_le {a : ℝ} (ha : 0 ≤ a) (T r t : ℝ) :
    neighbor T a r t ≤ Real.exp (a * |r|) := by
  classical
  unfold neighbor
  split_ifs
  · exact Real.exp_le_exp.mpr
      (mul_le_mul_of_nonneg_left (sub_le_iff_le_add.mpr (by simpa [add_comm] using abs_add_le t r)) ha)
  · positivity

private theorem integrable_neighbor_mul_sq {a : ℝ} (ha : 0 ≤ a)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume) (T r : ℝ) :
    Integrable (fun t => neighbor T a r t * f t ^ 2) := by
  apply (hf.integrable_sq.const_mul (Real.exp (a * |r|))).mono'
    ((measurable_neighbor T a r).aestronglyMeasurable.mul (hf.aestronglyMeasurable.pow 2))
  exact Eventually.of_forall (fun t => by
    change ‖neighbor T a r t * f t ^ 2‖ ≤ Real.exp (a * |r|) * f t ^ 2
    rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (neighbor_nonneg T a r t) (sq_nonneg _))]
    exact mul_le_mul_of_nonneg_right (neighbor_le ha T r t) (sq_nonneg _))

private theorem weighted_product (d x y : ℝ) :
    2 * |x * y| ≤ Real.exp d * x ^ 2 + Real.exp (-d) * y ^ 2 := by
  have hx : Real.exp (d / 2) ^ 2 = Real.exp d := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hy : Real.exp (-d / 2) ^ 2 = Real.exp (-d) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hxy : Real.exp (d / 2) * Real.exp (-d / 2) = 1 := by
    rw [← Real.exp_add, show d / 2 + -d / 2 = 0 by ring, Real.exp_zero]
  have hcross :
      (Real.exp (d / 2) * |x|) * (Real.exp (-d / 2) * |y|) = |x * y| := by
    rw [mul_mul_mul_comm, hxy, one_mul, abs_mul]
  have h := sq_nonneg (Real.exp (d / 2) * |x| - Real.exp (-d / 2) * |y|)
  rw [sub_sq, show 2 * (Real.exp (d / 2) * |x|) * (Real.exp (-d / 2) * |y|) =
    2 * ((Real.exp (d / 2) * |x|) * (Real.exp (-d / 2) * |y|)) by ring,
    hcross, mul_pow, mul_pow, hx, hy, sq_abs, sq_abs] at h
  linarith only [h]

private theorem abs_correlation_le_orientations {T a : ℝ} (ha : 0 ≤ a)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0) (r : ℝ) :
    2 * |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, orientations T a r t * f t ^ 2 := by
  classical
  let F := fun t : ℝ => neighbor T a r t * f t ^ 2
  let G := fun t : ℝ => neighbor T a (-r) t * f t ^ 2
  have hF : Integrable F := integrable_neighbor_mul_sq ha hf T r
  have hG : Integrable G := integrable_neighbor_mul_sq ha hf T (-r)
  have hTrans := measurePreserving_add_right (volume : Measure ℝ) r
  have hGT : Integrable (fun t => G (t + r)) := hTrans.integrable_comp_of_integrable hG
  have hpoint : ∀ᵐ t : ℝ, ‖f t * f (t + r)‖ ≤ (F t + G (t + r)) / 2 := by
    filter_upwards [hs, hTrans.quasiMeasurePreserving.ae hs] with t ht htr
    have hback : t + r + -r = t := by ring
    have hnonneg : 0 ≤ (F t + G (t + r)) / 2 :=
      div_nonneg (add_nonneg (mul_nonneg (neighbor_nonneg T a r t) (sq_nonneg _))
        (mul_nonneg (neighbor_nonneg T a (-r) (t + r)) (sq_nonneg _))) (by norm_num)
    by_cases hp : t ∈ Icc (-T) T
    · by_cases hm : t + r ∈ Icc (-T) T
      · simp only [F, G, neighbor, hp, hm, hback, ite_true, Real.norm_eq_abs]
        have hneg : a * (|t| - |t + r|) = -(a * (|t + r| - |t|)) := by ring
        rw [hneg]
        linarith only [weighted_product (a * (|t + r| - |t|)) (f t) (f (t + r))]
      · simpa only [htr hm, mul_zero, norm_zero] using hnonneg
    · simpa only [ht hp, zero_mul, norm_zero] using hnonneg
  have hbound := norm_integral_le_of_norm_le ((hF.add hGT).div_const 2)
    (by simpa only [Pi.add_apply] using hpoint)
  simp only [Real.norm_eq_abs, Pi.add_apply] at hbound
  rw [integral_div, integral_add hF hGT, integral_add_right_eq_self G r] at hbound
  simp only [orientations, add_mul]
  change 2 * |∫ t : ℝ, f t * f (t + r)| ≤ ∫ t : ℝ, F t + G t
  rw [integral_add hF hG]
  linarith only [hbound]

/-- A pointwise weighted row budget controls the literal prime energy on
the entire supported `L²` domain. -/
theorem abs_primeEnergy_le {T a B : ℝ} (ha : 0 ≤ a)
    {f : ℝ → ℝ} (hf : MemLp f 2 volume)
    (hs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → f t = 0)
    (hbudget : ∀ t ∈ Icc (-T) T, rowMass T a t ≤ B) :
    |primeEnergy T f| ≤ B * ∫ t : ℝ, f t ^ 2 := by
  let C (q : ℕ) := ∫ t : ℝ, f t * f (t + Real.log q)
  have hTerm (q : ℕ) : Integrable (fun t : ℝ => primeWeight q *
      (orientations T a (Real.log q) t * f t ^ 2)) := by
    simp only [orientations, add_mul]
    exact ((integrable_neighbor_mul_sq ha hf T _).add
      (integrable_neighbor_mul_sq ha hf T _)).const_mul _
  have hRow : Integrable (fun t : ℝ => rowMass T a t * f t ^ 2) := by
    simpa only [rowMass, Finset.sum_mul, mul_assoc] using
      integrable_finsetSum (activePrimePowers T) (fun q _ => hTerm q)
  change |2 * ∑ q ∈ activePrimePowers T, primeWeight q * C q| ≤ _
  rw [abs_mul, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2)]
  calc
    _ ≤ 2 * ∑ q ∈ activePrimePowers T, |primeWeight q * C q| :=
      mul_le_mul_of_nonneg_left (Finset.abs_sum_le_sum_abs _ _) (by norm_num)
    _ ≤ ∑ q ∈ activePrimePowers T, primeWeight q *
        (∫ t : ℝ, orientations T a (Real.log q) t * f t ^ 2) := by
      rw [Finset.mul_sum]
      apply Finset.sum_le_sum
      intro q _
      rw [abs_mul, abs_of_nonneg (primeWeight_nonneg q), mul_left_comm]
      exact (mul_le_mul_of_nonneg_left (abs_correlation_le_orientations ha hf hs (Real.log q))
        (primeWeight_nonneg q))
    _ = ∫ t : ℝ, rowMass T a t * f t ^ 2 := by
      simp only [rowMass, Finset.sum_mul, mul_assoc]
      rw [integral_finsetSum _ (fun q _ => hTerm q)]
      simp only [integral_const_mul]
    _ ≤ _ := by
      rw [← integral_const_mul]
      apply integral_mono_ae hRow (hf.integrable_sq.const_mul _)
      filter_upwards [hs] with t ht
      by_cases h : t ∈ Icc (-T) T
      · exact mul_le_mul_of_nonneg_right (hbudget t h) (sq_nonneg _)
      · simp [ht h]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddWeightedPrimeNorm
