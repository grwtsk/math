/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilArchimedeanDomain
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Compact-support gamma cutoff bounds on the original source

MSC2020: 11M26, 11M41, 26D15, 65D30.
Reuse the original parity kernel, translation energy, and gamma density.
The shift difference is supported in [-T-r,T], not merely in [-T,T].
A global Lipschitz bound gives a quadratic small-lag omission bound; the
existing archimedean-domain theorem supplies integrability and the full tail.
The consumer retains the signed prime term and actual conductor/parity constant.

SOURCE_PROOF_CANDIDATE. Parsing, elaboration, exact types, builds, kernel replay,
transitive axiom audit, certified computation and independent review NOT_RUN.
Novelty UNASSESSED. See the adjacent individual argument/provenance records.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set
open scoped ContDiff

namespace GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompactCutoffs

open OddRootProjection SourcePrimeCorrelation CharacterWindow

private theorem integral_le_length_bound
    (u : ℝ → ℝ) (a b C : ℝ) (hab : a ≤ b) (_hi : Integrable u volume)
    (hs : ∀ t, t ∉ Icc a b → u t = 0)
    (hb : ∀ t ∈ Icc a b, ‖u t‖ ≤ C) :
    (∫ t : ℝ, u t) ≤ C * (b - a) := by
  have heq : (∫ t : ℝ in a..b, u t) = ∫ t : ℝ, u t := by
    rw [intervalIntegral.integral_of_le hab,
      ← MeasureTheory.integral_Icc_eq_integral_Ioc]
    exact MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero hs
  have hnorm := intervalIntegral.norm_integral_le_of_norm_le_const
    (fun t (ht : t ∈ Set.uIoc a b) => by
      rw [Set.uIoc_of_le hab] at ht
      exact hb t ⟨ht.1.le, ht.2⟩)
  rw [heq, Real.norm_eq_abs, abs_of_nonneg (sub_nonneg.mpr hab)] at hnorm
  exact (le_abs_self _).trans hnorm

/-- GCU-1. An actual supported L2 function has a finite energy majorant. -/
theorem energy_le_support_sup {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (T B : ℝ) (hT : 0 ≤ T)
    (hs : ∀ t, T < |t| → f t = 0) (hb : ∀ t, ‖f t‖ ≤ B) :
    energy f ≤ 2 * T * B ^ 2 := by
  have h := integral_le_length_bound (fun t : ℝ => ‖f t‖ ^ 2) (-T) T (B ^ 2)
    (by linarith) (hf.integrable_norm_pow (p := 2) (by norm_num))
    (fun t ht => by
      have hlarge : T < |t| := lt_of_not_ge (fun hh => ht (abs_le.mp hh))
      simp [hs t hlarge])
    (fun t _ => by
      rw [Real.norm_of_nonneg (sq_nonneg _)]
      exact pow_le_pow_left₀ (norm_nonneg _) (hb t) 2)
  change (∫ t : ℝ, ‖f t‖ ^ 2) ≤ _
  nlinarith

/-- GCU-2. The enlarged support pays for BOTH translates, including the edges. -/
theorem shift_energy_le_support_lipschitz {f : ℝ → ℂ} (hf : MemLp f 2 volume)
    (T K : ℝ) (hT : 0 ≤ T)
    (hs : ∀ t, T < |t| → f t = 0)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ K * |x - y|)
    (r : ℝ) (hr : 0 ≤ r) :
    energy (fun t => f (t + r) - f t) ≤ (2 * T + r) * K ^ 2 * r ^ 2 := by
  have hs' (t : ℝ) (ht : t ∉ Icc (-T - r) T) :
      ‖f (t + r) - f t‖ ^ 2 = 0 := by
    have hout : t < -T - r ∨ T < t := by
      by_cases hl : -T - r ≤ t
      · exact Or.inr (lt_of_not_ge (fun hh => ht ⟨hl, hh⟩))
      · exact Or.inl (lt_of_not_ge hl)
    have hzero : f t = 0 ∧ f (t + r) = 0 := by
      rcases hout with hl | hu
      · exact ⟨hs t (by linarith [neg_le_abs t]),
          hs (t + r) (by linarith [neg_le_abs (t + r)])⟩
      · exact ⟨hs t (by linarith [le_abs_self t]),
          hs (t + r) (by linarith [le_abs_self (t + r)])⟩
    simp [hzero.1, hzero.2]
  have hbound (t : ℝ) (_ht : t ∈ Icc (-T - r) T) :
      ‖‖f (t + r) - f t‖ ^ 2‖ ≤ (K * r) ^ 2 := by
    rw [Real.norm_of_nonneg (sq_nonneg _)]
    apply pow_le_pow_left₀ (norm_nonneg _) _ 2
    simpa only [add_sub_cancel_left, abs_of_nonneg hr] using hlip (t + r) t
  have h := integral_le_length_bound
    (fun t : ℝ => ‖f (t + r) - f t‖ ^ 2) (-T - r) T ((K * r) ^ 2)
    (by linarith) (integrable_shift_energy hf r) hs' hbound
  calc
    energy (fun t => f (t + r) - f t) ≤ (K * r) ^ 2 * (T - (-T - r)) := h
    _ = _ := by ring

