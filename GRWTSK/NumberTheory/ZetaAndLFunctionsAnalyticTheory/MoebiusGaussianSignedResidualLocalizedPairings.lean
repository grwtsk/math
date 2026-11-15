/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualFiniteProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualWeightedModes
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianSignedResidualAffineEnvelope
import GRWTSK.MeasureAndIntegration.UnitIntervalPolynomialPairings
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.MeasureTheory.Function.JacobianOneDim
import Mathlib.MeasureTheory.Function.L2Space
import Mathlib.MeasureTheory.Integral.Gamma
import Mathlib.Tactic

/-!
# Localized critical-line pairings for the signed Möbius residual

The finite-pole analytic argument at `3d92d36bee58307365815e60a9df96f0e1226712`
transports the weighted ray to the unit interval by `x = exp(-v)`.
The exact Laplace moments become monomial pairings. Polynomial density and
the uniform weighted-square bound supply the physical cutoff test, hence
the localized pairing used in the finite-frequency projection.
-/

set_option autoImplicit false
noncomputable section
open Filter MeasureTheory Set
open scoped Topology ComplexConjugate

namespace GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLocalizedPairings

open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLaplace
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPole
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualPoleMoments
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualWeightedModes
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualFiniteProjection
open GRWTSK.NumberTheory.Moebius.GaussianSignedResidualAffineEnvelope
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open GRWTSK.Analysis.AsymptoticAnalysis.GoodScaleSubexponential

section
private theorem image_exp_neg_Ioi :
    (fun v : ℝ => Real.exp (-v)) '' Ioi 0 = Ioo 0 1 := by
  ext x
  constructor
  · rintro ⟨v, hv, rfl⟩
    exact ⟨Real.exp_pos _, Real.exp_lt_one_iff.mpr (neg_neg_of_pos hv)⟩
  · intro hx
    exact ⟨-Real.log x, neg_pos.mpr (Real.log_neg hx.1 hx.2), by
      simpa only [neg_neg] using Real.exp_log hx.1⟩

private theorem hasDerivWithinAt_exp_neg (v : ℝ) :
    HasDerivWithinAt (fun w : ℝ => Real.exp (-w)) (-Real.exp (-v)) (Ioi 0) v := by
  simpa using ((hasDerivAt_neg v).exp).hasDerivWithinAt (s := Ioi 0)

private theorem exp_neg_injOn : Set.InjOn (fun v : ℝ => Real.exp (-v)) (Ioi 0) :=
  (Real.exp_injective.comp neg_injective).injOn

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]

/-- Transport the weighted positive ray to Lebesgue measure on the open unit interval. -/
private theorem integral_neg_log_Ioo (f : ℝ → E) :
    (∫ x in Ioo (0 : ℝ) 1, f (-Real.log x)) =
      ∫ v in Ioi (0 : ℝ), Real.exp (-v) • f v := by
  rw [← image_exp_neg_Ioi,
    integral_image_eq_integral_abs_deriv_smul measurableSet_Ioi
      (fun v _ => hasDerivWithinAt_exp_neg v) exp_neg_injOn]
  simp only [Real.log_exp, neg_neg, abs_neg, abs_of_pos (Real.exp_pos _)]

/-- Integrability on the transported interval is equivalent to weighted
integrability on the positive ray. -/
private theorem integrableOn_neg_log_Ioo (f : ℝ → E) :
    IntegrableOn (fun x => f (-Real.log x)) (Ioo (0 : ℝ) 1) ↔
      IntegrableOn (fun v => Real.exp (-v) • f v) (Ioi (0 : ℝ)) := by
  rw [← image_exp_neg_Ioi,
    integrableOn_image_iff_integrableOn_abs_deriv_smul measurableSet_Ioi
      (fun v _ => hasDerivWithinAt_exp_neg v) exp_neg_injOn]
  simp only [Real.log_exp, neg_neg, abs_neg, abs_of_pos (Real.exp_pos _)]

