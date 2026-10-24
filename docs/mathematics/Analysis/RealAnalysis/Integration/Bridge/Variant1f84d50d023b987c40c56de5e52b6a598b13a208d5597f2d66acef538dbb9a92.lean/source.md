# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.Bridge.Variant1f84d50d023b987c40c56de5e52b6a598b13a208d5597f2d66acef538dbb9a92

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `323b8c336ff4a89b3f22c7b89317789d6afac106` · SHA-256 `b061342f26602775a3cc6f2ba73825d0fe063e37f7cb8f05152eaa44b1fe543f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BaseMeasure.Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BaseMeasure.Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc","mathematical_subject":"Analysis.Integration","original_sha256":"db43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/RiemannHypothesis/Landau/Bridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Landau.Correction
import FormalResearch.MathematicalTooling.Laplace.Continuation
import Mathlib.Probability.Moments.ComplexMGF
import Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap

/-!
# B3.4 Landau descent and exact bridge closure

This module closes the exact B3.4 target
`CorrelationAssembly.BridgeObligation`.

Starting from the sole hypothesis `UniformLowerBound`, the preceding
correction checkpoint supplies a nonnegative corrected source and a
meromorphic continuation analytic on the positive real axis.

Here that corrected source is realized as a positive measure on the support
radius.  The generic Landau theorem then forces nonnegative meromorphic order
throughout the positive half-plane.  The finite polynomial correction is
analytic at every nonzero off-line center, so the exact B3.3 ninth-order poles
survive unchanged.  A positive shifted zero would therefore have order both
`-9` and nonnegative, a contradiction.

Finally, exact functional-equation reflection turns the absence of positive
shifted occurrences into Mathlib's full Riemann Hypothesis statement.

No independent estimate is proved here; `UniformLowerBound` remains the
single premise of the bridge.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BaseMeasure.Variantdb43314861068a020204dca99a179ed3b523e989cf54ad20ada258411ab86edc

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Landau.Bridge

open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology
open FormalResearch.MathematicalTooling.Laplace.Continuation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
open ZeroObject
open FormalResearch.RiemannHypothesis.Laplace
open Laplace.Algebra Laplace.Kernel Laplace.Continuation
open Laplace.PoleCertificate
open Correction

noncomputable section

/-- Lebesgue measure restricted to the actual support-radius domain. -/
def baseMeasure : Measure ℝ :=
  volume.restrict (Ioi 1)

/-- Positive measure with density equal to the nonnegative corrected source. -/
def sourceMeasure (C : ℝ) : Measure ℝ :=
  baseMeasure.withDensity
    (fun A ↦ ENNReal.ofReal (correctedSource C A))

/-- Measurability of the real corrected source follows from genuine
integrability of its nonvanishing exponential weighting. -/
theorem corrected_source_aemeasurable
    (C : ℝ) :
    AEMeasurable (correctedSource C) baseMeasure := by
  have hm :=
    (corrected_source_integrable C (2 : ℂ) (by norm_num)).aestronglyMeasurable.aemeasurable
  have he :
      AEMeasurable
        (fun A : ℝ ↦ Complex.exp ((2 : ℂ) * A))
        baseMeasure := by
    fun_prop
  have hc :
      AEMeasurable
        (fun A : ℝ ↦ (correctedSource C A : ℂ))
        baseMeasure := by
    convert he.mul hm using 1
    funext A
    dsimp only [Pi.mul_apply]
    rw [← mul_assoc, ← Complex.exp_add,
      show (2 : ℂ) * A + -(2 : ℂ) * A = 0 by ring,
      Complex.exp_zero, one_mul]
  simpa only [Function.comp_def, Complex.ofReal_re] using
    Complex.continuous_re.measurable.comp_aemeasurable hc

theorem density_aemeasurable
    (C : ℝ) :
    AEMeasurable
      (fun A ↦ ENNReal.ofReal (correctedSource C A))
      baseMeasure :=
  (corrected_source_aemeasurable C).ennreal_ofReal

theorem density_lt_top
    (C : ℝ) :
    ∀ᵐ A ∂baseMeasure,
      ENNReal.ofReal (correctedSource C A) < ⊤ :=
  Eventually.of_forall
    (fun _ ↦ ENNReal.ofReal_lt_top)

/-- Under the supplied positivity proof, the positive density is exactly the
unclipped corrected source. -/
theorem density_toReal_ae
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A) :
    ∀ᵐ A ∂baseMeasure,
      (ENNReal.ofReal (correctedSource C A)).toReal =
        correctedSource C A := by
  filter_upwards [ae_restrict_mem measurableSet_Ioi]
    with A hA
  exact ENNReal.toReal_ofReal (hpos A hA.le)

/-- Every point seen by the positive source measure lies above radius one. -/
theorem one_lt_ae
    (C : ℝ) :
    ∀ᵐ A ∂sourceMeasure C, 1 < A := by
  exact
    (withDensity_absolutelyContinuous baseMeasure _).ae_le
      (ae_restrict_mem measurableSet_Ioi)

theorem id_nonneg_ae
    (C : ℝ) :
    ∀ᵐ A ∂sourceMeasure C, 0 ≤ (id A : ℝ) := by
  filter_upwards [one_lt_ae C] with A hA
  exact (zero_lt_one.trans hA).le

/-- The complex Laplace exponential is genuinely integrable under the positive
source measure on the initial half-plane. -/
theorem exp_integrable
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (s : ℂ) (hs : 1 < s.re) :
    Integrable
      (fun A : ℝ ↦ Complex.exp (-s * A))
      (sourceMeasure C) := by
  apply
    (integrable_withDensity_iff_integrable_smul₀'
      (density_aemeasurable C) (density_lt_top C)).mpr
  apply
    (corrected_source_integrable C s hs).congr
  filter_upwards [density_toReal_ae C hpos]
    with A hA
  rw [hA, Complex.real_smul]
  exact mul_comm _ _

/-- The positive-measure Laplace integral is exactly the corrected continuation
on its initial half-plane. -/
theorem integral_exp_eq_correctedTransform
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A : ℝ,
      Complex.exp (-s * A) ∂sourceMeasure C) =
      correctedTransform C s := by
  rw [sourceMeasure,
    integral_withDensity_eq_integral_toReal_smul₀
      (density_aemeasurable C) (density_lt_top C)]
  calc
    _ =
        ∫ A : ℝ,
          Complex.exp (-s * A) *
            (correctedSource C A : ℂ) ∂baseMeasure := by
      apply integral_congr_ae
      filter_upwards [density_toReal_ae C hpos]
        with A hA
      rw [hA, Complex.real_smul]
      exact mul_comm _ _
    _ = _ :=
      integral_corrected_source C s hs

theorem complexMGF_eq_correctedTransform
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (s : ℂ) (hs : 1 < s.re) :
    complexMGF id (sourceMeasure C) (-s) =
      correctedTransform C s :=
  integral_exp_eq_correctedTransform C hpos s hs

/-- Real Laplace moments exist on the generic theorem's initial ray. -/
theorem real_laplace_integrable
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (t : ℝ) (ht : 1 < t) :
    Integrable
      (fun A : ℝ ↦ Real.exp (-t * A))
      (sourceMeasure C) := by
  have h :=
    (exp_integrable C hpos (t : ℂ) (by simpa using ht)).norm
  simpa only [Complex.norm_exp, Complex.mul_re,
    Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, mul_zero, sub_zero] using h

/-! ## Preservation of the exact off-line pole -/

/-- The finite correction is analytic at every positive shifted-zero center. -/
theorem correction_at_shifted_center_analytic
    (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ
      (fun w : ℂ ↦
        (C : ℂ) *
          correctionKernel
            (2 * (p.val - 1 / 2) + w))
      0 := by
  have hc :
      2 * (p.val - 1 / 2) + (0 : ℂ) ≠ 0 := by
    intro h
    have hr := congrArg Complex.re h
    norm_num at hr
    norm_num at hp
    linarith
  exact
    analyticAt_const.mul
      ((correctionKernel_analytic _ hc).comp
        (f := fun w : ℂ ↦
          2 * (p.val - 1 / 2) + w)
        (x := 0)
        (analyticAt_const.add analyticAt_id))

/-- The finite normalization correction cannot alter the B3.3 ninth-order
principal coefficient. -/
theorem corrected_transform_cleared_tendsto
    (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto
      (fun w : ℂ ↦
        w ^ 9 *
          correctedTransform C
            (2 * (p.val - 1 / 2) + w))
      (𝓝[≠] 0)
      (𝓝 (pointPairPrincipalCoefficient p)) := by
  have hcorr :=
    (correction_at_shifted_center_analytic C p hp).continuousAt
  simpa only [sub_zero, correctedTransform] using
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by
        simpa only [sub_zero] using
          continuedTransform_cleared_tendsto p hp)
      hcorr

theorem correctedTransform_punctured_differentiable
    (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      DifferentiableAt ℂ
        (fun v ↦
          correctedTransform C
            (2 * (p.val - 1 / 2) + v))
        w := by
  have hc :
      0 < (2 * (p.val - 1 / 2)).re := by
    simpa using
      mul_pos (by norm_num : (0 : ℝ) < 2) hp
  filter_upwards
    [eventually_center_add_mem_domain
      (2 * (p.val - 1 / 2)) hc]
    with w hw
  exact
    (correctedTransform_analytic_on_domain C _ hw).differentiableAt.comp w (by fun_prop)

/-- Every positive shifted-zero pole survives the finite correction with exact
meromorphic order `-9`. -/
theorem corrected_transform_exact_pole
    (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt (correctedTransform C)
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt (correctedTransform C)
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) := by
  obtain ⟨_, _, _, _, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (corrected_transform_cleared_tendsto C p hp)
      (correctedTransform_punctured_differentiable C p hp)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            correctedTransform C
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt (correctedTransform C)
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := correctedTransform C)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt (correctedTransform C)
          (2 * (p.val - 1 / 2)) =
        (-9 : ℤ) :=
    htranslate.symm.trans horderLocal
  exact
    ⟨meromorphicAt_of_meromorphicOrderAt_ne_zero
        (by rw [horder]; norm_num),
      horder⟩

/-! ## Landau order contradiction -/

/-- Positivity of the actual corrected source forces nonnegative meromorphic
order at every positive complex point. -/
theorem corrected_order_nonneg
    (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource C A)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt (correctedTransform C) s := by
  apply
    order_nonneg_of_continuation
      (X := id) (μ := sourceMeasure C)
      (by fun_prop)
      (id_nonneg_ae C)
      ?_
      (correctedTransform C)
      (correctedTransform_meromorphic C)
      (correctedTransform_analytic_positive_real C)
      ?_
      s hs
  · intro t ht
    exact real_laplace_integrable C hpos t ht
  · intro z hz
    exact
      (complexMGF_eq_correctedTransform
        C hpos z hz).symm

/-! ## Exact target passage -/

/-- Excluding positive-real-part shifted zero occurrences is equivalent to
Mathlib's exact RH target. Reflection supplies the opposite half-strip, and
positive analytic multiplicity supplies one occurrence for every nontrivial
zero. -/
theorem riemann_hypothesis_iff_no_right_shifted_values :
    _root_.RiemannHypothesis ↔
      ∀ o : ZeroOccurrence,
        (2 * shiftedValue o).re ≤ 0 := by
  constructor
  · intro h o
    have hp := point_nontrivial o.1
    have hr :=
      h o.1.val hp.1 hp.2.1 hp.2.2
    simp [shiftedValue, hr]
  · intro h s hs hn h1
    have hs' :
        FormalResearch.RiemannHypothesis.NontrivialZetaZero s :=
      ⟨hs, hn, h1⟩
    let p : ZeroPoint :=
      ⟨s, hs, hs'.mem_critical_strip⟩
    let o : ZeroOccurrence :=
      ⟨p, ⟨0, multiplicity_positive p⟩⟩
    have hr := h o
    have hl := h (reflectOccurrence o)
    rw [shiftedValue_reflect] at hl
    change (2 * (s - 1 / 2)).re ≤ 0 at hr
    change (2 * -(s - 1 / 2)).re ≤ 0 at hl
    norm_num [Complex.mul_re] at hr hl
    linarith

/-- The exact B3.4 implication from the repository's sole uniform lower-bound
hypothesis to Mathlib's RH target. -/
theorem riemann_hypothesis_of_uniform_lower_bound
    (hbound : UniformLowerBound) :
    _root_.RiemannHypothesis := by
  obtain ⟨C, _, hpos⟩ :=
    nonnegative_corrected_source_of_uniform hbound
  apply riemann_hypothesis_iff_no_right_shifted_values.mpr
  intro o
  by_contra hn
  have hs :
      0 < (2 * shiftedValue o).re :=
    lt_of_not_ge hn
  have hp :
      0 < (o.1.val - 1 / 2).re := by
    change 0 < (2 * (o.1.val - 1 / 2)).re at hs
    norm_num at hs ⊢
    linarith
  have hnonneg :=
    corrected_order_nonneg
      C hpos (2 * shiftedValue o) hs
  have horder :=
    (corrected_transform_exact_pole C o.1 hp).2
  change
    meromorphicOrderAt (correctedTransform C)
      (2 * shiftedValue o) = (-9 : ℤ)
    at horder
  rw [horder] at hnonneg
  exact
    (by norm_num : ¬ ((0 : ℤ) ≤ -9))
      (WithTop.coe_le_coe.mp hnonneg)

/-- Complete proof of the exact existing B3.4 target. -/
theorem bridge_obligation :
    BridgeObligation :=
  riemann_hypothesis_of_uniform_lower_bound

end
end FormalResearch.RiemannHypothesis.Landau.Bridge
```
