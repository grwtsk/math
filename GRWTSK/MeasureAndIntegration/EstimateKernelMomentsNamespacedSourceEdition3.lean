-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.NormalizedTestContinuousAll.Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.NormalizedTestContinuousAll.Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400","mathematical_subject":"Topology.GeneralTopology","original_sha256":"076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/EstimateKernelMoments.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-!
# RH estimate: exact double source-kernel moments

The sharp source-kernel sampling bounds require two weighted moments to vanish
for both the actual correlation C_A and the differentiated profile
C_A' - C_A / 2.

The zeroth exponential moment of C_A is already the pole-correlation
certificate.  Here the first exponential moment is proved by writing the
weighted correlation as an exact convolution and splitting multiplication by
the output variable across the two convolution factors.

Compact-support integration by parts then transfers both moments to
C_A' - C_A / 2.

No asymptotic estimate or arithmetic hypothesis is used.
-/


namespace GRWTSK.Topology.GeneralTopology.NormalizedTestContinuousAll.Variant076adfd371cde561b652e62e3c812805c3eed9dbf21b4700784d85249b84c400

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateKernelMoments

open MeasureTheory Set
open scoped Convolution
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity CorrelationMoment

noncomputable section

private theorem normalizedTest_continuous_all (A : ℝ) :
    Continuous (normalizedTest explicitSecondDerivative A) := by
  by_cases hA : 0 < A
  · exact (normalizedTest_contDiff A hA).continuous
  · have hsqrt : Real.sqrt A = 0 := Real.sqrt_eq_zero_of_nonpos (le_of_not_gt hA)
    have hz : normalizedTest explicitSecondDerivative A = 0 := by
      funext x
      simp [normalizedTest, dilationTest, explicitSecondDerivative, secondInterior,
        scaledBump, hsqrt]
    rw [hz]
    exact continuous_const

/-- The normalized source test multiplied by the positive exponential weight `exp (x / 2)`. -/
def positiveWeightedTest (A x : ℝ) : ℝ :=
  Real.exp (x / 2) *
    normalizedTest explicitSecondDerivative A x

/-- The reflected normalized source test multiplied by `exp (x / 2)`. -/
def reflectedPositiveWeightedTest (A x : ℝ) : ℝ :=
  Real.exp (x / 2) *
    normalizedTest explicitSecondDerivative A (-x)

/-- First-moment integrand of the exponentially weighted normalized source test. -/
def positiveWeightedTestMoment (A x : ℝ) : ℝ :=
  x * positiveWeightedTest A x

/-- First-moment integrand of the exponentially weighted reflected source test. -/
def reflectedPositiveWeightedTestMoment (A x : ℝ) : ℝ :=
  x * reflectedPositiveWeightedTest A x

theorem positiveWeightedTest_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (positiveWeightedTest A) := by
  exact CorrelationMoment.positive_pole_integrable A hA

theorem reflectedPositiveWeightedTest_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (reflectedPositiveWeightedTest A) := by
  unfold reflectedPositiveWeightedTest
  simpa only [neg_neg] using (CorrelationMoment.negative_pole_integrable A hA).comp_neg

theorem positiveWeightedTest_continuous
    (A : ℝ) (hA : 1 ≤ A) :
    Continuous (positiveWeightedTest A) := by
  unfold positiveWeightedTest
  have hc := (normalizedTest_contDiff A (by linarith)).continuous
  fun_prop

theorem reflectedPositiveWeightedTest_continuous
    (A : ℝ) (hA : 1 ≤ A) :
    Continuous (reflectedPositiveWeightedTest A) := by
  unfold reflectedPositiveWeightedTest
  have hc := (normalizedTest_contDiff A (by linarith)).continuous
  fun_prop

theorem positiveWeightedTest_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (positiveWeightedTest A) := by
  unfold positiveWeightedTest
  exact
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left

theorem reflectedPositiveWeightedTest_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (reflectedPositiveWeightedTest A) := by
  unfold reflectedPositiveWeightedTest
  exact
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left

theorem positiveWeightedTestMoment_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (positiveWeightedTestMoment A) := by
  have hc :
      Continuous
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A x) := by
    have hc := normalizedTest_continuous_all A
    fun_prop
  have hs :
      HasCompactSupport
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A x) :=
    (normalizedTest_hasCompactSupport A (by linarith)).mul_left
  unfold positiveWeightedTestMoment positiveWeightedTest
  simpa only [mul_assoc] using
    hc.integrable_of_hasCompactSupport hs

