-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Varianta9ab2c840b7066fb50314be3092acd1e67e24ed70b208cd0214e0898ae70ef0b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a9ab2c840b7066fb50314be3092acd1e67e24ed70b208cd0214e0898ae70ef0b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.NormalizationDerivative.Varianta9ab2c840b7066fb50314be3092acd1e67e24ed70b208cd0214e0898ae70ef0b","mathematical_subject":"Analysis.Calculus","original_sha256":"a9ab2c840b7066fb50314be3092acd1e67e24ed70b208cd0214e0898ae70ef0b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/owner79-source-reconciliation-20261007T004709Z/raw/114-FormalResearch.RiemannHypothesis.SourceScaleDerivative.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceScaleL2Continuity
import Mathlib.Analysis.Calculus.Deriv.Support
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Scale derivative of the unchanged normalized source

The scale derivative is distinct from the spatial derivative. Ordinary scalar
calculus uses the proved C³ bump across both moving support seams. Compact
support and canonical L² membership are conclusions for the actual source.
A local compact envelope and dominated convergence of squared quotient errors
prove the actual Hilbert-norm derivative and C¹ regularity on positive scales.
Fixed translations, angular duality and fixed finite profiles transport that
derivative. Changing arithmetic cutoffs, signed work budgets and RH estimates
remain separate obligations.

Author: grwtsk contributors. Developed with OpenAI Codex; checked by Lean.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.NormalizationDerivative.Varianta9ab2c840b7066fb50314be3092acd1e67e24ed70b208cd0214e0898ae70ef0b

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

/-- Normalized scalar difference-quotient remainder for scale differentiation. -/
def scaleRemainder (A B x : ℝ) : ℝ :=
  (B - A)⁻¹ * (normalizedTest explicitSecondDerivative B x -
    normalizedTest explicitSecondDerivative A x - (B - A) * scaleDerivative A x)

/-- Scalar differentiation gives vanishing squared remainders, including the base point. -/
theorem scaleRemainder_sq_tendsto {A : ℝ} (hA : 0 < A) (x : ℝ) :
    Tendsto (fun B => scaleRemainder A B x ^ 2) (nhds A) (nhds 0) := by
  have ht := (hasDerivAt_iff_tendsto.mp (normalizedSource_hasDerivAt hA x)).pow 2
  simpa [scaleRemainder, Real.norm_eq_abs, smul_eq_mul, mul_pow, inv_pow, sq_abs] using ht

