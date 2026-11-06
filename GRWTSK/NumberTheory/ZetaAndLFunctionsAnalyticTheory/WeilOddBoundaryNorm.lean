/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddKernelSineTransform
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Domination of the literal odd boundary-periodization kernel

This is the odd positive-half kernel from Sections 2–3 of
weil-periodic-boundary.md (2026-11-04). The signed kernel is minus the
sum of the positive terms 4 sinh(α t) sinh(α s)/(exp(2 α T)-1),
where α = 2j+1/2. For interior t,s, factor both hyperbolic sines.
The product of the resulting factors is at most 1-exp(-2 α T).
Cancelling this positive denominator gives the exponential with distance
(T-t)+(T-s). Its sum is the literal base gamma kernel. Finally
1-exp(-2r) ≥ 1-exp(-r) = 2 exp(-r/2) sinh(r/2) ≥ r exp(-r/2).
This retains the endpoint singularity as a Carleman majorant.

For the weight x^(-1/2), split at y=x. The two integrable upper
bounds y^(-1/2)/x and y^(-3/2) each integrate to 2 x^(-1/2) on
their respective pieces. Reflect the half interval to use this row
bound at x=T-t. The scalar weighted product inequality and Fubini
then give absolute integrability and a quadratic-form loss of four
times the squared L² norm, uniformly in T.

The negative odd sign is part of the source formula. Whole-source parity
identification and operator-domain comparison are separate. Independent
mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryNorm

open OddRootProjection OddKernelSineTransform

/-- Positive magnitude of each summand of the literal odd half kernel. -/
def positiveTerm (T t s : ℝ) (j : ℕ) : ℝ :=
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1)

/-- Signed odd boundary kernel on the positive half interval. -/
def oddKernel (T t s : ℝ) : ℝ := -(∑' j : ℕ, positiveTerm T t s j)

/-- Each periodic image summand returns the exact odd coefficient after
subtracting the reflected column. -/
theorem oddTerm_eq_parity_difference (T t s : ℝ) (j : ℕ) :
    let a : ℝ := 2 * (j : ℝ) + 1 / 2
    2 * Real.cosh (a * (t - s)) / (Real.exp (2 * a * T) - 1) -
      2 * Real.cosh (a * (t + s)) / (Real.exp (2 * a * T) - 1) =
      -positiveTerm T t s j := by
  dsimp only
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  change 2 * Real.cosh (a * (t - s)) / (Real.exp (2 * a * T) - 1) -
    2 * Real.cosh (a * (t + s)) / (Real.exp (2 * a * T) - 1) = _
  rw [mul_sub a t s, mul_add a t s, Real.cosh_sub, Real.cosh_add]
  change _ = -(4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1))
  ring

private theorem twice_sinh (u : ℝ) :
    2 * Real.sinh u = Real.exp u * (1 - Real.exp (-2 * u)) := by
  rw [Real.sinh_eq, mul_sub, mul_one, ← Real.exp_add]
  rw [show u + -2 * u = -u by ring]
  ring

private theorem term_nonneg {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) (j : ℕ) :
    0 ≤ positiveTerm T t s j := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  have ha : 0 < a := by dsimp [a]; positivity
  have hT := ht.1.trans ht.2
  change 0 ≤ 4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1)
  have hDen : 0 < Real.exp (2 * a * T) - 1 :=
    sub_pos.mpr (Real.one_lt_exp_iff.mpr (by positivity))
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num)
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le ht.1.le)))
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le hs.1.le))) hDen.le

