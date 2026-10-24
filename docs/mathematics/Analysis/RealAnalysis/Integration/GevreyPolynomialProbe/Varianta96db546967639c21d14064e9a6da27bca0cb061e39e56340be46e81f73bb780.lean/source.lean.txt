import FormalResearch.RiemannHypothesis.GevreyNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity

namespace FormalResearch.RiemannHypothesis.GevreyPolynomial

open MeasureTheory Set
open SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

noncomputable section

def firstDerivative (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (firstInterior A)

theorem bumpInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    bumpInterior A x = 0 ∧ firstInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
      (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]

theorem firstInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    firstInterior A x = 0 ∧ secondInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2,
      (secondInterior_endpoints A hA.ne').1, (secondInterior_endpoints A hA.ne').2]

theorem scaledBump_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (scaledBump A) (firstDerivative A x) x := by
  rw [scaledBump_eq_indicator A hA]
  exact indicator_hasDerivAt (bumpInterior_hasDerivAt A) (bumpInterior_frontier hA) x

theorem firstDerivative_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (firstDerivative A) (explicitSecondDerivative A x) x :=
  indicator_hasDerivAt (firstInterior_hasDerivAt A) (firstInterior_frontier hA) x

theorem deriv_scaledBump {A : ℝ} (hA : 0 < A) :
    deriv (scaledBump A) = firstDerivative A :=
  funext fun x ↦ (scaledBump_hasDerivAt hA x).deriv

theorem second_scaledBump {A : ℝ} (hA : 0 < A) :
    deriv (deriv (scaledBump A)) = explicitSecondDerivative A := by
  rw [deriv_scaledBump hA]
  exact funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv

theorem scaledBump_contDiff {A : ℝ} (hA : 0 < A) :
    ContDiff ℝ 2 (scaledBump A) := by
  rw [show (2 : WithTop ℕ∞) = 1 + 1 from rfl, contDiff_succ_iff_deriv]
  refine ⟨fun x ↦ (scaledBump_hasDerivAt hA x).differentiableAt, by simp, ?_⟩
  rw [deriv_scaledBump hA, contDiff_one_iff_deriv]
  refine ⟨fun x ↦ (firstDerivative_hasDerivAt hA x).differentiableAt, ?_⟩
  have heq : deriv (firstDerivative A) = explicitSecondDerivative A :=
    funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv
  rw [heq]
  exact (secondInterior_continuous A).indicator
    (fun x hx ↦ (firstInterior_frontier hA x hx).2)

theorem sourceBump_eq_scaled_unit : sourceBump = scaledBump 1 := by
  funext x
  simp [scaledBump]

theorem sourceBump_contDiff : ContDiff ℝ 2 sourceBump := by
  rw [sourceBump_eq_scaled_unit]
  exact scaledBump_contDiff (by norm_num)

theorem sourceBump_hasCompactSupport : HasCompactSupport sourceBump := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := (-1 : ℝ)) (b := 1))
  intro x hx
  by_contra hm
  exact hx (by simp [sourceBump, hm])

theorem sourceBump_nonzero : ∃ x, sourceBump x ≠ 0 := by
  refine ⟨0, ?_⟩
  norm_num [sourceBump]

theorem sourceBump_eq_indicator : sourceBump = (Icc (-1) 1).indicator unitBump := by
  funext x
  simp [sourceBump, unitBump, indicator_apply]

theorem sourceBump_second_eq_indicator :
    deriv (deriv sourceBump) = (Icc (-1) 1).indicator unitSecond := by
  rw [sourceBump_eq_scaled_unit, second_scaledBump (by norm_num)]
  funext x
  simp [explicitSecondDerivative, unitSecond, secondInterior, indicator_apply]

theorem sourceBump_square_integral :
    (∫ x : ℝ, sourceBump x ^ 2) = (65536 / 109395 : ℝ) := by
  have heq : (fun x : ℝ ↦ sourceBump x ^ 2) =
      (Icc (-1) 1).indicator (fun x ↦ unitBump x ^ 2) := by
    rw [sourceBump_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitBump_square_integral

theorem sourceBump_second_square_integral :
    (∫ x : ℝ, (deriv (deriv sourceBump) x) ^ 2) = (196608 / 5005 : ℝ) := by
  have heq : (fun x : ℝ ↦ (deriv (deriv sourceBump) x) ^ 2) =
      (Icc (-1) 1).indicator (fun x ↦ unitSecond x ^ 2) := by
    rw [sourceBump_second_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitSecond_square_integral

theorem sourceBump_second_mul_integral :
    (∫ x : ℝ, deriv (deriv sourceBump) x * sourceBump x) =
      -(131072 / 45045 : ℝ) := by
  have heq : (fun x : ℝ ↦ deriv (deriv sourceBump) x * sourceBump x) =
      (Icc (-1) 1).indicator (fun x ↦ unitSecond x * unitBump x) := by
    rw [sourceBump_second_eq_indicator, sourceBump_eq_indicator]
    funext x
    simp only [indicator_apply]
    split_ifs <;> simp
  rw [heq, zeroExtension_integral _ (-1) 1 (by norm_num)]
  exact unitSecond_mul_bump_integral

theorem sourceBump_deriv_square_integral :
    (∫ x : ℝ, (deriv sourceBump x) ^ 2) = (131072 / 45045 : ℝ) := by
  have hi := GevreyNormalization.integral_second_mul_profile
    sourceBump_contDiff sourceBump_hasCompactSupport
  rw [sourceBump_second_mul_integral] at hi
  linarith

theorem normalization_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.normalization sourceBump A = sourceNormalization A := by
  rw [GevreyNormalization.normalization_eq sourceBump_contDiff sourceBump_hasCompactSupport hA,
    sourceBump_second_square_integral, sourceBump_deriv_square_integral,
    sourceBump_square_integral]
  unfold sourceNormalization
  ring

theorem dilationOperator_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.dilationOperator sourceBump A = dilationTest explicitSecondDerivative A := by
  unfold GevreyNormalization.dilationOperator GevreyNormalization.scaledProfile dilationTest
  change (fun x ↦ deriv (deriv (scaledBump A)) x - scaledBump A x / 4) = _
  rw [second_scaledBump hA]

end

end FormalResearch.RiemannHypothesis.GevreyPolynomial
