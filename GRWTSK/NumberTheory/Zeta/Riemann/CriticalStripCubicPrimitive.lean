/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripQuadraticPrimitive

set_option autoImplicit false

/-!
# A cubic primitive with the exact Bernoulli correction

The existing quadratic primitive has a nonzero cell mean. Its derivative primitive
is therefore formed AFTER adding 1/12. The cubic q(u)=u(u-1)(2u-1)/12 has zero
integer endpoint values. Both its values and first polynomial jets agree at a
seam; second jets do not. The proof still uses local polynomial integration by
parts and genuine integrable tails, not an assumed global smoothness statement.

The source identity on Re(s)>0 is
 H(s)=(s+2)(s+3)/12-s(s-1)(s+1)(s+2)*integral_1^infty q({t})t^(-s-3)dt.
The finite model gains +s(s-1)N^(-s-1)/12 and an N^(-sigma-2) remainder.
Neither the correction nor noninteger-cutoff boundary terms may be discarded.
These are SOURCE SCRIPTS; exact elaboration and transitive axiom audit are NOT_RUN.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.CubicPrimitive

open Complex MeasureTheory Set Filter Asymptotics
open scoped Topology

noncomputable section

/-- A rational polynomial bound, deliberately not the sharp transcendental maximum. -/
lemma cubic_unit_bound {u : ℝ} (hu : 0 ≤ u) (hu1 : u ≤ 1) :
    |u * (u - 1) * (2 * u - 1) / 12| ≤ (1 / 120 : ℝ) := by
  let v : ℝ := |2 * u - 1|
  have hv : 0 ≤ v := abs_nonneg _
  have hv1 : v ≤ 1 := by
    dsimp only [v]
    apply abs_le.mpr
    constructor <;> linarith
  have hp : 0 ≤ 5 * v ^ 3 - 5 * v + 2 := by
    by_cases hsmall : v ≤ 2 / 5
    · have hv3 : 0 ≤ v ^ 3 := pow_nonneg hv _
      nlinarith
    · have hlarge : 2 / 5 ≤ v := (lt_of_not_ge hsmall).le
      have hterm : 0 ≤ 5 * (v - 3 / 5) ^ 2 * (v + 6 / 5) := by positivity
      have hrem : 0 ≤ (2 / 5 : ℝ) * (v - 2 / 5) := by positivity
      have heq : 5 * v ^ 3 - 5 * v + 2 =
          5 * (v - 3 / 5) ^ 2 * (v + 6 / 5) + (2 / 5) * (v - 2 / 5) := by ring
      rw [heq]
      exact add_nonneg hterm hrem
  have hsmall : v * (1 - v ^ 2) ≤ (2 / 5 : ℝ) := by nlinarith
  have hsq : v ^ 2 = (2 * u - 1) ^ 2 := sq_abs _
  have heq : v * (1 - v ^ 2) = 4 * u * (1 - u) * v := by rw [hsq]; ring
  have habs : |u * (u - 1) * (2 * u - 1) / 12| = u * (1 - u) * v / 12 := by
    rw [abs_div, abs_mul, abs_mul, abs_of_nonneg hu,
      abs_of_nonpos (sub_nonpos.mpr hu1)]
    dsimp only [v]
    norm_num <;> ring
  rw [habs]
  rw [heq] at hsmall
  nlinarith

def realKernel (t : ℝ) : ℝ :=
  realFractionalKernel t * (realFractionalKernel t - 1) *
    (2 * realFractionalKernel t - 1) / 12

def kernel (t : ℝ) : ℂ := (realKernel t : ℂ)

lemma kernel_norm_le (t : ℝ) : ‖kernel t‖ ≤ (1 / 120 : ℝ) := by
  rw [kernel, Complex.norm_real, Real.norm_eq_abs]
  exact cubic_unit_bound (realFractionalKernel_nonneg t) (realFractionalKernel_le_one t)

lemma kernel_measurable : Measurable kernel := by
  exact Complex.continuous_ofReal.measurable.comp
    (((realFractionalKernel_measurable.mul
      (realFractionalKernel_measurable.sub measurable_const)).mul
      ((measurable_const.mul realFractionalKernel_measurable).sub measurable_const)).div_const 12)

