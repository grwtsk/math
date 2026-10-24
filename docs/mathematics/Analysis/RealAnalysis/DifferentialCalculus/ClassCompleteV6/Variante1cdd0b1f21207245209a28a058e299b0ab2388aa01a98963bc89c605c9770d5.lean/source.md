# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ClassCompleteV6.Variante1cdd0b1f21207245209a28a058e299b0ab2388aa01a98963bc89c605c9770d5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `623c56bc23a158f9025fbbd0520f8dffc5b33d84` · SHA-256 `066c60077532b1730bf3e928b9bcbc1c17a18925cd9de0da40dbac324a918ffd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Variant8d0e638dc4dcbcd73b3e1aa60a57008bbca9b5228841135e667eeef586e60d09","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d0e638dc4dcbcd73b3e1aa60a57008bbca9b5228841135e667eeef586e60d09","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NormalizationDerivative.Variant8d0e638dc4dcbcd73b3e1aa60a57008bbca9b5228841135e667eeef586e60d09","mathematical_subject":"Analysis.Calculus","original_sha256":"8d0e638dc4dcbcd73b3e1aa60a57008bbca9b5228841135e667eeef586e60d09","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle3/scale-derivative/class-complete-v6.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
import Mathlib.Analysis.Calculus.Deriv.Support

/-!
# Scale derivative of the unchanged normalized source

The scale derivative is distinct from the spatial derivative. Ordinary scalar
calculus uses the proved C³ bump across both moving support seams. Compact
support and canonical L² membership are conclusions for the actual source.
No signed work budget or RH estimate is asserted.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Variant8d0e638dc4dcbcd73b3e1aa60a57008bbca9b5228841135e667eeef586e60d09

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceScaleDerivative
open MeasureTheory Filter Set
open scoped Topology InnerProductSpace
open SourcePairing SourceScaleVariation SourceScaleL2Continuity SourceReflectionDuality
open GevreyPolynomial SourceDerivativeEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity BridgeNormalization

/-- Exact scale derivative of the original rational normalization. -/
def normalizationDerivative (A : ℝ) : ℝ :=
  -(131072 / 45045 : ℝ) / A ^ 3 - 4 * (196608 / 5005 : ℝ) / A ^ 5

/-- The normalization derivative is obtained from its actual unchanged coefficients. -/
theorem sourceNormalization_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt sourceNormalization (normalizationDerivative A) A := by
  have h := ((hasDerivAt_const A ((65536 / 109395 : ℝ) / 16)).add
    ((hasDerivAt_const A (131072 / 45045 : ℝ)).div
      (((hasDerivAt_id A).pow 2).const_mul 2) (by
        change 2 * A ^ 2 ≠ 0
        positivity))).add
    ((hasDerivAt_const A (196608 / 5005 : ℝ)).div
      ((hasDerivAt_id A).pow 4) (by
        change A ^ 4 ≠ 0
        positivity))
  convert h using 1 <;> first
    | rfl
    | (dsimp [normalizationDerivative]; field_simp; ring)

/-- The original normalization's ordinary derivative has the explicit rational form. -/
theorem sourceNormalization_deriv {A : ℝ} (hA : 0 < A) :
    deriv sourceNormalization A = normalizationDerivative A :=
  (sourceNormalization_hasDerivAt hA).deriv

/-- The literal source amplitude in a single square root. -/
def scaleAmplitude (A : ℝ) : ℝ := 1 / Real.sqrt (A * sourceNormalization A)