theorem reflectedPositiveWeightedTestMoment_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (reflectedPositiveWeightedTestMoment A) := by
  have hc :
      Continuous
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A (-x)) := by
    have hc := normalizedTest_continuous_all A
    fun_prop
  have hs :
      HasCompactSupport
        (fun x : ℝ =>
          (x * Real.exp (x / 2)) *
            normalizedTest explicitSecondDerivative A (-x)) :=
    (reflectedTest_hasCompactSupport A (by linarith)).mul_left
  unfold reflectedPositiveWeightedTestMoment reflectedPositiveWeightedTest
  simpa only [mul_assoc] using
      hc.integrable_of_hasCompactSupport hs

theorem positiveWeightedTestMoment_continuous
    (A : ℝ) :
    Continuous (positiveWeightedTestMoment A) := by
  unfold positiveWeightedTestMoment positiveWeightedTest
  have hc := normalizedTest_continuous_all A
  fun_prop

theorem reflectedPositiveWeightedTestMoment_continuous
    (A : ℝ) :
    Continuous (reflectedPositiveWeightedTestMoment A) := by
  unfold reflectedPositiveWeightedTestMoment reflectedPositiveWeightedTest
  have hc := normalizedTest_continuous_all A
  fun_prop

theorem positiveWeightedTestMoment_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (positiveWeightedTestMoment A) := by
  unfold positiveWeightedTestMoment
  exact (positiveWeightedTest_hasCompactSupport A hA).mul_left

theorem reflectedPositiveWeightedTestMoment_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (reflectedPositiveWeightedTestMoment A) := by
  unfold reflectedPositiveWeightedTestMoment
  exact (reflectedPositiveWeightedTest_hasCompactSupport A hA).mul_left

theorem positiveWeightedTest_integral_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, positiveWeightedTest A x) = 0 := by
  simpa [positiveWeightedTest] using
    CorrelationMoment.positive_pole_zero A hA

theorem reflectedPositiveWeightedTest_integral_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, reflectedPositiveWeightedTest A x) = 0 := by
  calc
    (∫ x, reflectedPositiveWeightedTest A x) =
        ∫ x,
          Real.exp (-x / 2) *
            normalizedTest explicitSecondDerivative A x := by
      have h :=
        integral_neg_eq_self
          (fun x : ℝ =>
            Real.exp (-x / 2) *
              normalizedTest explicitSecondDerivative A x)
          volume
      simpa [reflectedPositiveWeightedTest] using h
    _ = 0 :=
      CorrelationMoment.negative_pole_zero A hA

/-- Multiplication by the convolution output splits exactly between its two
input coordinates. -/
theorem mul_weighted_convolution
    (A t : ℝ) (hA : 1 ≤ A) :
    t *
      ((positiveWeightedTest A) ⋆
        (reflectedPositiveWeightedTest A)) t =
      ((positiveWeightedTestMoment A) ⋆
        (reflectedPositiveWeightedTest A)) t +
      ((positiveWeightedTest A) ⋆
        (reflectedPositiveWeightedTestMoment A)) t := by
  have h1 :
      Integrable
        (fun x : ℝ =>
          positiveWeightedTestMoment A x *
            reflectedPositiveWeightedTest A (t - x)) := by
    exact
      ((reflectedPositiveWeightedTest_hasCompactSupport A hA).convolutionExists_right
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTestMoment_integrable A hA).locallyIntegrable
          (reflectedPositiveWeightedTest_continuous A hA)
          t)
  have h2 :
      Integrable
        (fun x : ℝ =>
          positiveWeightedTest A x *
            reflectedPositiveWeightedTestMoment A (t - x)) := by
    exact
      ((reflectedPositiveWeightedTestMoment_hasCompactSupport A hA).convolutionExists_right
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTest_integrable A hA).locallyIntegrable
          (reflectedPositiveWeightedTestMoment_continuous A)
          t)
  change
    t *
      (∫ x,
        positiveWeightedTest A x *
          reflectedPositiveWeightedTest A (t - x)) =
      (∫ x,
        positiveWeightedTestMoment A x *
          reflectedPositiveWeightedTest A (t - x)) +
      (∫ x,
        positiveWeightedTest A x *
          reflectedPositiveWeightedTestMoment A (t - x))
  rw [← integral_const_mul]
  rw [← integral_add h1 h2]
  apply integral_congr_ae
  filter_upwards [] with x
  unfold positiveWeightedTestMoment reflectedPositiveWeightedTestMoment
  ring