lemma kernel_zero_below {t : ℝ} (ht : t < 1) : kernel t = 0 := by
  simp [kernel, realKernel, realFractionalKernel, not_le.mpr ht]

@[simp] lemma kernel_nat (n : ℕ) : kernel (n : ℝ) = 0 := by
  by_cases hn : 1 ≤ n
  · have hnr : (1 : ℝ) ≤ n := by exact_mod_cast hn
    simp [kernel, realKernel, realFractionalKernel, hnr]
  · have hn0 : n = 0 := by omega
    subst n
    exact kernel_zero_below (by norm_num)

lemma kernel_locallyIntegrable : LocallyIntegrableOn kernel (Ioi 0) := by
  have hi : MemLp kernel ⊤ (volume : Measure ℝ) :=
    memLp_top_of_bound kernel_measurable.aestronglyMeasurable (1 / 120)
      (Eventually.of_forall kernel_norm_le)
  exact (hi.locallyIntegrable le_top).locallyIntegrableOn _

lemma kernel_isBigO_top : kernel =O[atTop] (fun t : ℝ => t ^ (-(0 : ℝ))) := by
  refine isBigO_iff.mpr ⟨1, Eventually.of_forall ?_⟩
  intro t
  have h := (kernel_norm_le t).trans (by norm_num : (1 / 120 : ℝ) ≤ 1)
  simpa using h

lemma kernel_isBigO_zero (b : ℝ) :
    kernel =O[𝓝[>] (0 : ℝ)] (fun t : ℝ => t ^ (-b)) := by
  refine isBigO_iff.mpr ⟨0, ?_⟩
  filter_upwards [(eventually_lt_nhds (show (0 : ℝ) < 1 from zero_lt_one)).filter_mono
    nhdsWithin_le_nhds] with t ht
  simp [kernel_zero_below ht]

def integrand (s : ℂ) (t : ℝ) : ℂ := kernel t * (t : ℂ) ^ (-(s + 3))
def tail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, integrand s t

def adjustedIntegrand (s : ℂ) (t : ℝ) : ℂ :=
  (QuadraticPrimitive.kernel t + 1 / 12) * (t : ℂ) ^ (-(s + 2))
def adjustedTail (T : ℝ) (s : ℂ) : ℂ := ∫ t : ℝ in Ioi T, adjustedIntegrand s t

lemma integrand_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (integrand s) (Ioi T) := by
  have hm : MellinConvergent kernel (-(s + 2)) := by
    apply mellinConvergent_of_isBigO_rpow kernel_locallyIntegrable kernel_isBigO_top
      (by simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
      (kernel_isBigO_zero (-s.re - 3))
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
    linarith
  have hi := hm.mono_set (Ioi_subset_Ioi (zero_le_one.trans hT))
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [integrand, smul_eq_mul]
  rw [show -(s + 2) - 1 = -(s + 3) by ring]
  exact mul_comm _ _

lemma correction_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ => (t : ℂ) ^ (-(s + 2))) (Ioi T) := by
  apply integrableOn_Ioi_cpow_of_lt
  · simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith
  · exact zero_lt_one.trans_le hT

lemma adjusted_integrable {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (adjustedIntegrand s) (Ioi T) := by
  have h := (QuadraticPrimitive.integrand_integrable hT hs).add
    ((correction_integrable hT hs).const_mul (1 / 12 : ℂ))
  refine h.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [adjustedIntegrand, QuadraticPrimitive.integrand]
  ring

lemma adjusted_kernel_norm_le (t : ℝ) :
    ‖QuadraticPrimitive.kernel t + (1 / 12 : ℂ)‖ ≤ (1 / 12 : ℝ) := by
  have hb := QuadraticPrimitive.realKernel_bounds t
  have heq : QuadraticPrimitive.kernel t + (1 / 12 : ℂ) =
      ((QuadraticPrimitive.realKernel t + 1 / 12 : ℝ) : ℂ) := by
    norm_num [QuadraticPrimitive.kernel]
  rw [heq, Complex.norm_real, Real.norm_eq_abs]
  apply abs_le.mpr
  constructor <;> linarith [hb.1, hb.2]

/-- All powers integrated below converge independently at the stated parameters. -/
theorem tail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖tail T s‖ ≤ T ^ (-(σ + 2)) / (120 * (σ + 2)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := integrand_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 3))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖tail T s‖ ≤ ∫ t in Ioi T, ‖integrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 120 : ℝ) * t ^ (-(σ + 3)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 120))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [integrand, norm_mul, Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (kernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 2)) / (120 * (σ + 2)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 3) < -1) hT0,
        show -(σ + 3) + 1 = -(σ + 2) by ring, neg_div_neg_eq]
      ring

