/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineForm
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.Prod
import Mathlib.Topology.MetricSpace.Lipschitz

/-!
# Pointwise gamma output for bounded Lipschitz inputs

The kernel has a singularity at the origin. Each translated difference
of a Lipschitz input cancels this singularity before integration. A
bounded input controls the two differences at large shifts, where the
kernel decays exponentially. The symmetric difference gives the
literal gamma pairing after translation of the backward term.

This realizes the gamma output on the interval for finite sine trial
inputs. The prime and pole output, the closed form comparison with
the completed zeta source, and independent analytical review are separate.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set
open scoped NNReal

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaOutput

open OddRootProjection OddSineForm OddShiftEnergy

/-- Move the translations from the test function onto the trial. -/
def symmetricDifference (r : ℝ) (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  (f t - f (t + r)) + (f t - f (t - r))

/-- The literal gamma contribution to the operator output. -/
def gammaOutput (f : ℝ → ℝ) (t : ℝ) : ℝ :=
  ∫ r in Ioi (0 : ℝ), parityKernel 0 r * symmetricDifference r f t

theorem parityKernel_zero_nonneg {r : ℝ} (hr : 0 < r) : 0 ≤ parityKernel 0 r := by
  unfold parityKernel
  exact div_nonneg (Real.exp_nonneg _) (sub_nonneg.mpr (Real.exp_le_one_iff.mpr (by linarith)))

private theorem parityKernel_zero_le_exp {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r ≤ Real.exp (-(1/2 : ℝ) * r) * (1 + 1 / (2*r)) := by
  let e := Real.exp (2*r)
  have he : 1 < e := Real.one_lt_exp_iff.mpr (by positivity)
  have hepos : 0 < e := zero_lt_one.trans he
  have he1 : 0 < e-1 := sub_pos.mpr he
  have hden : 0 < 1-e⁻¹ := sub_pos.mpr (inv_lt_one_of_one_lt₀ he)
  have hrle : 2*r ≤ e-1 := by linarith [Real.add_one_le_exp (2*r)]
  have hfrac : 1 / (1-e⁻¹) = 1 + 1 / (e-1) := by
    field_simp [hepos.ne', he1.ne', hden.ne']
    ring
  unfold parityKernel
  rw [Nat.cast_zero, zero_add, show (-2 : ℝ) * r = -(2*r) by ring, Real.exp_neg, div_eq_mul_one_div]
  change Real.exp (-(1/2 : ℝ) * r) * (1 / (1-e⁻¹)) ≤ _
  rw [hfrac]
  exact mul_le_mul_of_nonneg_left
    (add_le_add_right (one_div_le_one_div_of_le (by positivity) hrle) _) (Real.exp_nonneg _)

private def majorant (B : ℝ) (K : ℝ≥0) (r : ℝ) : ℝ :=
  (4*B + K) * Real.exp (-(1/2 : ℝ) * r)

private theorem integrable_majorant (B : ℝ) (K : ℝ≥0) :
    IntegrableOn (majorant B K) (Ioi (0 : ℝ)) :=
  (integrableOn_exp_mul_Ioi (by norm_num : -(1/2 : ℝ) < 0) 0).const_mul _

theorem norm_weighted_symmetricDifference_le {f : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) {r : ℝ} (hr : 0 < r) (t : ℝ) :
    ‖parityKernel 0 r * symmetricDifference r f t‖ ≤ (4*B + K) * Real.exp (-(1/2 : ℝ) * r) := by
  have hnorm := norm_add_le (f t - f (t + r)) (f t - f (t - r))
  have hB : ‖symmetricDifference r f t‖ ≤ 4*B := by
    unfold symmetricDifference
    linarith [norm_sub_le (f t) (f (t + r)), norm_sub_le (f t) (f (t - r)),
      hb t, hb (t+r), hb (t-r)]
  have hp : ‖f t - f (t+r)‖ ≤ K * r := by
    simpa [show t - (t+r) = -r by ring, Real.norm_eq_abs, abs_of_pos hr] using
      hf.norm_sub_le t (t+r)
  have hm : ‖f t - f (t-r)‖ ≤ K * r := by
    simpa [show t - (t-r) = r by ring, Real.norm_eq_abs, abs_of_pos hr] using
      hf.norm_sub_le t (t-r)
  have hK : ‖symmetricDifference r f t‖ / (2*r) ≤ K :=
    (div_le_iff₀ (by positivity)).2 (by unfold symmetricDifference; linarith)
  rw [norm_mul, Real.norm_of_nonneg (parityKernel_zero_nonneg hr)]
  calc
    _ ≤ (Real.exp (-(1/2 : ℝ) * r) * (1 + 1 / (2*r))) *
        ‖symmetricDifference r f t‖ :=
      mul_le_mul_of_nonneg_right (parityKernel_zero_le_exp hr) (norm_nonneg _)
    _ = (‖symmetricDifference r f t‖ + ‖symmetricDifference r f t‖ / (2*r)) *
        Real.exp (-(1/2 : ℝ) * r) := by ring
    _ ≤ _ := mul_le_mul_of_nonneg_right (add_le_add hB hK) (Real.exp_nonneg _)

private theorem measurable_weighted_symmetricDifference {f : ℝ → ℝ} (hf : Measurable f) :
    Measurable (fun z : ℝ × ℝ => parityKernel 0 z.2 * symmetricDifference z.2 f z.1) := by
  unfold parityKernel symmetricDifference
  exact (by fun_prop : Measurable (fun z : ℝ × ℝ =>
    Real.exp (-((0 : ℕ) + 1/2 : ℝ) * z.2) / (1 - Real.exp (-2 * z.2)))).mul
    (((hf.comp measurable_fst).sub (hf.comp (measurable_fst.add measurable_snd))).add
      ((hf.comp measurable_fst).sub (hf.comp (measurable_fst.sub measurable_snd))))

theorem measurable_gammaOutput {f : ℝ → ℝ} (hf : Measurable f) :
    Measurable (gammaOutput f) :=
  (measurable_weighted_symmetricDifference hf).stronglyMeasurable.integral_prod_right'.measurable

theorem integrable_weighted_symmetricDifference {f : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) (t : ℝ) :
    IntegrableOn (fun r => parityKernel 0 r * symmetricDifference r f t) (Ioi (0 : ℝ)) := by
  have hmeas := (measurable_weighted_symmetricDifference hf.continuous.measurable).comp
    (measurable_const.prodMk measurable_id : Measurable (Prod.mk t))
  exact (integrable_majorant B K).mono' hmeas.aestronglyMeasurable (by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
    exact norm_weighted_symmetricDifference_le hf hb hr t)

private theorem norm_gammaOutput_le {f : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) (t : ℝ) :
    ‖gammaOutput f t‖ ≤ ∫ r in Ioi (0 : ℝ), majorant B K r := by
  exact (norm_integral_le_integral_norm _).trans
    (integral_mono_ae (integrable_weighted_symmetricDifference hf hb t).norm
      (integrable_majorant B K) (by
        filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
        exact norm_weighted_symmetricDifference_le hf hb hr t))

/-- Restriction of the gamma output to the window gives a genuine L² function. -/
theorem memLp_window_gammaOutput (T : ℝ) {f : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) :
    MemLp ((Icc (-T) T).indicator (gammaOutput f)) 2 volume := by
  rw [memLp_indicator_iff_restrict measurableSet_Icc]
  exact MemLp.of_bound (measurable_gammaOutput hf.continuous.measurable).aestronglyMeasurable
    _ (Filter.Eventually.of_forall (norm_gammaOutput_le hf hb))

theorem gammaOutput_odd {f : ℝ → ℝ} (hf : Function.Odd f) : Function.Odd (gammaOutput f) := by
  intro t
  have hdiff (r : ℝ) : symmetricDifference r f (-t) = -symmetricDifference r f t := by
    unfold symmetricDifference
    rw [show -t+r = -(t-r) by ring, show -t-r = -(t+r) by ring, hf t, hf (t-r), hf (t+r)]
    ring
  unfold gammaOutput
  simp_rw [hdiff, mul_neg, integral_neg]

/-- Exact finite-shift pairing, with both signed translation terms. -/
theorem integral_mul_symmetricDifference {f g : ℝ → ℝ} {B : ℝ}
    (hf : Measurable f) (hb : ∀ t, ‖f t‖ ≤ B) (hg : Integrable g) (r : ℝ) :
    (∫ t : ℝ, g t * symmetricDifference r f t) =
      ∫ t : ℝ, (g (t+r) - g t) * (f (t+r) - f t) := by
  have hgp : Integrable (fun t => g (t+r)) :=
    (measurePreserving_add_right volume r).integrable_comp_of_integrable hg
  have hprod (k : ℝ → ℝ) (hk : Integrable k) (s : ℝ) :
      Integrable (fun t => k t * f (t+s)) := by
    have hm : Measurable (fun t => f (t+s)) := hf.comp (measurable_id.add_const s)
    exact hk.mul_bdd hm.aestronglyMeasurable (Filter.Eventually.of_forall (fun t => hb (t+s)))
  have h00 : Integrable (fun t => g t * f t) := by simpa using hprod g hg 0
  have h0p := hprod g hg r
  have h0m : Integrable (fun t => g t * f (t-r)) := by
    simpa only [sub_eq_add_neg] using hprod g hg (-r)
  have hp0 : Integrable (fun t => g (t+r) * f t) := by
    simpa only [add_zero] using hprod (fun t => g (t+r)) hgp 0
  have hpp := hprod (fun t => g (t+r)) hgp r
  have htranslate : (∫ t : ℝ, g (t+r) * f t) = ∫ t : ℝ, g t * f (t-r) := by
    simpa only [add_sub_cancel_right] using
      integral_add_right_eq_self (fun t : ℝ => g t * f (t-r)) r
  have hleft := integral_add (h00.sub h0p) (h00.sub h0m)
  have hright := integral_sub (hpp.sub hp0) (h0p.sub h00)
  simp only [Pi.sub_apply] at hleft hright
  calc
    _ = ∫ t : ℝ, (g t * f t - g t * f (t+r)) + (g t * f t - g t * f (t-r)) := by
      simp only [symmetricDifference, mul_add, mul_sub]
    _ = ∫ t : ℝ, (g (t+r) * f (t+r) - g (t+r) * f t) -
        (g t * f (t+r) - g t * f t) := by
      rw [hleft, hright, integral_sub h00 h0p, integral_sub h00 h0m,
        integral_sub hpp hp0, integral_sub h0p h00,
        integral_add_right_eq_self (fun t : ℝ => g t * f t) r, htranslate]
      ring
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with t
      ring

/-- Absolute product integrability of the transferred gamma pairing. -/
private theorem integrable_gamma_pair {f g : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) (hg : Integrable g) (hgm : Measurable g) :
    Integrable (fun z : ℝ × ℝ => g z.1 * (parityKernel 0 z.2 * symmetricDifference z.2 f z.1))
      (volume.prod (volume.restrict (Ioi (0 : ℝ)))) := by
  have hgfun := (hgm.comp measurable_fst).mul
    (measurable_weighted_symmetricDifference hf.continuous.measurable)
  have hmaj : Measurable (majorant B K) := by unfold majorant; fun_prop
  apply (hg.norm.mul_prod (integrable_majorant B K)).mono' hgfun.aestronglyMeasurable
  apply (Measure.ae_prod_iff_ae_ae (measurableSet_le hgfun.norm
    ((hgm.norm.comp measurable_fst).mul (hmaj.comp measurable_snd)))).2
  filter_upwards [] with t
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with r hr
  change ‖g t * (parityKernel 0 r * symmetricDifference r f t)‖ ≤ ‖g t‖ * majorant B K r
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (norm_weighted_symmetricDifference_le hf hb hr t) (norm_nonneg _)

/-- The output pairs with the literal mixed translation form on the whole line. -/
theorem integral_mul_gammaOutput {f g : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) (hg : Integrable g) (hgm : Measurable g) :
    (∫ t : ℝ, g t * gammaOutput f t) =
      ∫ r in Ioi (0 : ℝ), parityKernel 0 r *
        (∫ t : ℝ, (g (t+r) - g t) * (f (t+r) - f t)) := by
  calc
    _ = ∫ t : ℝ, ∫ r in Ioi (0 : ℝ),
        g t * (parityKernel 0 r * symmetricDifference r f t) := by
      simp only [gammaOutput, integral_const_mul]
    _ = ∫ r in Ioi (0 : ℝ), ∫ t : ℝ,
        g t * (parityKernel 0 r * symmetricDifference r f t) :=
      integral_integral_swap (f := fun t r : ℝ => g t *
        (parityKernel 0 r * symmetricDifference r f t)) (integrable_gamma_pair hf hb hg hgm)
    _ = _ := by
      apply integral_congr_ae
      filter_upwards [] with r
      rw [← integral_mul_symmetricDifference hf.continuous.measurable hb hg, ← integral_const_mul]
      apply integral_congr_ae
      filter_upwards [] with t
      ring

theorem integrableOn_mixedGamma {f g : ℝ → ℝ} {K : ℝ≥0} {B : ℝ}
    (hf : LipschitzWith K f) (hb : ∀ t, ‖f t‖ ≤ B) (hg : Integrable g) (hgm : Measurable g) :
    IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (g (t+r) - g t) * (f (t+r) - f t))) (Ioi 0) := by
  refine (integrable_gamma_pair hf hb hg hgm).integral_prod_right.congr ?_
  filter_upwards [] with r
  rw [← integral_mul_symmetricDifference hf.continuous.measurable hb hg, ← integral_const_mul]
  apply integral_congr_ae
  filter_upwards [] with t
  ring

