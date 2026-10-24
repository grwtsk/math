# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.D0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854EstimateMomentRe.Variant861d1dfa7d000ed4d73851f52a92f51a6507ff76948418f3405c1e1c91f1169f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ebee20f65394910045cc771371c68532ed3f9d7` · SHA-256 `d86fc8dafe492f7ad88e2c6728661379f8533b538559f982b9695fc1c8ff9dfd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.TwoMomentProfile.Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.TwoMomentProfile.Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854","mathematical_subject":"Analysis.Integration","original_sha256":"d0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/d0/d0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854--EstimateMomentReflection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateTwoMomentSampling
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# RH estimate: two-moment reflection identity

This module formalizes the sign-preserving identity used after the finite
sampling error estimate.

A continuous compactly supported profile F with
  ∫ exp(t/2) F(t) dt = 0
and
  ∫ t exp(t/2) F(t) dt = 0
has, for every shift s,

  ∫_{0}^{∞} r exp(r/2) F(s+r) dr
  =
  ∫_{0}^{∞} r exp(-r/2) F(s-r) dr.

The proof keeps the signed whole-line moment until after the reflection step.
It is then instantiated for the actual source correlation and for
C_A' - C_A/2.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.TwoMomentProfile.Variantd0a8e7273a97f74134af43f38b4b4d605621af42a0dd7772ecb5cd89e2ac2854

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateMomentReflection

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open EstimateKernelMoments
open Realization CorrelationRegularity CorrelationMoment

noncomputable section

def TwoMomentProfile (F : ℝ → ℝ) : Prop :=
  Continuous F ∧
  HasCompactSupport F ∧
  (∫ t, Real.exp (t / 2) * F t) = 0 ∧
  (∫ t, t * Real.exp (t / 2) * F t) = 0

def shiftedMomentIntegrand (F : ℝ → ℝ) (s r : ℝ) : ℝ :=
  r * Real.exp (r / 2) * F (s + r)

def reflectedMomentIntegrand (F : ℝ → ℝ) (s r : ℝ) : ℝ :=
  r * Real.exp (-r / 2) * F (s - r)

theorem weighted_zero_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F) :
    Integrable (fun t => Real.exp (t / 2) * F t) := by
  have hc := hF.1
  exact
    ((show Continuous (fun t : ℝ => Real.exp (t / 2) * F t) by
      fun_prop).integrable_of_hasCompactSupport hF.2.1.mul_left)

theorem weighted_first_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F) :
    Integrable (fun t => t * Real.exp (t / 2) * F t) := by
  have hc := hF.1
  exact
    ((show Continuous
        (fun t : ℝ => t * Real.exp (t / 2) * F t) by
      fun_prop).integrable_of_hasCompactSupport hF.2.1.mul_left)

theorem shiftedMomentIntegrand_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    Integrable (shiftedMomentIntegrand F s) := by
  have hsupp :
      HasCompactSupport (fun r : ℝ => F (s + r)) := by
    have heq :
        (fun r : ℝ => F (s + r)) =
          F ∘ Homeomorph.addLeft s := by
      funext r
      rfl
    rw [heq]
    exact hF.2.1.comp_homeomorph (Homeomorph.addLeft s)
  have hc :
      Continuous (shiftedMomentIntegrand F s) := by
    unfold shiftedMomentIntegrand
    have hc := hF.1
    fun_prop
  exact hc.integrable_of_hasCompactSupport hsupp.mul_left

theorem reflectedMomentIntegrand_integrable
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    Integrable (reflectedMomentIntegrand F s) := by
  have hsupp :
      HasCompactSupport (fun r : ℝ => F (s - r)) := by
    have heq :
        (fun r : ℝ => F (s - r)) =
          F ∘ Homeomorph.subLeft s := by
      funext r
      rfl
    rw [heq]
    exact hF.2.1.comp_homeomorph (Homeomorph.subLeft s)
  have hc :
      Continuous (reflectedMomentIntegrand F s) := by
    unfold reflectedMomentIntegrand
    have hc := hF.1
    fun_prop
  exact hc.integrable_of_hasCompactSupport hsupp.mul_left

/-- The shifted whole-line first moment vanishes. -/
theorem shiftedMoment_integral_zero
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    (∫ r, shiftedMomentIntegrand F s r) = 0 := by
  let base : ℝ → ℝ :=
    fun t =>
      (t - s) * Real.exp (t / 2) * F t
  have hbase :
      Integrable base := by
    have h1 := weighted_first_integrable hF
    have h0 := (weighted_zero_integrable hF).const_mul s
    have heq :
        base =
          fun t =>
            t * Real.exp (t / 2) * F t -
              s * (Real.exp (t / 2) * F t) := by
      funext t
      unfold base
      ring
    rw [heq]
    exact h1.sub h0
  have hbase0 :
      (∫ t, base t) = 0 := by
    have heq :
        base =
          fun t =>
            t * Real.exp (t / 2) * F t -
              s * (Real.exp (t / 2) * F t) := by
      funext t
      unfold base
      ring
    rw [heq, integral_sub
      (weighted_first_integrable hF)
      ((weighted_zero_integrable hF).const_mul s),
      integral_const_mul, hF.2.2.2, hF.2.2.1]
    ring
  have htrans :
      (∫ r, base (r + s)) = ∫ t, base t :=
    integral_add_right_eq_self base s
  have hscale :
      (fun r =>
        shiftedMomentIntegrand F s r) =
      fun r =>
        Real.exp (-s / 2) * base (r + s) := by
    funext r
    unfold shiftedMomentIntegrand base
    have hexp : Real.exp (-s / 2) * Real.exp ((r + s) / 2) = Real.exp (r / 2) := by
      rw [← Real.exp_add]
      congr 1
      ring
    rw [add_sub_cancel_right, add_comm s r]
    calc
      _ = r * (Real.exp (-s / 2) * Real.exp ((r + s) / 2)) * F (r + s) := by rw [hexp]
      _ = _ := by ring
  rw [hscale, integral_const_mul, htrans, hbase0]
  ring

