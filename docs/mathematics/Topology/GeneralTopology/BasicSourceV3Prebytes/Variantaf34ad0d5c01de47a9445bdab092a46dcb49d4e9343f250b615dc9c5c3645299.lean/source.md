# Complete source: GRWTSK.Topology.GeneralTopology.BasicSourceV3Prebytes.Variantaf34ad0d5c01de47a9445bdab092a46dcb49d4e9343f250b615dc9c5c3645299

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `147dc23acd7098a21e93718d2064c473ec6f5a5b` · SHA-256 `8d8863d581b7a7121f06d5708d587f4a3c76d557cb6dbd5e5c2d5b6a7669a354`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SpatialDerivative.Variantab7e4227d0430eb7098b9a9137130e484e1212927a5a62d5614e895295704747","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ab7e4227d0430eb7098b9a9137130e484e1212927a5a62d5614e895295704747","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SpatialDerivative.Variantab7e4227d0430eb7098b9a9137130e484e1212927a5a62d5614e895295704747","mathematical_subject":"Topology.GeneralTopology","original_sha256":"ab7e4227d0430eb7098b9a9137130e484e1212927a5a62d5614e895295704747","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/spatial-source/basic-source-v3-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleDerivative
import FormalResearch.RiemannHypothesis.SourceCorrelationCurvature

/-!
# Continuity of the actual spatial source derivative

The spatial derivative is distinct from the proved scale derivative p_A.
Global C³ bump calculus gives its exact representative and compact support,
including moving seams. A fixed local compact envelope proves norm continuity.
No C4 bump or scale derivative of q'_A is assumed.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.Topology.GeneralTopology.SpatialDerivative.Variantab7e4227d0430eb7098b9a9137130e484e1212927a5a62d5614e895295704747

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity
open MeasureTheory Filter Set
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleVariation SourceScaleL2Continuity SourceReflectionDuality
open SourceScaleDerivative SourceDerivativeEnergy GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Exact spatial derivative of the unchanged normalized source, distinct from p_A. -/
def spatialDerivative (A x : ℝ) : ℝ :=
  scaleAmplitude A * (deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 -
    deriv sourceBump (x / A) / (4 * A))

/-- Ordinary spatial differentiation of the actual source includes both moving seams. -/
theorem normalizedSource_hasSpatialDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (normalizedTest explicitSecondDerivative A) (spatialDerivative A x) x := by
  have h0 := sourceBump_contDiff_three.differentiable (by norm_num)
  have h2 := sourceBump_contDiff_three.deriv'.deriv'.differentiable_one
  have hx := (hasDerivAt_id x).div_const A
  have hd := ((((h2 (x / A)).hasDerivAt.comp x hx).div_const (A ^ 2)).sub
    (((h0 (x / A)).hasDerivAt.comp x hx).div_const 4)).const_mul (scaleAmplitude A)
  have heq : (fun y => scaleAmplitude A *
      (deriv (deriv sourceBump) (y / A) / A ^ 2 - sourceBump (y / A) / 4)) =
      normalizedTest explicitSecondDerivative A := by
    funext y
    rw [← scaleProfile_eq_amplitude hA, scaleProfile_eq_source hA]
  simp only [Function.comp_def, id_eq, Pi.sub_apply] at hd
  rw [heq] at hd
  apply hd.congr_deriv
  dsimp [spatialDerivative]
  field_simp <;> ring

/-- The explicit representative is literally the ordinary spatial source derivative. -/
theorem spatialDerivative_eq_deriv {A : ℝ} (hA : 0 < A) :
    spatialDerivative A = deriv (normalizedTest explicitSecondDerivative A) :=
  funext fun x => (normalizedSource_hasSpatialDerivAt hA x).deriv.symm

