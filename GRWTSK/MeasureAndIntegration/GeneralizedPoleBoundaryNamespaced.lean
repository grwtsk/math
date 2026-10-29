-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.PositiveHalfMoment.Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.PositiveHalfMoment.Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c","mathematical_subject":"Analysis.Integration","original_sha256":"dc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/dc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.PoleDifferentialCorrelation
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral

/-!
# The generalized positive-half pole moment tends to four

The full-line generalized pole moment vanishes, but each positive-half moment
has a nonzero limit. Dominated convergence uses the actual correlation, its
compact support, and its uniform absolute bound. No arithmetic estimate follows.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.PositiveHalfMoment.Variantdc63ee6beefce0b535b34e3665a43944ce6a2b1cac44243a1742b7d87cae9f1c

namespace FormalResearch.RiemannHypothesis.GeneralizedPoleBoundary

open MeasureTheory Filter Set
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open JointPhaseScaling Realization CorrelationRegularity

noncomputable section

/-- The positive-half growing generalized pole moment of the actual source. -/
def positiveHalfMoment (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, t * Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t

/-- Its positive-half decaying companion, equal on every admitted radius. -/
def negativeHalfMoment (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, t * Real.exp (-t / 2) * sourceCorrelation explicitSecondDerivative A t

/-- The integrable nonnegative dominating weight on the positive half-line. -/
def decayingFirstWeight : ℝ → ℝ := (Ici 0).indicator (fun t ↦ t * Real.exp (-t / 2))

private theorem inverse_square_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / (2 * A ^ 2)) atTop (nhds 0) := by
  have h := ((tendsto_inv_atTop_zero :
    Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 2).const_mul (1 / 2 : ℝ)
  convert h using 1 <;> simp [div_eq_mul_inv, mul_inv_rev, inv_pow, mul_comm]

private theorem inverse_fourth_coefficient_tendsto_zero :
    Tendsto (fun A : ℝ ↦ 1 / A ^ 4) atTop (nhds 0) := by
  simpa only [one_div, inv_pow, zero_pow (by omega : 4 ≠ 0)] using
    (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).pow 4

/-- Every fixed physical displacement has source correlation tending to one. -/
theorem source_correlation_fixed_tendsto (t : ℝ) :
    Tendsto (fun A : ℝ ↦ sourceCorrelation explicitSecondDerivative A t) atTop (nhds 1) := by
  have ht : Tendsto (fun A : ℝ ↦ t / A) atTop (nhds 0) := by
    simpa only [div_eq_mul_inv, mul_zero] using
      (tendsto_inv_atTop_zero : Tendsto (fun A : ℝ ↦ A⁻¹) atTop (nhds 0)).const_mul t
  have h0 := (PhaseKernelBoundary.fixed_kernel_continuous 0
    (by norm_num)).continuousAt.tendsto.comp ht
  have h1 := (PhaseKernelBoundary.fixed_kernel_continuous 1
    (by norm_num)).continuousAt.tendsto.comp ht
  have h2 := (PhaseKernelBoundary.fixed_kernel_continuous 2
    (by norm_num)).continuousAt.tendsto.comp ht
  have hn := ((h0.div_const 16).add
    (h1.mul inverse_square_coefficient_tendsto_zero)).add
    (h2.mul inverse_fourth_coefficient_tendsto_zero)
  have hr := hn.div PhaseKernelBoundary.source_normalization_tendsto (by norm_num)
  have heq : (fun A : ℝ ↦ sourceCorrelation explicitSecondDerivative A t) =ᶠ[atTop]
      (fun A ↦ (fixedKernel 0 (t / A) / 16 + fixedKernel 1 (t / A) * (1 / (2 * A ^ 2)) +
        fixedKernel 2 (t / A) * (1 / A ^ 4)) / sourceNormalization A) := by
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
    have hne : A ≠ 0 := ne_of_gt (by linarith : 0 < A)
    have hc := scaled_kernel_eq_source_correlation A (t / A) hA
    rw [show A * (t / A) = t by field_simp] at hc
    rw [← hc, scaled_kernel_eq_three_fixed_kernels A (t / A) hA]
    ring
  convert hr.congr' heq.symm using 1
  norm_num [fixed_kernel_mass_values.1]

/-- The actual dominating half-line weight is nonnegative everywhere. -/
theorem decaying_first_weight_nonneg (t : ℝ) : 0 ≤ decayingFirstWeight t := by
  unfold decayingFirstWeight
  by_cases ht : t ∈ Ici (0 : ℝ)
  · rw [indicator_of_mem ht]
    exact mul_nonneg ht (Real.exp_pos _).le
  · rw [indicator_of_notMem ht]

/-- The exponential first-moment weight is integrable on the positive half-line. -/
theorem decaying_first_weight_integrable : Integrable decayingFirstWeight := by
  have h := integrableOn_rpow_mul_exp_neg_mul_rpow
    (s := 1) (p := 1) (b := 1 / 2) (by norm_num) (by norm_num) (by norm_num)
  have hi : IntegrableOn (fun t : ℝ ↦ t * Real.exp (-t / 2)) (Ioi 0) := by
    convert h using 1
    funext t
    simp only [Real.rpow_one]
    congr 2
    ring
  exact (Iff.mpr integrableOn_Ici_iff_integrableOn_Ioi hi).integrable_indicator measurableSet_Ici

/-- Gamma integration evaluates the exact positive-half dominating mass. -/
theorem decaying_first_weight_integral : (∫ t, decayingFirstWeight t) = 4 := by
  unfold decayingFirstWeight
  rw [integral_indicator measurableSet_Ici, integral_Ici_eq_integral_Ioi]
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi
    (a := 2) (r := 1 / 2) (by norm_num) (by norm_num)
  have heq : (fun t : ℝ ↦ t * Real.exp (-t / 2)) =
      (fun t : ℝ ↦ t ^ ((2 : ℝ) - 1) * Real.exp (-((1 / 2 : ℝ) * t))) := by
    funext t
    simp only [show (2 : ℝ) - 1 = 1 by norm_num, Real.rpow_one]
    rw [show -t / 2 = -((1 / 2 : ℝ) * t) by ring]
  rw [heq, h]
  have hg := Real.Gamma_nat_eq_factorial 1
  norm_num at hg
  norm_num [hg]

/-- Actual compact support identifies the finite moment with its full half-line integral. -/
theorem negative_half_moment_eq_weighted_integral (A : ℝ) (hA : 1 ≤ A) :
    negativeHalfMoment A =
      ∫ t, decayingFirstWeight t * sourceCorrelation explicitSecondDerivative A t := by
  rw [negativeHalfMoment, intervalIntegral.integral_of_le (by linarith),
    ← integral_Icc_eq_integral_Ioc]
  rw [← integral_indicator measurableSet_Icc]
  apply integral_congr_ae
  filter_upwards [] with t
  by_cases ht : t ∈ Icc (0 : ℝ) (2 * A)
  · rw [indicator_of_mem ht]
    unfold decayingFirstWeight
    rw [indicator_of_mem (show t ∈ Ici (0 : ℝ) from ht.1)]
  · rw [indicator_of_notMem ht]
    unfold decayingFirstWeight
    by_cases hp : t ∈ Ici (0 : ℝ)
    · rw [indicator_of_mem hp]
      have hz : sourceCorrelation explicitSecondDerivative A t = 0 := by
        apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t (by linarith)
        rw [abs_of_nonneg hp]
        by_contra h
        exact ht ⟨hp, le_of_lt (lt_of_not_ge h)⟩
      rw [hz, mul_zero]
    · rw [indicator_of_notMem hp, zero_mul]

/-- Dominated convergence gives the nonzero limit of the decaying actual half-moment. -/
theorem negative_half_moment_tendsto_four :
    Tendsto negativeHalfMoment atTop (nhds 4) := by
  have h := tendsto_integral_filter_of_dominated_convergence decayingFirstWeight
    (F := fun A t : ℝ ↦ decayingFirstWeight t * sourceCorrelation explicitSecondDerivative A t)
    (f := decayingFirstWeight)
    (by
      filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      exact decaying_first_weight_integrable.aestronglyMeasurable.mul
        ((sourceCorrelation_contDiff A (by linarith)).continuous.aestronglyMeasurable))
    (by
      filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
      filter_upwards [] with t
      rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (decaying_first_weight_nonneg t)]
      simpa only [mul_one] using mul_le_mul_of_nonneg_left
        (EstimateCorrelation.actual_correlation_abs_le_one A t hA)
        (decaying_first_weight_nonneg t))
    decaying_first_weight_integrable
    (by
      filter_upwards [] with t
      simpa only [mul_one] using (source_correlation_fixed_tendsto t).const_mul
        (decayingFirstWeight t))
  rw [decaying_first_weight_integral] at h
  apply h.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (negative_half_moment_eq_weighted_integral A hA).symm

/-- Full-line cancellation makes the two actual half-moments equal, rather than zero. -/
theorem positive_half_moment_eq_negative (A : ℝ) (hA : 1 ≤ A) :
    positiveHalfMoment A = negativeHalfMoment A := by
  have h := GeneralizedPoleMoments.generalized_pole_half_interval A (1 / 2) hA (by norm_num)
  simpa only [positiveHalfMoment, negativeHalfMoment,
    show ∀ t : ℝ, (1 / 2 : ℝ) * t = t / 2 by intro t; ring,
    show ∀ t : ℝ, (-(1 / 2) : ℝ) * t = -t / 2 by intro t; ring] using h

/-- The actual growing positive-half generalized pole moment tends to four. -/
theorem positive_half_moment_tendsto_four : Tendsto positiveHalfMoment atTop (nhds 4) := by
  apply negative_half_moment_tendsto_four.congr'
  filter_upwards [eventually_ge_atTop (1 : ℝ)] with A hA
  exact (positive_half_moment_eq_negative A hA).symm

/-- An admitted actual radius eventually has a strictly positive generalized half-moment. -/
theorem positive_half_moment_eventually_pos :
    ∀ᶠ A : ℝ in atTop, 1 ≤ A ∧ 0 < positiveHalfMoment A := by
  have h := (tendsto_const_nhds : Tendsto (fun _ : ℝ ↦ (0 : ℝ)) atTop (nhds 0)).eventually_lt
    positive_half_moment_tendsto_four (by norm_num)
  filter_upwards [eventually_ge_atTop (1 : ℝ), h] with A hA hp
  exact ⟨hA, hp⟩

/-- Universal vanishing of the actual positive-half generalized moment is false. -/
theorem not_all_positive_half_moments_zero : ¬∀ A : ℝ, 1 ≤ A → positiveHalfMoment A = 0 := by
  intro h
  obtain ⟨A, hA, hp⟩ := positive_half_moment_eventually_pos.exists
  rw [h A hA] at hp
  exact (lt_irrefl 0) hp

end
end FormalResearch.RiemannHypothesis.GeneralizedPoleBoundary