/-- The endpoints of the unit interval have zero volume. -/
private theorem integral_unitInterval_eq_Ioo (f : ℝ → E) :
    (∫ x : unitInterval, f x) = ∫ x in Ioo (0 : ℝ) 1, f x :=
  (integral_subtype measurableSet_Icc f).trans
    (setIntegral_congr_set Ioo_ae_eq_Icc.symm)

omit [NormedSpace ℝ E] in
private theorem integrable_unitInterval_iff_Ioo (f : ℝ → E) :
    Integrable (fun x : unitInterval => f x) ↔ IntegrableOn f (Ioo (0 : ℝ) 1) := by
  rw [IntegrableOn, restrict_Ioo_eq_restrict_Icc]
  exact (integrableOn_iff_comap_subtypeVal measurableSet_Icc).symm

private theorem integrableOn_exp_mul_pow (n : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    IntegrableOn (fun v : ℝ => Real.exp (-σ * v) * v ^ n) (Ioi 0) := by
  have hi := integrableOn_rpow_mul_exp_neg_mul_rpow (s := (n : ℝ))
    (p := 1) ((by norm_num : (-1 : ℝ) < 0).trans_le (Nat.cast_nonneg n))
    (by norm_num) hσ
  simpa only [Real.rpow_natCast, Real.rpow_one, neg_mul, mul_comm] using hi

private theorem integral_exp_mul_pow (n : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    (∫ v in Ioi (0 : ℝ), Real.exp (-σ * v) * v ^ n) =
      (n.factorial : ℝ) / σ ^ (n + 1) := by
  have hi := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := (n : ℝ) + 1)
    (by positivity) hσ
  simp only [add_sub_cancel_right, Real.rpow_natCast] at hi
  rw [← Nat.cast_succ, Real.rpow_natCast, Nat.cast_succ, Real.Gamma_nat_eq_factorial] at hi
  simp only [one_div, inv_pow, ← div_eq_inv_mul] at hi
  calc
    _ = ∫ v in Ioi (0 : ℝ), v ^ n * Real.exp (-(σ * v)) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro v _
      dsimp only
      rw [neg_mul, mul_comm]
    _ = _ := hi

private theorem memLp_neg_log_pow (n : ℕ) :
    MemLp (fun x : unitInterval => (-Real.log (x : ℝ)) ^ n) 2 volume := by
  have hm : Measurable (fun x : unitInterval => (-Real.log (x : ℝ)) ^ n) :=
    ((Real.measurable_log.comp measurable_subtype_coe).neg).pow_const _
  apply (memLp_two_iff_integrable_sq hm.aestronglyMeasurable).mpr
  apply (integrable_unitInterval_iff_Ioo (fun x => ((-Real.log x) ^ n) ^ 2)).mpr
  apply (integrableOn_neg_log_Ioo (fun v => (v ^ n) ^ 2)).mpr
  simpa only [smul_eq_mul, ← pow_mul, neg_one_mul] using
    integrableOn_exp_mul_pow (n * 2) zero_lt_one

private theorem memLp_neg_log_cutoff (n : ℕ) :
    MemLp (fun x : unitInterval =>
      (Ioc (0 : ℝ) 1).indicator (fun v => Real.exp v * v ^ n) (-Real.log (x : ℝ))) 2 volume := by
  have hp : Measurable (fun v : ℝ => Real.exp v * v ^ n) :=
    Real.continuous_exp.measurable.mul (measurable_id.pow_const _)
  have hm : Measurable (fun x : unitInterval =>
      (Ioc (0 : ℝ) 1).indicator (fun v => Real.exp v * v ^ n) (-Real.log (x : ℝ))) :=
    (hp.indicator measurableSet_Ioc).comp (Real.measurable_log.comp measurable_subtype_coe).neg
  refine MemLp.of_bound hm.aestronglyMeasurable (Real.exp 1) ?_
  refine Filter.Eventually.of_forall fun x => ?_
  let v : ℝ := -Real.log (x : ℝ)
  change ‖(Ioc (0 : ℝ) 1).indicator (fun v => Real.exp v * v ^ n) v‖ ≤ _
  by_cases hv : v ∈ Ioc (0 : ℝ) 1
  · rw [indicator_of_mem hv, Real.norm_of_nonneg
      (mul_nonneg (Real.exp_pos _).le (pow_nonneg hv.1.le _))]
    have hp₁ : v ^ n ≤ 1 := pow_le_one₀ hv.1.le hv.2
    exact (mul_le_of_le_one_right (Real.exp_pos _).le hp₁).trans
      (Real.exp_le_exp.mpr hv.2)
  · rw [indicator_of_notMem hv, norm_zero]
    exact (Real.exp_pos _).le

end

private def onUnit {E : Type*} (f : ℝ → E) (x : unitInterval) : E := f (-Real.log x)

private theorem measurable_onUnit {E : Type*} [MeasurableSpace E]
    {f : ℝ → E} (hf : Measurable f) : Measurable (onUnit f) :=
  hf.comp (Real.measurable_log.comp measurable_subtype_coe).neg

private theorem integral_onUnit {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (f : ℝ → E) :
    (∫ x : unitInterval, onUnit f x) = ∫ v in Ioi (0 : ℝ), Real.exp (-v) • f v :=
  (integral_unitInterval_eq_Ioo _).trans (integral_neg_log_Ioo f)

private theorem memLp_onUnit {E : Type*} [NormedAddCommGroup E] [MeasurableSpace E]
    [BorelSpace E] [SecondCountableTopology E] {f : ℝ → E} (hf : Measurable f)
    (hSq : IntegrableOn (fun v => Real.exp (-v) * ‖f v‖ ^ 2) (Ioi 0)) :
    MemLp (onUnit f) 2 volume := by
  apply (memLp_two_iff_integrable_sq_norm (measurable_onUnit hf).aestronglyMeasurable).2
  apply (integrable_unitInterval_iff_Ioo (fun x => ‖f (-Real.log x)‖ ^ 2)).2
  exact (integrableOn_neg_log_Ioo (fun v => ‖f v‖ ^ 2)).2 hSq

private theorem mode_continuous (s γ : ℝ) (n : ℕ) (T : ℝ) :
    Continuous (rescaledResidualMode s γ (n + 1) T) := by
  have := residualWave_continuous s
  unfold rescaledResidualMode
  fun_prop

private theorem integral_complex_monomial_onUnit (k : ℕ) (f : ℝ → ℂ) :
    (∫ x : unitInterval, ((x : ℝ) : ℂ) ^ k * onUnit f x) =
      ∫ v in Ioi (0 : ℝ), (Real.exp (-((k : ℝ) + 1) * v) : ℂ) * f v := by
  simp only [onUnit]
  rw [integral_unitInterval_eq_Ioo (fun x : ℝ => (x : ℂ) ^ k * f (-Real.log x))]
  calc
    _ = ∫ x in Ioo (0 : ℝ) 1,
          (Real.exp (-(-Real.log x)) : ℂ) ^ k * f (-Real.log x) := by
      apply setIntegral_congr_fun measurableSet_Ioo
      intro x hx
      dsimp only
      rw [neg_neg, Real.exp_log hx.1]
    _ = _ := by
      rw [integral_neg_log_Ioo (fun v => (Real.exp (-v) : ℂ) ^ k * f v)]
      apply setIntegral_congr_fun measurableSet_Ioi
      intro v _
      dsimp only
      rw [Complex.real_smul, ← mul_assoc, ← Complex.ofReal_pow, ← Complex.ofReal_mul,
        ← Real.exp_nat_mul, ← Real.exp_add]
      congr 3
      ring

private theorem integral_re_monomial_onUnit (k : ℕ) (b : ℂ) {f : ℝ → ℂ}
    (hf : MemLp (onUnit f) 2 volume) :
    (∫ x : unitInterval, (x : ℝ) ^ k * (conj b * onUnit f x).re) =
      (conj b * ∫ x : unitInterval, ((x : ℝ) : ℂ) ^ k * onUnit f x).re := by
  have hp : MemLp (fun x : unitInterval => ((x : ℝ) : ℂ) ^ k) 2 volume := by
    apply MemLp.of_bound (by fun_prop) 1
    exact Eventually.of_forall fun x => by
      rw [norm_pow, Complex.norm_real, Real.norm_of_nonneg x.2.1]
      exact pow_le_one₀ x.2.1 x.2.2
  have hi : Integrable (fun x : unitInterval => ((x : ℝ) : ℂ) ^ k * onUnit f x) volume :=
    hp.integrable_mul hf
  rw [← integral_const_mul]
  have hre := integral_re (hi.const_mul (conj b))
  change (∫ x : unitInterval, (conj b * (((x : ℝ) : ℂ) ^ k * onUnit f x)).re) =
    (∫ x : unitInterval, conj b * (((x : ℝ) : ℂ) ^ k * onUnit f x)).re at hre
  rw [← hre]
  apply integral_congr_ae
  filter_upwards with x
  rw [mul_left_comm, ← Complex.ofReal_pow, Complex.re_ofReal_mul]

private theorem re_mode_memLp (b : ℂ) {f : ℝ → ℂ}
    (hf : MemLp (onUnit f) 2 volume) : MemLp (fun x => (conj b * onUnit f x).re) 2 volume :=
  hf.of_le_mul (c := ‖b‖)
    (Complex.continuous_re.comp_aestronglyMeasurable (hf.aestronglyMeasurable.const_mul _))
    (Eventually.of_forall fun x => by
    rw [Real.norm_eq_abs]
    exact (Complex.abs_re_le_norm _).trans_eq (by rw [norm_mul, Complex.norm_conj]))

private theorem integral_re_mode_sq_le (b : ℂ) {f : ℝ → ℂ}
    (hf : MemLp (onUnit f) 2 volume) :
    (∫ x : unitInterval, (conj b * onUnit f x).re ^ 2) ≤
      ‖b‖ ^ 2 * ∫ v in Ioi (0 : ℝ), Real.exp (-v) * ‖f v‖ ^ 2 := by
  have heq : (∫ x : unitInterval, onUnit (fun v => ‖f v‖ ^ 2) x) =
      ∫ v in Ioi (0 : ℝ), Real.exp (-v) * ‖f v‖ ^ 2 := integral_onUnit _
  rw [← heq, ← integral_const_mul]
  have hs : Integrable (fun x : unitInterval => ‖onUnit f x‖ ^ 2) volume :=
    (memLp_two_iff_integrable_sq_norm hf.aestronglyMeasurable).1 hf
  refine integral_mono (re_mode_memLp b hf).integrable_sq
    (hs.const_mul (‖b‖ ^ 2)) (fun x => ?_)
  change (conj b * onUnit f x).re ^ 2 ≤ ‖b‖ ^ 2 * ‖onUnit f x‖ ^ 2
  rw [← mul_pow, ← Complex.norm_conj b, ← norm_mul]
  rw [← sq_abs (conj b * onUnit f x).re]
  exact pow_le_pow_left₀ (abs_nonneg _) (Complex.abs_re_le_norm _) _

private def cutoff (n : ℕ) : ℝ → ℝ :=
  (Ioc (0 : ℝ) 1).indicator (fun v => Real.exp v * v ^ n)

private theorem integral_cutoff_onUnit (n : ℕ) (f : ℝ → ℝ) :
    (∫ x : unitInterval, onUnit (cutoff n) x * onUnit f x) =
      ∫ v in (0 : ℝ)..1, v ^ n * f v := by
  rw [show (fun x : unitInterval => onUnit (cutoff n) x * onUnit f x) =
      onUnit (fun v => cutoff n v * f v) by rfl, integral_onUnit,
      intervalIntegral.integral_of_le zero_le_one]
  have he (v : ℝ) : Real.exp (-v) • (cutoff n v * f v) =
      (Ioc (0 : ℝ) 1).indicator (fun u => u ^ n * f u) v := by
    by_cases hv : v ∈ Ioc (0 : ℝ) 1
    · simp only [cutoff, indicator_of_mem hv, smul_eq_mul]
      rw [← mul_assoc, ← mul_assoc, ← Real.exp_add, neg_add_cancel, Real.exp_zero, one_mul]
    · simp [cutoff, indicator_of_notMem hv]
  simp only [he, setIntegral_indicator measurableSet_Ioc,
    inter_eq_right.mpr Ioc_subset_Ioi_self]

private theorem localizedAtom_eq (s γ : ℝ) (n : ℕ) (b : ℂ) {T : ℝ} (hT : 0 < T) (v : ℝ) :
    ((rescaledWave s n T v : ℂ) * conj (probeAtom n γ b T v)).re =
      v ^ n * (conj b * rescaledResidualMode s γ (n + 1) T v).re := by
  rw [rescaledResidualMode_eq s γ n hT, probeAtom, map_mul, map_mul, map_pow, Complex.conj_ofReal,
    star_oscillation, ← Complex.re_ofReal_mul, Complex.ofReal_pow]
  congr 1
  ring


private def profile (n : ℕ) (b : ℂ) (v : ℝ) : ℂ := b * (v : ℂ) ^ n

private theorem profile_memLp (n : ℕ) (b : ℂ) : MemLp (onUnit (profile n b)) 2 volume := by
  have hm : Measurable (profile n b) := (show Continuous (profile n b) from by
    unfold profile
    fun_prop).measurable
  apply (memLp_neg_log_pow n).of_le_mul (c := ‖b‖) (measurable_onUnit hm).aestronglyMeasurable
  exact Eventually.of_forall fun x => by
    simp only [onUnit, profile, norm_mul, norm_pow, Complex.norm_real, le_refl]

private theorem profile_monomial (n k : ℕ) (c : ℂ) :
    (∫ x : unitInterval, ((x : ℝ) : ℂ) ^ k *
      onUnit (profile n (c / (n.factorial : ℂ))) x) =
      c / ((k : ℂ) + 1) ^ (n + 1) := by
  let σ : ℝ := (k : ℝ) + 1
  let b : ℂ := c / (n.factorial : ℂ)
  have hσ : 0 < σ := by dsimp [σ]; positivity
  rw [integral_complex_monomial_onUnit]
  change (∫ v in Ioi (0 : ℝ), (Real.exp (-σ * v) : ℂ) * profile n b v) = _
  have heq (v : ℝ) : (Real.exp (-σ * v) : ℂ) * profile n b v =
      b * ((Real.exp (-σ * v) * v ^ n : ℝ) : ℂ) := by
    simp only [profile, Complex.ofReal_mul, Complex.ofReal_pow]
    ring
  have hcast : (∫ v in Ioi (0 : ℝ), ((Real.exp (-σ * v) * v ^ n : ℝ) : ℂ)) =
      Complex.ofReal (∫ v in Ioi (0 : ℝ), Real.exp (-σ * v) * v ^ n) :=
    integral_ofReal (𝕜 := ℂ)
  simp_rw [heq]
  rw [integral_const_mul, hcast, integral_exp_mul_pow n hσ]
  simp only [σ, b, Complex.ofReal_div, Complex.ofReal_pow, Complex.ofReal_add,
    Complex.ofReal_natCast, Complex.ofReal_one]
  have hn : (n.factorial : ℂ) ≠ 0 := Nat.cast_ne_zero.2 (Nat.factorial_ne_zero n)
  have hk : (k : ℂ) + 1 ≠ 0 := by exact_mod_cast (show (k : ℝ) + 1 ≠ 0 by positivity)
  field_simp

private theorem integral_real_profile (n : ℕ) (b : ℂ) :
    (∫ v in (0 : ℝ)..1, v ^ n * (conj b * profile n b v).re) =
      ‖b‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)) := by
  have heq (v : ℝ) : v ^ n * (conj b * profile n b v).re = ‖b‖ ^ 2 * v ^ (2 * n) := by
    rw [profile, ← mul_assoc, mul_comm (conj b) b, Complex.mul_conj',
      ← Complex.ofReal_pow ‖b‖ 2,
      show (v : ℂ) ^ n = ((v ^ n : ℝ) : ℂ) from (Complex.ofReal_pow v n).symm,
      ← Complex.ofReal_mul, Complex.ofReal_re, two_mul, pow_add]
    ring
  simp_rw [heq]
  rw [intervalIntegral.integral_const_mul, integral_pow]
  simp [div_eq_mul_inv]