/-- Joint continuity uses only the bump's actual global C³ regularity. -/
theorem spatialDerivative_continuousAt_joint {z : ℝ × ℝ} (hz : 0 < z.1) :
    ContinuousAt (fun y : ℝ × ℝ => spatialDerivative y.1 y.2) z := by
  have hd1 : ContDiff ℝ 2 (deriv sourceBump) := sourceBump_contDiff_three.deriv'
  have hd2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) := hd1.deriv'
  have h1 : Continuous (deriv sourceBump) := hd1.continuous
  have h3 : Continuous (deriv (deriv (deriv sourceBump))) := hd2.continuous_deriv_one
  have hn := sourceNormalization_pos hz
  unfold spatialDerivative scaleAmplitude sourceNormalization
  fun_prop (disch := first | positivity | exact hz.ne' | exact hn.ne')

/-- The joint field is continuous on all positive scales, including spatial seams. -/
theorem spatialDerivative_continuousOn_joint :
    ContinuousOn (fun z : ℝ × ℝ => spatialDerivative z.1 z.2) (Ioi 0 ×ˢ univ) :=
  fun _ hz => (spatialDerivative_continuousAt_joint hz.1).continuousWithinAt

/-- Each literal spatial derivative is globally continuous in x. -/
theorem spatialDerivative_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (spatialDerivative A) := by
  rw [continuous_iff_continuousAt]
  intro x
  exact (spatialDerivative_continuousAt_joint (z := (A, x)) hA).comp
    (continuousAt_const.prodMk continuousAt_id)

/-- The spatial derivative vanishes at and outside the actual support radius. -/
theorem spatialDerivative_zero_of_le_abs {A x : ℝ} (hA : 0 < A) (hx : A ≤ |x|) :
    spatialDerivative A x = 0 := by
  have hr : 1 ≤ |x / A| := by
    rw [abs_div, abs_of_pos hA]
    exact (le_div_iff₀ hA).2 (by simpa using hx)
  have ht := sourceBump_traces_zero_of_le_abs hr
  simp [spatialDerivative, ht.2.1, ht.2.2.2]

/-- Spatial derivative support remains contained in the exact original compact interval. -/
theorem spatialDerivative_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (spatialDerivative A) := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := -A) (b := A))
  intro x hx
  by_contra hm
  have ha : A ≤ |x| := by
    simp only [mem_Icc, not_and_or, not_le] at hm
    rcases hm with hm | hm
    · have hn : x < 0 := by linarith
      rw [abs_of_neg hn]
      linarith
    · exact hm.le.trans (le_abs_self _)
  exact hx (spatialDerivative_zero_of_le_abs hA ha)

/-- Actual real L² membership follows from continuity and compact support. -/
theorem spatialDerivative_memLp {A : ℝ} (hA : 0 < A) :
    MemLp (spatialDerivative A) 2 (volume : Measure ℝ) :=
  (spatialDerivative_continuous hA).memLp_of_hasCompactSupport
    (spatialDerivative_hasCompactSupport hA)

/-- Canonical complex L² class of the actual real spatial derivative. -/
def spatialDerivativeL2 (A : ℝ) (hA : 0 < A) : ComplexL2 :=
  Complex.ofRealCLM.compLp ((spatialDerivative_memLp hA).toLp (spatialDerivative A))

/-- The canonical class retains the exact actual spatial derivative representative. -/
theorem spatialDerivativeL2_coe_ae (A : ℝ) (hA : 0 < A) :
    spatialDerivativeL2 A hA =ᵐ[volume] fun x => (spatialDerivative A x : ℂ) := by
  filter_upwards [Complex.ofRealCLM.coeFn_compLp
      ((spatialDerivative_memLp hA).toLp (spatialDerivative A)),
    (spatialDerivative_memLp hA).coeFn_toLp] with x hc hp
  change spatialDerivativeL2 A hA x =
    (((spatialDerivative_memLp hA).toLp (spatialDerivative A)) x : ℂ) at hc
  rw [hc, hp]

/-- Total extension is zero outside positive scales; regularity is asserted only where A>0. -/
def spatialDerivativeState (A : ℝ) : ComplexL2 :=
  if hA : 0 < A then spatialDerivativeL2 A hA else 0

/-- The total extension equals the canonical class at every positive scale. -/
theorem spatialDerivativeState_eq {A : ℝ} (hA : 0 < A) :
    spatialDerivativeState A = spatialDerivativeL2 A hA := by
  simp [spatialDerivativeState, hA]

