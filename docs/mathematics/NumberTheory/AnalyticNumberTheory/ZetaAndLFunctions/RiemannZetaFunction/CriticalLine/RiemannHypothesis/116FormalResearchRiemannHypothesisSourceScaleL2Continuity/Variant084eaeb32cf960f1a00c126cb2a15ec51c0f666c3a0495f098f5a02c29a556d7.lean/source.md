# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.116FormalResearchRiemannHypothesisSourceScaleL2Continuity.Variant084eaeb32cf960f1a00c126cb2a15ec51c0f666c3a0495f098f5a02c29a556d7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8a70d442bf35b30c939c4799450a9eb8229ebc3` · SHA-256 `36331ac2567d43d824c145e82a47194f89d442895aa973adbbf621500ccc339d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleProfileContDiffAtJoint.Variant87210d4769606e3c807e15f5ba9f6edce4d0853b1371f33be36957d7e7925ee4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"87210d4769606e3c807e15f5ba9f6edce4d0853b1371f33be36957d7e7925ee4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ScaleProfileContDiffAtJoint.Variant87210d4769606e3c807e15f5ba9f6edce4d0853b1371f33be36957d7e7925ee4","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"87210d4769606e3c807e15f5ba9f6edce4d0853b1371f33be36957d7e7925ee4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/116-FormalResearch.RiemannHypothesis.SourceScaleL2Continuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleVariation
import FormalResearch.RiemannHypothesis.SourceDualRotation
import FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
import FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
import Mathlib.MeasureTheory.Integral.Bochner.Set

/-!
# Norm continuity of the literal scale source

Joint scalar continuity and a fixed compactly supported cross-integral, together
with the original unit normalization, give norm continuity in the actual complex
Lebesgue L² space for A≥1. All four translated/dual channels and finite sums with
fixed arithmetic data inherit it. This is C⁰ only: no norm derivative, changing
cutoff continuity, uniform work bound or RH estimate follows from this module.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ScaleProfileContDiffAtJoint.Variant87210d4769606e3c807e15f5ba9f6edce4d0853b1371f33be36957d7e7925ee4

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
open MeasureTheory Filter Set
open scoped InnerProductSpace Topology
open SourcePairing SourceScaleVariation SourceDualRotation SourceReflectionDuality
open GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Joint continuity includes the moving spatial seams of the original C³ bump. -/
theorem scaleProfile_contDiffAt_joint {p : ℝ × ℝ} (hp : 0 < p.1) :
    ContDiffAt ℝ 1 (fun z : ℝ × ℝ => scaleProfile z.1 z.2) p := by
  have h2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) :=
    sourceBump_contDiff_three.deriv'.deriv'
  have h0 : ContDiff ℝ 1 sourceBump := sourceBump_contDiff_three.of_le (by norm_num)
  have hn := sourceNormalization_pos hp
  unfold scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hp.ne' | exact hn.ne')

/-- The literal normalized source is jointly continuous at positive scales. -/
theorem normalizedSource_continuousOn_joint :
    ContinuousOn (fun p : ℝ × ℝ => normalizedTest explicitSecondDerivative p.1 p.2)
      (Ioi 0 ×ˢ univ) := by
  have hc : ContinuousOn (fun p : ℝ × ℝ => scaleProfile p.1 p.2) (Ioi 0 ×ˢ univ) :=
    fun p hp => (scaleProfile_contDiffAt_joint hp.1).continuousAt.continuousWithinAt
  apply hc.congr
  intro p hp
  exact (scaleProfile_eq_source hp.1 p.2).symm

/-- A fixed source factor supplies a fixed compact support for the cross-scale integral. -/
theorem crossSourceIntegral_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (fun B : ℝ => ∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x)
      (Ioi 0) := by
  apply continuousOn_integral_of_compact_support (μ := volume) (k := Icc (-A) A) isCompact_Icc
  · exact normalizedSource_continuousOn_joint.mul
      ((normalizedTest_contDiff A hA).continuous.comp continuous_snd).continuousOn
  · intro B x _ hx
    have ha : A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have : x < 0 := by linarith
        rw [abs_of_neg this]
        linarith
      · exact le_trans hx.le (le_abs_self _)
    simp [normalizedTest_zero_of_le_abs A x hA ha]