/-- The uniform weighted-square bound and the horizontal Laurent limit give
the localized pairing on the original rescaled physical interval. The
amplitude divides the Laurent coefficient by the factorial of the profile
degree. -/
theorem tendsto_localizedPairing_of_horizontalPole {s γ C : ℝ} (n : ℕ) (c : ℂ)
    (hC : 0 ≤ C)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T ^ (2 * n + 1) + C)
    (hpole : Tendsto (fun σ : ℝ => (σ : ℂ) ^ (n + 1) *
      residualLaplace s ((σ : ℂ) + (γ : ℂ) * Complex.I)) (𝓝[>] (0 : ℝ)) (𝓝 c)) :
    Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      ((rescaledWave s n T v : ℂ) * conj (probeAtom n γ (c / (n.factorial : ℂ)) T v)).re)
      atTop (𝓝 (‖c / (n.factorial : ℂ)‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)))) := by
  let b : ℂ := c / (n.factorial : ℂ)
  let mode := rescaledResidualMode s γ (n + 1)
  let f := fun T => onUnit (fun v => (conj b * mode T v).re)
  let g := onUnit (fun v => (conj b * profile n b v).re)
  have hMode : ∀ᶠ T in atTop, MemLp (onUnit (mode T)) 2 volume := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with T hT
    have hTpos : 0 < T := zero_lt_one.trans_le hT
    exact memLp_onUnit (mode_continuous s γ n T).measurable
      (integrableOn_weightedSquare_rescaledResidualMode s γ n hTpos hE)
  have hProfile := profile_memLp n b
  have hBound : ∀ᶠ T in atTop, (∫ x : unitInterval, f T x ^ 2) ≤
      ‖b‖ ^ 2 * (C * (((2 * n + 1).factorial : ℝ) + 1)) := by
    filter_upwards [hMode, eventually_ge_atTop (1 : ℝ)] with T hT hT₁
    exact (integral_re_mode_sq_le b hT).trans (mul_le_mul_of_nonneg_left
      (weightedSquare_rescaledResidualMode_le s γ n hT₁ hC hE) (sq_nonneg _))
  have hm (k : ℕ) :
      Tendsto (fun T : ℝ => ∫ x : unitInterval, (x : ℝ) ^ k * f T x) atTop
        (𝓝 (∫ x : unitInterval, (x : ℝ) ^ k * g x)) := by
    have hg : (∫ x : unitInterval, (x : ℝ) ^ k * g x) =
        (conj b * (c / ((k : ℂ) + 1) ^ (n + 1))).re := by
      change (∫ x : unitInterval, (x : ℝ) ^ k * (conj b * onUnit (profile n b) x).re) = _
      rw [integral_re_monomial_onUnit k b hProfile, profile_monomial n k c]
    rw [hg]
    have ht := Complex.continuous_re.continuousAt.tendsto.comp
      ((tendsto_residualLaplaceMoment k hpole).const_mul (conj b))
    refine ht.congr' ?_
    filter_upwards [hMode] with T hT
    change (conj b * residualLaplaceMoment s γ (n + 1) k T).re =
      ∫ x : unitInterval, (x : ℝ) ^ k * (conj b * onUnit (mode T) x).re
    rw [integral_re_monomial_onUnit k b hT, integral_complex_monomial_onUnit]
    rfl
  open GRWTSK.MeasureAndIntegration.UnitIntervalPolynomialPairings in
  have hCutoff := tendsto_integral_mul_of_monomials (hMode.mono fun _ h => re_mode_memLp b h)
      (re_mode_memLp b hProfile) (memLp_neg_log_cutoff n) hBound hm
  have hGoal : (∫ x : unitInterval, onUnit (cutoff n) x * g x) =
      ‖b‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)) :=
    (integral_cutoff_onUnit n _).trans (integral_real_profile n b)
  change Tendsto (fun T : ℝ => ∫ x : unitInterval, onUnit (cutoff n) x * f T x) atTop
    (𝓝 (∫ x : unitInterval, onUnit (cutoff n) x * g x)) at hCutoff
  rw [hGoal] at hCutoff
  refine hCutoff.congr' ?_
  filter_upwards [eventually_gt_atTop (0 : ℝ)] with T hT
  rw [show (∫ x : unitInterval, onUnit (cutoff n) x * f T x) =
      ∫ v in (0 : ℝ)..1, v ^ n * (conj b * mode T v).re from integral_cutoff_onUnit n _]
  apply intervalIntegral.integral_congr
  intro v _
  exact (localizedAtom_eq s γ n b hT v).symm

