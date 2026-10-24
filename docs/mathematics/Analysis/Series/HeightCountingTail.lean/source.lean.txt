/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Algebra.BigOperators.Field
import Mathlib.Analysis.Calculus.Deriv.Mul
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Normed.Group.InfiniteSum
import Mathlib.Topology.Algebra.InfiniteSum.Real
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

set_option autoImplicit false

/-!
# A complete inverse-square tail from finite counting bounds

The hypotheses control every finite subfamily, not a sampled list. A finite
layer-cake identity retains its terminal boundary. Integrating the counting
majorant bounds every finite inverse-square sum by the same constant; Mathlib
then supplies summability without assuming it or using a default value of tsum.

Weights are nonnegative reals. A zeta application must supply the actual zero
indexing, both height signs, analytic multiplicities and a proved counting bound.
Nothing here identifies a parameter as a zero. SOURCE_ONLY / NOT_RUN /
NOT_KERNEL_AUDITED. No first-Riesz explicit formula or prime claim is proved.
-/

namespace GRWTSK.Analysis.Series.HeightCountingTail

open MeasureTheory Set
open scoped BigOperators

noncomputable section

variable {ι : Type*}

/-- Right-closed weighted count on one exact finite set. -/
def finiteCountingMass (S : Finset ι) (height weight : ι → ℝ) (t : ℝ) : ℝ := by
  classical
  exact ∑ i ∈ S, if height i ≤ t then weight i else 0

/-- The antiderivative evaluation used by the complete tail bound. -/
def inverseSquareBudget (T : ℝ) : ℝ := 2 * (Real.log T + 1) / T

theorem finiteCountingMass_eq_total (S : Finset ι) (height weight : ι → ℝ)
    (R : ℝ) (hR : ∀ i ∈ S, height i ≤ R) :
    finiteCountingMass S height weight R = ∑ i ∈ S, weight i := by
  classical
  unfold finiteCountingMass
  exact Finset.sum_congr rfl (fun i hi => if_pos (hR i hi))

/-- Reindexing does not change weights or merge equal-height records. -/
theorem finiteCountingMass_map {κ : Type*} (e : κ ↪ ι) (S : Finset κ)
    (height weight : ι → ℝ) (t : ℝ) :
    finiteCountingMass (S.map e) height weight t =
      finiteCountingMass S (fun i => height (e i)) (fun i => weight (e i)) t := by
  classical
  simp only [finiteCountingMass, Finset.sum_map]

/-- A genuinely covering finite inventory supplies the all-finite-subsets count
hypothesis. Extra nonnegative records are safe for this upper bound only. -/
theorem finiteCountingMass_le_cover (S C : Finset ι) (height weight : ι → ℝ)
    (t : ℝ) (hw : ∀ i, 0 ≤ weight i)
    (hcover : ∀ i, height i ≤ t → i ∈ C) :
    finiteCountingMass S height weight t ≤ ∑ i ∈ C, weight i := by
  classical
  rw [finiteCountingMass, ← Finset.sum_filter]
  exact Finset.sum_le_sum_of_subset_of_nonneg
    (fun i hi => hcover i (Finset.mem_filter.mp hi).2) (fun i _ _ => hw i)

private theorem inverseCube_continuousOn {a b : ℝ} (ha : 0 < a) :
    ContinuousOn (fun t : ℝ => 2 / t ^ 3) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
  have ht3 : t ^ 3 ≠ 0 := pow_ne_zero 3 ht0
  have hc : ContinuousAt (fun t : ℝ => 2 / t ^ 3) t := by fun_prop (disch := assumption)
  exact hc.continuousWithinAt