/-- The supported source sine is the continuous sine composed with interval
clamping. The equality uses the vanishing of the sine at both endpoints. -/
private theorem zeroExtendedSine_eq_clamp (T : ℝ) (hT : 0 < T) (n : ℕ) (t : ℝ) :
    zeroExtendedSine T n t =
      Real.sin ((Real.pi * (n : ℝ) / T) * max (-T) (min T t)) / Real.sqrt T := by
  have hphase : (Real.pi * (n : ℝ) / T) * T = (n : ℝ) * Real.pi := by
    field_simp [hT.ne']
  have hl : Real.sin ((Real.pi * (n : ℝ) / T) * (-T)) = 0 := by
    rw [mul_neg, hphase, Real.sin_neg, Real.sin_nat_mul_pi, neg_zero]
  have hu : Real.sin ((Real.pi * (n : ℝ) / T) * T) = 0 := by
    rw [hphase, Real.sin_nat_mul_pi]
  by_cases ht : t ∈ Icc (-T) T
  · rw [zeroExtendedSine, ite_eq_left ht, min_eq_right ht.2, max_eq_right ht.1]
    congr 2
    ring
  rw [zeroExtendedSine, ite_eq_right ht]
  by_cases hleft : t < -T
  · rw [min_eq_right (by linarith), max_eq_left hleft.le, hl, zero_div]
  · have hright : T < t := lt_of_not_ge (fun h => ht ⟨le_of_not_gt hleft, h⟩)
    rw [min_eq_left hright.le, max_eq_right (by linarith), hu, zero_div]

theorem lipschitzWith_zeroExtendedSine (T : ℝ) (hT : 0 < T) (n : ℕ) :
    LipschitzWith (|Real.pi * (n : ℝ) / T| / Real.sqrt T).toNNReal (zeroExtendedSine T n) := by
  let w := Real.pi * (n : ℝ) / T
  let clamp := fun t : ℝ => max (-T) (min T t)
  have hc : LipschitzWith 1 clamp := (LipschitzWith.id.const_min T).const_max (-T)
  have hT' := Real.sqrt_pos.2 hT
  refine LipschitzWith.of_dist_le_mul (fun t s => ?_)
  rw [Real.dist_eq, zeroExtendedSine_eq_clamp T hT, zeroExtendedSine_eq_clamp T hT]
  change |Real.sin (w * clamp t) / Real.sqrt T - Real.sin (w * clamp s) / Real.sqrt T| ≤ _
  rw [← sub_div, abs_div, abs_of_pos hT', Real.toNNReal_of_nonneg (by positivity)]
  calc
    _ ≤ |w * clamp t - w * clamp s| / Real.sqrt T :=
      div_le_div_of_nonneg_right (Real.abs_sin_sub_sin_le _ _) hT'.le
    _ = (|w| / Real.sqrt T) * |clamp t - clamp s| := by
      rw [← mul_sub, abs_mul]
      ring
    _ ≤ _ := mul_le_mul_of_nonneg_left
      (by simpa only [Real.dist_eq, NNReal.coe_one, one_mul] using hc.dist_le_mul t s) (by positivity)

theorem norm_zeroExtendedSine_le (T : ℝ) (hT : 0 < T) (n : ℕ) (t : ℝ) :
    ‖zeroExtendedSine T n t‖ ≤ 1 / Real.sqrt T := by
  rw [zeroExtendedSine_eq_clamp T hT, Real.norm_eq_abs, abs_div,
    abs_of_pos (Real.sqrt_pos.2 hT)]
  exact div_le_div_of_nonneg_right (Real.abs_sin_le_one _) (Real.sqrt_nonneg _)

theorem integrable_zeroExtendedSine (T : ℝ) (n : ℕ) :
    Integrable (zeroExtendedSine T n) := by
  have heq : zeroExtendedSine T n =
      (Icc (-T) T).indicator (fun t : ℝ => Real.sin (Real.pi * (n : ℝ) * t / T) / Real.sqrt T) := by
    ext t
    by_cases ht : t ∈ Icc (-T) T <;> simp [zeroExtendedSine, ht]
  rw [heq, integrable_indicator_iff measurableSet_Icc]
  exact Continuous.integrableOn_Icc (by fun_prop)

theorem gammaSineOutput_memLp (T : ℝ) (hT : 0 < T) (n : ℕ) :
    MemLp ((Icc (-T) T).indicator (gammaOutput (zeroExtendedSine T n))) 2 volume :=
  memLp_window_gammaOutput T (lipschitzWith_zeroExtendedSine T hT n)
    (norm_zeroExtendedSine_le T hT n)

/-- The gamma part of every literal matrix entry is the coefficient of the
genuine square-integrable output of the input sine. -/
theorem gammaSineOutput_pair (T : ℝ) (hT : 0 < T) (m n : ℕ) :
    (∫ t : ℝ, zeroExtendedSine T m t *
      ((Icc (-T) T).indicator (gammaOutput (zeroExtendedSine T n))) t) =
      ∫ r in Ioi (0 : ℝ), parityKernel 0 r *
        (∫ t : ℝ, (zeroExtendedSine T m (t+r) - zeroExtendedSine T m t) *
          (zeroExtendedSine T n (t+r) - zeroExtendedSine T n t)) := by
  rw [← integral_mul_gammaOutput (lipschitzWith_zeroExtendedSine T hT n)
    (norm_zeroExtendedSine_le T hT n) (integrable_zeroExtendedSine T m)
    (lipschitzWith_zeroExtendedSine T hT m).continuous.measurable]
  apply integral_congr_ae
  filter_upwards [] with t
  by_cases ht : t ∈ Icc (-T) T <;> simp [ht, zeroExtendedSine]

theorem zeroExtendedSine_odd (T : ℝ) (n : ℕ) : Function.Odd (zeroExtendedSine T n) := by
  intro t
  have hmem : -t ∈ Icc (-T) T ↔ t ∈ Icc (-T) T := by
    simp [mem_Icc, neg_le, neg_le_neg_iff, and_comm]
  have hphase : Real.pi * (n : ℝ) * (-t) / T = -(Real.pi * (n : ℝ) * t / T) := by ring
  by_cases ht : t ∈ Icc (-T) T
  · rw [zeroExtendedSine, zeroExtendedSine, ite_eq_left (hmem.mpr ht), ite_eq_left ht,
      hphase, Real.sin_neg, neg_div]
  · rw [zeroExtendedSine, zeroExtendedSine, ite_eq_right (fun h => ht (hmem.mp h)),
      ite_eq_right ht, neg_zero]

theorem finiteSine_exists_lipschitzWith {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    ∃ K : ℝ≥0, LipschitzWith K (finiteSine T x) := by
  let K (i : Fin M) := (|Real.pi * ((i.val + 1 : ℕ) : ℝ) / T| / Real.sqrt T).toNNReal
  refine ⟨∑ i, ‖x i‖₊ * K i, LipschitzWith.of_dist_le_mul (fun t s => ?_)⟩
  rw [dist_eq_norm, NNReal.coe_sum, Finset.sum_mul]
  simp only [finiteSine, ← Finset.sum_sub_distrib, ← mul_sub]
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [norm_mul, NNReal.coe_mul, coe_nnnorm, mul_assoc]
  exact mul_le_mul_of_nonneg_left
    (by simpa only [dist_eq_norm] using
      (lipschitzWith_zeroExtendedSine T hT (i.val + 1)).dist_le_mul t s) (norm_nonneg _)

theorem norm_finiteSine_le {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) (t : ℝ) :
    ‖finiteSine T x t‖ ≤ ∑ i, ‖x i‖ * (1 / Real.sqrt T) := by
  unfold finiteSine
  refine (norm_sum_le _ _).trans (Finset.sum_le_sum fun i _ => ?_)
  rw [norm_mul]
  exact mul_le_mul_of_nonneg_left (norm_zeroExtendedSine_le T hT _ t) (norm_nonneg _)

theorem finiteSine_odd {M : ℕ} (T : ℝ) (x : Fin M → ℝ) : Function.Odd (finiteSine T x) := by
  intro t
  simp only [finiteSine, zeroExtendedSine_odd T _ t, mul_neg, Finset.sum_neg_distrib]

theorem finiteSine_eq_zero_off_window {M : ℕ} (T : ℝ) (x : Fin M → ℝ) {t : ℝ}
    (ht : t ∉ Icc (-T) T) : finiteSine T x t = 0 := by
  simp [finiteSine, zeroExtendedSine, ht]

theorem finiteSine_memLp {M : ℕ} (T : ℝ) (x : Fin M → ℝ) :
    MemLp (finiteSine T x) 2 volume := by
  exact memLp_finsetSum _ (fun i _ => (memLp_zeroExtendedSine T (i.val + 1)).const_mul (x i))

/-- A finite sine trial has finite energy for the literal zero-extension gamma kernel. -/
theorem integrableOn_gammaEnergy_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) :
    IntegrableOn (fun r => parityKernel 0 r *
      (∫ t : ℝ, (finiteSine T x (t+r) - finiteSine T x t) ^ 2)) (Ioi 0) := by
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  have hi : Integrable (finiteSine T x) :=
    integrable_finsetSum _ (fun i _ => (integrable_zeroExtendedSine T (i.val+1)).const_mul (x i))
  simpa only [pow_two] using integrableOn_mixedGamma hK (norm_finiteSine_le T hT x)
    hi hK.continuous.measurable

theorem gammaOutput_finiteSine {M : ℕ} (T : ℝ) (hT : 0 < T) (x : Fin M → ℝ) (t : ℝ) :
    gammaOutput (finiteSine T x) t = ∑ i, x i * gammaOutput (zeroExtendedSine T (i.val + 1)) t := by
  let F (i : Fin M) (r : ℝ) := x i *
    (parityKernel 0 r * symmetricDifference r (zeroExtendedSine T (i.val + 1)) t)
  have hF (i : Fin M) : IntegrableOn (F i) (Ioi (0 : ℝ)) :=
    (integrable_weighted_symmetricDifference (lipschitzWith_zeroExtendedSine T hT (i.val + 1))
      (norm_zeroExtendedSine_le T hT (i.val + 1)) t).const_mul (x i)
  calc
    _ = ∫ r in Ioi (0 : ℝ), ∑ i : Fin M, F i r := by
      unfold gammaOutput
      apply integral_congr_ae
      filter_upwards [] with r
      simp only [symmetricDifference, finiteSine, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib,
        Finset.mul_sum, ← mul_sub, ← mul_add]
      apply Finset.sum_congr rfl
      intro i _
      dsimp [F, symmetricDifference]
      ring
    _ = ∑ i : Fin M, ∫ r in Ioi (0 : ℝ), F i r :=
      integral_finsetSum _ (fun i _ => hF i)
    _ = _ := by simp only [F, integral_const_mul, gammaOutput]

/-- The windowed gamma output of the finite sine trial pairs against every
supported measurable L¹ test by the literal mixed gamma form. -/
theorem window_gammaOutput_finiteSine_pair {M : ℕ} (T : ℝ) (hT : 0 < T)
    (x : Fin M → ℝ) {g : ℝ → ℝ} (hg : Integrable g) (hgm : Measurable g)
    (hgs : ∀ᵐ t : ℝ, t ∉ Icc (-T) T → g t = 0) :
    (∫ t : ℝ, g t * ((Icc (-T) T).indicator (gammaOutput (finiteSine T x))) t) =
      ∫ r in Ioi (0 : ℝ), parityKernel 0 r *
        (∫ t : ℝ, (g (t+r) - g t) * (finiteSine T x (t+r) - finiteSine T x t)) := by
  obtain ⟨K, hK⟩ := finiteSine_exists_lipschitzWith T hT x
  calc
    _ = ∫ t : ℝ, g t * gammaOutput (finiteSine T x) t := by
      apply integral_congr_ae
      filter_upwards [hgs] with t hgt
      by_cases ht : t ∈ Icc (-T) T <;> simp [ht, hgt]
    _ = _ := integral_mul_gammaOutput hK (norm_finiteSine_le T hT x) hg hgm

end GRWTSK.NumberTheory.WeilQuadraticForm.OddGammaOutput
