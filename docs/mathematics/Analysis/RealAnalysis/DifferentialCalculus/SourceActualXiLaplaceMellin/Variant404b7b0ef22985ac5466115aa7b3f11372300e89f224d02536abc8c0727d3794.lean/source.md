# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualXiLaplaceMellin.Variant404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f96ff651f9962615462a9d840d9ddf59fa1f7a45` · SHA-256 `404b7b0ef22985ac5466115aa7b3f11372300e89f224d02536abc8c0727d3794`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceActualXiMellinSeven
import RootActualXiComplexLaplaceBudget

/-!
The actual anchored F7 Laplace transform is transported by finite absolutely
continuous Abel integration and genuine improper limits. The original closed
prime-power seams, lower seven and gamma correction remain in the source.
No critical-domain continuation or arithmetic average witness is supplied.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
open MeasureTheory Set Filter Complex
open scoped Topology Interval
open RootActualXiTailPrimitive RootActualXiExponentialEnvelope
open RootActualXiComplexLaplaceBudget SourceActualXiMellinSeven
open RH16ActualPsiNegativeBlock
noncomputable section

private theorem exponential_hasDerivAt (z : ℂ) (t : ℝ) :
    HasDerivAt (fun t : ℝ => Complex.exp (-z * (t : ℂ)))
      (-z * Complex.exp (-z * (t : ℂ))) t := by
  convert (((hasDerivAt_id t).ofReal_comp.const_mul (-z)).cexp) using 1 <;> simp
  ring

private theorem finite_abel (z : ℂ) {b : ℝ} (hb : Real.log 7 ≤ b) :
    (∫ t in Real.log 7..b,
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) +
        (actualAnchoredXiTailPrimitive t : ℂ) *
          (-z * Complex.exp (-z * (t : ℂ)))) =
      (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ)) := by
  let q : ℝ → ℂ := fun t => Complex.exp (-z * (t : ℂ))
  have hq : ContDiff ℝ 1 q := by
    exact (contDiff_const.mul (Complex.ofRealCLM.contDiff :
      ContDiff ℝ 1 (fun t : ℝ => (t : ℂ)))).cexp
  have hr : AbsolutelyContinuousOnInterval (fun t => (q t).re) (Real.log 7) b :=
    (Complex.reCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hm : AbsolutelyContinuousOnInterval (fun t => (q t).im) (Real.log 7) b :=
    (Complex.imCLM.contDiff.comp hq).contDiffOn.absolutelyContinuousOnInterval
  have hd := actualXiTailTimeDensity_intervalIntegrable hb
  have hdc : IntervalIntegrable (fun t => (actualXiTailTimeDensity t : ℂ))
      volume (Real.log 7) b :=
    ⟨Complex.ofRealCLM.integrable_comp hd.1, Complex.ofRealCLM.integrable_comp hd.2⟩
  have hi1 := hdc.mul_continuousOn hq.continuous.continuousOn
  have hc := (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).continuousOn
  have hi2 : IntervalIntegrable (fun t => (actualAnchoredXiTailPrimitive t : ℂ) *
      (-z * q t)) volume (Real.log 7) b :=
    ((Complex.continuous_ofReal.comp_continuousOn hc).mul
      (hq.continuous.const_mul (-z)).continuousOn).intervalIntegrable
  have his := hi1.add hi2
  have hreal :=
    (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hr
  have himag :=
    (actualAnchoredXiTailPrimitive_absolutelyContinuous hb).integral_deriv_mul_eq_sub hm
  have hqr (t : ℝ) : HasDerivAt (fun t => (q t).re) (-z * q t).re t := by
    simpa only [q, Function.comp_def, Complex.reCLM_apply] using!
      Complex.reCLM.hasFDerivAt.comp_hasDerivAt t (exponential_hasDerivAt z t)
  have hqm (t : ℝ) : HasDerivAt (fun t => (q t).im) (-z * q t).im t := by
    simpa only [q, Function.comp_def, Complex.imCLM_apply] using!
      Complex.imCLM.hasFDerivAt.comp_hasDerivAt t (exponential_hasDerivAt z t)
  apply Complex.ext
  · change (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re =
      ((actualAnchoredXiTailPrimitive b : ℂ) * q b).re
    have her : (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re =
      ∫ t in Real.log 7..b, ((actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).re :=
      (intervalIntegral.intervalIntegral_re his).symm
    rw [her]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).re +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).re) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqr t).deriv]
        simp only [add_re, mul_re, ofReal_re, ofReal_im, zero_mul, sub_zero]
      _ = _ := by
        rw [hreal, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_re, ofReal_re, ofReal_im, zero_mul]
  · change (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im =
      ((actualAnchoredXiTailPrimitive b : ℂ) * q b).im
    have hei : (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im =
      ∫ t in Real.log 7..b, ((actualXiTailTimeDensity t : ℂ) * q t +
        (actualAnchoredXiTailPrimitive t : ℂ) * (-z * q t)).im :=
      (intervalIntegral.intervalIntegral_im his).symm
    rw [hei]
    calc
      _ = ∫ t in Real.log 7..b,
          deriv actualAnchoredXiTailPrimitive t * (q t).im +
            actualAnchoredXiTailPrimitive t * deriv (fun t => (q t).im) t := by
        apply intervalIntegral.integral_congr_ae
        filter_upwards [actualAnchoredXiTailPrimitive_ae_hasDerivAt hb] with t ht hmem
        rw [(ht (uIoc_subset_uIcc hmem)).deriv, (hqm t).deriv]
        simp only [add_im, mul_im, ofReal_re, ofReal_im, zero_mul, add_zero]
      _ = _ := by
        rw [himag, actualAnchoredXiTailPrimitive_at_lower]
        simp only [zero_mul, sub_zero, mul_im, ofReal_re, ofReal_im, add_zero]

private theorem exponential_density_transport (z : ℂ) (t : ℝ) :
    Real.exp t • ((shiftedActualChebyshev (Real.exp t) : ℂ) *
      ((Real.exp t : ℝ) : ℂ) ^ (-((z + 1 / 2) + 1))) =
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr (Real.exp_pos t).ne')]
  rw [← Complex.ofReal_log (Real.exp_pos t).le, Real.log_exp]
  simp only [real_smul, actualXiTailTimeDensity, ofReal_mul]
  rw [Complex.ofReal_exp, Complex.ofReal_exp]
  push_cast
  calc
    _ = (shiftedActualChebyshev (Real.exp t) : ℂ) *
        Complex.exp ((t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1))) := by
      rw [Complex.exp_add]
      ring
    _ = _ := by
      rw [show (t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1)) =
        -(t : ℂ) / 2 + -z * (t : ℂ) by ring, Complex.exp_add]
      ring

