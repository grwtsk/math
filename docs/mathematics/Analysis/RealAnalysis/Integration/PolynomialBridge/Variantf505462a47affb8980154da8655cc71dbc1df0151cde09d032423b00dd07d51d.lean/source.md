# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.PolynomialBridge.Variantf505462a47affb8980154da8655cc71dbc1df0151cde09d032423b00dd07d51d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a779a56ab0b0fd86f831c973ca3af4a91fe3923e` · SHA-256 `eaad2c4262f6ca2438d1dff30312fc18953b189994c09494f780066f7693c165`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.SourceMeasure.Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.SourceMeasure.Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef","mathematical_subject":"Analysis.Integration","original_sha256":"d68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/d68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.Landau.PolynomialCorrection
import FormalResearch.RiemannHypothesis.Landau.Bridge
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePolynomialResidual

/-!
# Polynomial residual growth and the exact Landau contradiction

A fixed finite-degree polynomial correction is analytic at every nonzero
shifted zero. Its genuine initial Laplace integral therefore preserves the
actual ninth-order poles. Positivity derived from the polynomial residual
bound yields a positive measure whose density is exactly the corrected source;
the existing Landau order theorem then excludes those poles.

The final theorem assumes only the new polynomial residual upper bound. It
does not prove that arithmetic estimate or change the original constant-bound
target. The exact occurrence-to-Mathlib adapter and base measure are reused.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.SourceMeasure.Variantd68b77b98d5d0dd5722a74a5e5cbd9b7be6d387fedafcfc0888186dd89a3b9ef

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.Landau.PolynomialBridge

open MeasureTheory Set Filter ProbabilityTheory
open scoped Topology
open FormalResearch.MathematicalTooling.Laplace.Continuation
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationAssembly
open ZeroObject
open FormalResearch.RiemannHypothesis.Laplace
open Laplace.Algebra Laplace.Kernel Laplace.Continuation
open Laplace.PoleCertificate
open PolynomialCorrection
open EstimatePolynomialResidual

noncomputable section

/-- Positive measure with density equal to the nonnegative corrected source. -/
def sourceMeasure (m : ℕ) (C : ℝ) : Measure ℝ :=
  Bridge.baseMeasure.withDensity
    (fun A ↦ ENNReal.ofReal (correctedSource m C A))

/-- Measurability of the real corrected source follows from genuine
integrability of its nonvanishing exponential weighting. -/
theorem corrected_source_aemeasurable
    (m : ℕ) (C : ℝ) :
    AEMeasurable (correctedSource m C) Bridge.baseMeasure := by
  have hm :=
    (corrected_source_integrable m C (2 : ℂ) (by norm_num)).aestronglyMeasurable.aemeasurable
  have he :
      AEMeasurable
        (fun A : ℝ ↦ Complex.exp ((2 : ℂ) * A))
        Bridge.baseMeasure := by
    fun_prop
  have hc :
      AEMeasurable
        (fun A : ℝ ↦ (correctedSource m C A : ℂ))
        Bridge.baseMeasure := by
    convert he.mul hm using 1
    funext A
    dsimp only [Pi.mul_apply]
    rw [← mul_assoc, ← Complex.exp_add,
      show (2 : ℂ) * A + -(2 : ℂ) * A = 0 by ring,
      Complex.exp_zero, one_mul]
  simpa only [Function.comp_def, Complex.ofReal_re] using
    Complex.continuous_re.measurable.comp_aemeasurable hc

theorem density_aemeasurable
    (m : ℕ) (C : ℝ) :
    AEMeasurable
      (fun A ↦ ENNReal.ofReal (correctedSource m C A))
      Bridge.baseMeasure :=
  (corrected_source_aemeasurable m C).ennreal_ofReal

theorem density_lt_top
    (m : ℕ) (C : ℝ) :
    ∀ᵐ A ∂Bridge.baseMeasure,
      ENNReal.ofReal (correctedSource m C A) < ⊤ :=
  Eventually.of_forall
    (fun _ ↦ ENNReal.ofReal_lt_top)