/-- Exact representative identity for the total class at positive scales. -/
theorem spatialDerivativeState_coe_ae {A : ℝ} (hA : 0 < A) :
    spatialDerivativeState A =ᵐ[volume] fun x => (spatialDerivative A x : ℂ) := by
  rw [spatialDerivativeState_eq hA]
  exact spatialDerivativeL2_coe_ae A hA

/-- Exact L² difference energy for the actual derivative classes. -/
theorem spatialDerivativeState_norm_sub_sq {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2 =
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2 := by
  have hi : ⟪spatialDerivativeState B - spatialDerivativeState A,
      spatialDerivativeState B - spatialDerivativeState A⟫_ℂ =
      ((∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2 : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, (((spatialDerivative B x - spatialDerivative A x) ^ 2 : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_sub (spatialDerivativeState B) (spatialDerivativeState A),
          spatialDerivativeState_coe_ae hA, spatialDerivativeState_coe_ae hB] with x hs ha hb
        rw [hs, Pi.sub_apply, ha, hb, RCLike.inner_apply']
        simp [pow_two]
      _ = _ := integral_complex_ofReal
  calc
    _ = (⟪spatialDerivativeState B - spatialDerivativeState A,
      spatialDerivativeState B - spatialDerivativeState A⟫_ℂ).re := norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ = _ := by rw [hi]; rfl

/-- Difference energy varies continuously under one fixed local compact support. -/
theorem spatialDerivative_differenceIntegral_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (fun B : ℝ =>
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2)
      (Ioo (A / 2) (2 * A)) := by
  apply continuousOn_integral_of_compact_support (μ := volume)
    (k := Icc (-2 * A) (2 * A)) isCompact_Icc
  · apply ((spatialDerivative_continuousOn_joint.sub
      ((spatialDerivative_continuous hA).comp continuous_snd).continuousOn).pow 2).mono
    intro z hz
    exact ⟨by have := hz.1.1; change 0 < z.1; linarith, mem_univ _⟩
  · intro B x hB hx
    have hBp : 0 < B := by have := hB.1; linarith
    have habs : 2 * A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have hn : x < 0 := by linarith
        rw [abs_of_neg hn]
        linarith
      · exact hx.le.trans (le_abs_self _)
    rw [spatialDerivative_zero_of_le_abs hBp (hB.2.le.trans habs),
      spatialDerivative_zero_of_le_abs hA (by linarith)]
    norm_num

/-- The canonical actual spatial-derivative family is norm-continuous at every positive scale. -/
theorem spatialDerivativeState_continuousAt {A : ℝ} (hA : 0 < A) :
    ContinuousAt spatialDerivativeState A := by
  have hc := (spatialDerivative_differenceIntegral_continuousOn hA).continuousAt
    (Ioo_mem_nhds (by linarith : A / 2 < A) (by linarith : A < 2 * A))
  have ht : Tendsto (fun B : ℝ =>
      ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2) (nhds A) (nhds 0) := by
    simpa using hc.tendsto
  have heq : (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2) =ᶠ[nhds A]
      (fun B : ℝ => ∫ x : ℝ, (spatialDerivative B x - spatialDerivative A x) ^ 2) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact spatialDerivativeState_norm_sub_sq hA hB
  have ht2 : Tendsto (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖ ^ 2)
      (nhds A) (nhds 0) := ht.congr' heq.symm
  have htn : Tendsto (fun B : ℝ => ‖spatialDerivativeState B - spatialDerivativeState A‖)
      (nhds A) (nhds 0) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  exact tendsto_iff_norm_sub_tendsto_zero.2 htn

/-- Norm continuity of q'_A on the full positive-scale domain; no assertion at the zero extension. -/
theorem spatialDerivativeState_continuousOn :
    ContinuousOn spatialDerivativeState (Ioi 0) :=
  fun _ hA => (spatialDerivativeState_continuousAt hA).continuousWithinAt


end FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity
```