/-- Positive exponential substitution preserves the same actual closed-seven Mellin source. -/
theorem actualXiDensityLaplace_eq_MellinSeven (z : ℂ) :
    (∫ t in Ioi (Real.log 7), (actualXiTailTimeDensity t : ℂ) *
      Complex.exp (-z * (t : ℂ))) = actualXiComplexMellinTailSeven (z + 1 / 2) := by
  have he := integral_comp_exp_Ioi (fun y : ℝ => (shiftedActualChebyshev y : ℂ) *
    (y : ℂ) ^ (-((z + 1 / 2) + 1))) (Real.log 7)
  simp_rw [exponential_density_transport z] at he
  rw [Real.exp_log (by norm_num : (0 : ℝ) < 7)] at he
  exact he

/-- The literal AE arithmetic density times the complex damping is genuinely L1 initially. -/
theorem actualXiDensityLaplace_integrableOn {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualXiTailTimeDensity t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi (Real.log 7)) := by
  have hs : 1 < (z + 1 / 2).re := by norm_num; linarith
  have hi := (integrableOn_comp_exp_Ioi (fun y : ℝ => (shiftedActualChebyshev y : ℂ) *
    (y : ℂ) ^ (-((z + 1 / 2) + 1))) (Real.log 7)).mpr
      (by simpa only [Real.exp_log (by norm_num : (0 : ℝ) < 7)] using
        (actualXiComplexMellinTailSeven_integrableOn hs))
  simp_rw [exponential_density_transport z] at hi
  exact hi

/-- Genuine finite Abel uses the actual AE derivative and its zero lower anchor. -/
theorem actualXiComplexLaplace_finite_abel {z : ℂ} (hz : 1 / 2 < z.re)
    {b : ℝ} (hb : Real.log 7 ≤ b) :
    z * (∫ t in Real.log 7..b, (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) =
      (∫ t in Real.log 7..b, (actualXiTailTimeDensity t : ℂ) *
        Complex.exp (-z * (t : ℂ))) -
          (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ)) := by
  have hd : IntervalIntegrable (fun t => (actualXiTailTimeDensity t : ℂ) *
      Complex.exp (-z * (t : ℂ))) volume (Real.log 7) b := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hb]
    exact (actualXiDensityLaplace_integrableOn hz).mono_set Ioc_subset_Ioi_self
  have hf : IntervalIntegrable (fun t => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) volume (Real.log 7) b := by
    rw [intervalIntegrable_iff_integrableOn_Ioc_of_le hb]
    exact (actualXiComplexLaplace_integrableOn hz).mono_set Ioc_subset_Ioi_self
  have hm : IntervalIntegrable (fun t => (actualAnchoredXiTailPrimitive t : ℂ) *
      (-z * Complex.exp (-z * (t : ℂ)))) volume (Real.log 7) b := by
    convert hf.const_mul (-z) using 1
    funext t
    ring
  have hi := finite_abel z hb
  rw [intervalIntegral.integral_add hd hm] at hi
  have he : (∫ t in Real.log 7..b, (actualAnchoredXiTailPrimitive t : ℂ) *
      (-z * Complex.exp (-z * (t : ℂ)))) =
      -z * ∫ t in Real.log 7..b, (actualAnchoredXiTailPrimitive t : ℂ) *
        Complex.exp (-z * (t : ℂ)) := by
    rw [← intervalIntegral.integral_const_mul]
    congr 1
    funext t
    ring
  rw [he] at hi
  linear_combination -hi

