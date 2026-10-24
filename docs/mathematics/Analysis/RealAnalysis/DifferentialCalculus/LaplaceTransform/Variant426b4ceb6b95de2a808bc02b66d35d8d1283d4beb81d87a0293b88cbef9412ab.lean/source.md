# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.LaplaceTransform.Variant426b4ceb6b95de2a808bc02b66d35d8d1283d4beb81d87a0293b88cbef9412ab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56c25f11e1fbe5a610500f7cb37b0dedbe43d005` · SHA-256 `2c547e9f6a864aeb75dc8f952a77882fd28f0c2f4af12632202607683e328a45`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveWeilLaplaceIntegrand.Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.PrimitiveWeilLaplaceIntegrand.Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593","mathematical_subject":"Analysis.Calculus","original_sha256":"a41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:3bec2d9cd8185a7461284583/workspace/lib/Surface/Core/Weil/LaplaceTransform.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Surface.Core.Classification
public import Surface.Core.Weil.Autocorrelation
public import Mathlib.Analysis.Calculus.ParametricIntegral
public import Mathlib.Analysis.SpecialFunctions.ExpDeriv
public import Mathlib.MeasureTheory.Measure.Haar.Unique
import Mathlib.Tactic

/-!
# Bilateral Laplace transform for Weil test functions

The normalization is

`L g s = ∫ x : ℝ, g x * exp ((s - 1 / 2) * x)`.

Compact support makes the integral entire.  This module proves only the
coefficient-free analytic substrate; it contains no explicit formula,
positivity, zero-location, RH, or GRH assertion.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.PrimitiveWeilLaplaceIntegrand.Varianta41fcaf5517912b7db8c5ed4ff3ee038ece42ddea458868078d9b19e4b815593

public section

namespace Surface.Core.Weil

noncomputable section

open Set MeasureTheory Complex Filter
open scoped ContDiff ComplexConjugate Topology

/-- The integrand in the frozen bilateral Laplace normalization. -/
@[expose]
def primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) : ℂ :=
  g x * Complex.exp ((s - (1 / 2 : ℂ)) * (x : ℂ))

/-- Bilateral Laplace transform centered at the critical line. -/
@[expose]
def primitiveWeilLaplace
    (g : PrimitiveWeilTestFunction) (s : ℂ) : ℂ :=
  ∫ x : ℝ, primitiveWeilLaplaceIntegrand g s x

namespace PrimitiveWeilTestFunction

@[surface_adapter]
theorem continuous_primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    Continuous (primitiveWeilLaplaceIntegrand g s) := by
  unfold primitiveWeilLaplaceIntegrand
  apply g.continuous.mul
  fun_prop

@[surface_adapter]
theorem support_primitiveWeilLaplaceIntegrand_subset
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    Function.support (primitiveWeilLaplaceIntegrand g s) ⊆
      Function.support g := by
  intro x hx
  rw [Function.mem_support] at hx ⊢
  intro hzero
  apply hx
  simp [primitiveWeilLaplaceIntegrand, hzero]

@[surface_adapter]
theorem hasCompactSupport_primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    HasCompactSupport (primitiveWeilLaplaceIntegrand g s) := by
  exact g.hasCompactSupport.mono
    (support_primitiveWeilLaplaceIntegrand_subset g s)

@[surface_adapter]
theorem integrable_primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    Integrable (primitiveWeilLaplaceIntegrand g s) := by
  exact (continuous_primitiveWeilLaplaceIntegrand g s).integrable_of_hasCompactSupport
    (hasCompactSupport_primitiveWeilLaplaceIntegrand g s)

/-- The pointwise derivative of the Laplace integrand with respect to its
complex parameter. -/
@[expose]
def primitiveWeilLaplaceDerivativeIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) : ℂ :=
  g x * (Complex.exp ((s - (1 / 2 : ℂ)) * (x : ℂ)) * (x : ℂ))

private theorem hasDerivAt_primitiveWeilLaplaceIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) :
    HasDerivAt (fun z : ℂ ↦ primitiveWeilLaplaceIntegrand g z x)
      (primitiveWeilLaplaceDerivativeIntegrand g s x) s := by
  unfold primitiveWeilLaplaceIntegrand primitiveWeilLaplaceDerivativeIntegrand
  have hlinear :
      HasDerivAt (fun z : ℂ ↦ (z - (1 / 2 : ℂ)) * (x : ℂ)) (x : ℂ) s := by
    simpa only [id_eq, one_mul] using
      ((hasDerivAt_id s).sub_const (1 / 2 : ℂ)).mul_const (x : ℂ)
  exact hlinear.cexp.const_mul (g x)