/-- GCU-3. Compact support upgrades the small-lag bound to a linear density bound. -/
theorem gammaCorrectionDensity_le_linear (a : ℕ) {f : ℝ → ℂ}
    (hf : MemLp f 2 volume) (T K : ℝ) (hT : 0 ≤ T)
    (hs : ∀ t, T < |t| → f t = 0)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ K * |x - y|)
    {r : ℝ} (hr : 0 < r) (hr1 : r ≤ 1) :
    gammaCorrectionDensity a f r ≤ (3 / 2 : ℝ) * (2 * T + 1) * K ^ 2 * r := by
  have hd : 0 < 1 - Real.exp (-2 * r) := by
    apply sub_pos.mpr
    rw [← Real.exp_zero]
    exact Real.exp_lt_exp.mpr (by linarith)
  have hk : 0 ≤ parityKernel a r := div_nonneg (Real.exp_nonneg _) hd.le
  calc
    gammaCorrectionDensity a f r ≤
        parityKernel a r * ((2 * T + r) * K ^ 2 * r ^ 2) :=
      mul_le_mul_of_nonneg_left (shift_energy_le_support_lipschitz hf T K hT hs hlip r hr.le) hk
    _ = (r * parityKernel a r) * ((2 * T + r) * K ^ 2 * r) := by ring
    _ ≤ (3 / 2 : ℝ) * ((2 * T + r) * K ^ 2 * r) :=
      mul_le_mul_of_nonneg_right (mul_parityKernel_le_three_halves a hr hr1) (by positivity)
    _ ≤ (3 / 2 : ℝ) * ((2 * T + 1) * K ^ 2 * r) := by gcongr
    _ = _ := by ring