private theorem integral_inverseCube {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (∫ t in a..b, 2 / t ^ 3) = 1 / a ^ 2 - 1 / b ^ 2 := by
  have hd : ∀ t ∈ Icc a b,
      HasDerivAt (fun u : ℝ => -(u ^ 2)⁻¹) (2 / t ^ 3) t := by
    intro t ht
    have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
    have h := (((hasDerivAt_id t).pow 2).inv (pow_ne_zero 2 ht0)).neg
    convert h using 1 <;> first | rfl | (field_simp [ht0]; simp only [Pi.pow_apply, id_eq]; ring)
  have hi := ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hab (inverseCube_continuousOn ha)
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := b) (f := fun u : ℝ => -(u ^ 2)⁻¹)
    (f' := fun t : ℝ => 2 / t ^ 3)
    (fun t ht => hd t ((uIcc_of_le hab) ▸ ht)) hi
  calc
    _ = -(b ^ 2)⁻¹ - -(a ^ 2)⁻¹ := h
    _ = _ := by ring

private theorem logDensity_continuousOn {a b : ℝ} (ha : 0 < a) :
    ContinuousOn (fun t : ℝ => 2 * Real.log t / t ^ 2) (Icc a b) := by
  intro t ht
  have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
  have ht2 : t ^ 2 ≠ 0 := pow_ne_zero 2 ht0
  have hc : ContinuousAt (fun t : ℝ => 2 * Real.log t / t ^ 2) t := by fun_prop (disch := assumption)
  exact hc.continuousWithinAt

/-- Exact finite evaluation; no limit at infinity is assumed. -/
theorem integral_logDensity {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    (∫ t in a..b, 2 * Real.log t / t ^ 2) =
      inverseSquareBudget a - inverseSquareBudget b := by
  have hd : ∀ t ∈ Icc a b,
      HasDerivAt (fun u : ℝ => -(2 * (Real.log u + 1) / u))
        (2 * Real.log t / t ^ 2) t := by
    intro t ht
    have ht0 : t ≠ 0 := ne_of_gt (ha.trans_le ht.1)
    have h := ((((Real.hasDerivAt_log ht0).add_const 1).const_mul 2).div
      (hasDerivAt_id t) ht0).neg
    convert h using 1 <;> first | rfl | (field_simp [ht0]; simp only [id_eq]; ring)
  have hi := ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hab (logDensity_continuousOn ha)
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (a := a) (b := b) (f := fun u : ℝ => -(2 * (Real.log u + 1) / u))
    (f' := fun t : ℝ => 2 * Real.log t / t ^ 2)
    (fun t ht => hd t ((uIcc_of_le hab) ▸ ht)) hi
  simpa only [inverseSquareBudget, neg_sub_neg] using h

private theorem countingDensity_eq_sum (S : Finset ι) (height weight : ι → ℝ)
    (t : ℝ) :
    2 * finiteCountingMass S height weight t / t ^ 3 =
      ∑ i ∈ S, if height i ≤ t then 2 * weight i / t ^ 3 else 0 := by
  classical
  simp only [finiteCountingMass, Finset.mul_sum, Finset.sum_div]
  apply Finset.sum_congr rfl
  intro i _
  split_ifs <;> simp

private theorem stepDensity_intervalIntegrable (c w : ℝ) {a b : ℝ}
    (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable (fun t => if c ≤ t then 2 * w / t ^ 3 else 0) volume a b := by
  have hi : IntervalIntegrable (fun t : ℝ => 2 * w / t ^ 3) volume a b := by
    have h := (ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hab
      (inverseCube_continuousOn ha)).const_mul w
    have heq : (fun t : ℝ => 2 * w / t ^ 3) =
        (fun t : ℝ => w * (2 / t ^ 3)) := by funext t; ring
    rw [heq]
    exact h
  change IntervalIntegrable ((Ici c).indicator (fun t : ℝ => 2 * w / t ^ 3)) volume a b
  exact ⟨hi.1.indicator measurableSet_Ici, hi.2.indicator measurableSet_Ici⟩

private theorem countingDensity_intervalIntegrable (S : Finset ι)
    (height weight : ι → ℝ) {a b : ℝ} (ha : 0 < a) (hab : a ≤ b) :
    IntervalIntegrable (fun t => 2 * finiteCountingMass S height weight t / t ^ 3)
      volume a b := by
  have h := IntervalIntegrable.sum S (fun i _ =>
    stepDensity_intervalIntegrable (height i) (weight i) ha hab)
  have he : (∑ i ∈ S, (fun t : ℝ => if height i ≤ t then 2 * weight i / t ^ 3 else 0)) =
      (fun t => 2 * finiteCountingMass S height weight t / t ^ 3) := by
    funext t
    simp only [Finset.sum_apply, countingDensity_eq_sum]
  rw [he] at h
  exact h

/-- Finite partial summation with its terminal boundary kept exactly. All
selected heights are strictly beyond T and at most R. -/
theorem finite_inverseSquare_identity (S : Finset ι) (height weight : ι → ℝ)
    (T R : ℝ) (hT : 0 < T) (hTR : T ≤ R)
    (hlower : ∀ i ∈ S, T < height i) (hupper : ∀ i ∈ S, height i ≤ R) :
    (∑ i ∈ S, weight i / height i ^ 2) =
      (∑ i ∈ S, weight i) / R ^ 2 +
        ∫ t in T..R, 2 * finiteCountingMass S height weight t / t ^ 3 := by
  classical
  have hstep : ∀ i ∈ S,
      (∫ t in T..R, if height i ≤ t then 2 * weight i / t ^ 3 else 0) =
        weight i / height i ^ 2 - weight i / R ^ 2 := by
    intro i hi
    have hlow := hlower i hi
    have hup := hupper i hi
    have hset : Ici (height i) ∩ Ioc T R = Icc (height i) R := by
      ext t
      simp only [mem_inter_iff, mem_Ici, mem_Ioc, mem_Icc]
      constructor
      · exact fun ht => ⟨ht.1, ht.2.2⟩
      · exact fun ht => ⟨ht.1, hlow.trans_le ht.1, ht.2⟩
    change (∫ t in T..R, (Ici (height i)).indicator
      (fun t : ℝ => 2 * weight i / t ^ 3) t) = _
    rw [intervalIntegral.integral_of_le hTR, integral_indicator measurableSet_Ici,
      Measure.restrict_restrict measurableSet_Ici, hset, integral_Icc_eq_integral_Ioc,
      ← intervalIntegral.integral_of_le hup]
    have hf : (fun t : ℝ => 2 * weight i / t ^ 3) =
        (fun t : ℝ => weight i * (2 / t ^ 3)) := by funext t; ring
    rw [hf, intervalIntegral.integral_const_mul, integral_inverseCube (hT.trans hlow) hup]
    ring
  have hint : (∫ t in T..R, 2 * finiteCountingMass S height weight t / t ^ 3) =
      (∑ i ∈ S, weight i / height i ^ 2) - (∑ i ∈ S, weight i) / R ^ 2 := by
    simp_rw [countingDensity_eq_sum]
    rw [intervalIntegral.integral_finsetSum
      (fun i _ => stepDensity_intervalIntegrable (height i) (weight i) hT hTR)]
    rw [Finset.sum_congr rfl hstep]
    rw [Finset.sum_sub_distrib, Finset.sum_div]
  linarith

/-- The terminal boundary and the integrated majorant combine to a favorable
negative term. Dropping the positive boundary before integrating is invalid. -/
theorem finite_inverseSquare_le_with_boundary (S : Finset ι)
    (height weight : ι → ℝ) (T R : ℝ) (hT : 1 ≤ T) (hTR : T ≤ R)
    (hlower : ∀ i ∈ S, T < height i) (hupper : ∀ i ∈ S, height i ≤ R)
    (hcount : ∀ t ∈ Icc T R, finiteCountingMass S height weight t ≤ t * Real.log t) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤
      inverseSquareBudget T - (Real.log R + 2) / R := by
  have hT0 : 0 < T := lt_of_lt_of_le zero_lt_one hT
  have hR0 : 0 < R := hT0.trans_le hTR
  have hcR := hcount R ⟨hTR, le_rfl⟩
  rw [finiteCountingMass_eq_total S height weight R hupper] at hcR
  have hi := intervalIntegral.integral_mono_on hTR
    (countingDensity_intervalIntegrable S height weight hT0 hTR)
    (ContinuousOn.intervalIntegrable_of_Icc (μ := volume) hTR (logDensity_continuousOn hT0))
    (fun t ht => by
      have ht0 : 0 < t := hT0.trans_le ht.1
      calc
        2 * finiteCountingMass S height weight t / t ^ 3 ≤
            2 * (t * Real.log t) / t ^ 3 :=
          div_le_div_of_nonneg_right
            (mul_le_mul_of_nonneg_left (hcount t ht) (by norm_num)) (pow_nonneg ht0.le 3)
        _ = 2 * Real.log t / t ^ 2 := by field_simp [ne_of_gt ht0])
  rw [integral_logDensity hT0 hTR] at hi
  rw [finite_inverseSquare_identity S height weight T R hT0 hTR hlower hupper]
  calc
    _ ≤ (R * Real.log R) / R ^ 2 +
        (inverseSquareBudget T - inverseSquareBudget R) :=
      add_le_add (div_le_div_of_nonneg_right hcR (sq_nonneg R)) hi
    _ = _ := by unfold inverseSquareBudget; field_simp [ne_of_gt hT0, ne_of_gt hR0]; ring

private theorem finite_height_upper (S : Finset ι) (height : ι → ℝ) (T : ℝ) :
    ∃ R : ℝ, T ≤ R ∧ ∀ i ∈ S, height i ≤ R := by
  classical
  induction S using Finset.induction_on with
  | empty => exact ⟨T, le_rfl, by simp⟩
  | @insert i S hi ih =>
    obtain ⟨R, hTR, hR⟩ := ih
    refine ⟨max R (height i), hTR.trans (le_max_left _ _), ?_⟩
    intro j hj
    rcases Finset.mem_insert.mp hj with rfl | hj
    · exact le_max_right _ _
    · exact (hR j hj).trans (le_max_left _ _)

/-- Every finite subset has the same upper bound, with no chosen enumeration. -/
theorem finite_inverseSquare_le (S : Finset ι) (height weight : ι → ℝ)
    (T : ℝ) (hT : 1 ≤ T) (hlower : ∀ i ∈ S, T < height i)
    (hcount : ∀ t, T ≤ t → finiteCountingMass S height weight t ≤ t * Real.log t) :
    (∑ i ∈ S, weight i / height i ^ 2) ≤ inverseSquareBudget T := by
  classical
  obtain ⟨R, hTR, hupper⟩ := finite_height_upper S height T
  have h := finite_inverseSquare_le_with_boundary S height weight T R hT hTR
    hlower hupper (fun t ht => hcount t ht.1)
  have hR1 : 1 ≤ R := hT.trans hTR
  have hnonneg : 0 ≤ (Real.log R + 2) / R :=
    div_nonneg (by have := Real.log_nonneg hR1; linarith)
      (zero_le_one.trans hR1)
  exact h.trans (sub_le_self _ hnonneg)

/-- Uniform finite counting bounds derive summability; no tsum convention is
used to stand in for convergence. -/
theorem inverseSquare_summable_and_bound (height weight : ι → ℝ)
    (T : ℝ) (hT : 1 ≤ T) (hw : ∀ i, 0 ≤ weight i)
    (hlower : ∀ i, T < height i)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ t * Real.log t) :
    Summable (fun i => weight i / height i ^ 2) ∧
      (∑' i, weight i / height i ^ 2) ≤ inverseSquareBudget T := by
  have hn : 0 ≤ (fun i => weight i / height i ^ 2) :=
    fun i => div_nonneg (hw i) (sq_nonneg _)
  have hf := fun S => finite_inverseSquare_le S height weight T hT
    (fun i _ => hlower i) (hcount S)
  exact ⟨summable_of_sum_le hn hf, Real.tsum_le_of_sum_le hn hf⟩

set_option linter.unusedVariables false in
/-- Absolute convergence and a norm bound are conclusions, not premises. -/
theorem dominated_family_summable_and_bound {E : Type*}
    [NormedAddCommGroup E] [CompleteSpace E]
    (height weight : ι → ℝ) (f : ι → E) (T C : ℝ)
    (hT : 1 ≤ T) (hC : 0 ≤ C) (hw : ∀ i, 0 ≤ weight i)
    (hlower : ∀ i, T < height i)
    (hcount : ∀ S : Finset ι, ∀ t, T ≤ t →
      finiteCountingMass S height weight t ≤ t * Real.log t)
    (hdom : ∀ i, ‖f i‖ ≤ C * (weight i / height i ^ 2)) :
    Summable (fun i => ‖f i‖) ∧ Summable f ∧
      ‖∑' i, f i‖ ≤ C * inverseSquareBudget T := by
  have hf : ∀ S : Finset ι, (∑ i ∈ S, ‖f i‖) ≤ C * inverseSquareBudget T := by
    intro S
    calc
      _ ≤ ∑ i ∈ S, C * (weight i / height i ^ 2) := Finset.sum_le_sum (fun i _ => hdom i)
      _ = C * ∑ i ∈ S, weight i / height i ^ 2 := by rw [Finset.mul_sum]
      _ ≤ _ := mul_le_mul_of_nonneg_left
        (finite_inverseSquare_le S height weight T hT (fun i _ => hlower i) (hcount S)) hC
  have hn := summable_of_sum_le (fun i => norm_nonneg (f i)) hf
  exact ⟨hn, hn.of_norm, (norm_tsum_le_tsum_norm hn).trans
    (Real.tsum_le_of_sum_le (fun i => norm_nonneg (f i)) hf)⟩

end
end GRWTSK.Analysis.Series.HeightCountingTail