private def primitiveWeilLaplaceDerivativeBound
    (g : PrimitiveWeilTestFunction) (s₀ : ℂ) (x : ℝ) : ℝ :=
  ‖g x‖ * |x| *
    Real.exp ((1 + ‖s₀ - (1 / 2 : ℂ)‖) * |x|)

private theorem integrable_primitiveWeilLaplaceDerivativeBound
    (g : PrimitiveWeilTestFunction) (s₀ : ℂ) :
    Integrable (primitiveWeilLaplaceDerivativeBound g s₀) := by
  have hcontinuous :
      Continuous (primitiveWeilLaplaceDerivativeBound g s₀) := by
    unfold primitiveWeilLaplaceDerivativeBound
    have hg : Continuous (fun x : ℝ ↦ ‖g x‖) := g.continuous.norm
    fun_prop
  have hsupport :
      Function.support (primitiveWeilLaplaceDerivativeBound g s₀) ⊆
        Function.support g := by
    intro x hx
    rw [Function.mem_support] at hx ⊢
    intro hzero
    apply hx
    simp [primitiveWeilLaplaceDerivativeBound, hzero]
  exact hcontinuous.integrable_of_hasCompactSupport
    (g.hasCompactSupport.mono hsupport)

private theorem primitiveWeilLaplaceDerivative_le
    (g : PrimitiveWeilTestFunction) (s₀ s : ℂ) (x : ℝ)
    (hs : s ∈ Metric.ball s₀ 1) :
    ‖primitiveWeilLaplaceDerivativeIntegrand g s x‖ ≤
      primitiveWeilLaplaceDerivativeBound g s₀ x := by
  unfold primitiveWeilLaplaceDerivativeIntegrand
    primitiveWeilLaplaceDerivativeBound
  simp only [norm_mul, norm_real, Real.norm_eq_abs, Complex.norm_exp]
  rw [mul_comm (Real.exp _) |x|, ← mul_assoc]
  gcongr
  calc
    (((s - (1 / 2 : ℂ)) * (x : ℂ))).re
        ≤ ‖(s - (1 / 2 : ℂ)) * (x : ℂ)‖ :=
      (le_abs_self _).trans (abs_re_le_norm _)
    _ = ‖s - (1 / 2 : ℂ)‖ * |x| := by
      rw [norm_mul, norm_real, Real.norm_eq_abs]
    _ ≤ (1 + ‖s₀ - (1 / 2 : ℂ)‖) * |x| := by
      apply mul_le_mul_of_nonneg_right _ (abs_nonneg x)
      calc
        ‖s - (1 / 2 : ℂ)‖
            ≤ ‖s - s₀‖ + ‖s₀ - (1 / 2 : ℂ)‖ := by
          rw [show s - (1 / 2 : ℂ) =
            (s - s₀) + (s₀ - (1 / 2 : ℂ)) by ring]
          exact norm_add_le _ _
        _ ≤ 1 + ‖s₀ - (1 / 2 : ℂ)‖ := by
          have hnorm : ‖s - s₀‖ ≤ 1 := by
            simpa only [dist_eq_norm] using (Metric.mem_ball.mp hs).le
          nlinarith

private theorem continuous_primitiveWeilLaplaceDerivativeIntegrand
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    Continuous (primitiveWeilLaplaceDerivativeIntegrand g s) := by
  unfold primitiveWeilLaplaceDerivativeIntegrand
  apply g.continuous.mul
  fun_prop