lemma adjustedTail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖adjustedTail T s‖ ≤ T ^ (-(σ + 1)) / (12 * (σ + 1)) := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := adjusted_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 2))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖adjustedTail T s‖ ≤ ∫ t in Ioi T, ‖adjustedIntegrand s t‖ := norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, (1 / 12 : ℝ) * t ^ (-(σ + 2)) := by
      apply integral_mono_ae hi.norm (hg.const_mul (1 / 12))
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      rw [adjustedIntegrand, norm_mul,
        Complex.norm_cpow_eq_rpow_re_of_pos (hT0.trans ht)]
      simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]
      exact mul_le_mul (adjusted_kernel_norm_le t)
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
        (Real.rpow_nonneg (hT0.trans ht).le _) (by norm_num)
    _ = T ^ (-(σ + 1)) / (12 * (σ + 1)) := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(σ + 2) < -1) hT0,
        show -(σ + 2) + 1 = -(σ + 1) by ring, neg_div_neg_eq]
      ring

/-- The 1/12 correction is evaluated as an actual convergent integral. -/
lemma adjustedTail_eq {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    adjustedTail T s = QuadraticPrimitive.tail T s +
      (T : ℂ) ^ (-(s + 1)) / (12 * (s + 1)) := by
  have hfun : adjustedIntegrand s = fun t => QuadraticPrimitive.integrand s t +
      (1 / 12 : ℂ) * (t : ℂ) ^ (-(s + 2)) := by
    funext t; simp only [adjustedIntegrand, QuadraticPrimitive.integrand]; ring
  rw [adjustedTail, hfun, integral_add
    (QuadraticPrimitive.integrand_integrable hT hs)
    ((correction_integrable hT hs).const_mul (1 / 12)), integral_const_mul]
  rw [integral_Ioi_cpow_of_lt (by
    simp only [Complex.neg_re, Complex.add_re, Complex.ofNat_re]; linarith)
    (zero_lt_one.trans_le hT),
    show -(s + 2) + 1 = -(s + 1) by ring, neg_div_neg_eq]
  change QuadraticPrimitive.tail T s + _ = _
  ring

def cell (n : ℕ) (t : ℝ) : ℂ :=
  ((t : ℂ) - n) * ((t : ℂ) - n - 1) * (2 * ((t : ℂ) - n) - 1) / 12

def cellDerivative (n : ℕ) (t : ℝ) : ℂ := QuadraticPrimitive.cell n t + 1 / 12

@[simp] lemma cell_left (n : ℕ) : cell n (n : ℝ) = 0 := by simp [cell]
@[simp] lemma cell_right (n : ℕ) : cell n ((n + 1 : ℕ) : ℝ) = 0 := by
  simp [cell, Nat.cast_add, Nat.cast_one]
@[simp] lemma derivative_left (n : ℕ) : cellDerivative n (n : ℝ) = 1 / 12 := by
  simp [cellDerivative]
@[simp] lemma derivative_right (n : ℕ) : cellDerivative n ((n + 1 : ℕ) : ℝ) = 1 / 12 := by
  simp [cellDerivative]

lemma cell_hasDerivAt (n : ℕ) (t : ℝ) : HasDerivAt (cell n) (cellDerivative n t) t := by
  have hid : HasDerivAt (fun u : ℝ => (u : ℂ)) (1 : ℂ) t := by
    simpa using (Complex.ofRealCLM.hasDerivAt (x := t))
  let d := hid.sub_const (n : ℂ)
  convert (((d.mul (d.sub_const 1)).mul ((d.const_mul 2).sub_const 1)).div_const 12)
    using 1 <;> dsimp only [cell, cellDerivative, QuadraticPrimitive.cell] <;> ring

lemma cellDerivative_hasDerivAt (n : ℕ) (t : ℝ) :
    HasDerivAt (cellDerivative n) ((t : ℂ) - n - 1 / 2) t := by
  simpa only [cellDerivative] using (QuadraticPrimitive.cell_hasDerivAt n t).add_const (1 / 12)

lemma kernel_eq_cell {n : ℕ} {t : ℝ} (hn : 1 ≤ n)
    (ht : t ∈ Ioo (n : ℝ) ((n + 1 : ℕ) : ℝ)) : kernel t = cell n t := by
  have htn : (1 : ℝ) ≤ t := (by exact_mod_cast hn : (1 : ℝ) ≤ n).trans ht.1.le
  simp only [kernel, realKernel, realFractionalKernel, if_pos htn,
    QuadraticPrimitive.floor_eq_on_open_cell hn ht, cell]
  push_cast <;> ring

/-- Cellwise integration; the constant correction is part of the derivative. -/
lemma cell_integral_identity {n : ℕ} {s : ℂ} (hn : 1 ≤ n) (hs : 0 < s.re) :
    (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), adjustedIntegrand s t) =
      (s + 2) * ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t := by
  have hab : (n : ℝ) ≤ ((n + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ n
  let g : ℝ → ℂ := fun t => (t : ℂ) ^ (-(s + 2))
  let gp : ℝ → ℂ := fun t => -(s + 2) * (t : ℂ) ^ (-(s + 3))
  have hpne : -(s + 2) ≠ 0 := neg_ne_zero.mpr (Complex.ne_zero_of_re_pos (by
    simp only [Complex.add_re, Complex.ofNat_re]; linarith))
  have hg : ∀ t ∈ uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ), HasDerivAt g (gp t) t := by
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    have h := hasDerivAt_ofReal_cpow_const ht0.ne' hpne
    simpa only [g, gp, show -(s + 2) - 1 = -(s + 3) by ring] using h
  have hgp : ContinuousOn gp (uIcc (n : ℝ) ((n + 1 : ℕ) : ℝ)) := by
    apply continuousOn_const.mul
    intro t ht
    rw [uIcc_of_le hab] at ht
    have ht0 : 0 < t := (zero_lt_one.trans_le (by exact_mod_cast hn)).trans_le ht.1
    exact (Complex.continuousAt_ofReal_cpow_const _ _ (Or.inr ht0.ne')).continuousWithinAt
  have hcp : Continuous (cellDerivative n) := by
    dsimp only [cellDerivative, QuadraticPrimitive.cell]; fun_prop
  have hbyparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    hg (fun t _ => cell_hasDerivAt n t) hgp.intervalIntegrable (hcp.intervalIntegrable _ _)
  have hc : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), adjustedIntegrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), g t * cellDerivative n t := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    rw [adjustedIntegrand, QuadraticPrimitive.kernel_eq_cell hn ht]
    dsimp only [g, cellDerivative]; ring
  have hp : (∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), integrand s t) =
      ∫ t : ℝ in (n : ℝ)..((n + 1 : ℕ) : ℝ), cell n t * (t : ℂ) ^ (-(s + 3)) := by
    apply intervalIntegral.integral_congr_ae_restrict
    rw [uIoc_of_le hab, ← restrict_Ioo_eq_restrict_Ioc]
    filter_upwards [ae_restrict_mem measurableSet_Ioo] with t ht
    simp only [integrand, kernel_eq_cell hn ht]
  rw [hc, hbyparts, hp]
  simp only [cell_left, cell_right, mul_zero, sub_self, zero_sub]
  rw [← intervalIntegral.integral_neg, ← intervalIntegral.integral_const_mul]
  apply intervalIntegral.integral_congr
  intro t ht
  dsimp only [gp]; ring