/-- Under the supplied positivity proof, the positive density is exactly the
unclipped corrected source. -/
theorem density_toReal_ae
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A) :
    ∀ᵐ A ∂Bridge.baseMeasure,
      (ENNReal.ofReal (correctedSource m C A)).toReal =
        correctedSource m C A := by
  filter_upwards [ae_restrict_mem measurableSet_Ioi]
    with A hA
  exact ENNReal.toReal_ofReal (hpos A hA.le)

/-- Every point seen by the positive source measure lies above radius one. -/
theorem one_lt_ae
    (m : ℕ) (C : ℝ) :
    ∀ᵐ A ∂sourceMeasure m C, 1 < A := by
  exact
    (withDensity_absolutelyContinuous Bridge.baseMeasure _).ae_le
      (ae_restrict_mem measurableSet_Ioi)

theorem id_nonneg_ae
    (m : ℕ) (C : ℝ) :
    ∀ᵐ A ∂sourceMeasure m C, 0 ≤ (id A : ℝ) := by
  filter_upwards [one_lt_ae m C] with A hA
  exact (zero_lt_one.trans hA).le

/-- The complex Laplace exponential is genuinely integrable under the positive
source measure on the initial half-plane. -/
theorem exp_integrable
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (s : ℂ) (hs : 1 < s.re) :
    Integrable
      (fun A : ℝ ↦ Complex.exp (-s * A))
      (sourceMeasure m C) := by
  apply
    (integrable_withDensity_iff_integrable_smul₀'
      (density_aemeasurable m C) (density_lt_top m C)).mpr
  apply
    (corrected_source_integrable m C s hs).congr
  filter_upwards [density_toReal_ae m C hpos]
    with A hA
  rw [hA, Complex.real_smul]
  exact mul_comm _ _

/-- The positive-measure Laplace integral is exactly the corrected continuation
on its initial half-plane. -/
theorem integral_exp_eq_correctedTransform
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (s : ℂ) (hs : 1 < s.re) :
    (∫ A : ℝ,
      Complex.exp (-s * A) ∂sourceMeasure m C) =
      correctedTransform m C s := by
  rw [sourceMeasure,
    integral_withDensity_eq_integral_toReal_smul₀
      (density_aemeasurable m C) (density_lt_top m C)]
  calc
    _ =
        ∫ A : ℝ,
          Complex.exp (-s * A) *
            (correctedSource m C A : ℂ) ∂Bridge.baseMeasure := by
      apply integral_congr_ae
      filter_upwards [density_toReal_ae m C hpos]
        with A hA
      rw [hA, Complex.real_smul]
      exact mul_comm _ _
    _ = _ :=
      integral_corrected_source m C s hs

theorem complexMGF_eq_correctedTransform
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (s : ℂ) (hs : 1 < s.re) :
    complexMGF id (sourceMeasure m C) (-s) =
      correctedTransform m C s :=
  integral_exp_eq_correctedTransform m C hpos s hs

/-- Real Laplace moments exist on the generic theorem's initial ray. -/
theorem real_laplace_integrable
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (t : ℝ) (ht : 1 < t) :
    Integrable
      (fun A : ℝ ↦ Real.exp (-t * A))
      (sourceMeasure m C) := by
  have h :=
    (exp_integrable m C hpos (t : ℂ) (by simpa using ht)).norm
  simpa only [Complex.norm_exp, Complex.mul_re,
    Complex.neg_re, Complex.ofReal_re, Complex.ofReal_im,
    zero_mul, mul_zero, sub_zero] using h

/-! ## Preservation of the exact off-line pole -/