/-- The localized pairing at the ordinate of an actual nonreal critical-line
zero, with its actual multiplicity and derivative-normalized coefficient. -/
theorem tendsto_localizedPairing_of_criticalZero {s C : ℝ} (hs : 0 < s) (n : ℕ)
    (ρ : ZeroPoint) (hline : ρ.val.re = 1 / 2) (hγ : ρ.val.im ≠ 0)
    (horder : multiplicity ρ = n + 1) (hC : 0 ≤ C)
    (hE : ∀ T : ℝ, 0 ≤ T → residualEnergy s T ≤ C * T ^ (2 * n + 1) + C) :
    Tendsto (fun T : ℝ => ∫ v in (0 : ℝ)..1,
      ((rescaledWave s n T v : ℂ) *
        conj (probeAtom n ρ.val.im (zetaPoleCoefficient ρ / (n.factorial : ℂ)) T v)).re)
      atTop (𝓝 (‖zetaPoleCoefficient ρ / (n.factorial : ℂ)‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ)))) := by
  apply tendsto_localizedPairing_of_horizontalPole n (zetaPoleCoefficient ρ) hC hE
  simpa only [horder] using tendsto_scaled_residualLaplace_of_criticalZero hs ρ hline hγ hE

/-- A fixed affine-frequent supplier for the exact signed residual pays the
sum of the finite critical-line pole contributions of the stated order.
Positivity and distinctness are for the actual ordinates of the given zeros.
The global lower limit also bounds the leading supplier allowance. -/
theorem finite_criticalZero_supplier_bound {ι : Type*} {s A : ℝ}
    (hs : 0 < s) (hA : 0 ≤ A) (n : ℕ) (J : Finset ι) (ρ : ι → ZeroPoint)
    (hline : ∀ j ∈ J, (ρ j).val.re = 1 / 2)
    (hpos : ∀ j ∈ J, 0 < (ρ j).val.im)
    (hω : Set.InjOn (fun j => (ρ j).val.im) (↑J : Set ι))
    (horder : ∀ j ∈ J, multiplicity (ρ j) = n + 1)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε →
      ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T ^ (2 * n + 1)) :
    let Q : ℝ := 2 * ∑ j ∈ J,
      ‖zetaPoleCoefficient (ρ j) / (n.factorial : ℂ)‖ ^ 2 / ((2 * n : ℕ) + (1 : ℝ))
    (Q : EReal) ≤ liminf (fun T : ℝ => ((residualEnergy s T / T ^ (2 * n + 1) : ℝ) : EReal))
        atTop ∧ Q ≤ A := by
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (2 * n + 1) + 0 := by
    simpa only [add_zero] using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hQ := liminf_normalizedEnergy_of_positivePairings s n J
    (fun j => (ρ j).val.im) (fun j => zetaPoleCoefficient (ρ j) / (n.factorial : ℂ))
    hpos hω (fun j hj => tendsto_localizedPairing_of_criticalZero hs n (ρ j)
      (hline j hj) (hpos j hj).ne' (horder j hj) hC hE)
  exact ⟨hQ, coefficient_le_of_affine_supplier hG hmajorant hbudget hQ⟩

/-- The stationary frequency of the exact signed residual contributes once to
the normalized energy and to the leading allowance of a fixed affine-frequent
linear supplier. Each positive simple critical-line zero contributes its two
conjugate frequencies. -/
theorem finite_criticalZero_linear_supplier_bound_with_stationary {ι : Type*} {s A : ℝ}
    (hs : 0 < s) (hζ : riemannZeta (1 / 2 : ℂ) ≠ 0) (hA : 0 ≤ A)
    (J : Finset ι) (ρ : ι → ZeroPoint)
    (hline : ∀ j ∈ J, (ρ j).val.re = 1 / 2)
    (hpos : ∀ j ∈ J, 0 < (ρ j).val.im)
    (hω : Set.InjOn (fun j => (ρ j).val.im) (↑J : Set ι))
    (horder : ∀ j ∈ J, multiplicity (ρ j) = 1)
    {G : Set ℝ} {U : ℝ → ℝ} (hG : AffineFrequent G)
    (hmajorant : ∀ᶠ T in atTop ⊓ 𝓟 G, residualEnergy s T ≤ U T)
    (hbudget : ∀ ε : ℝ, 0 < ε → ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T) :
    let Q : ℝ := 2 * (∑ j ∈ J, ‖zetaPoleCoefficient (ρ j)‖ ^ 2) + ‖stationaryCoefficient s‖ ^ 2
    (Q : EReal) ≤ liminf (fun T : ℝ => ((residualEnergy s T / T : ℝ) : EReal)) atTop ∧ Q ≤ A := by
  have hbudget₁ : ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + 1) * T ^ (2 * 0 + 1 : ℕ) + 0 := by
    simpa using hbudget 1 one_pos
  obtain ⟨C, hC, hE⟩ := global_residualEnergy_poly_of_affine_envelope hG
    (add_nonneg hA zero_le_one) (le_refl (0 : ℝ)) hmajorant hbudget₁
  have hPole : Tendsto (fun σ : ℝ => (σ : ℂ) ^ (0 + 1 : ℕ) *
      residualLaplace s ((σ : ℂ) + (0 : ℂ) * Complex.I)) (𝓝[>] (0 : ℝ))
      (𝓝 (stationaryCoefficient s)) := by
    simpa using tendsto_scaled_residualLaplace_at_stationary hs hζ hE
  have hStationary := tendsto_localizedPairing_of_horizontalPole (γ := 0) 0
    (stationaryCoefficient s) hC hE hPole
  have hQ := liminf_normalizedEnergy_of_positivePairings_and_stationary s 0 J
    (fun j => (ρ j).val.im) (fun j => zetaPoleCoefficient (ρ j)) (stationaryCoefficient s) hpos hω
    (fun j hj => by
      simpa using tendsto_localizedPairing_of_criticalZero hs 0 (ρ j)
        (hline j hj) (hpos j hj).ne' (horder j hj) hC hE)
    (by simpa using hStationary)
  have hQ_A := coefficient_le_of_affine_supplier hG hmajorant
    (show ∀ ε : ℝ, 0 < ε → ∀ᶠ T in atTop ⊓ 𝓟 G, U T ≤ (A + ε) * T ^ (2 * 0 + 1 : ℕ) from
      fun ε hε => by simpa using hbudget ε hε) hQ
  exact ⟨by simpa [add_comm] using hQ, by simpa [add_comm] using hQ_A⟩

end GRWTSK.NumberTheory.Moebius.GaussianSignedResidualLocalizedPairings