lemma finite_integral_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    (∫ t : ℝ in (1 : ℝ)..(N : ℝ), adjustedIntegrand s t) =
      (s + 2) * ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t := by
  have hA := adjusted_integrable (T := 1) le_rfl hs
  have hQ := integrand_integrable (T := 1) le_rfl hs
  induction N, hN using Nat.le_induction with
  | base => simp
  | succ N hN ih =>
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have hNN : (N : ℝ) ≤ ((N + 1 : ℕ) : ℝ) := by exact_mod_cast Nat.le_succ N
    calc
      (∫ t : ℝ in (1 : ℝ)..((N + 1 : ℕ) : ℝ), adjustedIntegrand s t) =
          (∫ t : ℝ in (1 : ℝ)..(N : ℝ), adjustedIntegrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), adjustedIntegrand s t :=
        (intervalIntegral.integral_add_adjacent_intervals
          (QuadraticPrimitive.intervalIntegrable_of_tail hA le_rfl hNR)
          (QuadraticPrimitive.intervalIntegrable_of_tail hA hNR hNN)).symm
      _ = (s + 2) * ((∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) +
          ∫ t : ℝ in (N : ℝ)..((N + 1 : ℕ) : ℝ), integrand s t) := by
        rw [ih, cell_integral_identity hN hs]; ring
      _ = _ := by rw [intervalIntegral.integral_add_adjacent_intervals
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ le_rfl hNR)
        (QuadraticPrimitive.intervalIntegrable_of_tail hQ hNR hNN)]