/-- The actual source representatives determine their full real cross inner product. -/
theorem actual_source_cross_inner {A B : ℝ} (qA qB : ComplexL2)
    (hqA : qA =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative A x : ℂ))
    (hqB : qB =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative B x : ℂ)) :
    ⟪qB, qA⟫_ℂ = ((∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x *
        normalizedTest explicitSecondDerivative A x : ℝ) : ℂ) := by
  rw [L2.inner_def]
  calc
    _ = ∫ x : ℝ, ((normalizedTest explicitSecondDerivative B x *
      normalizedTest explicitSecondDerivative A x : ℝ) : ℂ) := by
      apply integral_congr_ae
      filter_upwards [hqA, hqB] with x hA hB
      rw [hA, hB, RCLike.inner_apply']
      simp
    _ = _ := integral_complex_ofReal

/-- Exact normalized representatives vary continuously in the ambient L² norm on A≥1. -/
theorem actual_source_continuousOn (q : ℝ → ComplexL2)
    (hq : ∀ A : ℝ, 1 ≤ A →
      q A =ᵐ[volume] fun x => (normalizedTest explicitSecondDerivative A x : ℂ)) :
    ContinuousOn q (Ici 1) := by
  intro A hA
  have hAp : 0 < A := by change 1 ≤ A at hA; linarith
  have hsub : Ici (1 : ℝ) ⊆ Ioi 0 := fun B hB => by
    change 1 ≤ B at hB
    change 0 < B
    linarith
  have hc := ((crossSourceIntegral_continuousOn hAp).mono hsub) A hA
  have ht : Tendsto (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x))
      (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) := by
    have hec : ContinuousWithinAt (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
        normalizedTest explicitSecondDerivative B x * normalizedTest explicitSecondDerivative A x))
        (Ici 1) A := continuousWithinAt_const.sub (continuousWithinAt_const.mul hc)
    have hself : (∫ x : ℝ, normalizedTest explicitSecondDerivative A x *
        normalizedTest explicitSecondDerivative A x) = 1 := by
      simpa [pow_two] using normalized_square_integral A hA
    simpa only [hself, mul_one, sub_self] using hec.tendsto
  have heq : (fun B : ℝ => ‖q B - q A‖ ^ 2) =ᶠ[𝓝[Ici 1] A]
      (fun B : ℝ => 2 - 2 * (∫ x : ℝ,
        normalizedTest explicitSecondDerivative B x *
          normalizedTest explicitSecondDerivative A x)) := by
    filter_upwards [self_mem_nhdsWithin] with B hB
    rw [norm_sub_sq (𝕜 := ℂ), actual_source_norm_sq hB (q B) (hq B hB),
      actual_source_norm_sq hA (q A) (hq A hA),
      actual_source_cross_inner (q A) (q B) (hq A hA) (hq B hB)]
    change 1 - 2 * (∫ x : ℝ,
      normalizedTest explicitSecondDerivative B x *
        normalizedTest explicitSecondDerivative A x) + 1 = _
    ring
  have ht2 : Tendsto (fun B : ℝ => ‖q B - q A‖ ^ 2) (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) :=
    ht.congr' heq.symm
  have htn : Tendsto (fun B : ℝ => ‖q B - q A‖) (𝓝[Ici 1] A) (𝓝 (0 : ℝ)) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  exact tendsto_iff_norm_sub_tendsto_zero.2 htn

/-- A total scale family, using the existing literal source class at positive scales. -/
def originalSourceState (A : ℝ) : ComplexL2 :=
  if hA : 0 < A then SourcePureRotationObstruction.originalSourceL2 A hA else 0

/-- The total extension agrees with the canonical actual class at positive scales. -/
theorem originalSourceState_eq {A : ℝ} (hA : 0 < A) :
    originalSourceState A = SourcePureRotationObstruction.originalSourceL2 A hA := by
  simp [originalSourceState, hA]

/-- The total family has exactly the normalized polynomial source representative. -/
theorem originalSourceState_coe_ae {A : ℝ} (hA : 0 < A) :
    originalSourceState A =ᵐ[volume]
      fun x => (normalizedTest explicitSecondDerivative A x : ℂ) := by
  rw [originalSourceState_eq hA]
  exact SourcePureRotationObstruction.originalSourceL2_coe_ae A hA

/-- The actual source, with the original normalization, is norm-continuous for A≥1. -/
theorem originalSourceState_continuousOn : ContinuousOn originalSourceState (Ici 1) :=
  actual_source_continuousOn _ fun _ hA => originalSourceState_coe_ae (by linarith)

/-- Fixed translated and dual channels inherit source norm continuity. -/
theorem orbitAtom_continuousOn (ε δ : Bool) (m : ℕ) :
    ContinuousOn (fun A => SourceArithmeticOrbit.orbitAtom (originalSourceState A) ε δ m)
      (Ici 1) := by
  have ht := (translation (SourceArithmeticOrbit.signedLog ε m)).continuous.comp_continuousOn
    originalSourceState_continuousOn
  cases δ
  · exact ht
  · exact angularSignDuality.continuous.comp_continuousOn ht

/-- A fixed finite inventory and fixed coefficients retain all four channels continuously.
This freezes the arithmetic data and asserts no continuity across cutoff jumps. -/
theorem finiteProfile_continuousOn (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    ContinuousOn (fun A => SourceArithmeticOrbit.finiteProfile (originalSourceState A) I ε δ c)
      (Ici 1) := by
  unfold SourceArithmeticOrbit.finiteProfile
  exact continuousOn_finsetSum I fun m _ =>
    (continuous_const : Continuous (fun _ : ℝ => c m)).continuousOn.smul
      (orbitAtom_continuousOn ε δ m)

end FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
```