/-- The first weighted moment of the actual correlation vanishes.  This is the
second zero coming from the pair of annihilated exponential poles. -/
theorem sourceCorrelation_first_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      t * Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 := by
  have hcorr (t : ℝ) :
      Real.exp (t / 2) *
          sourceCorrelation explicitSecondDerivative A t =
        ((positiveWeightedTest A) ⋆
          (reflectedPositiveWeightedTest A)) t := by
    have hscale (x : ℝ) : (1 / 2 : ℝ) * x = x / 2 := by ring
    have h := CorrelationMoment.weighted_correlation_eq_convolution
      (normalizedTest explicitSecondDerivative A) (1 / 2 : ℝ) t
    simp only [hscale] at h
    exact h
  have hi1 :
      Integrable
        ((positiveWeightedTestMoment A) ⋆
          (reflectedPositiveWeightedTest A)) :=
    (positiveWeightedTestMoment_integrable A hA).integrable_convolution
        (ContinuousLinearMap.lsmul ℝ ℝ)
        (reflectedPositiveWeightedTest_integrable A hA)
  have hi2 :
      Integrable
        ((positiveWeightedTest A) ⋆
          (reflectedPositiveWeightedTestMoment A)) :=
    (positiveWeightedTest_integrable A hA).integrable_convolution
        (ContinuousLinearMap.lsmul ℝ ℝ)
        (reflectedPositiveWeightedTestMoment_integrable A hA)
  calc
    (∫ t,
      t * Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) =
        ∫ t,
          t *
            ((positiveWeightedTest A) ⋆
              (reflectedPositiveWeightedTest A)) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      rw [mul_assoc, hcorr t]
    _ =
        ∫ t,
          (((positiveWeightedTestMoment A) ⋆
              (reflectedPositiveWeightedTest A)) t +
            ((positiveWeightedTest A) ⋆
              (reflectedPositiveWeightedTestMoment A)) t) := by
      apply integral_congr_ae
      filter_upwards [] with t
      exact mul_weighted_convolution A t hA
    _ =
        (∫ t,
          ((positiveWeightedTestMoment A) ⋆
            (reflectedPositiveWeightedTest A)) t) +
        (∫ t,
          ((positiveWeightedTest A) ⋆
            (reflectedPositiveWeightedTestMoment A)) t) := by
      rw [integral_add hi1 hi2]
    _ =
        (∫ x, positiveWeightedTestMoment A x) *
          (∫ x, reflectedPositiveWeightedTest A x) +
        (∫ x, positiveWeightedTest A x) *
          (∫ x, reflectedPositiveWeightedTestMoment A x) := by
      rw [
        integral_convolution
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTestMoment_integrable A hA)
          (reflectedPositiveWeightedTest_integrable A hA),
        integral_convolution
          (ContinuousLinearMap.lsmul ℝ ℝ)
          (positiveWeightedTest_integrable A hA)
          (reflectedPositiveWeightedTestMoment_integrable A hA)]
      rfl
    _ = 0 := by
      rw [positiveWeightedTest_integral_zero A hA,
        reflectedPositiveWeightedTest_integral_zero A hA]
      ring

/-- The actual source correlation multiplied by `exp (t / 2)`. -/
def weightedCorrelation (A t : ℝ) : ℝ :=
  Real.exp (t / 2) *
    sourceCorrelation explicitSecondDerivative A t

/-- Derivative of the actual source correlation minus half the correlation. -/
def derivativeProfile (A t : ℝ) : ℝ :=
  deriv (sourceCorrelation explicitSecondDerivative A) t -
    sourceCorrelation explicitSecondDerivative A t / 2

theorem weightedCorrelation_contDiff
    (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (weightedCorrelation A) := by
  unfold weightedCorrelation
  exact
    (by fun_prop :
      ContDiff ℝ 1 (fun t : ℝ => Real.exp (t / 2))).mul
        (sourceCorrelation_contDiff A (by linarith))

theorem weightedCorrelation_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (weightedCorrelation A) := by
  unfold weightedCorrelation
  exact
    (sourceCorrelation_hasCompactSupport A (by linarith)).mul_left

theorem weightedCorrelation_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (weightedCorrelation A) :=
  (weightedCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA)

theorem weightedCorrelation_deriv_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (weightedCorrelation A)) :=
  (weightedCorrelation_contDiff A hA).continuous_deriv (by norm_num)
    |>.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA).deriv