private theorem term_le_exp {T t s : ℝ} (ht : t ∈ Ioo 0 T) (j : ℕ) :
    positiveTerm T t s j ≤
      Real.exp (-((2 * (j : ℝ) + 1 / 2) * ((T - t) + (T - s)))) := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  have ha : 0 < a := by dsimp [a]; positivity
  have hT := ht.1.trans ht.2
  have hDen : 0 < Real.exp (2 * a * T) - 1 :=
    sub_pos.mpr (Real.one_lt_exp_iff.mpr (by positivity))
  have htFactor : 0 ≤ 1 - Real.exp (-2 * (a * t)) :=
    sub_nonneg.mpr (Real.exp_le_one_iff.mpr (by nlinarith [mul_nonneg ha.le ht.1.le]))
  have hsFactor : 1 - Real.exp (-2 * (a * s)) ≤ 1 := sub_le_self _ (Real.exp_nonneg _)
  have hTFactor : 1 - Real.exp (-2 * (a * t)) ≤ 1 - Real.exp (-2 * (a * T)) := by
    apply sub_le_sub_left
    apply Real.exp_le_exp.mpr
    exact mul_le_mul_of_nonpos_left (mul_le_mul_of_nonneg_left ht.2.le ha.le) (by norm_num)
  have hFactor :
      (1 - Real.exp (-2 * (a * t))) * (1 - Real.exp (-2 * (a * s))) ≤
        1 - Real.exp (-2 * (a * T)) :=
    (mul_le_of_le_one_right htFactor hsFactor).trans hTFactor
  change 4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1) ≤
    Real.exp (-(a * ((T - t) + (T - s))))
  apply (div_le_iff₀ hDen).2
  calc
    _ = (Real.exp (a * t) * Real.exp (a * s)) *
        ((1 - Real.exp (-2 * (a * t))) * (1 - Real.exp (-2 * (a * s)))) := by
      rw [show 4 * Real.sinh (a * t) * Real.sinh (a * s) =
        (2 * Real.sinh (a * t)) * (2 * Real.sinh (a * s)) by ring, twice_sinh, twice_sinh]
      ring
    _ ≤ (Real.exp (a * t) * Real.exp (a * s)) * (1 - Real.exp (-2 * (a * T))) :=
      mul_le_mul_of_nonneg_left hFactor (by positivity)
    _ = _ := by
      simp only [mul_sub, mul_one, ← Real.exp_add]
      congr 1 <;> congr 1 <;> ring

private theorem baseKernel_le_reciprocal {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r ≤ 1 / r := by
  have hD : 0 < 1 - Real.exp (-2 * r) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  have hS : r / 2 ≤ Real.sinh (r / 2) := Real.self_le_sinh_iff.mpr (by positivity)
  have hE : r * Real.exp (-r / 2) ≤ 1 - Real.exp (-r) := by
    calc
      _ ≤ (2 * Real.sinh (r / 2)) * Real.exp (-r / 2) :=
        mul_le_mul_of_nonneg_right (by linarith) (Real.exp_nonneg _)
      _ = _ := by
        rw [twice_sinh, mul_right_comm, ← Real.exp_add, show r / 2 + -r / 2 = 0 by ring,
          Real.exp_zero, one_mul, show -2 * (r / 2) = -r by ring]
  have hER : Real.exp (-2 * r) ≤ Real.exp (-r) :=
    Real.exp_le_exp.mpr (by linarith)
  unfold parityKernel
  simp only [Nat.cast_zero, zero_add, show -(1 / 2 : ℝ) * r = -r / 2 by ring]
  exact (div_le_div_iff₀ hD hr).2 (by
    simpa [mul_comm] using hE.trans (sub_le_sub_left hER 1))

/-- The literal hyperbolic series converges at every interior pair. -/
theorem positiveTerm_summable {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) :
    Summable (positiveTerm T t s) :=
  Summable.of_nonneg_of_le (term_nonneg ht hs) (term_le_exp ht)
    (parityKernel_zero_exp_summable (add_pos (sub_pos.mpr ht.2) (sub_pos.mpr hs.2)))

/-- The magnitude of the actual odd kernel is bounded by the reflected
Carleman kernel. Both endpoint distances are kept. -/
theorem oddKernel_abs_le {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) :
    |oddKernel T t s| ≤ 1 / ((T - t) + (T - s)) := by
  have hr := add_pos (sub_pos.mpr ht.2) (sub_pos.mpr hs.2)
  rw [oddKernel, abs_neg, abs_of_nonneg (tsum_nonneg (term_nonneg ht hs))]
  calc
    _ ≤ ∑' j : ℕ, Real.exp (-((2 * (j : ℝ) + 1 / 2) * ((T - t) + (T - s)))) :=
      (positiveTerm_summable ht hs).tsum_le_tsum (term_le_exp ht)
        (parityKernel_zero_exp_summable hr)
    _ = parityKernel 0 ((T - t) + (T - s)) := (parityKernel_zero_eq_tsum hr).symm
    _ ≤ _ := baseKernel_le_reciprocal hr

/-- The Carleman weight, evaluated on positive distances from the endpoint. -/
def weight (x : ℝ) : ℝ := x ^ (-(1 / 2) : ℝ)

private theorem weight_nonneg {x : ℝ} (hx : 0 ≤ x) : 0 ≤ weight x :=
  Real.rpow_nonneg hx _

private theorem weight_div_self {x : ℝ} (hx : 0 < x) :
    weight x / x = x ^ (-(3 / 2) : ℝ) := by
  unfold weight
  rw [← Real.rpow_sub_one hx.ne']
  congr 1
  norm_num

/-- The half-line Carleman integral is bounded by four times its weight.
The two pieces each cost two, split at the observation distance. -/
theorem carleman_weight_bound {x : ℝ} (hx : 0 < x) :
    IntegrableOn (fun y : ℝ => weight y / (x + y)) (Ioi 0) ∧
      (∫ y in Ioi (0 : ℝ), weight y / (x + y)) ≤ 4 * weight x := by
  have hMeas : Measurable (fun y : ℝ => weight y / (x + y)) := by
    unfold weight
    fun_prop
  have hSmallBase : IntegrableOn weight (Ioc 0 x) :=
    (intervalIntegrable_iff_integrableOn_Ioc_of_le hx.le).1
      (intervalIntegral.intervalIntegrable_rpow' (by norm_num))
  have hSmallMajor := hSmallBase.div_const x
  have hBigMajor : IntegrableOn (fun y : ℝ => y ^ (-(3 / 2) : ℝ)) (Ioi x) :=
    integrableOn_Ioi_rpow_of_lt (by norm_num) hx
  have hSmallPoint (y : ℝ) (hy : y ∈ Ioc 0 x) : weight y / (x + y) ≤ weight y / x :=
    div_le_div_of_nonneg_left (weight_nonneg hy.1.le) hx (le_add_of_nonneg_right hy.1.le)
  have hBigPoint (y : ℝ) (hy : y ∈ Ioi x) :
      weight y / (x + y) ≤ y ^ (-(3 / 2) : ℝ) := by
    have hy0 := hx.trans hy
    rw [← weight_div_self hy0]
    exact div_le_div_of_nonneg_left (weight_nonneg hy0.le) hy0 (le_add_of_nonneg_left hx.le)
  have hNonneg (y : ℝ) (hy : 0 < y) : 0 ≤ weight y / (x + y) :=
    div_nonneg (weight_nonneg hy.le) (add_pos hx hy).le
  have hSmall : IntegrableOn (fun y : ℝ => weight y / (x + y)) (Ioc 0 x) := by
    refine hSmallMajor.mono' hMeas.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioc] with y hy
    rw [Real.norm_eq_abs, abs_of_nonneg (hNonneg y hy.1)]
    exact hSmallPoint y hy
  have hBig : IntegrableOn (fun y : ℝ => weight y / (x + y)) (Ioi x) := by
    refine hBigMajor.mono' hMeas.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with y hy
    rw [Real.norm_eq_abs, abs_of_nonneg (hNonneg y (hx.trans hy))]
    exact hBigPoint y hy
  have hSmallEval : (∫ y in Ioc (0 : ℝ) x, weight y / x) = 2 * weight x := by
    rw [integral_div, ← intervalIntegral.integral_of_le hx.le]
    unfold weight
    rw [integral_rpow (Or.inl (by norm_num))]
    rw [show -(1 / 2 : ℝ) + 1 = 1 / 2 by norm_num, Real.zero_rpow (by norm_num), sub_zero]
    calc
      _ = 2 * (x ^ (1 / 2 : ℝ) / x) := by ring
      _ = _ := by rw [← Real.rpow_sub_one hx.ne']; norm_num
  have hBigEval : (∫ y in Ioi x, y ^ (-(3 / 2) : ℝ)) = 2 * weight x := by
    rw [integral_Ioi_rpow_of_lt (by norm_num) hx]
    unfold weight
    rw [show -(3 / 2 : ℝ) + 1 = -(1 / 2) by norm_num]
    ring
  have hSmallLe : (∫ y in Ioc (0 : ℝ) x, weight y / (x + y)) ≤ 2 * weight x := by
    rw [← hSmallEval]
    exact setIntegral_mono_on hSmall hSmallMajor measurableSet_Ioc hSmallPoint
  have hBigLe : (∫ y in Ioi x, weight y / (x + y)) ≤ 2 * weight x := by
    rw [← hBigEval]
    exact setIntegral_mono_on hBig hBigMajor measurableSet_Ioi hBigPoint
  rw [← Ioc_union_Ioi_eq_Ioi hx.le]
  refine ⟨hSmall.union hBig, ?_⟩
  rw [setIntegral_union Ioc_disjoint_Ioi_same measurableSet_Ioi hSmall hBig]
  linarith

theorem measurable_oddKernel (T : ℝ) :
    Measurable (fun z : ℝ × ℝ => oddKernel T z.1 z.2) := by
  unfold oddKernel
  refine (Measurable.tsum fun j => ?_).neg
  unfold positiveTerm
  fun_prop

theorem oddKernel_symm (T t s : ℝ) : oddKernel T t s = oddKernel T s t := by
  unfold oddKernel
  congr 1
  apply tsum_congr
  intro j
  unfold positiveTerm
  ring

set_option maxHeartbeats 800000 in
/-- Weighted row integrability and the uniform Schur bound for the literal
kernel. Symmetry gives the same column bound. -/
theorem oddKernel_weight_bound {T t : ℝ} (ht : t ∈ Ioo 0 T) :
    IntegrableOn (fun s => |oddKernel T t s| * weight (T - s)) (Ioo 0 T) ∧
      (∫ s in Ioo 0 T, |oddKernel T t s| * weight (T - s)) ≤ 4 * weight (T - t) := by
  let x := T - t
  let g := fun y : ℝ => weight y / (x + y)
  have hx : 0 < x := sub_pos.mpr ht.2
  have hT := ht.1.trans ht.2
  have hHalf := carleman_weight_bound hx
  have hg : IntegrableOn g (Ioi 0) := hHalf.1
  have hIoc : IntegrableOn g (Ioc 0 T) := hg.mono_set Ioc_subset_Ioi_self
  have hInt := (intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).2 hIoc
  have hRefInt : IntervalIntegrable (fun s => g (T - s)) volume 0 T := by
    simpa only [sub_self, sub_zero] using (hInt.comp_sub_left T).symm
  have hRef : IntegrableOn (fun s => g (T - s)) (Ioo 0 T) :=
    ((intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).1 hRefInt).mono_set Ioo_subset_Ioc_self
  have hMeas : Measurable (fun s => |oddKernel T t s| * weight (T - s)) := by
    have hKernel : Measurable (fun s => oddKernel T t s) := by
      change Measurable ((fun z : ℝ × ℝ => oddKernel T z.1 z.2) ∘ Prod.mk t)
      exact (measurable_oddKernel T).comp measurable_prodMk_left
    have hWeight : Measurable (fun s => weight (T - s)) := by unfold weight; fun_prop
    change Measurable ((fun s => |oddKernel T t s|) * (fun s => weight (T - s)))
    simpa only [Real.norm_eq_abs] using hKernel.norm.mul hWeight
  have hPoint (s : ℝ) (hs : s ∈ Ioo 0 T) :
      |oddKernel T t s| * weight (T - s) ≤ g (T - s) := by
    exact (mul_le_mul_of_nonneg_right (oddKernel_abs_le ht hs)
      (weight_nonneg (sub_nonneg.mpr hs.2.le))).trans_eq (by dsimp [g, x]; ring)
  have hWeighted : IntegrableOn (fun s => |oddKernel T t s| * weight (T - s)) (Ioo 0 T) := by
    refine hRef.mono' hMeas.aestronglyMeasurable ?_
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with s hs
    rw [Real.norm_eq_abs, abs_of_nonneg
      (mul_nonneg (abs_nonneg _) (weight_nonneg (sub_nonneg.mpr hs.2.le)))]
    exact hPoint s hs
  refine ⟨hWeighted, ?_⟩
  calc
    _ ≤ ∫ s in Ioo 0 T, g (T - s) := setIntegral_mono_on hWeighted hRef measurableSet_Ioo hPoint
    _ = ∫ y in Ioo 0 T, g y := by
      rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le hT.le,
        intervalIntegral.integral_comp_sub_left, sub_self, sub_zero,
        intervalIntegral.integral_of_le hT.le, integral_Ioc_eq_integral_Ioo]
    _ ≤ ∫ y in Ioi 0, g y := by
      refine setIntegral_mono_set hg (ae_restrict_of_forall_mem measurableSet_Ioi ?_)
        Ioo_subset_Ioi_self.eventuallySubset
      intro y hy
      exact div_nonneg (weight_nonneg hy.le) (add_pos hx hy).le
    _ ≤ _ := hHalf.2

private theorem weighted_product_le (a b : ℝ) {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    |a| * |b| ≤ ((a ^ 2 / u) * v + (b ^ 2 / v) * u) / 2 := by
  apply (le_div_iff₀ (by norm_num)).2
  apply (mul_le_mul_iff_right₀ (mul_pos hu hv)).1
  have hs := sq_nonneg (|a| * v - |b| * u)
  rw [sub_sq, mul_pow, mul_pow, sq_abs, sq_abs] at hs
  rw [show u * v * ((a ^ 2 / u) * v + (b ^ 2 / v) * u) =
    a ^ 2 * v ^ 2 + b ^ 2 * u ^ 2 by field_simp [hu.ne', hv.ne']]
  nlinarith only [hs]

/-- On the whole positive half interval, the actual odd kernel has a
quadratic-form loss of at most four times the real squared L² norm. The
integral is over the literal kernel and is absolutely integrable. -/
theorem oddKernel_quadratic_bound (T : ℝ) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    let μ := volume.restrict (Ioo 0 T)
    let F := fun z : ℝ × ℝ => oddKernel T z.1 z.2 * f z.1 * f z.2
    Integrable F (μ.prod μ) ∧
      |∫ z, F z ∂(μ.prod μ)| ≤ 4 * ∫ t, f t ^ 2 ∂μ := by
  dsimp only
  let μ := volume.restrict (Ioo 0 T)
  let F := fun z : ℝ × ℝ => oddKernel T z.1 z.2 * f z.1 * f z.2
  let w := fun t : ℝ => weight (T - t)
  let c := fun t : ℝ => f t ^ 2 / w t
  let A := fun z : ℝ × ℝ => c z.1 * (|oddKernel T z.1 z.2| * w z.2)
  change Integrable F (μ.prod μ) ∧ |∫ z, F z ∂(μ.prod μ)| ≤ 4 * ∫ t, f t ^ 2 ∂μ
  have hInterior : ∀ᵐ t ∂μ, t ∈ Ioo 0 T := ae_restrict_mem measurableSet_Ioo
  have hwPos {t : ℝ} (ht : t ∈ Ioo 0 T) : 0 < w t :=
    Real.rpow_pos_of_pos (sub_pos.mpr ht.2) _
  have hAM : Measurable A := by
    have hwM : Measurable w := by dsimp [w, weight]; fun_prop
    have hcM : Measurable c := (hf.pow_const 2).div hwM
    change Measurable ((c ∘ Prod.fst) *
      ((fun z : ℝ × ℝ => |oddKernel T z.1 z.2|) * (w ∘ Prod.snd)))
    simpa only [Real.norm_eq_abs] using
      (hcM.comp measurable_fst).mul
      ((measurable_oddKernel T).norm.mul (hwM.comp measurable_snd))
  have hRowNonneg {t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) : 0 ≤ A (t, s) :=
    mul_nonneg (div_nonneg (sq_nonneg _) (hwPos ht).le)
      (mul_nonneg (abs_nonneg _) (hwPos hs).le)
  have hRowBound {t : ℝ} (ht : t ∈ Ioo 0 T) :
      (∫ s, A (t, s) ∂μ) ≤ 4 * f t ^ 2 := by
    have h := oddKernel_weight_bound ht
    change (∫ s, c t * (|oddKernel T t s| * w s) ∂μ) ≤ _
    rw [integral_const_mul]
    refine (mul_le_mul_of_nonneg_left h.2 (div_nonneg (sq_nonneg _) (hwPos ht).le)).trans_eq ?_
    change c t * (4 * w t) = _
    dsimp only [c]
    field_simp [(hwPos ht).ne']
  have hNormRow {t : ℝ} (ht : t ∈ Ioo 0 T) :
      (∫ s, ‖A (t, s)‖ ∂μ) = ∫ s, A (t, s) ∂μ := by
    apply integral_congr_ae
    filter_upwards [hInterior] with s hs
    exact Real.norm_of_nonneg (hRowNonneg ht hs)
  have hA : Integrable A (μ.prod μ) := by
    have hStrong : AEStronglyMeasurable A (μ.prod μ) := hAM.aestronglyMeasurable
    refine (integrable_prod_iff hStrong).2 ⟨?_, ?_⟩
    · filter_upwards [hInterior] with t ht
      exact (oddKernel_weight_bound ht).1.const_mul (c t)
    · refine (hf2.const_mul 4).mono' hStrong.norm.integral_prod_right' ?_
      filter_upwards [hInterior] with t ht
      rw [Real.norm_of_nonneg (integral_nonneg (fun _ => norm_nonneg _)), hNormRow ht]
      exact hRowBound ht
  have hIntA : (∫ z, A z ∂(μ.prod μ)) ≤ 4 * ∫ t, f t ^ 2 ∂μ := by
    rw [integral_prod A hA, ← integral_const_mul]
    apply integral_mono_ae hA.integral_prod_left (hf2.const_mul 4)
    exact hInterior.mono (fun _ ht => hRowBound ht)
  have hPair : ∀ᵐ z ∂μ.prod μ, z ∈ (Ioo 0 T) ×ˢ (Ioo 0 T) := by
    apply (Measure.ae_prod_mem_iff_ae_ae_mem (measurableSet_Ioo.prod measurableSet_Ioo)).2
    filter_upwards [hInterior] with t ht
    exact hInterior.mono (fun _ hs => ⟨ht, hs⟩)
  have hDom : ∀ᵐ z ∂μ.prod μ, ‖F z‖ ≤ (A z + A z.swap) / 2 := by
    filter_upwards [hPair] with z hz
    have hProd := weighted_product_le (f z.1) (f z.2) (hwPos hz.1) (hwPos hz.2)
    calc
      ‖F z‖ = |oddKernel T z.1 z.2| * (|f z.1| * |f z.2|) := by
        simp [F, Real.norm_eq_abs, mul_assoc]
      _ ≤ |oddKernel T z.1 z.2| * ((c z.1 * w z.2 + c z.2 * w z.1) / 2) :=
        mul_le_mul_of_nonneg_left hProd (abs_nonneg _)
      _ = _ := by
        dsimp only [A, Prod.swap]
        rw [oddKernel_symm T z.2 z.1]
        ring
  have hMajor : Integrable (fun z => (A z + A z.swap) / 2) (μ.prod μ) :=
    (hA.add hA.swap).div_const 2
  have hFM : Measurable F :=
    ((measurable_oddKernel T).mul (hf.comp measurable_fst)).mul (hf.comp measurable_snd)
  have hF := hMajor.mono' hFM.aestronglyMeasurable hDom
  refine ⟨hF, ?_⟩
  calc
    |∫ z, F z ∂(μ.prod μ)| = ‖∫ z, F z ∂(μ.prod μ)‖ := (Real.norm_eq_abs _).symm
    _ ≤ ∫ z, ‖F z‖ ∂(μ.prod μ) := norm_integral_le_integral_norm _
    _ ≤ ∫ z, (A z + A z.swap) / 2 ∂(μ.prod μ) := integral_mono_ae hF.norm hMajor hDom
    _ = ∫ z, A z ∂(μ.prod μ) := by
      rw [integral_div]
      change (∫ z, A z + (A ∘ Prod.swap) z ∂(μ.prod μ)) / 2 = _
      rw [integral_add hA hA.swap]
      change ((∫ z, A z ∂(μ.prod μ)) + (∫ z, A z.swap ∂(μ.prod μ))) / 2 = _
      rw [integral_prod_swap]
      ring
    _ ≤ _ := hIntA

/-- The signed lower estimate in the iterated-integral convention of the
positive-half form. -/
theorem oddKernel_quadratic_ge (T : ℝ) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    -(4 * ∫ t in Ioo 0 T, f t ^ 2) ≤
      ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, oddKernel T t s * f t * f s := by
  obtain ⟨hIntegrable, hAbs⟩ := oddKernel_quadratic_bound T f hf hf2
  rw [← integral_prod _ hIntegrable]
  exact (abs_le.mp hAbs).1

end GRWTSK.NumberTheory.WeilQuadraticForm.OddBoundaryNorm
