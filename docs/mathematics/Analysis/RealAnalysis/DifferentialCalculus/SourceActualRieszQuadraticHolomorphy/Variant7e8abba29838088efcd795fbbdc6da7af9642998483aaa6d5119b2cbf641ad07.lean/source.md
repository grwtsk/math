# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualRieszQuadraticHolomorphy.Variant7e8abba29838088efcd795fbbdc6da7af9642998483aaa6d5119b2cbf641ad07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20cfc8e71b1aa1c24cb76abb33226dc07c674575` · SHA-256 `ad0f3a69c59ee23f9b80f1efb5c3162c2116feea9ccce8cc95b9c9e91ca71f58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Profile.Variant72a8d7a762a1739c764ae4f1a70df253ddeb333be677888d118c6fb45d42fbfe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72a8d7a762a1739c764ae4f1a70df253ddeb333be677888d118c6fb45d42fbfe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Profile.Variant72a8d7a762a1739c764ae4f1a70df253ddeb333be677888d118c6fb45d42fbfe","mathematical_subject":"Analysis.Calculus","original_sha256":"72a8d7a762a1739c764ae4f1a70df253ddeb333be677888d118c6fb45d42fbfe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/root/check-20261007T092332Z-1791365012061487000/SourceActualRieszQuadraticHolomorphy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualRieszQuadraticLaplace
import Mathlib.Analysis.Calculus.ParametricIntegral
import Mathlib.Analysis.Complex.CauchyIntegral

/-!
The complete actual fixed-centered H Laplace transform has a genuine dominated
parameter derivative and holomorphy on positive real parts under the supplied
future full quadratic absolute area budget. No area witness, ordinary critical
improper convergence or global meromorphic continuation equality is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Profile.Variant72a8d7a762a1739c764ae4f1a70df253ddeb333be677888d118c6fb45d42fbfe

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceActualRieszQuadraticHolomorphy
open MeasureTheory Set Complex Filter
open scoped Topology
open SourceActualRieszCenteredReconstruction SourceActualRieszCriticalCenter
open SourceActualRieszRealConstantCenter SourceActualRieszCenteredInitialLaplace
open SourceActualRieszQuadraticLaplace
noncomputable section

private def profile (t : ℝ) : ℝ :=
  actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
    actualRieszRealConstantCenter

private theorem time_exp_bound {c t : ℝ} (hc : 0 < c) (_ht : 0 ≤ t) :
    t ≤ (1 / c) * Real.exp (c * t) := by
  have he := Real.add_one_le_exp (c * t)
  have he2 : t * c ≤ Real.exp (c * t) := by nlinarith
  have he3 := (le_div_iff₀ hc).mpr he2
  simpa only [div_eq_mul_inv, one_mul, mul_one, mul_comm] using he3

private theorem derivative_norm_bound {c r t : ℝ} (hc : 0 < c)
    (hr : 2 * c ≤ r) (ht : 0 ≤ t) :
    t * |profile t| * Real.exp (-r * t) ≤
      (1 / c) * ‖profile t * Real.exp (-c * t)‖ := by
  have he : Real.exp (-r * t) ≤ Real.exp (-(2 * c) * t) := by
    apply Real.exp_le_exp.mpr
    nlinarith
  calc
    _ ≤ t * |profile t| * Real.exp (-(2 * c) * t) :=
      mul_le_mul_of_nonneg_left he (mul_nonneg ht (abs_nonneg _))
    _ ≤ ((1 / c) * Real.exp (c * t)) * |profile t| *
        Real.exp (-(2 * c) * t) := by
      gcongr
      exact time_exp_bound hc ht
    _ = _ := by
      rw [norm_mul]
      simp only [Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]
      rw [show ((1 / c) * Real.exp (c * t)) * |profile t| *
        Real.exp (-(2 * c) * t) = (1 / c) * |profile t| *
          (Real.exp (c * t) * Real.exp (-(2 * c) * t)) by ring, ← Real.exp_add]
      rw [show c * t + -(2 * c) * t = -c * t by ring]
      ring

private theorem kernel_hasDerivAt (t : ℝ) (z : ℂ) :
    HasDerivAt (fun z : ℂ => (profile t : ℂ) *
      Complex.exp (-z * (t : ℂ)))
      (-(t : ℂ) * (profile t : ℂ) *
        Complex.exp (-z * (t : ℂ))) z := by
  have hh := (((hasDerivAt_id z).neg.mul_const (t : ℂ)).cexp.const_mul
    (profile t : ℂ))
  convert hh using 1 <;> first | rfl | (simp only [Pi.neg_apply, id_eq]; ring)