/-- The bilateral Laplace transform is complex differentiable at every
parameter. -/
@[surface_novel, surface_published]
theorem hasDerivAt_primitiveWeilLaplace
    (g : PrimitiveWeilTestFunction) (s₀ : ℂ) :
    HasDerivAt (primitiveWeilLaplace g)
      (∫ x : ℝ, primitiveWeilLaplaceDerivativeIntegrand g s₀ x) s₀ := by
  have h := hasDerivAt_integral_of_dominated_loc_of_deriv_le
    (μ := volume)
    (F := fun s x ↦ primitiveWeilLaplaceIntegrand g s x)
    (F' := fun s x ↦ primitiveWeilLaplaceDerivativeIntegrand g s x)
    (bound := primitiveWeilLaplaceDerivativeBound g s₀)
    (Metric.ball_mem_nhds s₀ (by norm_num : (0 : ℝ) < 1))
    (by
      filter_upwards with s
      exact (continuous_primitiveWeilLaplaceIntegrand g s).aestronglyMeasurable)
    (integrable_primitiveWeilLaplaceIntegrand g s₀)
    (continuous_primitiveWeilLaplaceDerivativeIntegrand g s₀).aestronglyMeasurable
    (ae_of_all _ fun x s hs ↦ primitiveWeilLaplaceDerivative_le g s₀ s x hs)
    (integrable_primitiveWeilLaplaceDerivativeBound g s₀)
    (ae_of_all _ fun x s _ ↦ hasDerivAt_primitiveWeilLaplaceIntegrand g s x)
  change HasDerivAt
    (fun s : ℂ ↦ ∫ x : ℝ, primitiveWeilLaplaceIntegrand g s x)
    (∫ x : ℝ, primitiveWeilLaplaceDerivativeIntegrand g s₀ x) s₀
  exact h.2

/-- Compact support makes the bilateral Laplace transform entire. -/
@[surface_novel, surface_published]
theorem differentiable_primitiveWeilLaplace
    (g : PrimitiveWeilTestFunction) :
    Differentiable ℂ (primitiveWeilLaplace g) :=
  fun s ↦ (hasDerivAt_primitiveWeilLaplace g s).differentiableAt

/-- Laplace transform of the Weil involution. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_star
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    primitiveWeilLaplace g.star s =
      conj (primitiveWeilLaplace g (1 - conj s)) := by
  unfold primitiveWeilLaplace
  rw [← integral_conj]
  rw [← MeasureTheory.integral_neg_eq_self
    (primitiveWeilLaplaceIntegrand g.star s) volume]
  apply integral_congr_ae
  filter_upwards with x
  unfold primitiveWeilLaplaceIntegrand
  rw [star_apply]
  simp only [neg_neg, Complex.ofReal_neg, map_mul]
  congr 1
  rw [← Complex.exp_conj]
  congr 1
  simp only [map_sub, map_mul, Complex.conj_ofReal,
    RCLike.conj_conj, map_div₀, map_one, map_ofNat]
  ring

private theorem primitiveWeilLaplaceIntegrand_autocorrelation
    (g : PrimitiveWeilTestFunction) (s : ℂ) (x : ℝ) :
    primitiveWeilLaplaceIntegrand g.autocorrelation s x =
      MeasureTheory.convolution
        (primitiveWeilLaplaceIntegrand g s)
        (primitiveWeilLaplaceIntegrand g.star s)
        complexMultiplication volume x := by
  unfold primitiveWeilLaplaceIntegrand
  rw [autocorrelation_apply, MeasureTheory.convolution_def]
  rw [← MeasureTheory.integral_mul_const]
  apply integral_congr_ae
  filter_upwards with y
  change
    (g y * conj (g (y - x))) *
        Complex.exp ((s - (1 / 2 : ℂ)) * (x : ℂ)) =
      (g y * Complex.exp ((s - (1 / 2 : ℂ)) * (y : ℂ))) *
        (g.star (x - y) *
          Complex.exp ((s - (1 / 2 : ℂ)) * ((x - y : ℝ) : ℂ)))
  rw [star_apply]
  rw [Complex.conjCLE_apply]
  simp only [neg_sub]
  rw [show (s - (1 / 2 : ℂ)) * (x : ℂ) =
    (s - (1 / 2 : ℂ)) * (y : ℂ) +
      (s - (1 / 2 : ℂ)) * ((x - y : ℝ) : ℂ) by
        push_cast
        ring]
  rw [Complex.exp_add]
  ring

/-- Autocorrelation turns the centered bilateral Laplace transform into the
canonical reflected product. -/
@[surface_novel, surface_published]
theorem primitiveWeilLaplace_autocorrelation
    (g : PrimitiveWeilTestFunction) (s : ℂ) :
    primitiveWeilLaplace g.autocorrelation s =
      primitiveWeilLaplace g s *
        conj (primitiveWeilLaplace g (1 - conj s)) := by
  unfold primitiveWeilLaplace
  simp_rw [primitiveWeilLaplaceIntegrand_autocorrelation]
  rw [MeasureTheory.integral_convolution complexMultiplication
    (integrable_primitiveWeilLaplaceIntegrand g s)
    (integrable_primitiveWeilLaplaceIntegrand g.star s)]
  have hstar := primitiveWeilLaplace_star g s
  unfold primitiveWeilLaplace at hstar
  rw [hstar]
  rfl

end PrimitiveWeilTestFunction

end

end Surface.Core.Weil
```