/-- Full equality from finite telescoping and independently convergent tails. -/
theorem adjusted_value_identity {s : ℂ} (hs : 0 < s.re) :
    adjustedTail 1 s = (s + 2) * tail 1 s := by
  let R : ℂ := adjustedTail 1 s - (s + 2) * tail 1 s
  have heq (N : ℕ) (hN : 1 ≤ N) :
      R = adjustedTail N s - (s + 2) * tail N s := by
    have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
    have ha := QuadraticPrimitive.split_integral_tail (adjusted_integrable (T := 1) le_rfl hs) hNR
    have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
    change adjustedTail 1 s = _ + adjustedTail N s at ha
    change tail 1 s = _ + tail N s at hq
    dsimp only [R]
    rw [ha, hq, finite_integral_identity hN hs]
    ring
  have hbound (n : ℕ) : ‖R‖ ≤
      ((n : ℝ) + 1) ^ (-(s.re + 1)) / (12 * (s.re + 1)) +
      ‖s + 2‖ * (((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2))) := by
    rw [heq (n + 1) (by omega)]
    calc
      _ ≤ ‖adjustedTail (n + 1) s‖ + ‖s + 2‖ * ‖tail (n + 1) s‖ := by
        simpa only [norm_mul] using norm_sub_le (adjustedTail (n + 1) s) ((s + 2) * tail (n + 1) s)
      _ ≤ _ := by
        simpa only [Nat.cast_add, Nat.cast_one] using add_le_add
          (adjustedTail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl)
          (mul_le_mul_of_nonneg_left (tail_norm_le (T := ((n + 1 : ℕ) : ℝ))
            (by exact_mod_cast Nat.succ_le_succ (Nat.zero_le n)) hs le_rfl) (norm_nonneg _))
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  have hlim : Tendsto (fun n : ℕ =>
      ((n : ℝ) + 1) ^ (-(s.re + 1)) / (12 * (s.re + 1)) +
      ‖s + 2‖ * (((n : ℝ) + 1) ^ (-(s.re + 2)) / (120 * (s.re + 2)))) atTop (𝓝 0) := by
    have h1 := ((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 1)).comp hn).div_const (12 * (s.re + 1))
    have h2 := (((tendsto_rpow_neg_atTop (by linarith : 0 < s.re + 2)).comp hn).div_const
      (120 * (s.re + 2))).const_mul ‖s + 2‖
    simpa using h1.add h2
  have hzero : ‖R‖ ≤ 0 := le_of_tendsto_of_tendsto tendsto_const_nhds hlim (Eventually.of_forall hbound)
  exact sub_eq_zero.mp (norm_eq_zero.mp (le_antisymm hzero (norm_nonneg _)))