/-- GCU-4. The actual singular-endpoint omission is O(eta^2), with explicit constants. -/
theorem integral_gammaCorrectionDensity_near_le (a : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (T K : ℝ) (hT : 0 ≤ T) (hs : ∀ t, T < |t| → f t = 0)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ K * |x - y|)
    {eta : ℝ} (heta : 0 < eta) (heta1 : eta ≤ 1) :
    0 ≤ (∫ r in (0 : ℝ)..eta, gammaCorrectionDensity a f r) ∧
      (∫ r in (0 : ℝ)..eta, gammaCorrectionDensity a f r) ≤
        (3 / 4 : ℝ) * (2 * T + 1) * K ^ 2 * eta ^ 2 := by
  have hfull := gammaCorrectionDensity_integrable_of_contDiff_one a hf hc
  have hf2 : MemLp f 2 volume := hf.continuous.memLp_of_hasCompactSupport hc
  have hi : IntegrableOn (gammaCorrectionDensity a f) (Ioc (0 : ℝ) eta) :=
    hfull.mono_set (fun _ ht => ht.1)
  let C : ℝ := (3 / 2 : ℝ) * (2 * T + 1) * K ^ 2
  have hm : IntegrableOn (fun r : ℝ => C * r) (Ioc (0 : ℝ) eta) :=
    ((continuous_const.mul continuous_id).integrableOn_Icc).mono_set Ioc_subset_Icc_self
  constructor
  · rw [intervalIntegral.integral_of_le heta.le]
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
    exact gammaCorrectionDensity_nonneg_of_pos a f hr.1
  · calc
      (∫ r in (0 : ℝ)..eta, gammaCorrectionDensity a f r) =
          ∫ r in Ioc (0 : ℝ) eta, gammaCorrectionDensity a f r :=
        intervalIntegral.integral_of_le heta.le
      _ ≤ ∫ r in Ioc (0 : ℝ) eta, C * r := by
        apply integral_mono_ae hi hm
        filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioc] with r hr
        exact gammaCorrectionDensity_le_linear a hf2 T K hT hs hlip hr.1 (hr.2.trans heta1)
      _ = ∫ r in (0 : ℝ)..eta, C * r := (intervalIntegral.integral_of_le heta.le).symm
      _ = (3 / 4 : ℝ) * (2 * T + 1) * K ^ 2 * eta ^ 2 := by
        rw [intervalIntegral.integral_const_mul, integral_id]
        dsimp [C]
        ring

/-- GCU-5. The omitted near and infinite lag tails are both paid and nonnegative. -/
theorem gammaCorrectionDensity_cutoff_error (a : ℕ) {f : ℝ → ℂ}
    (hf : ContDiff ℝ 1 f) (hc : HasCompactSupport f)
    (T K E : ℝ) (hT : 0 ≤ T) (hs : ∀ t, T < |t| → f t = 0)
    (hlip : ∀ x y : ℝ, ‖f x - f y‖ ≤ K * |x - y|) (hE : energy f ≤ E)
    {eta R : ℝ} (heta : 0 < eta) (heta1 : eta ≤ 1) (hR : 1 ≤ R) :
    0 ≤ (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) -
      (∫ r in eta..R, gammaCorrectionDensity a f r) ∧
    (∫ r in Ioi (0 : ℝ), gammaCorrectionDensity a f r) -
      (∫ r in eta..R, gammaCorrectionDensity a f r) ≤
        (3 / 4 : ℝ) * (2 * T + 1) * K ^ 2 * eta ^ 2 +
        (8 * E / (1 - Real.exp (-2))) * Real.exp (-(1 / 2 : ℝ) * R) := by
  have hfull := gammaCorrectionDensity_integrable_of_contDiff_one a hf hc
  have hf2 : MemLp f 2 volume := hf.continuous.memLp_of_hasCompactSupport hc
  have he : IntegrableOn (gammaCorrectionDensity a f) (Ioi eta) :=
    hfull.mono_set (fun _ ht => heta.trans ht)
  have ht := integrableOn_gammaCorrectionDensity_tail a hf.continuous hf2 R hR
  have hsplit0 := intervalIntegral.integral_interval_add_Ioi hfull he
  have hsplit1 := intervalIntegral.integral_interval_add_Ioi he ht
  have hnear := integral_gammaCorrectionDensity_near_le a hf hc T K hT hs hlip heta heta1
  have htail0 : 0 ≤ ∫ r in Ioi R, gammaCorrectionDensity a f r := by
    apply integral_nonneg_of_ae
    filter_upwards [ae_restrict_mem (μ := volume) measurableSet_Ioi] with r hr
    exact gammaCorrectionDensity_nonneg_of_pos a f (by linarith)
  have hden : 0 ≤ 1 - Real.exp (-2) := by
    have h := Real.exp_le_one_iff.mpr (by norm_num : (-2 : ℝ) ≤ 0)
    linarith
  have htail := (integral_gammaCorrectionDensity_tail_le a hf.continuous hf2 R hR).trans
    (mul_le_mul_of_nonneg_right
      (div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hE (by norm_num)) hden)
      (Real.exp_nonneg _))
  constructor <;> linarith [hnear.1, hnear.2]

end GRWTSK.NumberTheory.WeilQuadraticForm.GammaCompactCutoffs
