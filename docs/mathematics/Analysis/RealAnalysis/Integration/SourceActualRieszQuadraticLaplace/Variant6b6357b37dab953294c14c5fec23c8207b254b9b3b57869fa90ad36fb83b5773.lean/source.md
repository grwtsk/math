# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualRieszQuadraticLaplace.Variant6b6357b37dab953294c14c5fec23c8207b254b9b3b57869fa90ad36fb83b5773

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `df0ddce18d1d4567bdd8b3bc836bb84ba6587fd2` · SHA-256 `44b38b8bc253740e808001fc402675e18fe98a97a57ed7b879e9a7785484d57e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.Profile.Variantddcb7ff4d3a3618c52b8b4b4fbe800833c9dd805b929a75341cbb4f84c0a8330","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ddcb7ff4d3a3618c52b8b4b4fbe800833c9dd805b929a75341cbb4f84c0a8330","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.Profile.Variantddcb7ff4d3a3618c52b8b4b4fbe800833c9dd805b929a75341cbb4f84c0a8330","mathematical_subject":"Analysis.Integration","original_sha256":"ddcb7ff4d3a3618c52b8b4b4fbe800833c9dd805b929a75341cbb4f84c0a8330","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T092132Z-1791364892335445000/SourceActualRieszQuadraticLaplace.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszCenteredInitialLaplace
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
A supplied future quadratic absolute area budget for the complete actual H
profile, with its authentic two real centers, yields genuine positive-domain
Laplace L1 and a quantitative norm budget. The finite prefix is paid using
the same whole-area hypothesis. No area witness, ordinary critical improper
convergence, meromorphic continuation equality or signed cap is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Analysis.RealAnalysis.Integration.Profile.Variantddcb7ff4d3a3618c52b8b4b4fbe800833c9dd805b929a75341cbb4f84c0a8330

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszQuadraticLaplace
open MeasureTheory Set Complex Filter
open scoped Topology
open SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceActualRieszRealConstantCenter SourceActualRieszCenteredInitialLaplace

private def profile (t : ℝ) : ℝ :=
  actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
    actualRieszRealConstantCenter

/-- Full absolute area of the original fixed-centered actual H, anchored at zero. -/
def actualRieszAbsoluteCumulative (t : ℝ) : ℝ := ∫ r in 0..t, |profile r|

/-- The supplied future area pays this explicit finite-prefix Laplace budget. -/
def actualRieszQuadraticLaplaceBudget (M R σ : ℝ) : ℝ :=
  M * (R ^ 2 + 1 / (2 * σ ^ 2))

private theorem profile_continuousOn (b : ℝ) : ContinuousOn profile (Icc 0 b) := by
  unfold profile
  exact ((actualMangoldtRieszPrimitive_continuousOn b).sub
    (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn

private theorem profile_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) :
    IntervalIntegrable profile volume 0 b := by
  apply ContinuousOn.intervalIntegrable
  simpa only [uIcc_of_le hb] using profile_continuousOn b

private theorem area_nonneg {t : ℝ} (ht : 0 ≤ t) : 0 ≤ actualRieszAbsoluteCumulative t :=
  intervalIntegral.integral_nonneg_of_forall ht (fun _ => abs_nonneg _)

private theorem area_ac {b : ℝ} (hb : 0 ≤ b) :
    AbsolutelyContinuousOnInterval actualRieszAbsoluteCumulative 0 b :=
  (profile_intervalIntegrable hb).abs.absolutelyContinuousOnInterval_intervalIntegral
    (by simp : (0 : ℝ) ∈ uIcc 0 b)

private theorem area_ae_deriv {b : ℝ} (hb : 0 ≤ b) :
    ∀ᵐ t, t ∈ uIcc 0 b → HasDerivAt actualRieszAbsoluteCumulative |profile t| t := by
  filter_upwards [(profile_intervalIntegrable hb).abs.ae_hasDerivAt_integral] with t ht hm
  exact ht hm 0 (by simp)

private theorem area_zero : actualRieszAbsoluteCumulative 0 = 0 := by
  simp [actualRieszAbsoluteCumulative]

private theorem area_weight_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) (σ : ℝ) :
    IntervalIntegrable (fun t => actualRieszAbsoluteCumulative t * Real.exp (-σ * t))
      volume 0 b :=
  ((area_ac hb).continuousOn.mul (by fun_prop)).intervalIntegrable

private theorem absolute_weight_intervalIntegrable {b : ℝ} (hb : 0 ≤ b) (σ : ℝ) :
    IntervalIntegrable (fun t => |profile t| * Real.exp (-σ * t)) volume 0 b :=
  (profile_intervalIntegrable hb).abs.mul_continuousOn (by fun_prop)

private theorem finite_abel {b : ℝ} (hb : 0 ≤ b) (σ : ℝ) :
    (∫ t in 0..b, |profile t| * Real.exp (-σ * t)) =
      actualRieszAbsoluteCumulative b * Real.exp (-σ * b) +
        σ * ∫ t in 0..b, actualRieszAbsoluteCumulative t * Real.exp (-σ * t) := by
  have he : ContDiff ℝ 1 (fun t : ℝ => Real.exp (-σ * t)) := by fun_prop
  have heAC := he.contDiffOn.absolutelyContinuousOnInterval (a := 0) (b := b)
  have hd (t : ℝ) :
      HasDerivAt (fun t : ℝ => Real.exp (-σ * t)) (-σ * Real.exp (-σ * t)) t := by
    simpa only [id_eq, mul_one, mul_comm] using (((hasDerivAt_id t).const_mul (-σ)).exp)
  have hi1 := absolute_weight_intervalIntegrable hb σ
  have hi2 := area_weight_intervalIntegrable hb σ
  have hi2' := hi2.const_mul (-σ)
  have hx : (∫ t in 0..b, deriv actualRieszAbsoluteCumulative t * Real.exp (-σ * t) +
      actualRieszAbsoluteCumulative t * deriv (fun r : ℝ => Real.exp (-σ * r)) t) =
      (∫ t in 0..b, |profile t| * Real.exp (-σ * t)) -
        σ * ∫ t in 0..b, actualRieszAbsoluteCumulative t * Real.exp (-σ * t) := by
    rw [sub_eq_add_neg, ← neg_mul, ← intervalIntegral.integral_const_mul,
      ← intervalIntegral.integral_add hi1 hi2']
    apply intervalIntegral.integral_congr_ae
    filter_upwards [area_ae_deriv hb] with t ht hm
    rw [(ht (uIoc_subset_uIcc hm)).deriv, (hd t).deriv]
    ring
  have hh := (area_ac hb).integral_deriv_mul_eq_sub heAC
  rw [hx, area_zero, zero_mul, sub_zero] at hh
  linarith

/-- Monotonicity pays the complete finite prefix from the same future whole-area budget. -/
theorem actualRieszAbsoluteCumulative_future_envelope {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {t : ℝ} (ht : 0 ≤ t) :
    actualRieszAbsoluteCumulative t ≤ M * (t ^ 2 / 4 + R ^ 2) := by
  by_cases h : 2 * R ≤ t
  · have hh := harea (t / 2) (by linarith)
    rw [show 2 * (t / 2) = t by ring] at hh
    have he : M * (t / 2) ^ 2 = M * (t ^ 2 / 4) := by ring
    rw [he] at hh
    exact hh.trans (by nlinarith [sq_nonneg R])
  · have h2R : 0 ≤ 2 * R := by linarith
    have hm : actualRieszAbsoluteCumulative t ≤ actualRieszAbsoluteCumulative (2 * R) :=
      intervalIntegral.integral_mono_interval le_rfl ht (le_of_not_ge h)
        (Eventually.of_forall fun _ => abs_nonneg _) (profile_intervalIntegrable h2R).abs
    exact hm.trans ((harea R le_rfl).trans (by nlinarith [sq_nonneg t]))

private theorem polynomial_exp_integral_bound {M R σ b : ℝ}
    (hM : 0 ≤ M) (hσ : 0 < σ) (hb : 0 ≤ b) :
    (∫ t in 0..b, M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) ≤
      M * (R ^ 2 / σ + 1 / (2 * σ ^ 3)) := by
  let q : ℝ → ℝ := fun t =>
    -M * ((t ^ 2 / 4 + R ^ 2) / σ + t / (2 * σ ^ 2) + 1 / (2 * σ ^ 3)) *
      Real.exp (-σ * t)
  have hi : IntervalIntegrable (fun t : ℝ =>
      M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) volume 0 b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  have hd (t : ℝ) : HasDerivAt q (M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) t := by
    have hp := (((((hasDerivAt_id t).pow 2).div_const 4).add_const (R ^ 2)).div_const σ).add
      ((hasDerivAt_id t).div_const (2 * σ ^ 2))
    have hlin := hp.add_const (1 / (2 * σ ^ 3))
    have hexp := ((hasDerivAt_id t).const_mul (-σ)).exp
    convert (hlin.const_mul (-M)).mul hexp using 1 <;> first | rfl | skip
    dsimp
    field_simp
    ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hi]
  have hq : q b ≤ 0 := by
    have hp : 0 ≤ (b ^ 2 / 4 + R ^ 2) / σ + b / (2 * σ ^ 2) + 1 / (2 * σ ^ 3) := by
      positivity
    dsimp only [q]
    exact mul_nonpos_of_nonpos_of_nonneg
      (mul_nonpos_of_nonpos_of_nonneg (neg_nonpos.mpr hM) hp) (Real.exp_pos _).le
  dsimp only [q] at hq ⊢
  norm_num only [zero_pow, zero_div, zero_add, add_zero, mul_zero, neg_zero, Real.exp_zero,
    mul_one]
  linarith

private theorem cumulative_weight_norm_bound {M R σ b : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    (hb : 0 ≤ b) :
    (∫ t in 0..b, ‖actualRieszAbsoluteCumulative t * Real.exp (-σ * t)‖) ≤
      M * (R ^ 2 / σ + 1 / (2 * σ ^ 3)) := by
  have hi := area_weight_intervalIntegrable hb σ
  have hj : IntervalIntegrable (fun t : ℝ =>
      M * (t ^ 2 / 4 + R ^ 2) * Real.exp (-σ * t)) volume 0 b :=
    (by fun_prop : Continuous _).intervalIntegrable _ _
  apply (intervalIntegral.integral_mono_on hb hi.norm hj _).trans
    (polynomial_exp_integral_bound hM hσ hb)
  intro t ht
  rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (area_nonneg ht.1) (Real.exp_pos _).le)]
  exact mul_le_mul_of_nonneg_right
    (actualRieszAbsoluteCumulative_future_envelope hM hR harea ht.1) (Real.exp_pos _).le

private theorem cumulative_weight_integrable {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    IntegrableOn (fun t => actualRieszAbsoluteCumulative t * Real.exp (-σ * t)) (Ioi 0) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_bounded
    (M * (R ^ 2 / σ + 1 / (2 * σ ^ 3))) 0 (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : 0 ≤ b
    · exact (area_weight_intervalIntegrable hb σ).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · filter_upwards [eventually_ge_atTop (0 : ℝ)] with b hb
    exact cumulative_weight_norm_bound hM hR hσ harea hb

private theorem cumulative_weight_tendsto_zero {M R σ : ℝ}
    (_hM : 0 ≤ M) (_hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    Tendsto (fun t => actualRieszAbsoluteCumulative t * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
  have he : Tendsto (fun t : ℝ => (M / 4) * t ^ 2 * Real.exp (-σ * t))
      atTop (𝓝 (0 : ℝ)) := by
    simpa only [Real.rpow_two, mul_assoc, mul_zero] using
      (tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero 2 σ hσ).const_mul (M / 4)
  apply squeeze_zero' _ _ he
  · filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
    exact mul_nonneg (area_nonneg ht) (Real.exp_pos _).le
  · filter_upwards [eventually_ge_atTop (2 * R)] with t ht
    have hh := harea (t / 2) (by linarith)
    rw [show 2 * (t / 2) = t by ring] at hh
    have heq : M * (t / 2) ^ 2 = (M / 4) * t ^ 2 := by ring
    rw [heq] at hh
    exact mul_le_mul_of_nonneg_right hh (Real.exp_pos _).le

private theorem weighted_norm_finite_tendsto {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    Tendsto (fun b => ∫ t in 0..b, ‖profile t * Real.exp (-σ * t)‖) atTop
      (𝓝 (σ * ∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t))) := by
  have hi := intervalIntegral_tendsto_integral_Ioi 0
    (cumulative_weight_integrable hM hR hσ harea) tendsto_id
  have hh := (cumulative_weight_tendsto_zero hM hR hσ harea).add (hi.const_mul σ)
  simp only [zero_add] at hh
  apply hh.congr'
  filter_upwards [eventually_ge_atTop (0 : ℝ)] with b hb
  simp only [id_eq, Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
  rw [finite_abel hb σ]

private theorem profile_real_weight_integrable {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    IntegrableOn (fun t => profile t * Real.exp (-σ * t)) (Ioi 0) := by
  apply integrableOn_Ioi_of_intervalIntegral_norm_tendsto
    (σ * ∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t))
      0 (l := (atTop : Filter ℝ)) (b := fun b : ℝ => b)
  · intro b
    by_cases hb : 0 ≤ b
    · exact ((profile_intervalIntegrable hb).mul_continuousOn (by fun_prop)).1
    · simp [Ioc_eq_empty_of_le (le_of_not_ge hb)]
  · exact tendsto_id
  · exact weighted_norm_finite_tendsto hM hR hσ harea

private theorem absolute_weight_integral_bound {M R σ : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R) (hσ : 0 < σ)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    (∫ t in Ioi 0, ‖profile t * Real.exp (-σ * t)‖) ≤
      actualRieszQuadraticLaplaceBudget M R σ := by
  have heq : (∫ t in Ioi 0, ‖profile t * Real.exp (-σ * t)‖) =
      σ * ∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t) :=
    tendsto_nhds_unique
      (intervalIntegral_tendsto_integral_Ioi 0
        (profile_real_weight_integrable hM hR hσ harea).norm tendsto_id)
      (weighted_norm_finite_tendsto hM hR hσ harea)
  rw [heq]
  have hh : (∫ t in Ioi 0, actualRieszAbsoluteCumulative t * Real.exp (-σ * t)) ≤
      M * (R ^ 2 / σ + 1 / (2 * σ ^ 3)) := by
    apply le_of_tendsto (intervalIntegral_tendsto_integral_Ioi 0
      (cumulative_weight_integrable hM hR hσ harea) tendsto_id)
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with b hb
    simp only [id_eq]
    have he : (∫ t in 0..b, actualRieszAbsoluteCumulative t * Real.exp (-σ * t)) =
        ∫ t in 0..b, ‖actualRieszAbsoluteCumulative t * Real.exp (-σ * t)‖ := by
      apply intervalIntegral.integral_congr
      rw [uIcc_of_le hb]
      intro t ht
      change actualRieszAbsoluteCumulative t * Real.exp (-σ * t) =
        ‖actualRieszAbsoluteCumulative t * Real.exp (-σ * t)‖
      rw [Real.norm_eq_abs, abs_of_nonneg (mul_nonneg (area_nonneg ht.1) (Real.exp_pos _).le)]
    rw [he]
    exact cumulative_weight_norm_bound hM hR hσ harea hb
  calc
    _ ≤ σ * (M * (R ^ 2 / σ + 1 / (2 * σ ^ 3))) :=
      mul_le_mul_of_nonneg_left hh hσ.le
    _ = _ := by unfold actualRieszQuadraticLaplaceBudget; field_simp

private theorem profile_continuousOn_positive : ContinuousOn profile (Ioi 0) := by
  intro t ht
  have hc := (profile_continuousOn (t + 1)) t ⟨ht.le, by linarith⟩
  exact (hc.continuousAt (Icc_mem_nhds ht (by linarith))).continuousWithinAt

private theorem kernel_norm (z : ℂ) (t : ℝ) :
    ‖(profile t : ℂ) * Complex.exp (-z * (t : ℂ))‖ =
      ‖profile t * Real.exp (-z.re * t)‖ := by
  simp only [norm_mul, Complex.norm_real, Complex.norm_exp, mul_re, neg_re, ofReal_re,
    neg_im, ofReal_im, mul_zero, sub_zero, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

/-- The genuine complete actual fixed-centered kernel is L1 for every positive real part. -/
theorem actualFixedCenteredRieszLaplace_positive_integrable {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ =>
      ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
        actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  have hc : ContinuousOn (fun t : ℝ => (profile t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi 0) :=
    (Complex.continuous_ofReal.comp_continuousOn profile_continuousOn_positive).mul
      (by fun_prop : ContinuousOn (fun t : ℝ => Complex.exp (-z * (t : ℂ))) (Ioi 0))
  have hm : AEStronglyMeasurable
      (fun t : ℝ => (profile t : ℂ) * Complex.exp (-z * (t : ℂ)))
      (volume.restrict (Ioi 0)) :=
    hc.aestronglyMeasurable measurableSet_Ioi
  have hh := (profile_real_weight_integrable hM hR hz harea).norm
  apply Integrable.mono' hh hm
  filter_upwards [] with t
  exact le_of_eq (kernel_norm z t)

/-- The actual absolute complex weighted integral includes the paid finite-prefix budget. -/
theorem actualFixedCenteredRieszLaplace_absolute_budget {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    (∫ t : ℝ in Ioi 0, ‖((actualMangoldtRieszPrimitive t -
      actualRieszLimitingLinearCenter * t - actualRieszRealConstantCenter : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ))‖) ≤ actualRieszQuadraticLaplaceBudget M R z.re := by
  change (∫ t : ℝ in Ioi 0, ‖(profile t : ℂ) * Complex.exp (-z * (t : ℂ))‖) ≤ _
  simp_rw [kernel_norm]
  exact absolute_weight_integral_bound hM hR hz harea

/-- The same independently defined actual transform has its genuine positive-domain norm bound. -/
theorem actualFixedCenteredRieszLaplace_positive_norm_le {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    ‖actualFixedCenteredRieszLaplace z‖ ≤ actualRieszQuadraticLaplaceBudget M R z.re :=
  (norm_integral_le_integral_norm _).trans
    (actualFixedCenteredRieszLaplace_absolute_budget hM hR harea hz)

end FormalResearch.RiemannHypothesis.SourceActualRieszQuadraticLaplace
```