/-- The finite correction is analytic at every positive shifted-zero center. -/
theorem correction_at_shifted_center_analytic
    (m : ℕ) (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    AnalyticAt ℂ
      (fun w : ℂ ↦
        (C : ℂ) *
          correctionKernel m
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
      ((correctionKernel_analytic m _ hc).comp
        (f := fun w : ℂ ↦
          2 * (p.val - 1 / 2) + w)
        (x := 0)
        (analyticAt_const.add analyticAt_id))

/-- The finite normalization correction cannot alter the B3.3 ninth-order
principal coefficient. -/
theorem corrected_transform_cleared_tendsto
    (m : ℕ) (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    Tendsto
      (fun w : ℂ ↦
        w ^ 9 *
          correctedTransform m C
            (2 * (p.val - 1 / 2) + w))
      (𝓝[≠] 0)
      (𝓝 (pointPairPrincipalCoefficient p)) := by
  have hcorr :=
    (correction_at_shifted_center_analytic m C p hp).continuousAt
  simpa only [sub_zero, correctedTransform] using
    ninth_order_limit_add_continuous
      (p := (0 : ℂ))
      (by
        simpa only [sub_zero] using
          continuedTransform_cleared_tendsto p hp)
      hcorr

theorem correctedTransform_punctured_differentiable
    (m : ℕ) (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    ∀ᶠ w in 𝓝[≠] (0 : ℂ),
      DifferentiableAt ℂ
        (fun v ↦
          correctedTransform m C
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
    (correctedTransform_analytic_on_domain m C _ hw).differentiableAt.comp w (by fun_prop)

/-- Every positive shifted-zero pole survives the finite correction with exact
meromorphic order `-9`. -/
theorem corrected_transform_exact_pole
    (m : ℕ) (C : ℝ) (p : ZeroPoint)
    (hp : 0 < (p.val - 1 / 2).re) :
    MeromorphicAt (correctedTransform m C)
        (2 * (p.val - 1 / 2)) ∧
      meromorphicOrderAt (correctedTransform m C)
        (2 * (p.val - 1 / 2)) = (-9 : ℤ) := by
  obtain ⟨_, _, _, _, horderLocal⟩ :=
    exact_pole_certificate
      (point_pair_principal_coefficient_ne_zero p)
      (corrected_transform_cleared_tendsto m C p hp)
      (correctedTransform_punctured_differentiable m C p hp)
  have htranslate :
      meromorphicOrderAt
          (fun w ↦
            correctedTransform m C
              (2 * (p.val - 1 / 2) + w))
          0 =
        meromorphicOrderAt (correctedTransform m C)
          (2 * (p.val - 1 / 2)) := by
    simpa only [zero_add, add_comm] using
      (meromorphicOrderAt_fun_comp_add_const_eq_meromorphicOrderAt
        (f := correctedTransform m C)
        (x := (0 : ℂ))
        (c := 2 * (p.val - 1 / 2)))
  have horder :
      meromorphicOrderAt (correctedTransform m C)
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
    (m : ℕ) (C : ℝ)
    (hpos : ∀ A : ℝ, 1 ≤ A → 0 ≤ correctedSource m C A)
    (s : ℂ) (hs : 0 < s.re) :
    0 ≤ meromorphicOrderAt (correctedTransform m C) s := by
  apply
    order_nonneg_of_continuation
      (X := id) (μ := sourceMeasure m C)
      (by fun_prop)
      (id_nonneg_ae m C)
      ?_
      (correctedTransform m C)
      (correctedTransform_meromorphic m C)
      (correctedTransform_analytic_positive_real m C)
      ?_
      s hs
  · intro t ht
    exact real_laplace_integrable m C hpos t ht
  · intro z hz
    exact
      (complexMGF_eq_correctedTransform
        m C hpos z hz).symm

/-! ## Exact target passage -/

/-- Any one fixed finite polynomial upper bound for the unchanged residual
forces Mathlib's exact RH proposition. The arithmetic bound is the sole research premise. -/
theorem riemann_hypothesis_of_polynomial_residual_tail_upper_bound
    (hbound : PolynomialResidualTailUpperBound) :
    _root_.RiemannHypothesis := by
  obtain ⟨m, C, _, hQ⟩ := polynomial_quadratic_lower_of_residual_tail hbound
  have hpos := nonnegative_corrected_source_of_lower m C hQ
  apply Bridge.riemann_hypothesis_iff_no_right_shifted_values.mpr
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
      m C hpos (2 * shiftedValue o) hs
  have horder :=
    (corrected_transform_exact_pole m C o.1 hp).2
  change
    meromorphicOrderAt (correctedTransform m C)
      (2 * shiftedValue o) = (-9 : ℤ)
    at horder
  rw [horder] at hnonneg
  exact
    (by norm_num : ¬ ((0 : ℤ) ≤ -9))
      (WithTop.coe_le_coe.mp hnonneg)

end
end FormalResearch.RiemannHypothesis.Landau.PolynomialBridge
```
