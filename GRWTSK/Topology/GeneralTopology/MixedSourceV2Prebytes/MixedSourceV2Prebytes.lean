-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.SpatialDerivative.Variant5eaac9b131c4043c38f92408daf1acb3415b1efb5d5ab7e7ee0858c858f316c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5eaac9b131c4043c38f92408daf1acb3415b1efb5d5ab7e7ee0858c858f316c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.SpatialDerivative.Variant5eaac9b131c4043c38f92408daf1acb3415b1efb5d5ab7e7ee0858c858f316c1","mathematical_subject":"Topology.GeneralTopology","original_sha256":"5eaac9b131c4043c38f92408daf1acb3415b1efb5d5ab7e7ee0858c858f316c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle5/spatial-source/mixed-source-v2-prebytes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
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


namespace GRWTSK.Topology.GeneralTopology.SpatialDerivative.Variant5eaac9b131c4043c38f92408daf1acb3415b1efb5d5ab7e7ee0858c858f316c1

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity
open MeasureTheory Filter Set
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleVariation SourceScaleL2Continuity SourceReflectionDuality
open SourceScaleDerivative SourceDerivativeEnergy GevreyPolynomial
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

local instance : InnerProductSpace ℝ ComplexL2 :=
  InnerProductSpace.rclikeToReal ℂ ComplexL2

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
  field_simp

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




private theorem real_inner_of_representatives (f g : ComplexL2) (u v : ℝ → ℝ)
    (hf : f =ᵐ[volume] fun x => (u x : ℂ))
    (hg : g =ᵐ[volume] fun x => (v x : ℂ)) :
    ⟪f, g⟫_ℝ = ∫ x : ℝ, u x * v x := by
  rw [real_inner_eq_re_inner ℂ, L2.inner_def]
  have he : (∫ x : ℝ, ⟪f x, g x⟫_ℂ) =
      ((∫ x : ℝ, u x * v x : ℝ) : ℂ) := by
    calc
      _ = ∫ x : ℝ, ((u x * v x : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [hf, hg] with x hx hy
        rw [hx, hy, RCLike.inner_apply']
        simp [mul_comm]
      _ = _ := integral_complex_ofReal
  rw [he]
  rfl

private theorem translate_real_representative (s : ℝ) (f : ComplexL2) (u : ℝ → ℝ)
    (hf : f =ᵐ[volume] fun x => (u x : ℂ)) :
    translation s f =ᵐ[volume] fun x => (u (x - s) : ℂ) := by
  filter_upwards [translation_coe_ae s f,
    (measurePreserving_sub_right volume s).quasiMeasurePreserving.ae hf] with x hx hy
  exact hx.trans hy

/-- The ordinary correlation derivative is a literal mixed Hilbert coefficient. -/
theorem sourceCorrelationPrime_eq_inner {A : ℝ} (hA : 0 < A) (s : ℝ) :
    deriv (sourceCorrelation explicitSecondDerivative A) s =
      ⟪spatialDerivativeState A, translation s (originalSourceState A)⟫_ℝ := by
  rw [SourceCorrelationEnergy.sourceCorrelation_deriv_eq_integral hA]
  rw [real_inner_of_representatives _ _ _ _ (spatialDerivativeState_coe_ae hA)
    (translate_real_representative s _ _ (originalSourceState_coe_ae hA)),
    spatialDerivative_eq_deriv hA]

/-- Cross-scale integration by parts uses global C¹ sources and integrable compact products. -/
theorem mixed_spatialDerivative_inner_neg {A B : ℝ} (hA : 0 < A) (hB : 0 < B) (s : ℝ) :
    ⟪spatialDerivativeState B, translation s (originalSourceState A)⟫_ℝ =
      -⟪originalSourceState B, translation s (spatialDerivativeState A)⟫_ℝ := by
  rw [real_inner_of_representatives _ _ _ _ (spatialDerivativeState_coe_ae hB)
    (translate_real_representative s _ _ (originalSourceState_coe_ae hA)),
    real_inner_of_representatives _ _ _ _ (originalSourceState_coe_ae hB)
    (translate_real_representative s _ _ (spatialDerivativeState_coe_ae hA))]
  let q := normalizedTest explicitSecondDerivative
  have hcA := (normalizedTest_contDiff A hA).continuous
  have hcB := (normalizedTest_contDiff B hB).continuous
  have hpB := normalizedTest_hasCompactSupport B hB
  have hpR := spatialDerivative_hasCompactSupport hB
  have he := integral_mul_deriv_eq_deriv_mul_of_integrable
    (u := q B) (u' := spatialDerivative B)
    (v := fun x => q A (x - s)) (v' := fun x => spatialDerivative A (x - s))
    (fun x _ => normalizedSource_hasSpatialDerivAt hB x)
    (fun x _ => by
      simpa [q, Function.comp_def] using (normalizedSource_hasSpatialDerivAt hA (x - s)).comp x
        ((hasDerivAt_id x).sub_const s))
    ((hcB.mul ((spatialDerivative_continuous hA).comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport hpB.mul_right)
    (((spatialDerivative_continuous hB).mul (hcA.comp
      (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport hpR.mul_right)
    ((hcB.mul (hcA.comp (continuous_id.sub continuous_const))).integrable_of_hasCompactSupport
      hpB.mul_right)
  dsimp [q] at he
  linarith

/-- Exact mixed difference identity avoids differentiating the spatial derivative in scale. -/
theorem sourceCorrelationPrime_sub_eq_mixed {A B : ℝ} (hA : 0 < A) (hB : 0 < B) (s : ℝ) :
    deriv (sourceCorrelation explicitSecondDerivative B) s -
        deriv (sourceCorrelation explicitSecondDerivative A) s =
      ⟪spatialDerivativeState B, translation s (originalSourceState B - originalSourceState A)⟫_ℝ -
      ⟪originalSourceState B - originalSourceState A, translation s (spatialDerivativeState A)⟫_ℝ := by
  rw [sourceCorrelationPrime_eq_inner hB, sourceCorrelationPrime_eq_inner hA,
    map_sub, inner_sub_right, inner_sub_left, mixed_spatialDerivative_inner_neg hA hB s, mixed_spatialDerivative_inner_neg hA hA s]
  ring

end FormalResearch.RiemannHypothesis.SourceSpatialDerivativeContinuity
