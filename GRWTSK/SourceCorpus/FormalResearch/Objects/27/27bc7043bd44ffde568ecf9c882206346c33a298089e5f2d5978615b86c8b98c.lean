import FormalResearch.RiemannHypothesis.Conversation.ActualCorrelationEdgeShell
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationMoment

/-!
# Exact Laplace multiplier of the unchanged source test

The pole-annihilated test retains its fixed 1/4 coefficient. Integration of
the actual compact polynomial and both zero boundary traces gives the exact
sigma^2-1/4 multiplier at every real sigma. The positive and negative source
moments are equal by the actual test's evenness; the full correlation moment
is their square, with genuine weighted integrability supplied. This is the
source-side identity needed before any prime-power census argument. No census
asymptotic or arithmetic signed lower bound is asserted here. Human exact
moment and source direction: grwtsk contributors. Local general-real-parameter
adapter: OpenAI Codex. Earlier source definitions and integral identities
retain their qualified origins.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualSourceLaplaceMoment
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment ActualCorrelationEdgeShell
open MeasureTheory Set
noncomputable section
local notation "v" => normalizedTest explicitSecondDerivative
local notation "C" => sourceCorrelation explicitSecondDerivative

def bumpMoment (A σ : ℝ) : ℝ := ∫ x, Real.exp (σ * x) * scaledBump A x
def testMoment (A σ : ℝ) : ℝ := ∫ x, Real.exp (σ * x) * v A x

theorem general_source_primitive_derivative (A σ x : ℝ) :
    HasDerivAt (polePrimitive A σ)
      (Real.exp (σ * x) * (secondInterior A x - σ ^ 2 * bumpInterior A x)) x := by
  have hd := (((hasDerivAt_id x).const_mul σ).exp).mul
    ((firstInterior_hasDerivAt A x).sub ((bumpInterior_hasDerivAt A x).const_mul σ))
  apply hd.congr_deriv
  dsimp only [Pi.sub_apply, id_eq]
  ring

theorem exact_weighted_bump_interval {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    bumpMoment A σ = ∫ x in (-A)..A, Real.exp (σ * x) * bumpInterior A x := by
  rw [bumpMoment, scaledBump_eq_indicator A (by linarith)]
  have heq : (fun x : ℝ ↦ Real.exp (σ * x) * (Icc (-A) A).indicator (bumpInterior A) x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) * bumpInterior A x) := by
    funext x
    exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
      (bumpInterior A)).symm
  rw [heq]
  exact zeroExtension_integral _ (-A) A (by linarith)

theorem weighted_bump_genuinely_integrable {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    Integrable (fun x ↦ Real.exp (σ * x) * scaledBump A x) volume := by
  rw [scaledBump_eq_indicator A (by linarith)]
  have heq : (fun x : ℝ ↦ Real.exp (σ * x) * (Icc (-A) A).indicator (bumpInterior A) x) =
      (Icc (-A) A).indicator (fun x ↦ Real.exp (σ * x) * bumpInterior A x) := by
    funext x
    exact (Set.indicator_mul_right (Icc (-A) A) (fun x ↦ Real.exp (σ * x))
      (bumpInterior A)).symm
  rw [heq]
  exact integrable_zeroExtension _
    ((Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)) (-A) A

theorem exact_actual_dilation_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (∫ x, Real.exp (σ * x) * dilationTest explicitSecondDerivative A x) =
      (σ ^ 2 - 1 / 4) * bumpMoment A σ := by
  have hpos : 0 < A := by linarith
  have hd : Continuous (fun x ↦ Real.exp (σ * x) *
      (secondInterior A x - σ ^ 2 * bumpInterior A x)) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      ((secondInterior_continuous A).sub ((bumpInterior_continuous A).const_mul _))
  have hb : Continuous (fun x ↦ Real.exp (σ * x) * bumpInterior A x) :=
    (Real.continuous_exp.comp (continuous_const.mul continuous_id)).mul
      (bumpInterior_continuous A)
  have heq : (fun x ↦ Real.exp (σ * x) * (secondInterior A x - bumpInterior A x / 4)) =
      fun x ↦ Real.exp (σ * x) * (secondInterior A x - σ ^ 2 * bumpInterior A x) +
        (σ ^ 2 - 1 / 4) * (Real.exp (σ * x) * bumpInterior A x) := by
    funext x
    ring
  rw [weighted_dilationTest_eq_indicator A σ hA,
    zeroExtension_integral _ (-A) A (by linarith), heq,
    intervalIntegral.integral_add (hd.intervalIntegrable _ _)
      ((hb.const_mul _).intervalIntegrable _ _),
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun x _ ↦ general_source_primitive_derivative A σ x) (hd.intervalIntegrable _ _),
    (polePrimitive_endpoints A σ hpos.ne').1,
    (polePrimitive_endpoints A σ hpos.ne').2, sub_self, zero_add,
    intervalIntegral.integral_const_mul, ← exact_weighted_bump_interval hA]

theorem exact_actual_normalized_laplace_multiplier {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    testMoment A σ = (σ ^ 2 - 1 / 4) * bumpMoment A σ /
      Real.sqrt (sourceNormalization A) := by
  unfold testMoment
  simp_rw [normalizedTest, ← mul_div_assoc]
  rw [integral_div, exact_actual_dilation_laplace_multiplier hA]

theorem actual_source_laplace_moment_even {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    testMoment A (-σ) = testMoment A σ := by
  unfold testMoment
  have h := integral_neg_eq_self (fun x ↦ Real.exp (σ * x) * v A x) volume
  simp_rw [actual_normalized_test_even (by linarith : 0 < A)] at h
  simpa only [mul_neg, neg_mul] using h

theorem exact_full_correlation_laplace_square {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (∫ t, Real.exp (σ * t) * C A t) = (testMoment A σ) ^ 2 := by
  have h := weighted_correlation_integral (v A) σ
    (weighted_normalizedTest_integrable A σ hA)
    (weighted_normalizedTest_integrable A (-σ) hA)
  change (∫ t, Real.exp (σ * t) * C A t) = testMoment A σ * testMoment A (-σ) at h
  rw [actual_source_laplace_moment_even hA, ← pow_two] at h
  exact h

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSourceLaplaceMoment
