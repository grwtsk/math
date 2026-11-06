/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundaryNorm
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp

/-!
# A sharper norm bound for the literal odd boundary kernel

Sections 2–3 of weil-periodic-boundary.md (2026-11-04). On the positive
half window, the hyperbolic summand is bounded by the exponential of the
sum of the two distances from the right endpoint. Its geometric sum is
bounded by half the Carleman kernel plus half the rank-one exponential kernel.
The stronger bound uses `sinh r ≥ r` and `exp r ≥ 1 + r²`, obtained from
the nonnegative exponential Taylor terms through degree three.
Substitution y=u² and the arctangent integral give the exact weighted
half-line Carleman row integral. The exponential kernel has the squared
weight integral 1-exp(-T). Both terms retain the same window coordinates.
Independent mathematical review is pending.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddSharpBoundaryNorm

open OddBoundaryNorm OddRootProjection OddKernelSineTransform

private theorem twice_sinh_factor (u : ℝ) :
    2 * Real.sinh u = Real.exp u * (1 - Real.exp (-2 * u)) := by
  rw [Real.sinh_eq, mul_sub, mul_one, ← Real.exp_add]
  rw [show u + -2 * u = -u by ring]
  ring

private theorem positiveTerm_nonneg {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T)
    (j : ℕ) : 0 ≤ positiveTerm T t s j := by
  let a : ℝ := 2 * (j : ℝ) + 1 / 2
  have ha : 0 < a := by dsimp [a]; positivity
  have hT := ht.1.trans ht.2
  change 0 ≤ 4 * Real.sinh (a * t) * Real.sinh (a * s) / (Real.exp (2 * a * T) - 1)
  exact div_nonneg (mul_nonneg (mul_nonneg (by norm_num)
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le ht.1.le)))
    (Real.sinh_nonneg_iff.mpr (mul_nonneg ha.le hs.1.le)))
    (sub_nonneg.mpr (Real.one_le_exp_iff.mpr (by positivity)))

private theorem positiveTerm_le_exp {T t s : ℝ} (ht : t ∈ Ioo 0 T) (j : ℕ) :
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
        (2 * Real.sinh (a * t)) * (2 * Real.sinh (a * s)) by ring,
        twice_sinh_factor, twice_sinh_factor]
      ring
    _ ≤ (Real.exp (a * t) * Real.exp (a * s)) * (1 - Real.exp (-2 * (a * T))) :=
      mul_le_mul_of_nonneg_left hFactor (by positivity)
    _ = _ := by
      simp only [mul_sub, mul_one, ← Real.exp_add]
      congr 1 <;> congr 1 <;> ring

/-- The complete odd kernel is dominated by the base gamma kernel evaluated
at the sum of the two endpoint distances. -/
theorem oddKernel_abs_le_base {T t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) :
    |oddKernel T t s| ≤ parityKernel 0 ((T - t) + (T - s)) := by
  have hr := add_pos (sub_pos.mpr ht.2) (sub_pos.mpr hs.2)
  rw [oddKernel, abs_neg, abs_of_nonneg (tsum_nonneg (positiveTerm_nonneg ht hs)),
    parityKernel_zero_eq_tsum hr]
  exact (positiveTerm_summable ht hs).tsum_le_tsum (positiveTerm_le_exp ht)
    (parityKernel_zero_exp_summable hr)

/-- The base gamma kernel splits into half a reciprocal singularity and one
exponential remainder. -/
theorem baseKernel_le_half_reciprocal_add_exp {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r ≤ 1 / (2 * r) + Real.exp (-r / 2) := by
  have hD : 0 < 1 - Real.exp (-2 * r) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  have hE : Real.exp (-r / 2) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hMul := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r))
    (Real.exp_nonneg (-2 * r))
  rw [← Real.exp_add, show 2 * r + -2 * r = 0 by ring, Real.exp_zero] at hMul
  have hRatio : 1 / (1 - Real.exp (-2 * r)) ≤ 1 + 1 / (2 * r) := by
    apply (div_le_iff₀ hD).2
    apply (mul_le_mul_iff_right₀ (show 0 < 2 * r by positivity)).1
    field_simp [hr.ne']
    simp only [neg_mul] at hMul
    nlinarith only [hMul]
  change Real.exp (-((0 : ℕ) + (1 / 2 : ℝ)) * r) / (1 - Real.exp (-2 * r)) ≤ _
  simp only [Nat.cast_zero, zero_add, show -(1 / 2 : ℝ) * r = -r / 2 by ring]
  calc
    _ = Real.exp (-r / 2) * (1 / (1 - Real.exp (-2 * r))) := by ring
    _ ≤ Real.exp (-r / 2) * (1 + 1 / (2 * r)) :=
      mul_le_mul_of_nonneg_left hRatio (Real.exp_nonneg _)
    _ ≤ _ := by
      have h := mul_le_mul_of_nonneg_right hE (show 0 ≤ 1 / (2 * r) by positivity)
      linarith only [h]

private theorem one_add_sq_le_exp {r : ℝ} (hr : 0 ≤ r) : 1 + r ^ 2 ≤ Real.exp r := by
  have hTaylor := Real.sum_le_exp_of_nonneg hr 4
  norm_num [Finset.sum_range_succ, Nat.factorial] at hTaylor
  have hPoly : 0 ≤ 1 - r / 2 + r ^ 2 / 6 := by
    nlinarith only [sq_nonneg (r - 3 / 2)]
  nlinarith only [hTaylor, mul_nonneg hr hPoly]

private theorem mul_cosh_le_exp_mul_sinh {r : ℝ} (hr : 0 < r) :
    r * Real.cosh r ≤ Real.exp (r / 2) * Real.sinh r := by
  have hSinh := Real.self_le_sinh_iff.mpr hr.le
  have hSinhSq := pow_le_pow_left₀ hr.le hSinh 2
  have hCosh : Real.cosh r ^ 2 = 1 + Real.sinh r ^ 2 := by
    linarith only [Real.cosh_sq_sub_sinh_sq r]
  apply (sq_le_sq₀ (by positivity) (by positivity)).mp
  calc
    _ = r ^ 2 * (1 + Real.sinh r ^ 2) := by rw [mul_pow, hCosh]
    _ ≤ (1 + r ^ 2) * Real.sinh r ^ 2 := by nlinarith only [hSinhSq]
    _ ≤ Real.exp r * Real.sinh r ^ 2 :=
      mul_le_mul_of_nonneg_right (one_add_sq_le_exp hr.le) (sq_nonneg _)
    _ = _ := by rw [mul_pow, pow_two (Real.exp (r / 2)), ← Real.exp_add, add_halves]

/-- The even gamma kernel is bounded by half the reciprocal singularity and
half the decaying exponential. -/
theorem baseKernel_le_half_reciprocal_add_half_exp {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r ≤ 1 / (2 * r) + (1 / 2) * Real.exp (-r / 2) := by
  have hs : 0 < Real.sinh r := Real.sinh_pos_iff.mpr hr
  have hd : 0 < 1 - Real.exp (-2 * r) :=
    sub_pos.mpr (Real.exp_lt_one_iff.mpr (by linarith))
  have he : 0 < Real.exp r := Real.exp_pos _
  have hRatio : 1 / (1 - Real.exp (-2 * r)) = 1 / 2 + Real.cosh r / (2 * Real.sinh r) := by
    calc
      _ = Real.exp r / (2 * Real.sinh r) := by rw [twice_sinh_factor]; field_simp
      _ = (Real.sinh r + Real.cosh r) / (2 * Real.sinh r) := by rw [Real.sinh_add_cosh]
      _ = _ := by field_simp
  have hCoth : Real.cosh r / (2 * Real.sinh r) ≤ Real.exp (r / 2) / (2 * r) := by
    apply (div_le_div_iff₀ (by positivity) (by positivity)).mpr
    nlinarith only [mul_cosh_le_exp_mul_sinh hr]
  simp only [parityKernel, Nat.cast_zero, zero_add, show -(1 / 2 : ℝ) * r = -r / 2 by ring]
  calc
    _ = Real.exp (-r / 2) * (1 / 2 + Real.cosh r / (2 * Real.sinh r)) := by rw [← hRatio]; ring
    _ ≤ Real.exp (-r / 2) * (1 / 2 + Real.exp (r / 2) / (2 * r)) :=
      mul_le_mul_of_nonneg_left (add_le_add (le_refl _) hCoth) (Real.exp_nonneg _)
    _ = Real.exp (-r / 2) * (1 / 2) + (Real.exp (-r / 2) * Real.exp (r / 2)) / (2 * r) := by ring
    _ = _ := by
      rw [← Real.exp_add, show -r / 2 + r / 2 = 0 by ring, Real.exp_zero]
      ring

/-- Exact weighted Carleman row integral, computed by squaring the
substitution variable and rescaling the arctangent integral. -/
theorem carleman_weight_integral {x : ℝ} (hx : 0 < x) :
    (∫ y in Ioi (0 : ℝ), weight y / (x + y)) = Real.pi * weight x := by
  let b := Real.sqrt x
  let G := fun u : ℝ => 1 / (x + u ^ 2)
  have hb : 0 < b := Real.sqrt_pos_of_pos hx
  have hb₂ : b ^ 2 = x := Real.sq_sqrt hx.le
  have hSub : (1 / 2 : ℝ) * (∫ y in Ioi (0 : ℝ), weight y / (x + y)) =
      ∫ u in Ioi (0 : ℝ), G u := by
    rw [← integral_const_mul]
    refine (setIntegral_congr_fun measurableSet_Ioi (fun y hy => ?_)).trans
      (integral_comp_rpow_Ioi_of_pos (g := G) (p := (1 / 2 : ℝ)) (by norm_num))
    change (1 / 2 : ℝ) * (weight y / (x + y)) =
      ((1 / 2 : ℝ) * y ^ ((1 / 2 : ℝ) - 1)) * G (y ^ (1 / 2 : ℝ))
    rw [show (1 / 2 : ℝ) - 1 = -(1 / 2) by norm_num, ← Real.sqrt_eq_rpow]
    simp only [G, Real.sq_sqrt hy.le, weight]
    ring
  have hScale : (∫ u in Ioi (0 : ℝ), G u) = (Real.pi / 2) * weight x := by
    let H := fun u : ℝ => (1 + u ^ 2)⁻¹
    have hG : G = fun u : ℝ => (1 / x) * H (b⁻¹ * u) := by
      funext u
      have hd : 0 < x + u ^ 2 := by positivity
      have hd' : 0 < 1 + (b⁻¹ * u) ^ 2 := by positivity
      dsimp only [G, H]
      field_simp [hx.ne', hb.ne', hd.ne', hd'.ne']
      nlinarith only [hb₂]
    rw [hG, integral_const_mul, integral_comp_mul_left_Ioi H 0 (inv_pos.mpr hb),
      mul_zero, inv_inv, smul_eq_mul]
    have hH : (∫ u in Ioi (0 : ℝ), H u) = Real.pi / 2 := by
      simp [H, integral_Ioi_inv_one_add_sq]
    rw [hH, weight, Real.rpow_neg hx.le, ← Real.sqrt_eq_rpow]
    change (1 / x) * (b * (Real.pi / 2)) = _
    field_simp [hx.ne', hb.ne']
    change b * b = x
    simpa only [pow_two] using hb₂
  linarith only [hSub, hScale]

private def reflectedCarleman (T : ℝ) (t s : ℝ) : ℝ :=
  1 / ((T - t) + (T - s))

private theorem reflectedCarleman_weight_bound {T t : ℝ} (ht : t ∈ Ioo 0 T) :
    IntegrableOn (fun s => reflectedCarleman T t s * weight (T - s)) (Ioo 0 T) ∧
      (∫ s in Ioo 0 T, reflectedCarleman T t s * weight (T - s)) ≤
        Real.pi * weight (T - t) := by
  let x := T - t
  let g := fun y : ℝ => weight y / (x + y)
  have hx : 0 < x := sub_pos.mpr ht.2
  have hT := ht.1.trans ht.2
  have hHalf : IntegrableOn g (Ioi 0) := (carleman_weight_bound hx).1
  have hIoc : IntegrableOn g (Ioc 0 T) := hHalf.mono_set Ioc_subset_Ioi_self
  have hInt := (intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).2 hIoc
  have hRefInt : IntervalIntegrable (fun s => g (T - s)) volume 0 T := by
    simpa only [sub_self, sub_zero] using (hInt.comp_sub_left T).symm
  have hEq : (fun s => reflectedCarleman T t s * weight (T - s)) = fun s => g (T - s) := by
    funext s
    dsimp [reflectedCarleman, g, x]
    ring
  rw [hEq]
  refine ⟨((intervalIntegrable_iff_integrableOn_Ioc_of_le hT.le).1 hRefInt).mono_set
    Ioo_subset_Ioc_self, ?_⟩
  calc
    _ = ∫ y in Ioo 0 T, g y := by
      rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le hT.le,
        intervalIntegral.integral_comp_sub_left, sub_self, sub_zero,
        intervalIntegral.integral_of_le hT.le, integral_Ioc_eq_integral_Ioo]
    _ ≤ ∫ y in Ioi 0, g y := by
      refine setIntegral_mono_set hHalf (ae_restrict_of_forall_mem measurableSet_Ioi ?_)
        Ioo_subset_Ioi_self.eventuallySubset
      intro y hy
      exact div_nonneg (Real.rpow_nonneg hy.le _) (add_pos hx hy).le
    _ = _ := carleman_weight_integral hx

private theorem weighted_product_le (a b : ℝ) {u v : ℝ} (hu : 0 < u) (hv : 0 < v) :
    |a| * |b| ≤ ((a ^ 2 / u) * v + (b ^ 2 / v) * u) / 2 := by
  apply (le_div_iff₀ (by norm_num)).2
  apply (mul_le_mul_iff_right₀ (mul_pos hu hv)).1
  have hs := sq_nonneg (|a| * v - |b| * u)
  rw [sub_sq, mul_pow, mul_pow, sq_abs, sq_abs] at hs
  rw [show u * v * ((a ^ 2 / u) * v + (b ^ 2 / v) * u) =
    a ^ 2 * v ^ 2 + b ^ 2 * u ^ 2 by field_simp [hu.ne', hv.ne']]
  nlinarith only [hs]

private theorem reflectedCarleman_absForm_bound (T : ℝ) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    let μ := volume.restrict (Ioo 0 T)
    let F := fun z : ℝ × ℝ => reflectedCarleman T z.1 z.2 * (|f z.1| * |f z.2|)
    Integrable F (μ.prod μ) ∧
      (∫ z, F z ∂(μ.prod μ)) ≤ Real.pi * ∫ t, f t ^ 2 ∂μ := by
  dsimp only
  let μ := volume.restrict (Ioo 0 T)
  let F := fun z : ℝ × ℝ => reflectedCarleman T z.1 z.2 * (|f z.1| * |f z.2|)
  let w := fun t : ℝ => weight (T - t)
  let c := fun t : ℝ => f t ^ 2 / w t
  let A := fun z : ℝ × ℝ => c z.1 * (reflectedCarleman T z.1 z.2 * w z.2)
  change Integrable F (μ.prod μ) ∧ (∫ z, F z ∂(μ.prod μ)) ≤ Real.pi * ∫ t, f t ^ 2 ∂μ
  have hInterior : ∀ᵐ t ∂μ, t ∈ Ioo 0 T := ae_restrict_mem measurableSet_Ioo
  have hwPos {t : ℝ} (ht : t ∈ Ioo 0 T) : 0 < w t :=
    Real.rpow_pos_of_pos (sub_pos.mpr ht.2) _
  have hKPos {t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) :
      0 ≤ reflectedCarleman T t s :=
    one_div_nonneg.mpr (add_nonneg (sub_nonneg.mpr ht.2.le) (sub_nonneg.mpr hs.2.le))
  have hKM : Measurable (fun z : ℝ × ℝ => reflectedCarleman T z.1 z.2) := by
    unfold reflectedCarleman
    fun_prop
  have hAM : Measurable A := by
    have hwM : Measurable w := by dsimp [w, weight]; fun_prop
    have hcM : Measurable c := (hf.pow_const 2).div hwM
    exact (hcM.comp measurable_fst).mul (hKM.mul (hwM.comp measurable_snd))
  have hRowNonneg {t s : ℝ} (ht : t ∈ Ioo 0 T) (hs : s ∈ Ioo 0 T) : 0 ≤ A (t, s) :=
    mul_nonneg (div_nonneg (sq_nonneg _) (hwPos ht).le) (mul_nonneg (hKPos ht hs) (hwPos hs).le)
  have hRowBound {t : ℝ} (ht : t ∈ Ioo 0 T) :
      (∫ s, A (t, s) ∂μ) ≤ Real.pi * f t ^ 2 := by
    change (∫ s, c t * (reflectedCarleman T t s * w s) ∂μ) ≤ _
    rw [integral_const_mul]
    refine (mul_le_mul_of_nonneg_left (reflectedCarleman_weight_bound ht).2
      (div_nonneg (sq_nonneg _) (hwPos ht).le)).trans_eq ?_
    change c t * (Real.pi * w t) = _
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
      exact (reflectedCarleman_weight_bound ht).1.const_mul (c t)
    · refine (hf2.const_mul Real.pi).mono' hStrong.norm.integral_prod_right' ?_
      filter_upwards [hInterior] with t ht
      rw [Real.norm_of_nonneg (integral_nonneg (fun _ => norm_nonneg _)), hNormRow ht]
      exact hRowBound ht
  have hIntA : (∫ z, A z ∂(μ.prod μ)) ≤ Real.pi * ∫ t, f t ^ 2 ∂μ := by
    rw [integral_prod A hA, ← integral_const_mul]
    exact integral_mono_ae hA.integral_prod_left (hf2.const_mul Real.pi)
      (hInterior.mono (fun _ ht => hRowBound ht))
  have hPair : ∀ᵐ z ∂μ.prod μ, z ∈ (Ioo 0 T) ×ˢ (Ioo 0 T) := by
    apply (Measure.ae_prod_mem_iff_ae_ae_mem (measurableSet_Ioo.prod measurableSet_Ioo)).2
    filter_upwards [hInterior] with t ht
    exact hInterior.mono (fun _ hs => ⟨ht, hs⟩)
  have hDom : ∀ᵐ z ∂μ.prod μ, ‖F z‖ ≤ (A z + A z.swap) / 2 := by
    filter_upwards [hPair] with z hz
    have hProd := weighted_product_le (f z.1) (f z.2) (hwPos hz.1) (hwPos hz.2)
    have hFn : 0 ≤ F z := mul_nonneg (hKPos hz.1 hz.2) (mul_nonneg (abs_nonneg _) (abs_nonneg _))
    rw [Real.norm_of_nonneg hFn]
    calc
      F z ≤ reflectedCarleman T z.1 z.2 * ((c z.1 * w z.2 + c z.2 * w z.1) / 2) :=
        mul_le_mul_of_nonneg_left hProd (hKPos hz.1 hz.2)
      _ = _ := by
        dsimp only [A, Prod.swap]
        rw [show reflectedCarleman T z.2 z.1 = reflectedCarleman T z.1 z.2 by
          unfold reflectedCarleman
          rw [add_comm]]
        ring
  have hMajor : Integrable (fun z => (A z + A z.swap) / 2) (μ.prod μ) :=
    (hA.add hA.swap).div_const 2
  have hFM : Measurable F := by
    change Measurable ((fun z : ℝ × ℝ => reflectedCarleman T z.1 z.2) *
      (((fun t : ℝ => |f t|) ∘ Prod.fst) * ((fun t : ℝ => |f t|) ∘ Prod.snd)))
    simpa only [Real.norm_eq_abs] using
      hKM.mul ((hf.norm.comp measurable_fst).mul (hf.norm.comp measurable_snd))
  have hF := hMajor.mono' hFM.aestronglyMeasurable hDom
  refine ⟨hF, ?_⟩
  calc
    _ ≤ ∫ z, (A z + A z.swap) / 2 ∂(μ.prod μ) :=
      integral_mono_ae hF hMajor (hDom.mono (fun z hz => (le_abs_self (F z)).trans
        (by simpa only [Real.norm_eq_abs] using hz)))
    _ = ∫ z, A z ∂(μ.prod μ) := by
      rw [integral_div]
      change (∫ z, A z + (A ∘ Prod.swap) z ∂(μ.prod μ)) / 2 = _
      rw [integral_add hA hA.swap]
      change ((∫ z, A z ∂(μ.prod μ)) + (∫ z, A z.swap ∂(μ.prod μ))) / 2 = _
      rw [integral_prod_swap]
      ring
    _ ≤ _ := hIntA

private def exponentialWeight (T t : ℝ) : ℝ := Real.exp (-(T - t) / 2)

private theorem exponentialWeight_sq_integral {T : ℝ} (hT : 0 < T) :
    (∫ t in Ioo 0 T, exponentialWeight T t ^ 2) = 1 - Real.exp (-T) := by
  have hEq (t : ℝ) : exponentialWeight T t ^ 2 = Real.exp t * Real.exp (-T) := by
    unfold exponentialWeight
    rw [pow_two, ← Real.exp_add, show -(T - t) / 2 + -(T - t) / 2 = t + -T by ring,
      Real.exp_add]
  simp_rw [hEq]
  rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le hT.le,
    intervalIntegral.integral_mul_const, integral_exp, Real.exp_zero, sub_mul, one_mul,
    Real.exp_neg, mul_inv_cancel₀ (Real.exp_pos T).ne']

private theorem exponential_absForm_bound (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ)
    (hf : Measurable f) (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    let μ := volume.restrict (Ioo 0 T)
    let U := fun t => exponentialWeight T t * |f t|
    Integrable (fun z : ℝ × ℝ => U z.1 * U z.2) (μ.prod μ) ∧
      (∫ z : ℝ × ℝ, U z.1 * U z.2 ∂(μ.prod μ)) ≤
        (1 - Real.exp (-T)) * ∫ t, f t ^ 2 ∂μ := by
  dsimp only
  let μ := volume.restrict (Ioo 0 T)
  let w := exponentialWeight T
  let U := fun t => w t * ‖f t‖
  have hw : Continuous w := by
    change Continuous (fun t : ℝ => Real.exp (-(T - t) / 2))
    fun_prop
  have hw2 : Integrable (fun t => w t ^ 2) μ :=
    ((hw.pow 2).integrableOn_Icc).mono_set Ioo_subset_Icc_self
  have hwLp : MemLp w 2 μ := (memLp_two_iff_integrable_sq hw.aestronglyMeasurable).2 hw2
  have hfLp : MemLp f 2 μ := (memLp_two_iff_integrable_sq hf.aestronglyMeasurable).2 hf2
  have hU : Integrable U μ := hwLp.integrable_mul hfLp.norm
  have hwp : MemLp w (ENNReal.ofReal (2 : ℝ)) μ := by simpa using hwLp
  have hfp : MemLp (fun t => ‖f t‖) (ENNReal.ofReal (2 : ℝ)) μ := by simpa using hfLp.norm
  have hTwo : (2 : ℝ).HolderConjugate 2 := Real.holderConjugate_iff.mpr (by norm_num)
  have hC := integral_mul_le_Lp_mul_Lq_of_nonneg hTwo
    (Eventually.of_forall (fun t => Real.exp_nonneg (-(T - t) / 2)))
    (Eventually.of_forall (fun t => norm_nonneg (f t))) hwp hfp
  have hRoot :
      (∫ t, U t ∂μ) ≤ Real.sqrt (∫ t, w t ^ 2 ∂μ) * Real.sqrt (∫ t, f t ^ 2 ∂μ) := by
    simpa only [U, w, exponentialWeight, Real.rpow_two, Real.norm_eq_abs, sq_abs,
      ← Real.sqrt_eq_rpow] using hC
  have hUn : 0 ≤ ∫ t, U t ∂μ :=
    integral_nonneg (fun t => mul_nonneg (Real.exp_nonneg _) (norm_nonneg (f t)))
  have hSq := pow_le_pow_left₀ hUn hRoot 2
  rw [mul_pow, Real.sq_sqrt (integral_nonneg (fun _ => sq_nonneg _)),
    Real.sq_sqrt (integral_nonneg (fun _ => sq_nonneg _))] at hSq
  have hwInt : (∫ t, w t ^ 2 ∂μ) = 1 - Real.exp (-T) := exponentialWeight_sq_integral hT
  rw [hwInt] at hSq
  simpa only [U, Real.norm_eq_abs] using
    (show Integrable (fun z : ℝ × ℝ => U z.1 * U z.2) (μ.prod μ) ∧
      (∫ z : ℝ × ℝ, U z.1 * U z.2 ∂(μ.prod μ)) ≤
        (1 - Real.exp (-T)) * ∫ t, f t ^ 2 ∂μ from by
      refine ⟨hU.mul_prod hU, ?_⟩
      rw [integral_prod_mul, ← pow_two]
      exact hSq)

/-- The Carleman and exponential losses on the actual positive half window. -/
def boundaryLoss (T : ℝ) : ℝ := Real.pi / 2 + 1 - Real.exp (-T)

/-- Return a pointwise majorant to the same literal odd quadratic kernel. -/
private theorem oddKernel_quadratic_abs_le_of_majorant (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) {c : ℝ} (hc : 0 ≤ c)
    (hMajorant : ∀ {r : ℝ}, 0 < r →
      parityKernel 0 r ≤ 1 / (2 * r) + c * Real.exp (-r / 2)) :
    |∫ t in Ioo 0 T, ∫ s in Ioo 0 T, oddKernel T t s * f t * f s| ≤
      (Real.pi / 2 + c * (1 - Real.exp (-T))) * ∫ t in Ioo 0 T, f t ^ 2 := by
  let μ := volume.restrict (Ioo 0 T)
  let C := fun z : ℝ × ℝ => reflectedCarleman T z.1 z.2 * (|f z.1| * |f z.2|)
  let E := fun z : ℝ × ℝ => (exponentialWeight T z.1 * |f z.1|) *
    (exponentialWeight T z.2 * |f z.2|)
  let F := fun z : ℝ × ℝ => oddKernel T z.1 z.2 * f z.1 * f z.2
  have hC := reflectedCarleman_absForm_bound T f hf hf2
  have hE := exponential_absForm_bound T hT f hf hf2
  have hF : Integrable F (μ.prod μ) := (oddKernel_quadratic_bound T f hf hf2).1
  have hCInt : Integrable C (μ.prod μ) := hC.1
  have hEInt : Integrable E (μ.prod μ) := hE.1
  have hMajor : Integrable (fun z => (1 / 2 : ℝ) * C z + c * E z) (μ.prod μ) :=
    (hCInt.const_mul _).add (hEInt.const_mul c)
  have hInterior : ∀ᵐ t ∂μ, t ∈ Ioo 0 T := ae_restrict_mem measurableSet_Ioo
  have hPair : ∀ᵐ z ∂μ.prod μ, z ∈ (Ioo 0 T) ×ˢ (Ioo 0 T) := by
    apply (Measure.ae_prod_mem_iff_ae_ae_mem (measurableSet_Ioo.prod measurableSet_Ioo)).2
    filter_upwards [hInterior] with t ht
    exact hInterior.mono (fun _ hs => ⟨ht, hs⟩)
  have hDom : ∀ᵐ z ∂μ.prod μ, ‖F z‖ ≤ (1 / 2 : ℝ) * C z + c * E z := by
    filter_upwards [hPair] with z hz
    let r := (T - z.1) + (T - z.2)
    have hr : 0 < r := add_pos (sub_pos.mpr hz.1.2) (sub_pos.mpr hz.2.2)
    have hK := (oddKernel_abs_le_base hz.1 hz.2).trans
      (hMajorant hr)
    have hExp : Real.exp (-r / 2) = exponentialWeight T z.1 * exponentialWeight T z.2 := by
      unfold exponentialWeight
      rw [← Real.exp_add]
      dsimp only [r]
      congr 1
      ring
    calc
      ‖F z‖ = |oddKernel T z.1 z.2| * (|f z.1| * |f z.2|) := by
        simp [F, Real.norm_eq_abs, mul_assoc]
      _ ≤ (1 / (2 * r) + c * Real.exp (-r / 2)) * (|f z.1| * |f z.2|) :=
        mul_le_mul_of_nonneg_right hK (mul_nonneg (abs_nonneg _) (abs_nonneg _))
      _ = _ := by
        rw [hExp, ← one_div_mul_one_div]
        dsimp [C, E, reflectedCarleman, r]
        ring
  change |∫ t, ∫ s, F (t, s) ∂μ ∂μ| ≤ (Real.pi / 2 + c * (1 - Real.exp (-T))) * ∫ t, f t ^ 2 ∂μ
  rw [← integral_prod F hF]
  calc
    _ = ‖∫ z, F z ∂(μ.prod μ)‖ := (Real.norm_eq_abs _).symm
    _ ≤ ∫ z, ‖F z‖ ∂(μ.prod μ) := norm_integral_le_integral_norm _
    _ ≤ ∫ z, (1 / 2 : ℝ) * C z + c * E z ∂(μ.prod μ) := integral_mono_ae hF.norm hMajor hDom
    _ = (1 / 2 : ℝ) * (∫ z, C z ∂(μ.prod μ)) + c * (∫ z, E z ∂(μ.prod μ)) := by
      rw [integral_add (hCInt.const_mul _) (hEInt.const_mul c),
        integral_const_mul, integral_const_mul]
    _ ≤ (1 / 2 : ℝ) * (Real.pi * ∫ t, f t ^ 2 ∂μ) +
        c * ((1 - Real.exp (-T)) * ∫ t, f t ^ 2 ∂μ) :=
      add_le_add (mul_le_mul_of_nonneg_left hC.2 (by norm_num)) (mul_le_mul_of_nonneg_left hE.2 hc)
    _ = _ := by ring

/-- The absolute quadratic bound with the original boundary loss. -/
theorem oddKernel_quadratic_abs_le (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    |∫ t in Ioo 0 T, ∫ s in Ioo 0 T, oddKernel T t s * f t * f s| ≤
      boundaryLoss T * ∫ t in Ioo 0 T, f t ^ 2 := by
  have h := oddKernel_quadratic_abs_le_of_majorant T hT f hf hf2 (c := 1) (by norm_num)
    (fun hr => by simpa only [one_mul] using baseKernel_le_half_reciprocal_add_exp hr)
  unfold boundaryLoss
  convert h using 1; ring

/-- Signed lower return for the positive-half odd form. -/
theorem oddKernel_quadratic_ge (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    -(boundaryLoss T * ∫ t in Ioo 0 T, f t ^ 2) ≤
      ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, oddKernel T t s * f t * f s :=
  (abs_le.mp (oddKernel_quadratic_abs_le T hT f hf hf2)).1

/-- The boundary loss using half the exponential remainder. -/
def boundaryLossHalfExp (T : ℝ) : ℝ := Real.pi / 2 + (1 / 2) * (1 - Real.exp (-T))

/-- Signed lower return with the sharper exponential contribution. -/
theorem oddKernel_quadratic_ge_half_exp (T : ℝ) (hT : 0 < T) (f : ℝ → ℝ) (hf : Measurable f)
    (hf2 : IntegrableOn (fun t => f t ^ 2) (Ioo 0 T)) :
    -(boundaryLossHalfExp T * ∫ t in Ioo 0 T, f t ^ 2) ≤
      ∫ t in Ioo 0 T, ∫ s in Ioo 0 T, oddKernel T t s * f t * f s :=
  (abs_le.mp (oddKernel_quadratic_abs_le_of_majorant T hT f hf hf2
    (by norm_num : 0 ≤ (1 / 2 : ℝ)) (fun hr => baseKernel_le_half_reciprocal_add_half_exp hr))).1

end GRWTSK.NumberTheory.WeilQuadraticForm.OddSharpBoundaryNorm