/-- The true upper primitive trace vanishes only on the proved initial damping domain. -/
theorem actualXiComplexLaplace_boundary_tendsto_zero {z : ℂ} (hz : 1 / 2 < z.re) :
    Tendsto (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) atTop (𝓝 0) := by
  have ho : (fun t : ℝ => (actualAnchoredXiTailPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) =O[atTop]
        (fun t : ℝ => Real.exp (-(z.re - 1 / 2) * t)) := by
    apply Asymptotics.IsBigO.of_bound (2 * actualXiExponentialEnvelopeConstant)
    filter_upwards [eventually_ge_atTop (Real.log 7)] with t ht
    simpa only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)] using
      actualXiComplexLaplaceKernel_norm_le z ht
  exact ho.trans_tendsto (Real.tendsto_exp_atBot.comp
    (tendsto_id.const_mul_atTop_of_neg (by linarith : -(z.re - 1 / 2) < 0)))

/-- Actual finite AC Abel and genuine improper limits identify the anchored F7 transform. -/
theorem actualXiComplexLaplace_mul_eq_MellinSeven {z : ℂ} (hz : 1 / 2 < z.re) :
    z * actualXiComplexLaplace z = actualXiComplexMellinTailSeven (z + 1 / 2) := by
  have hd := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiDensityLaplace_integrableOn hz) tendsto_id
  have hf := intervalIntegral_tendsto_integral_Ioi (Real.log 7)
    (actualXiComplexLaplace_integrableOn hz) tendsto_id
  have he : (fun b : ℝ => z * ∫ t in Real.log 7..b,
      (actualAnchoredXiTailPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ))) =ᶠ[atTop]
        (fun b : ℝ => (∫ t in Real.log 7..b,
          (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ))) -
            (actualAnchoredXiTailPrimitive b : ℂ) * Complex.exp (-z * (b : ℂ))) := by
    filter_upwards [eventually_ge_atTop (Real.log 7)] with b hb
    exact actualXiComplexLaplace_finite_abel hz hb
  have hh := tendsto_nhds_unique (tendsto_const_nhds.mul hf)
    ((hd.sub (actualXiComplexLaplace_boundary_tendsto_zero hz)).congr' he.symm)
  simpa only [sub_zero, actualXiDensityLaplace_eq_MellinSeven, actualXiComplexLaplace] using hh

/-- The initial actual F7 transform keeps the full lower head, gamma and pole return. -/
theorem actualXiComplexLaplace_mul_eq_logDerivative {z : ℂ} (hz : 1 / 2 < z.re) :
    (z + 1 / 2) * (z * actualXiComplexLaplace z) =
      -deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) -
        actualClosedMangoldtMellinHeadSeven (z + 1 / 2) +
          ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
            (7 : ℂ) ^ (-(z + 1 / 2)) -
              (z + 1 / 2) * (7 : ℂ) ^ (1 - (z + 1 / 2)) / ((z + 1 / 2) - 1) := by
  rw [actualXiComplexLaplace_mul_eq_MellinSeven hz]
  apply actualXiComplexMellinTailSeven_mul_eq
  norm_num
  linarith

/-- The genuine initial-domain budget controls the complete signed derivative return. -/
theorem actualXiLogDerivativeCombination_norm_le {z : ℂ} (hz : 1 / 2 < z.re) :
    ‖-deriv riemannZeta (z + 1 / 2) / riemannZeta (z + 1 / 2) -
        actualClosedMangoldtMellinHeadSeven (z + 1 / 2) +
          ((Chebyshev.psi 7 + 2 * (Real.eulerMascheroniConstant + 1 - Real.log 2) : ℝ) : ℂ) *
            (7 : ℂ) ^ (-(z + 1 / 2)) -
              (z + 1 / 2) * (7 : ℂ) ^ (1 - (z + 1 / 2)) / ((z + 1 / 2) - 1)‖ ≤
      ‖z + 1 / 2‖ * ‖z‖ * (2 * actualXiExponentialEnvelopeConstant *
        Real.exp (-(z.re - 1 / 2) * Real.log 7) / (z.re - 1 / 2)) := by
  rw [← actualXiComplexLaplace_mul_eq_logDerivative hz, norm_mul, norm_mul, ← mul_assoc]
  exact mul_le_mul_of_nonneg_left (actualXiComplexLaplace_norm_le hz)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))

end
end FormalResearch.RiemannHypothesis.SourceActualXiLaplaceMellin
```