lemma adjusted_integer_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    adjustedTail N s = (s + 2) * tail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have ha := QuadraticPrimitive.split_integral_tail (adjusted_integrable (T := 1) le_rfl hs) hNR
  have hq := QuadraticPrimitive.split_integral_tail (integrand_integrable (T := 1) le_rfl hs) hNR
  change adjustedTail 1 s = _ + adjustedTail N s at ha
  change tail 1 s = _ + tail N s at hq
  calc
    adjustedTail N s = adjustedTail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), adjustedIntegrand s t := by rw [ha]; ring
    _ = (s + 2) * (tail 1 s - ∫ t : ℝ in (1 : ℝ)..(N : ℝ), integrand s t) := by
      rw [adjusted_value_identity hs, finite_integral_identity hN hs]; ring
    _ = _ := by rw [hq]; ring

/-- The integer endpoint correction survives centering the quadratic primitive. -/
theorem integer_tail_identity {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    CenteredMellin.tail N s = -(N : ℂ) ^ (-(s + 1)) / 12 + (s + 1) * (s + 2) * tail N s := by
  have hNR : (1 : ℝ) ≤ N := by exact_mod_cast hN
  have hsp : s + 1 ≠ 0 := Complex.ne_zero_of_re_pos (by simp only [Complex.add_re, Complex.one_re]; linarith)
  rw [QuadraticPrimitive.integer_tail_identity hN hs]
  calc
    (s + 1) * QuadraticPrimitive.tail N s =
        (s + 1) * (adjustedTail N s - (N : ℂ) ^ (-(s + 1)) / (12 * (s + 1))) := by
      rw [adjustedTail_eq hNR hs]
      simp only [Complex.ofReal_natCast]
      ring
    _ = _ := by
      rw [adjusted_integer_tail_identity hN hs]
      field_simp [hsp] <;> ring

theorem value_identity {s : ℂ} (hs : 0 < s.re) :
    CenteredMellin.value s = -(1 / 12 : ℂ) + (s + 1) * (s + 2) * tail 1 s := by
  simpa only [Nat.cast_one, Complex.one_cpow, neg_div, CenteredMellin.tail, CenteredMellin.value]
    using integer_tail_identity (N := 1) le_rfl hs

/-- Quadratic reference and the actual cubic-tail coefficient. -/
def reference (s : ℂ) : ℂ := (s + 2) * (s + 3) / 12
def multiplier (s : ℂ) : ℂ := s * (s - 1) * (s + 1) * (s + 2)

theorem source_identity {s : ℂ} (hs : 0 < s.re) :
    poleNormalizedZeta s = reference s - multiplier s * tail 1 s := by
  rw [CenteredMellin.source_identity hs, value_identity hs]
  unfold reference multiplier
  ring

/-- The old centered finite model requires an additional +s(s-1)N^(-s-1)/12. -/
def finiteModel (N : ℕ) (s : ℂ) : ℂ :=
  CenteredMellin.finiteModel N s + s * (s - 1) * (N : ℂ) ^ (-(s + 1)) / 12

theorem finiteModel_residual {N : ℕ} {s : ℂ} (hN : 1 ≤ N) (hs : 0 < s.re) :
    poleNormalizedZeta s - finiteModel N s = -multiplier s * tail N s := by
  have h := CenteredMellin.finiteModel_residual hN hs
  rw [integer_tail_identity hN hs] at h
  unfold finiteModel multiplier
  linear_combination h

theorem finiteModel_error {N : ℕ} {σ : ℝ} {s : ℂ}
    (hN : 1 ≤ N) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - finiteModel N s‖ ≤
      ‖multiplier s‖ * ((N : ℝ) ^ (-(σ + 2)) / (120 * (σ + 2))) := by
  rw [finiteModel_residual hN (hσ.trans_le hs), norm_mul, norm_neg]
  exact mul_le_mul_of_nonneg_left (tail_norm_le (by exact_mod_cast hN) hσ hs) (norm_nonneg _)

/-- A fixed-parameter remainder majorant decays. No uniform all-height margin follows. -/
theorem finiteModel_majorant_tendsto_zero {σ : ℝ} (hσ : 0 < σ) (s : ℂ) :
    Tendsto (fun n : ℕ => ‖multiplier s‖ *
      (((n : ℝ) + 1) ^ (-(σ + 2)) / (120 * (σ + 2)))) atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  simpa using (((tendsto_rpow_neg_atTop (by linarith : 0 < σ + 2)).comp hn).div_const
    (120 * (σ + 2))).const_mul ‖multiplier s‖

end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.CenteredMellin.CubicPrimitive