/-- The mean-value theorem controls the actual quotient remainder on a fixed scale interval. -/
theorem local_scaleRemainder_bound {A K : ℝ} (hA : 0 < A) (hK : 0 ≤ K)
    (hbound : ∀ B ∈ Icc (A / 2) (3 * A / 2), ∀ x : ℝ, |scaleDerivative B x| ≤ K)
    {B : ℝ} (hB : B ∈ Icc (A / 2) (3 * A / 2)) (x : ℝ) :
    |scaleRemainder A B x| ≤ 2 * K := by
  have hAm : A ∈ Icc (A / 2) (3 * A / 2) := ⟨by linarith, by linarith⟩
  have hs := Convex.norm_image_sub_le_of_norm_hasDerivWithin_le
    (f := fun C : ℝ => normalizedTest explicitSecondDerivative C x)
    (f' := fun C : ℝ => scaleDerivative C x)
    (fun C hC => (normalizedSource_hasDerivAt (by have := hC.1; linarith) x).hasDerivWithinAt)
    (fun C hC => by simpa only [Real.norm_eq_abs] using hbound C hC x)
    (convex_Icc _ _) hAm hB
  simp only [Real.norm_eq_abs] at hs
  by_cases hBA : B = A
  · simp [scaleRemainder, hBA, hK]
  · have hd : 0 < |B - A| := abs_pos.mpr (sub_ne_zero.mpr hBA)
    have hr : |normalizedTest explicitSecondDerivative B x -
        normalizedTest explicitSecondDerivative A x - (B - A) * scaleDerivative A x| ≤
        2 * K * |B - A| := by
      calc
        _ ≤ |normalizedTest explicitSecondDerivative B x -
            normalizedTest explicitSecondDerivative A x| + |(B - A) * scaleDerivative A x| :=
          abs_sub _ _
        _ ≤ K * |B - A| + |B - A| * K := by
          rw [abs_mul]
          gcongr
          exact hbound A hAm x
        _ = _ := by ring
    rw [scaleRemainder, abs_mul, abs_inv]
    calc
      _ ≤ |B - A|⁻¹ * (2 * K * |B - A|) :=
        mul_le_mul_of_nonneg_left hr (inv_nonneg.mpr hd.le)
      _ = _ := by field_simp

/-- The quotient remainder also vanishes outside the same fixed local support. -/
theorem local_scaleRemainder_zero {A B x : ℝ} (hA : 0 < A)
    (hB : B ∈ Icc (A / 2) (3 * A / 2)) (hx : 2 * A ≤ |x|) :
    scaleRemainder A B x = 0 := by
  have hAm : A ∈ Icc (A / 2) (3 * A / 2) := ⟨by linarith, by linarith⟩
  unfold scaleRemainder
  rw [(local_source_derivative_zero hA hB hx).1,
    (local_source_derivative_zero hA hAm hx).1,
    (local_source_derivative_zero hA hAm hx).2]
  simp

/-- The actual L² quotient remainder retains the literal source family and derivative class. -/
def scaleRemainderL2 (A B : ℝ) : ComplexL2 :=
  (B - A)⁻¹ • (originalSourceState B - originalSourceState A -
    (B - A) • scaleDerivativeState A)

/-- Both quotient remainder descriptions agree as actual almost-everywhere representatives. -/
theorem scaleRemainderL2_coe_ae {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    scaleRemainderL2 A B =ᵐ[volume] fun x => (scaleRemainder A B x : ℂ) := by
  filter_upwards [Lp.coeFn_smul (B - A)⁻¹
      (originalSourceState B - originalSourceState A - (B - A) • scaleDerivativeState A),
    Lp.coeFn_sub (originalSourceState B - originalSourceState A)
      ((B - A) • scaleDerivativeState A),
    Lp.coeFn_sub (originalSourceState B) (originalSourceState A),
    Lp.coeFn_smul (B - A) (scaleDerivativeState A),
    originalSourceState_coe_ae hA, originalSourceState_coe_ae hB,
    scaleDerivativeState_coe_ae hA] with x h1 h2 h3 h4 ha hb hp
  change ((B - A)⁻¹ • (originalSourceState B - originalSourceState A -
    (B - A) • scaleDerivativeState A)) x = _
  rw [h1, Pi.smul_apply, h2, Pi.sub_apply, h3, Pi.sub_apply, h4, Pi.smul_apply, ha, hb, hp]
  simp [scaleRemainder, Complex.real_smul, Complex.ofReal_sub, Complex.ofReal_mul]

private theorem norm_sq_of_real_representative (q : ComplexL2) (g : ℝ → ℝ)
    (hq : q =ᵐ[volume] fun x => (g x : ℂ)) : ‖q‖ ^ 2 = ∫ x : ℝ, g x ^ 2 := by
  have hi : ⟪q, q⟫_ℂ = ((∫ x : ℝ, g x ^ 2 : ℝ) : ℂ) := by
    rw [L2.inner_def]
    calc
      _ = ∫ x : ℝ, ((g x ^ 2 : ℝ) : ℂ) := by
        apply integral_congr_ae
        filter_upwards [hq] with x hx
        rw [hx, RCLike.inner_apply']
        simp [pow_two]
      _ = _ := integral_complex_ofReal
  calc
    _ = (⟪q, q⟫_ℂ).re := norm_sq_eq_re_inner (𝕜 := ℂ) _
    _ = _ := by rw [hi]; rfl

/-- Quotient-remainder norm is the exact integral of its scalar square, with no missing terms. -/
theorem scaleRemainderL2_norm_sq {A B : ℝ} (hA : 0 < A) (hB : 0 < B) :
    ‖scaleRemainderL2 A B‖ ^ 2 = ∫ x : ℝ, scaleRemainder A B x ^ 2 :=
  norm_sq_of_real_representative _ _ (scaleRemainderL2_coe_ae hA hB)

/-- Local domination, proved from the actual derivative envelope, makes the error energy vanish. -/
theorem scaleRemainder_energy_tendsto {A : ℝ} (hA : 0 < A) :
    Tendsto (fun B => ∫ x : ℝ, scaleRemainder A B x ^ 2) (nhds A) (nhds 0) := by
  obtain ⟨K, hK, hbound⟩ := local_scaleDerivative_bound hA
  let bound : ℝ → ℝ := (Icc (-2 * A) (2 * A)).indicator (fun _ => (2 * K) ^ 2)
  have hbint : Integrable bound (volume : Measure ℝ) :=
    (integrable_indicator_iff measurableSet_Icc).2
      (integrableOn_const isCompact_Icc.measure_ne_top)
  have hmeas : ∀ᶠ B in nhds A,
      AEStronglyMeasurable (fun x : ℝ => scaleRemainder A B x ^ 2) volume := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    have hqB := (normalizedTest_contDiff B hB).continuous
    have hqA := (normalizedTest_contDiff A hA).continuous
    have hpA := scaleDerivative_continuous hA
    apply Continuous.aestronglyMeasurable
    unfold scaleRemainder
    fun_prop
  have hdom : ∀ᶠ B in nhds A, ∀ᵐ x ∂volume, ‖scaleRemainder A B x ^ 2‖ ≤ bound x := by
    filter_upwards [Ioo_mem_nhds (by linarith : A / 2 < A)
      (by linarith : A < 3 * A / 2)] with B hB
    apply Filter.Eventually.of_forall
    intro x
    have hBm : B ∈ Icc (A / 2) (3 * A / 2) := ⟨hB.1.le, hB.2.le⟩
    by_cases hx : x ∈ Icc (-2 * A) (2 * A)
    · have hr := local_scaleRemainder_bound hA hK hbound hBm x
      change ‖scaleRemainder A B x ^ 2‖ ≤
        (Icc (-2 * A) (2 * A)).indicator (fun _ => (2 * K) ^ 2) x
      rw [Real.norm_eq_abs, abs_of_nonneg (sq_nonneg _), indicator_of_mem hx]
      simpa only [sq_abs] using
        (sq_le_sq₀ (abs_nonneg (scaleRemainder A B x)) (by positivity : 0 ≤ 2 * K)).2 hr
    · have habs : 2 * A ≤ |x| := by
        simp only [mem_Icc, not_and_or, not_le] at hx
        rcases hx with hx | hx
        · have hn : x < 0 := by linarith
          rw [abs_of_neg hn]
          linarith
        · exact hx.le.trans (le_abs_self _)
      rw [local_scaleRemainder_zero hA hBm habs]
      rw [show ‖(0 : ℝ) ^ 2‖ = 0 by norm_num]
      exact indicator_nonneg (fun (_ : ℝ) _ => sq_nonneg (2 * K)) x
  have hlim : ∀ᵐ x ∂(volume : Measure ℝ),
      Tendsto (fun B => scaleRemainder A B x ^ 2) (nhds A) (nhds ((0 : ℝ → ℝ) x)) :=
    Filter.Eventually.of_forall (scaleRemainder_sq_tendsto hA)
  simpa using tendsto_integral_filter_of_dominated_convergence bound hmeas hdom hbint hlim

/-- Actual Hilbert-norm scale differentiation of the unchanged normalized source. -/
theorem originalSourceState_hasDerivAt {A : ℝ} (hA : 0 < A) :
    HasDerivAt originalSourceState (scaleDerivativeState A) A := by
  have heq : (fun B => ‖scaleRemainderL2 A B‖ ^ 2) =ᶠ[nhds A]
      (fun B => ∫ x : ℝ, scaleRemainder A B x ^ 2) := by
    filter_upwards [eventually_gt_nhds hA] with B hB
    exact scaleRemainderL2_norm_sq hA hB
  have ht2 := (scaleRemainder_energy_tendsto hA).congr' heq.symm
  have htn : Tendsto (fun B => ‖scaleRemainderL2 A B‖) (nhds A) (nhds 0) := by
    have hs := Real.continuous_sqrt.continuousAt.tendsto.comp ht2
    simpa only [Function.comp_def, Real.sqrt_sq (norm_nonneg _), Real.sqrt_zero] using hs
  apply hasDerivAt_iff_tendsto.2
  simpa only [scaleRemainderL2, norm_smul, norm_inv] using htn

/-- The actual Hilbert-norm derivative is exactly the canonical p_A class on positive scales. -/
theorem originalSourceState_deriv {A : ℝ} (hA : 0 < A) :
    deriv originalSourceState A = scaleDerivativeState A :=
  (originalSourceState_hasDerivAt hA).deriv

/-- Hilbert-norm C¹ regularity uses the proved norm derivative and derivative-class continuity. -/
theorem originalSourceState_contDiffOn : ContDiffOn ℝ 1 originalSourceState (Ioi 0) := by
  rw [contDiffOn_one_iff_derivWithin isOpen_Ioi.uniqueDiffOn]
  refine ⟨fun A hA => (originalSourceState_hasDerivAt hA).differentiableAt.differentiableWithinAt,
    scaleDerivativeState_continuousOn.congr ?_⟩
  intro A hA
  exact (originalSourceState_hasDerivAt hA).hasDerivWithinAt.derivWithin
    (isOpen_Ioi.uniqueDiffOn A hA)

/-- The actual family is norm C¹ at every positive scale, including spatial moving seams. -/
theorem originalSourceState_contDiffAt {A : ℝ} (hA : 0 < A) :
    ContDiffAt ℝ 1 originalSourceState A :=
  originalSourceState_contDiffOn.contDiffAt (Ioi_mem_nhds hA)

/-- Fixed translated and angular-dual source channels have the exact transported derivative. -/
theorem orbitAtom_hasDerivAt {A : ℝ} (hA : 0 < A) (ε δ : Bool) (m : ℕ) :
    HasDerivAt (fun B => SourceArithmeticOrbit.orbitAtom (originalSourceState B) ε δ m)
      (SourceArithmeticOrbit.orbitAtom (scaleDerivativeState A) ε δ m) A := by
  let u := SourceArithmeticOrbit.signedLog ε m
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation u).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let T : ComplexL2 →L[ℝ] ComplexL2 :=
    angularSignDuality.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hd := L.hasFDerivAt.comp_hasDerivAt A (originalSourceState_hasDerivAt hA)
  cases δ
  · simpa [L, u, SourceArithmeticOrbit.orbitAtom, Function.comp_def] using hd
  · simpa [L, T, u, SourceArithmeticOrbit.orbitAtom, Function.comp_def] using
      T.hasFDerivAt.comp_hasDerivAt A hd

/-- Norm C¹ also holds for all four fixed translated/dual channels. -/
theorem orbitAtom_contDiffOn (ε δ : Bool) (m : ℕ) :
    ContDiffOn ℝ 1 (fun A => SourceArithmeticOrbit.orbitAtom (originalSourceState A) ε δ m)
      (Ioi 0) := by
  let u := SourceArithmeticOrbit.signedLog ε m
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation u).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  let T : ComplexL2 →L[ℝ] ComplexL2 :=
    angularSignDuality.toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hc := L.contDiff.comp_contDiffOn originalSourceState_contDiffOn
  cases δ
  · simpa [L, u, SourceArithmeticOrbit.orbitAtom, Function.comp_def] using hc
  · simpa [L, T, u, SourceArithmeticOrbit.orbitAtom, Function.comp_def] using
      T.contDiff.comp_contDiffOn hc

/-- Fixed finite inventory and fixed complex coefficients have the exact derivative profile. -/
theorem finiteProfile_hasDerivAt {A : ℝ} (hA : 0 < A)
    (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    HasDerivAt (fun B => SourceArithmeticOrbit.finiteProfile (originalSourceState B) I ε δ c)
      (SourceArithmeticOrbit.finiteProfile (scaleDerivativeState A) I ε δ c) A := by
  unfold SourceArithmeticOrbit.finiteProfile
  exact HasDerivAt.fun_sum fun m _ => (orbitAtom_hasDerivAt hA ε δ m).const_smul (c m)

/-- Fixed-inventory arithmetic profiles are norm C¹; literal cutoff crossings remain separate. -/
theorem finiteProfile_contDiffOn (I : Finset ℕ) (ε δ : Bool) (c : ℕ → ℂ) :
    ContDiffOn ℝ 1
      (fun A => SourceArithmeticOrbit.finiteProfile (originalSourceState A) I ε δ c)
      (Ioi 0) := by
  unfold SourceArithmeticOrbit.finiteProfile
  apply ContDiffOn.sum
  intro m _
  exact (orbitAtom_contDiffOn ε δ m).const_smul (c m)

/-- The exact scale-one derivative at zero has a strictly positive rational numerator. -/
theorem scaleDerivative_one_at_zero :
    scaleDerivative 1 0 = (661 / 168 : ℝ) / Real.sqrt (sourceNormalization 1) := by
  have hc : 1 / (2 * (1 : ℝ)) + normalizationDerivative 1 /
      (2 * sourceNormalization 1) = -(2027 / 1386 : ℝ) := by
    norm_num [normalizationDerivative, sourceNormalization]
  unfold scaleDerivative
  rw [hc, scaleProfile_eq_amplitude (by norm_num)]
  rw [sourceBump_second_eq_indicator]
  norm_num [unitSecond, sourceBump, scaleAmplitude]
  ring

/-- In contrast to the spatial derivative, p_1 does not vanish at the source center. -/
theorem scaleDerivative_one_at_zero_pos : 0 < scaleDerivative 1 0 := by
  rw [scaleDerivative_one_at_zero]
  exact div_pos (by norm_num) (Real.sqrt_pos.mpr (sourceNormalization_pos (by norm_num)))

/-- The ordinary spatial derivative at zero vanishes for the literal unit-scale source. -/
theorem spatialSourceDerivative_one_at_zero :
    deriv (normalizedTest explicitSecondDerivative 1) 0 = 0 := by
  rw [normalizedTest_eq_indicator 1 (by norm_num)]
  rw [(indicator_hasDerivAt (s := Icc (-1 : ℝ) 1) (normalizedInterior_hasDerivAt 1)
    (normalizedInterior_frontier 1 (by norm_num)) 0).deriv]
  norm_num [normalizedInteriorDerivative, thirdInterior, firstInterior]

/-- A hostile exact fixture excludes identification of scale and spatial differentiation. -/
theorem scaleDerivative_one_ne_spatial :
    scaleDerivative 1 ≠ deriv (normalizedTest explicitSecondDerivative 1) := by
  intro he
  have hz := congrFun he 0
  rw [spatialSourceDerivative_one_at_zero] at hz
  exact (ne_of_gt scaleDerivative_one_at_zero_pos) hz

end FormalResearch.RiemannHypothesis.SourceScaleDerivative