/-- Genuine parameter differentiation retains the supplied actual full-area premise. -/
theorem actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun t : ℝ => -(t : ℂ) *
      ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
        actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi 0) ∧
      HasDerivAt actualFixedCenteredRieszLaplace
        (∫ t : ℝ in Ioi 0, -(t : ℂ) *
          ((actualMangoldtRieszPrimitive t - actualRieszLimitingLinearCenter * t -
            actualRieszRealConstantCenter : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) z := by
  let μ : Measure ℝ := volume.restrict (Ioi 0)
  let F : ℂ → ℝ → ℂ := fun w t => (profile t : ℂ) *
    Complex.exp (-w * (t : ℂ))
  let F' : ℂ → ℝ → ℂ := fun w t => -(t : ℂ) * F w t
  let c : ℝ := z.re / 4
  have hc : 0 < c := by dsimp [c]; positivity
  have hradius : 0 < z.re / 2 := by positivity
  have hre {w : ℂ} (hw : w ∈ Metric.ball z (z.re / 2)) : 2 * c ≤ w.re := by
    rw [Metric.mem_ball, dist_eq_norm] at hw
    have he := Complex.abs_re_le_norm (w - z)
    rw [sub_re] at he
    dsimp [c]
    have hh := (abs_le.mp (he.trans hw.le)).1
    linarith
  have hi : Integrable (F z) μ :=
    actualFixedCenteredRieszLaplace_positive_integrable hM hR harea hz
  have hmeas : ∀ᶠ w in 𝓝 z, AEStronglyMeasurable (F w) μ := by
    filter_upwards [Metric.ball_mem_nhds z hradius] with w hw
    exact (actualFixedCenteredRieszLaplace_positive_integrable hM hR harea
      (hc.trans_le (by have := hre hw; linarith))).aestronglyMeasurable
  have hprime : AEStronglyMeasurable (F' z) μ :=
    Complex.continuous_ofReal.neg.aestronglyMeasurable.mul hi.aestronglyMeasurable
  have hib : Integrable (fun t => (1 / c) *
      ‖profile t * Real.exp (-c * t)‖) μ :=
    by
      have hh := (actualFixedCenteredRieszLaplace_positive_integrable hM hR harea
        (z := (c : ℂ)) hc).norm.const_mul (1 / c)
      simpa only [profile, norm_mul, Complex.norm_real, Complex.norm_exp, mul_re,
        neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero, Real.norm_eq_abs,
        abs_of_pos (Real.exp_pos _)] using hh
  have hb : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      ‖F' w t‖ ≤ (1 / c) * ‖profile t * Real.exp (-c * t)‖ := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht w hw
    have ht0 : 0 ≤ t := ht.le
    dsimp [F', F]
    simp only [norm_mul, norm_neg, Complex.norm_real, Complex.norm_exp, Real.norm_eq_abs,
      abs_of_nonneg ht0, mul_re, neg_re, ofReal_re, neg_im, ofReal_im, mul_zero, sub_zero]
    simpa only [mul_assoc, Real.norm_eq_abs] using derivative_norm_bound hc (hre hw) ht0
  have hd : ∀ᵐ t ∂μ, ∀ w ∈ Metric.ball z (z.re / 2),
      HasDerivAt (fun w => F w t) (F' w t) w := by
    filter_upwards [] with t w _
    simpa only [F, F', mul_assoc] using kernel_hasDerivAt t w
  have hh := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (Metric.ball_mem_nhds z hradius) hmeas hi hprime hb hib hd
  unfold actualFixedCenteredRieszLaplace
  simpa only [F, F', μ, IntegrableOn, mul_assoc, profile] using hh

/-- The same literal transform is holomorphic under the supplied full quadratic area. -/
theorem actualFixedCenteredRieszLaplace_analyticOnNhd_of_quadratic_area {M R : ℝ}
    (hM : 0 ≤ M) (hR : 1 ≤ R)
    (harea : ∀ A : ℝ, R ≤ A → actualRieszAbsoluteCumulative (2 * A) ≤ M * A ^ 2) :
    AnalyticOnNhd ℂ actualFixedCenteredRieszLaplace {z : ℂ | 0 < z.re} := by
  have hd : DifferentiableOn ℂ actualFixedCenteredRieszLaplace {z : ℂ | 0 < z.re} := by
    intro z hz
    have hder := (actualFixedCenteredRieszLaplace_hasDerivAt_of_quadratic_area hM hR harea hz).2
    exact hder.differentiableAt.differentiableWithinAt
  exact hd.analyticOnNhd (isOpen_lt continuous_const Complex.continuous_re)

end
end FormalResearch.RiemannHypothesis.SourceActualRieszQuadraticHolomorphy
```