/-- Reflection of the negative half-line into a positive half-line. -/
theorem reflectedMoment_eq_neg_negativeHalf
    {F : ℝ → ℝ} (_hF : TwoMomentProfile F)
    (s : ℝ) :
    (∫ r in Ioi (0 : ℝ), reflectedMomentIntegrand F s r) =
      -(∫ r in Iic (0 : ℝ), shiftedMomentIntegrand F s r) := by
  have h :=
    integral_comp_neg_Iic
      (0 : ℝ)
      (reflectedMomentIntegrand F s)
  have heq :
      (fun r : ℝ =>
        reflectedMomentIntegrand F s (-r)) =
      fun r =>
        -shiftedMomentIntegrand F s r := by
    funext r
    unfold reflectedMomentIntegrand shiftedMomentIntegrand
    simp only [neg_neg, sub_neg_eq_add, neg_mul]
  simp only [neg_zero] at h
  rw [← h, heq, integral_neg]

/-- Exact two-moment reflection identity. -/
theorem two_moment_reflection
    {F : ℝ → ℝ} (hF : TwoMomentProfile F)
    (s : ℝ) :
    (∫ r in Ioi (0 : ℝ),
      shiftedMomentIntegrand F s r) =
    ∫ r in Ioi (0 : ℝ),
      reflectedMomentIntegrand F s r := by
  have hi := shiftedMomentIntegrand_integrable hF s
  have hsplit :=
    intervalIntegral.integral_Iic_add_Ioi
      (b := (0 : ℝ))
      hi.integrableOn
      hi.integrableOn
  rw [shiftedMoment_integral_zero hF s] at hsplit
  have href :=
    reflectedMoment_eq_neg_negativeHalf hF s
  linarith

/-- The actual source correlation is a two-moment profile. -/
theorem sourceCorrelation_twoMomentProfile
    (A : ℝ) (hA : 1 ≤ A) :
    TwoMomentProfile
      (sourceCorrelation explicitSecondDerivative A) := by
  refine
    ⟨(sourceCorrelation_contDiff A (by linarith)).continuous,
      sourceCorrelation_hasCompactSupport A (by linarith),
      ?_, ?_⟩
  · have hscale (t : ℝ) :
        (1 / 2 : ℝ) * t = t / 2 := by ring
    simpa only [hscale] using
      CorrelationMoment.full_correlation_moment_zero A hA
  · exact
      EstimateKernelMoments.sourceCorrelation_first_exponential_moment_zero
        A hA

/-- The differentiated profile is also a two-moment profile. -/
theorem derivativeProfile_twoMomentProfile
    (A : ℝ) (hA : 1 ≤ A) :
    TwoMomentProfile (derivativeProfile A) := by
  have hc :=
    sourceCorrelation_contDiff A (by linarith)
  have hcont :
      Continuous (derivativeProfile A) := by
    unfold derivativeProfile
    exact
      (hc.continuous_deriv (by norm_num)).sub
        (hc.continuous.div_const 2)
  have hsupp :
      HasCompactSupport (derivativeProfile A) := by
    have hC :=
      sourceCorrelation_hasCompactSupport A (by linarith)
    have hhalf :
        HasCompactSupport
          (fun t =>
            sourceCorrelation explicitSecondDerivative A t / 2) := by
      simp only [div_eq_mul_inv]
      exact hC.mul_right
          (f' := fun _ : ℝ => (2 : ℝ)⁻¹)
    unfold derivativeProfile
    exact hC.deriv.sub hhalf
  exact
    ⟨hcont, hsupp,
      EstimateKernelMoments.derivativeProfile_exponential_moment_zero
        A hA,
      EstimateKernelMoments.derivativeProfile_first_exponential_moment_zero
        A hA⟩

theorem sourceCorrelation_reflection
    (A : ℝ) (hA : 1 ≤ A) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        sourceCorrelation explicitSecondDerivative A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        sourceCorrelation explicitSecondDerivative A (s - r) := by
  simpa [shiftedMomentIntegrand, reflectedMomentIntegrand] using
    two_moment_reflection
      (sourceCorrelation_twoMomentProfile A hA) s

theorem derivativeProfile_reflection
    (A : ℝ) (hA : 1 ≤ A) (s : ℝ) :
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        derivativeProfile A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        derivativeProfile A (s - r) := by
  simpa [shiftedMomentIntegrand, reflectedMomentIntegrand] using
    two_moment_reflection
      (derivativeProfile_twoMomentProfile A hA) s

def MomentReflectionCheckpoint : Prop :=
  (∀ A : ℝ, 1 ≤ A → ∀ s : ℝ,
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        sourceCorrelation explicitSecondDerivative A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        sourceCorrelation explicitSecondDerivative A (s - r)) ∧
  (∀ A : ℝ, 1 ≤ A → ∀ s : ℝ,
    (∫ r in Ioi (0 : ℝ),
      r * Real.exp (r / 2) *
        derivativeProfile A (s + r)) =
    ∫ r in Ioi (0 : ℝ),
      r * Real.exp (-r / 2) *
        derivativeProfile A (s - r))

theorem moment_reflection_checkpoint :
    MomentReflectionCheckpoint :=
  ⟨sourceCorrelation_reflection,
    derivativeProfile_reflection⟩

end
end EstimateMomentReflection
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```