/-- The amplitude preserves the two original positive square-root normalizations. -/
theorem scaleAmplitude_eq {A : ℝ} (hA : 0 < A) :
    scaleAmplitude A = 1 / (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
  simp [scaleAmplitude, Real.sqrt_mul hA.le]

/-- The dilation-coordinate formula retains the actual normalized source amplitude. -/
theorem scaleProfile_eq_amplitude {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleProfile A x = scaleAmplitude A *
      (deriv (deriv sourceBump) (x / A) / A ^ 2 - sourceBump (x / A) / 4) := by
  rw [scaleAmplitude_eq hA]
  unfold scaleProfile
  ring

/-- Ordinary scale differentiation of the exact positive normalization amplitude. -/
theorem scaleAmplitude_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt scaleAmplitude
      (-(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
        scaleAmplitude A) A := by
  have hn := sourceNormalization_pos hA
  have hs := ((hasDerivAt_id A).mul (sourceNormalization_hasDerivAt hA)).sqrt
    (mul_pos hA hn).ne'
  have hd := (hasDerivAt_const A (1 : ℝ)).div hs
    (Real.sqrt_pos.mpr (mul_pos hA hn)).ne'
  have hsquare := Real.sq_sqrt (mul_pos hA hn).le
  convert hd using 1 <;> first
    | rfl
    | (dsimp [scaleAmplitude]; field_simp; simp only [hsquare]; ring)

/-- The actual source scale derivative p_A; it is not the spatial derivative q'_A. -/
def scaleDerivative (A x : ℝ) : ℝ :=
  -(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
      scaleProfile A x +
    scaleAmplitude A *
      (-2 * deriv (deriv sourceBump) (x / A) / A ^ 3 -
        (x / A) * deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 +
        (x / A) * deriv sourceBump (x / A) / (4 * A))

/-- The explicit derivative is expressed directly through the unchanged q_A. -/
theorem scaleDerivative_eq_actual {A : ℝ} (hA : 0 < A) (x : ℝ) :
    scaleDerivative A x =
      -(1 / (2 * A) + normalizationDerivative A / (2 * sourceNormalization A)) *
          normalizedTest explicitSecondDerivative A x +
        scaleAmplitude A *
          (-2 * deriv (deriv sourceBump) (x / A) / A ^ 3 -
            (x / A) * deriv (deriv (deriv sourceBump)) (x / A) / A ^ 3 +
            (x / A) * deriv sourceBump (x / A) / (4 * A)) := by
  unfold scaleDerivative
  rw [scaleProfile_eq_source hA]

/-- Scalar scale differentiation includes the moving seams by global C³ bump calculus. -/
theorem scaleProfile_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun B => scaleProfile B x) (scaleDerivative A x) A := by
  have h0 := sourceBump_contDiff_three.differentiable (by norm_num)
  have h2 := sourceBump_contDiff_three.deriv'.deriv'.differentiable_one
  have hx := (hasDerivAt_const A x).div (hasDerivAt_id A) hA.ne'
  have hh := ((h2 (x / A)).hasDerivAt.comp A hx).div
    ((hasDerivAt_id A).pow 2) (by
      change A ^ 2 ≠ 0
      positivity)
  have hb := ((h0 (x / A)).hasDerivAt.comp A hx).div_const 4
  have hd := (scaleAmplitude_hasDerivAt hA).mul (hh.sub hb)
  have heq : (fun B => scaleAmplitude B *
      (deriv (deriv sourceBump) (x / B) / B ^ 2 - sourceBump (x / B) / 4)) =ᶠ[nhds A]
      (fun B => scaleProfile B x) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact (scaleProfile_eq_amplitude hB x).symm
  apply (hd.congr_of_eventuallyEq heq.symm).congr_deriv
  unfold scaleDerivative
  rw [scaleProfile_eq_amplitude hA]
  dsimp
  field_simp
  ring

/-- The literal source, rather than a proxy, has the exact scalar scale derivative. -/
theorem normalizedSource_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (fun B => normalizedTest explicitSecondDerivative B x)
      (scaleDerivative A x) A := by
  apply (scaleProfile_hasDerivAt hA x).congr_of_eventuallyEq
  filter_upwards [eventually_gt_nhds hA] with B hB
  exact (scaleProfile_eq_source hB x).symm

/-- The bump and its first three ordinary derivatives vanish at and outside both seams. -/
theorem sourceBump_traces_zero_of_le_abs {x : ℝ} (hx : 1 ≤ |x|) :
    sourceBump x = 0 ∧ deriv sourceBump x = 0 ∧
      deriv (deriv sourceBump) x = 0 ∧ deriv (deriv (deriv sourceBump)) x = 0 := by
  have h1 : deriv sourceBump = firstDerivative 1 := by
    rw [sourceBump_eq_scaled_unit, deriv_scaledBump (by norm_num)]
  rw [sourceBump_third_eq_indicator, sourceBump_second_eq_indicator, h1,
    sourceBump_eq_indicator]
  by_cases hm : x ∈ Icc (-1 : ℝ) 1
  · have he : |x| = 1 := le_antisymm (abs_le.mpr hm) hx
    rcases abs_eq_abs.mp (by simpa using he : |x| = |(1 : ℝ)|) with he | he <;>
      rw [he] <;> norm_num [firstDerivative, firstInterior, unitBump, unitSecond, unitThird]
  · simp [hm, firstDerivative]

/-- The exact scale derivative vanishes at the moving source boundaries and beyond. -/
theorem scaleDerivative_zero_of_le_abs {A x : ℝ} (hA : 0 < A) (hx : A ≤ |x|) :
    scaleDerivative A x = 0 := by
  have hratio : 1 ≤ |x / A| := by
    rw [abs_div, abs_of_pos hA]
    exact (le_div_iff₀ hA).2 (by simpa using hx)
  have ht := sourceBump_traces_zero_of_le_abs hratio
  rw [scaleDerivative_eq_actual hA]
  rw [normalizedTest_zero_of_le_abs A x hA hx, ht.2.1, ht.2.2.1, ht.2.2.2]
  simp

/-- Joint continuity of the scale derivative holds throughout the positive-scale domain. -/
theorem scaleDerivative_continuousAt_joint {z : ℝ × ℝ} (hz : 0 < z.1) :
    ContinuousAt (fun y : ℝ × ℝ => scaleDerivative y.1 y.2) z := by
  have h0 := sourceBump_contDiff_three.continuous
  have hd1 : ContDiff ℝ 2 (deriv sourceBump) := sourceBump_contDiff_three.deriv'
  have hd2 : ContDiff ℝ 1 (deriv (deriv sourceBump)) := hd1.deriv'
  have h1 := hd1.continuous
  have h2 := hd2.continuous
  have h3 := hd2.continuous_deriv_one
  have hn := sourceNormalization_pos hz
  unfold scaleDerivative scaleAmplitude normalizationDerivative scaleProfile sourceNormalization
  fun_prop (disch := first | positivity | exact hz.ne' | exact hn.ne')

/-- The joint derivative field is continuous, including all moving support seams. -/
theorem scaleDerivative_continuousOn_joint :
    ContinuousOn (fun z : ℝ × ℝ => scaleDerivative z.1 z.2) (Ioi 0 ×ˢ univ) :=
  fun _ hz => (scaleDerivative_continuousAt_joint hz.1).continuousWithinAt

/-- Each derivative representative is globally continuous in the spatial variable. -/
theorem scaleDerivative_continuous {A : ℝ} (hA : 0 < A) :
    Continuous (scaleDerivative A) := by
  rw [continuous_iff_continuousAt]
  intro x
  exact (scaleDerivative_continuousAt_joint (z := (A, x)) hA).comp
    (continuousAt_const.prodMk continuousAt_id)

/-- The scale derivative retains the actual compact source radius. -/
theorem scaleDerivative_hasCompactSupport {A : ℝ} (hA : 0 < A) :
    HasCompactSupport (scaleDerivative A) := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := -A) (b := A))
  intro x hx
  by_contra hm
  have habs : A ≤ |x| := by
    simp only [mem_Icc, not_and_or, not_le] at hm
    rcases hm with hm | hm
    · have hn : x < 0 := by linarith
      rw [abs_of_neg hn]
      linarith
    · exact hm.le.trans (le_abs_self _)
  exact hx (scaleDerivative_zero_of_le_abs hA habs)

/-- Actual derivative membership in real L² follows from continuity and compact support. -/
theorem scaleDerivative_memLp {A : ℝ} (hA : 0 < A) :
    MemLp (scaleDerivative A) 2 (volume : Measure ℝ) :=
  (scaleDerivative_continuous hA).memLp_of_hasCompactSupport
    (scaleDerivative_hasCompactSupport hA)

/-- Canonical complex L² class of the actual real scale derivative. -/
def scaleDerivativeL2 (A : ℝ) (hA : 0 < A) : ComplexL2 :=
  Complex.ofRealCLM.compLp ((scaleDerivative_memLp hA).toLp (scaleDerivative A))

/-- The derivative class has the exact explicit representative p_A almost everywhere. -/
theorem scaleDerivativeL2_coe_ae (A : ℝ) (hA : 0 < A) :
    scaleDerivativeL2 A hA =ᵐ[volume] fun x => (scaleDerivative A x : ℂ) := by
  filter_upwards [Complex.ofRealCLM.coeFn_compLp
      ((scaleDerivative_memLp hA).toLp (scaleDerivative A)),
    (scaleDerivative_memLp hA).coeFn_toLp] with x hc hp
  change scaleDerivativeL2 A hA x =
    (((scaleDerivative_memLp hA).toLp (scaleDerivative A)) x : ℂ) at hc
  rw [hc, hp]

/-- A local scale interval has one fixed support bound for both source and scale derivative. -/
theorem local_source_derivative_zero {A B x : ℝ} (hA : 0 < A)
    (hB : B ∈ Icc (A / 2) (3 * A / 2)) (hx : 2 * A ≤ |x|) :
    normalizedTest explicitSecondDerivative B x = 0 ∧ scaleDerivative B x = 0 := by
  have hBp : 0 < B := by have := hB.1; linarith
  have hBx : B ≤ |x| := by have := hB.2; linarith
  exact ⟨normalizedTest_zero_of_le_abs B x hBp hBx,
    scaleDerivative_zero_of_le_abs hBp hBx⟩

/-- Joint continuity and the fixed support yield a finite local pointwise derivative envelope. -/
theorem local_scaleDerivative_bound {A : ℝ} (hA : 0 < A) :
    ∃ K : ℝ, 0 ≤ K ∧ ∀ B ∈ Icc (A / 2) (3 * A / 2), ∀ x : ℝ,
      |scaleDerivative B x| ≤ K := by
  have hc : ContinuousOn (fun z : ℝ × ℝ => |scaleDerivative z.1 z.2|)
      (Icc (A / 2) (3 * A / 2) ×ˢ Icc (-2 * A) (2 * A)) := by
    apply scaleDerivative_continuousOn_joint.abs.mono
    intro z hz
    exact ⟨by have := hz.1.1; change 0 < z.1; linarith, mem_univ _⟩
  obtain ⟨K, hK⟩ := (isCompact_Icc.prod isCompact_Icc).bddAbove_image hc
  refine ⟨max K 0, le_max_right _ _, ?_⟩
  intro B hB x
  by_cases hx : x ∈ Icc (-2 * A) (2 * A)
  · exact (hK ⟨(B, x), ⟨hB, hx⟩, rfl⟩).trans (le_max_left _ _)
  · have habs : 2 * A ≤ |x| := by
      simp only [mem_Icc, not_and_or, not_le] at hx
      rcases hx with hx | hx
      · have hn : x < 0 := by linarith
        rw [abs_of_neg hn]
        linarith
      · exact hx.le.trans (le_abs_self _)
    rw [(local_source_derivative_zero hA hB habs).2, abs_zero]
    exact le_max_right _ _

/-- Total derivative class, explicitly zero outside positive scales. -/
def scaleDerivativeState (A : ℝ) : ComplexL2 :=
  if hA : 0 < A then scaleDerivativeL2 A hA else 0

/-- The total extension agrees with the literal derivative class at positive scales. -/
theorem scaleDerivativeState_eq {A : ℝ} (hA : 0 < A) :
    scaleDerivativeState A = scaleDerivativeL2 A hA := by
  simp [scaleDerivativeState, hA]

/-- The total extension retains its explicit representative at positive scales. -/
theorem scaleDerivativeState_coe_ae {A : ℝ} (hA : 0 < A) :
    scaleDerivativeState A =ᵐ[volume] fun x => (scaleDerivative A x : ℂ) := by
  rw [scaleDerivativeState_eq hA]
  exact scaleDerivativeL2_coe_ae A hA

/-- Exact L² difference energy for the actual derivative classes. -/
theorem scaleDerivativeState_norm_sub_sq {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    ‖scaleDerivativeState B - scaleDerivativeState A‖ ^ 2 =
      ∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2 := by
  have hi : ⟪scaleDerivativeState B - scaleDerivativeState A,
      scaleDerivativeState B - scaleDerivativeState A⟫_ℂ =
      ((∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2 : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, (((scaleDerivative B x - scaleDerivative A x) ^ 2 : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [Lp.coeFn_sub (scaleDerivativeState B) (scaleDerivativeState A),
          scaleDerivativeState_coe_ae hA, scaleDerivativeState_coe_ae hB] with x hs ha hb
        rw [hs, Pi.sub_apply, ha, hb, RCLike.inner_apply']
        simp [pow_two]
      _ = _ := integral_complex_ofReal
  calc
    _ = (⟪scaleDerivativeState B - scaleDerivativeState A,
      scaleDerivativeState B - scaleDerivativeState A⟫_ℂ).re := norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ = _ := by rw [hi]; rfl

/-- Difference energy varies continuously under one fixed local compact support. -/
theorem scaleDerivative_differenceIntegral_continuousOn {A : ℝ} (hA : 0 < A) :
    ContinuousOn (fun B : ℝ =>
      ∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2)
      (Ioo (A / 2) (2 * A)) := by
  apply continuousOn_integral_of_compact_support (μ := volume)
    (k := Icc (-2 * A) (2 * A)) isCompact_Icc
  · apply ((scaleDerivative_continuousOn_joint.sub
      ((scaleDerivative_continuous hA).comp continuous_snd).continuousOn).pow 2).mono
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
    rw [scaleDerivative_zero_of_le_abs hBp (hB.2.le.trans habs),
      scaleDerivative_zero_of_le_abs hA (by linarith)]
    norm_num

/-- The canonical actual scale-derivative family is norm-continuous at every positive scale. -/
theorem scaleDerivativeState_continuousAt {A : ℝ} (hA : 0 < A) :
    ContinuousAt scaleDerivativeState A := by
  have hc := (scaleDerivative_differenceIntegral_continuousOn hA).continuousAt
    (Ioo_mem_nhds (by linarith : A / 2 < A) (by linarith : A < 2 * A))
  have ht : Tendsto (fun B : ℝ =>
      ∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2) (nhds A) (nhds 0) := by
    simpa using hc.tendsto
  have heq : (fun B : ℝ => ‖scaleDerivativeState B - scaleDerivativeState A‖ ^ 2) =ᶠ[nhds A]
      (fun B : ℝ => ∫ x : ℝ, (scaleDerivative B x - scaleDerivative A x) ^ 2) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact scaleDerivativeState_norm_sub_sq hA hB
  have ht2 : Tendsto (fun B : ℝ => ‖scaleDerivativeState B - scaleDerivativeState A‖ ^ 2)
      (nhds A) (nhds 0) := ht.congr' heq.symm
  have htn : Tendsto (fun B : ℝ => ‖scaleDerivativeState B - scaleDerivativeState A‖)
      (nhds A) (nhds 0) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  exact tendsto_iff_norm_sub_tendsto_zero.2 htn

/-- Norm continuity of p_A on the full positive-scale domain; no assertion at the zero extension. -/
theorem scaleDerivativeState_continuousOn :
    ContinuousOn scaleDerivativeState (Ioi 0) :=
  fun _ hA => (scaleDerivativeState_continuousAt hA).continuousWithinAt

end FormalResearch.RiemannHypothesis.SourceScaleDerivative
```