theorem weightedCorrelation_deriv
    (A t : ℝ) (hA : 1 ≤ A) :
    deriv (weightedCorrelation A) t =
      Real.exp (t / 2) *
        (deriv (sourceCorrelation explicitSecondDerivative A) t +
          sourceCorrelation explicitSecondDerivative A t / 2) := by
  have hc :
      DifferentiableAt ℝ
        (sourceCorrelation explicitSecondDerivative A) t :=
    (sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num) t
  have h :=
    ((((hasDerivAt_id t).div_const 2).exp).mul
      hc.hasDerivAt).deriv
  change deriv (weightedCorrelation A) t = _ at h
  rw [h]
  dsimp only [id_eq]
  ring

/-- Zeroth moment for C_A' - C_A/2. -/
theorem derivativeProfile_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      Real.exp (t / 2) * derivativeProfile A t) = 0 := by
  have hd0 :
      (∫ t, deriv (weightedCorrelation A) t) = 0 :=
    integral_eq_zero_of_hasDerivAt_of_integrable
      (fun t =>
        ((weightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)
      (weightedCorrelation_deriv_integrable A hA)
      (weightedCorrelation_integrable A hA)
  have hC0 :=
    CorrelationMoment.full_correlation_moment_zero A hA
  have heq :
      (fun t =>
        Real.exp (t / 2) * derivativeProfile A t) =
        fun t =>
          deriv (weightedCorrelation A) t -
            weightedCorrelation A t := by
    funext t
    rw [weightedCorrelation_deriv A t hA]
    unfold weightedCorrelation derivativeProfile
    ring
  rw [heq, integral_sub
    (weightedCorrelation_deriv_integrable A hA)
    (weightedCorrelation_integrable A hA), hd0]
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  have hw0 :
      (∫ t, weightedCorrelation A t) = 0 := by
    simpa only [weightedCorrelation, hscale] using hC0
  rw [hw0, sub_zero]

/-- First-moment integrand of the exponentially weighted source correlation. -/
def firstWeightedCorrelation (A t : ℝ) : ℝ :=
  t * weightedCorrelation A t

theorem firstWeightedCorrelation_contDiff
    (A : ℝ) (hA : 1 ≤ A) :
    ContDiff ℝ 1 (firstWeightedCorrelation A) := by
  unfold firstWeightedCorrelation
  exact contDiff_id.mul (weightedCorrelation_contDiff A hA)

theorem firstWeightedCorrelation_hasCompactSupport
    (A : ℝ) (hA : 1 ≤ A) :
    HasCompactSupport (firstWeightedCorrelation A) := by
  unfold firstWeightedCorrelation
  exact (weightedCorrelation_hasCompactSupport A hA).mul_left

theorem firstWeightedCorrelation_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (firstWeightedCorrelation A) :=
  (firstWeightedCorrelation_contDiff A hA).continuous.integrable_of_hasCompactSupport
      (firstWeightedCorrelation_hasCompactSupport A hA)

theorem firstWeightedCorrelation_deriv_integrable
    (A : ℝ) (hA : 1 ≤ A) :
    Integrable (deriv (firstWeightedCorrelation A)) :=
  (firstWeightedCorrelation_contDiff A hA).continuous_deriv (by norm_num)
    |>.integrable_of_hasCompactSupport
      (firstWeightedCorrelation_hasCompactSupport A hA).deriv

theorem firstWeightedCorrelation_deriv
    (A t : ℝ) (hA : 1 ≤ A) :
    deriv (firstWeightedCorrelation A) t =
      weightedCorrelation A t +
        t * deriv (weightedCorrelation A) t := by
  have h :=
    ((hasDerivAt_id t).mul
      (((weightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)).deriv
  change deriv (firstWeightedCorrelation A) t = _ at h
  simpa only [id_eq, one_mul] using h

/-- First moment for C_A' - C_A/2. -/
theorem derivativeProfile_first_exponential_moment_zero
    (A : ℝ) (hA : 1 ≤ A) :
    (∫ t,
      t * Real.exp (t / 2) *
        derivativeProfile A t) = 0 := by
  have hK0 :
      (∫ t, deriv (firstWeightedCorrelation A) t) = 0 :=
    integral_eq_zero_of_hasDerivAt_of_integrable
      (fun t =>
        ((firstWeightedCorrelation_contDiff A hA).differentiable (by norm_num) t).hasDerivAt)
      (firstWeightedCorrelation_deriv_integrable A hA)
      (firstWeightedCorrelation_integrable A hA)
  have hH0 :=
    CorrelationMoment.full_correlation_moment_zero A hA
  have hHC0 :=
    sourceCorrelation_first_exponential_moment_zero A hA
  have htdH :
      (∫ t, t * deriv (weightedCorrelation A) t) = 0 := by
    have hti :
        Integrable
          (fun t =>
            t * deriv (weightedCorrelation A) t) := by
      have hc :
          Continuous
            (fun t =>
              t * deriv (weightedCorrelation A) t) := by
        exact continuous_id.mul
          ((weightedCorrelation_contDiff A hA).continuous_deriv (by norm_num))
      exact hc.integrable_of_hasCompactSupport
        (weightedCorrelation_hasCompactSupport A hA).deriv.mul_left
    rw [show
      (fun t =>
        deriv (firstWeightedCorrelation A) t) =
        fun t =>
          weightedCorrelation A t +
            t * deriv (weightedCorrelation A) t by
      funext t
      exact firstWeightedCorrelation_deriv A t hA]
      at hK0
    rw [integral_add
      (weightedCorrelation_integrable A hA) hti] at hK0
    have hscale (t : ℝ) :
        (1 / 2 : ℝ) * t = t / 2 := by ring
    have hw0 :
        (∫ t, weightedCorrelation A t) = 0 := by
      simpa only [weightedCorrelation, hscale] using hH0
    linarith
  have hprofile :
      (fun t =>
        t * Real.exp (t / 2) *
          derivativeProfile A t) =
        fun t =>
          t * deriv (weightedCorrelation A) t -
            t * weightedCorrelation A t := by
    funext t
    rw [weightedCorrelation_deriv A t hA]
    unfold weightedCorrelation derivativeProfile
    ring
  rw [hprofile]
  have hi1 :
      Integrable
        (fun t =>
          t * deriv (weightedCorrelation A) t) := by
    have hc :
        Continuous
          (fun t =>
            t * deriv (weightedCorrelation A) t) := by
      exact continuous_id.mul
        ((weightedCorrelation_contDiff A hA).continuous_deriv (by norm_num))
    exact hc.integrable_of_hasCompactSupport
      (weightedCorrelation_hasCompactSupport A hA).deriv.mul_left
  have hi2 :
      Integrable
        (fun t =>
          t * weightedCorrelation A t) := by
    exact firstWeightedCorrelation_integrable A hA
  rw [integral_sub hi1 hi2, htdH]
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  have hw1 :
      (∫ t, t * weightedCorrelation A t) = 0 := by
    simpa only [weightedCorrelation, hscale, mul_assoc] using hHC0
  rw [hw1, sub_zero]

/-- The zeroth and first exponential moments vanish for both the source
correlation and its derivative profile at every radius `A ≥ 1`. -/
def DoubleMomentCheckpoint : Prop :=
  ∀ A : ℝ, 1 ≤ A →
    (∫ t,
      Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 ∧
    (∫ t,
      t * Real.exp (t / 2) *
        sourceCorrelation explicitSecondDerivative A t) = 0 ∧
    (∫ t,
      Real.exp (t / 2) * derivativeProfile A t) = 0 ∧
    (∫ t,
      t * Real.exp (t / 2) *
        derivativeProfile A t) = 0

theorem double_moment_checkpoint :
    DoubleMomentCheckpoint := by
  intro A hA
  have hscale (t : ℝ) :
      (1 / 2 : ℝ) * t = t / 2 := by ring
  exact
    ⟨by
      simpa only [hscale] using
        CorrelationMoment.full_correlation_moment_zero A hA,
      sourceCorrelation_first_exponential_moment_zero A hA,
      derivativeProfile_exponential_moment_zero A hA,
      derivativeProfile_first_exponential_moment_zero A hA⟩

end
end EstimateKernelMoments
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
