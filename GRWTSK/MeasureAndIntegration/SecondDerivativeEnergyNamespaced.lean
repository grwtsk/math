-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FourthInterior.Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"afcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.FourthInterior.Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1","mathematical_subject":"Analysis.Calculus","original_sha256":"afcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/SecondDerivativeEnergy.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.DerivativeEnergy
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Topology.MetricSpace.Lipschitz

/-!
Scratch verification of the actual normalized test's second derivative energy.
The displayed zero extension is the weak derivative of the actual first
normalized-test derivative and agrees with its ordinary second derivative
almost everywhere. The two boundary points are explicitly excluded before
claiming ordinary differentiability; no global C2 assumption is introduced.
No correlation third-derivative or complete arithmetic estimate is asserted.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.FourthInterior.Variantafcdc37cabb3f9206df438818ce4d3eec76c93cf5e1be6399af39c3b5d0c27d1

set_option autoImplicit false

namespace SecondDerivativeEnergyScratch

open MeasureTheory Set
open scoped Topology NNReal
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceComparison
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity

noncomputable section

/-- Fourth polynomial derivative of the original scaled bump interior. -/
def fourthInterior (A x : ℝ) : ℝ :=
  (144 - 1440 * (x / A) ^ 2 + 1680 * (x / A) ^ 4) / (A ^ 4 * Real.sqrt A)

/-- Second derivative of the actual normalized source interior. -/
def normalizedSecondInterior (A x : ℝ) : ℝ :=
  (fourthInterior A x - secondInterior A x / 4) / Real.sqrt (sourceNormalization A)

/-- The genuine second-derivative zero extension, with its endpoint traces retained. -/
def normalizedSecondTest (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (normalizedSecondInterior A)

/-- Ordinary polynomial differentiation gives the fourth source interior derivative. -/
theorem thirdInterior_hasDerivAt (A x : ℝ) :
    HasDerivAt (thirdInterior A) (fourthInterior A x) x := by
  have hy := (hasDerivAt_id x).div_const A
  have h := (((hy.const_mul 144).sub ((hy.pow 3).const_mul 480)).add
    ((hy.pow 5).const_mul 336)).div_const (A ^ 3 * Real.sqrt A)
  convert h using 1 <;> try rfl
  dsimp [fourthInterior]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- The actual first normalized interior derivative has this polynomial derivative. -/
theorem normalizedInteriorDerivative_hasDerivAt (A x : ℝ) :
    HasDerivAt (normalizedInteriorDerivative A) (normalizedSecondInterior A x) x :=
  ((thirdInterior_hasDerivAt A x).sub ((firstInterior_hasDerivAt A x).div_const 4)).div_const _

/-- The interior second derivative is continuous before zero extension. -/
theorem normalizedSecondInterior_continuous (A : ℝ) : Continuous (normalizedSecondInterior A) := by
  unfold normalizedSecondInterior fourthInterior secondInterior
  fun_prop

/-- The compact polynomial zero extension is genuinely integrable. -/
theorem normalizedSecondTest_integrable (A : ℝ) : Integrable (normalizedSecondTest A) volume :=
  integrable_zeroExtension _ (normalizedSecondInterior_continuous A) (-A) A

/-- Its squared energy is integrable before evaluating the integral. -/
theorem normalizedSecondTest_square_integrable (A : ℝ) :
    Integrable (fun x ↦ normalizedSecondTest A x ^ 2) volume := by
  have heq : (fun x ↦ normalizedSecondTest A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [normalizedSecondTest, indicator_apply]
    split_ifs <;> simp
  rw [heq]
  exact integrable_zeroExtension _ ((normalizedSecondInterior_continuous A).pow 2) (-A) A

/-- The actual first derivative has this derivative away from the two null endpoints. -/
theorem normalized_derivative_hasDerivAt_ae (A : ℝ) (hA : 1 ≤ A) :
    ∀ᵐ x : ℝ, HasDerivAt (deriv (normalizedTest explicitSecondDerivative A))
      (normalizedSecondTest A x) x := by
  filter_upwards [volume.ae_ne (-A), volume.ae_ne A] with x hxminus hxplus
  rw [DerivativeEnergy.normalized_derivative_eq_indicator A hA]
  have hx : x ∉ frontier (Icc (-A) A) := by
    rw [frontier_Icc (by linarith : -A ≤ A)]
    simp only [mem_insert_iff, mem_singleton_iff, not_or]
    exact ⟨hxminus, hxplus⟩
  have hdich : x ∈ interior (Icc (-A) A) ∨ x ∈ interior (Icc (-A) A)ᶜ := by
    simpa only [← mem_compl_iff, compl_frontier_eq_union_interior, mem_union] using hx
  rcases hdich with hi | hi
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        normalizedInteriorDerivative A := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_mem (interior_subset hy) _
    rw [normalizedSecondTest, indicator_of_mem (interior_subset hi)]
    exact (normalizedInteriorDerivative_hasDerivAt A x).congr_of_eventuallyEq heq
  · have heq : (Icc (-A) A).indicator (normalizedInteriorDerivative A) =ᶠ[𝓝 x]
        fun _ ↦ 0 := by
      filter_upwards [isOpen_interior.mem_nhds hi] with y hy
      exact indicator_of_notMem (interior_subset hy) _
    rw [normalizedSecondTest, indicator_of_notMem (interior_subset hi)]
    exact (hasDerivAt_const x (0 : ℝ)).congr_of_eventuallyEq heq

/-- The totalized ordinary second derivative agrees almost everywhere with the explicit extension. -/
theorem normalized_second_derivative_ae (A : ℝ) (hA : 1 ≤ A) :
    deriv (deriv (normalizedTest explicitSecondDerivative A)) =ᵐ[volume]
      normalizedSecondTest A := by
  filter_upwards [normalized_derivative_hasDerivAt_ae A hA] with x hx
  exact hx.deriv

private def unitSecond (x : ℝ) : ℝ := -8 + 72*x^2 - 120*x^4 + 56*x^6
private def unitFourth (x : ℝ) : ℝ := 144 - 1440*x^2 + 1680*x^4

private theorem unitSecond_square_integral :
    (∫ x : ℝ in (-1)..1, unitSecond x ^ 2) = (196608 / 5005 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitSecond x ^ 2) =
      fun x ↦ 64 + (-1152) * x ^ 2 + 7104 * x ^ 4 + (-18176) * x ^ 6 + 22464 * x ^ 8 +
        (-13440) * x ^ 10 + 3136 * x ^ 12 := by
    funext x
    dsimp [unitSecond, unitFourth]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

private theorem unitFourth_square_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x ^ 2) = (32768 : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFourth x ^ 2) =
      fun x ↦ 20736 + (-414720) * x ^ 2 + 2557440 * x ^ 4 + (-4838400) * x ^ 6 +
        2822400 * x ^ 8 := by
    funext x
    dsimp [unitSecond, unitFourth]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num

private theorem unitFourth_mul_second_integral :
    (∫ x : ℝ in (-1)..1, unitFourth x * unitSecond x) = (-(65536 / 77) : ℝ) := by
  have expand : (fun x : ℝ ↦ unitFourth x * unitSecond x) =
      fun x ↦ (-1152) + 21888 * x ^ 2 + (-134400) * x ^ 4 + 301824 * x ^ 6 + (-282240) * x ^ 8 +
        94080 * x ^ 10 := by
    funext x
    dsimp [unitSecond, unitFourth]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; fun_prop)) only
    [intervalIntegral.integral_add,
      intervalIntegral.integral_const_mul, integral_pow]
  norm_num



private theorem interior_square_scaling (A x : ℝ) (hA : 1 ≤ A) :
    normalizedSecondInterior A x ^ 2 =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) ^ 2 /
        (A * sourceNormalization A) := by
  have factor : normalizedSecondInterior A x =
      (unitFourth (x / A) / A ^ 4 - unitSecond (x / A) / (4 * A ^ 2)) /
        (Real.sqrt A * Real.sqrt (sourceNormalization A)) := by
    dsimp [normalizedSecondInterior, fourthInterior, secondInterior, unitSecond, unitFourth]
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [factor, div_pow, mul_pow, Real.sq_sqrt (by linarith : 0 ≤ A),
    Real.sq_sqrt (source_normalization_pos A hA).le]

private theorem unit_second_derivative_square_integral (A : ℝ) :
    (∫ x : ℝ in (-1)..1, (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      (32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4) := by
  have expand : (fun x : ℝ ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) =
      fun x ↦ unitFourth x ^ 2 / A ^ 8 -
        (unitFourth x * unitSecond x) / (2 * A ^ 6) + unitSecond x ^ 2 / (16 * A ^ 4) := by
    funext x
    simp only [div_eq_mul_inv, mul_inv_rev]
    ring
  rw [expand]
  simp (disch := (apply Continuous.intervalIntegrable; dsimp [unitSecond, unitFourth]; fun_prop)) only
    [intervalIntegral.integral_add, intervalIntegral.integral_sub, intervalIntegral.integral_div,
      unitFourth_square_integral, unitFourth_mul_second_integral, unitSecond_square_integral]
  ring

/-- Exact second-derivative energy retains the original normalization and every scale power. -/
theorem normalizedSecondTest_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, normalizedSecondTest A x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A := by
  have hne : A ≠ 0 := by linarith
  have hfun : (fun x ↦ normalizedSecondTest A x ^ 2) =
      (Icc (-A) A).indicator (fun x ↦ normalizedSecondInterior A x ^ 2) := by
    funext x
    simp only [normalizedSecondTest, indicator_apply]
    split_ifs <;> simp
  rw [hfun, zeroExtension_integral _ (-A) A (by linarith)]
  simp_rw [interior_square_scaling A _ hA]
  rw [intervalIntegral.integral_div, intervalIntegral.integral_comp_div
    (fun x ↦ (unitFourth x / A ^ 4 - unitSecond x / (4 * A ^ 2)) ^ 2) hne]
  simp only [neg_div, div_self hne, smul_eq_mul, unit_second_derivative_square_integral]
  field_simp

/-- Coefficientwise comparison gives the explicit inverse-fourth-power energy bound. -/
theorem normalizedSecondTest_square_integral_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, normalizedSecondTest A x ^ 2) ≤ 5005 / (6 * A ^ 4) := by
  rw [normalizedSecondTest_square_integral A hA]
  apply (div_le_iff₀ (source_normalization_pos A hA)).mpr
  apply sub_nonneg.mp
  unfold sourceNormalization
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring_nf
  positivity

/-- Almost-everywhere identification supplies genuine energy integrability for the ordinary derivative. -/
theorem normalized_second_derivative_square_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun x ↦ deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2)
      volume := by
  apply (normalizedSecondTest_square_integrable A).congr
  filter_upwards [normalized_second_derivative_ae A hA] with x hx
  rw [hx]

/-- The ordinary second derivative has the same exact source-normalized energy. -/
theorem normalized_second_derivative_square_integral (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) =
      ((32768 : ℝ) / A ^ 8 + (65536 / 77 : ℝ) / (2 * A ^ 6) +
        (196608 / 5005 : ℝ) / (16 * A ^ 4)) / sourceNormalization A := by
  rw [← normalizedSecondTest_square_integral A hA]
  apply integral_congr_ae
  filter_upwards [normalized_second_derivative_ae A hA] with x hx
  rw [hx]

/-- The actual ordinary second derivative obeys the explicit energy bound. -/
theorem normalized_second_derivative_square_integral_le (A : ℝ) (hA : 1 ≤ A) :
    (∫ x, deriv (deriv (normalizedTest explicitSecondDerivative A)) x ^ 2) ≤
      5005 / (6 * A ^ 4) := by
  rw [normalized_second_derivative_square_integral A hA,
    ← normalizedSecondTest_square_integral A hA]
  exact normalizedSecondTest_square_integral_le A hA


/-- Both first-derivative endpoint traces vanish; no second-derivative trace is assumed zero. -/
theorem normalizedInteriorDerivative_endpoints (A : ℝ) (hA : A ≠ 0) :
    normalizedInteriorDerivative A (-A) = 0 ∧ normalizedInteriorDerivative A A = 0 := by
  constructor
  · rw [normalizedInteriorDerivative, (thirdInterior_endpoints A hA).1,
      (firstInterior_endpoints A hA).1]
    simp
  · rw [normalizedInteriorDerivative, (thirdInterior_endpoints A hA).2,
      (firstInterior_endpoints A hA).2]
    simp

/-- The weak derivative pairing is genuinely integrable against every continuous test. -/
theorem normalizedSecondTest_pairing_integrable (A : ℝ) (η : ℝ → ℝ) (hη : Continuous η) :
    Integrable (fun x ↦ normalizedSecondTest A x * η x) volume := by
  simp only [normalizedSecondTest, ← Set.indicator_mul_left]
  exact integrable_zeroExtension _ ((normalizedSecondInterior_continuous A).mul hη) (-A) A

/-- The original first-derivative pairing is integrable against each C1 test derivative. -/
theorem normalized_derivative_pairing_integrable (A : ℝ) (hA : 1 ≤ A)
    (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    Integrable (fun x ↦ deriv (normalizedTest explicitSecondDerivative A) x * deriv η x)
      volume := by
  rw [DerivativeEnergy.normalized_derivative_eq_indicator A hA]
  simp only [← Set.indicator_mul_left]
  exact integrable_zeroExtension _
    ((normalizedInteriorDerivative_continuous A).mul hη.continuous_deriv_one) (-A) A

/-- Full-line integration by parts proves the explicit weak derivative without boundary atoms. -/
theorem normalizedSecondTest_weakDerivative (A : ℝ) (hA : 1 ≤ A)
    (η : ℝ → ℝ) (hη : ContDiff ℝ 1 η) :
    (∫ x, deriv (normalizedTest explicitSecondDerivative A) x * deriv η x) =
      -(∫ x, normalizedSecondTest A x * η x) := by
  have ibp := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (a := -A) (b := A)
    (normalizedInteriorDerivative_continuous A).continuousOn hη.continuous.continuousOn
    (fun x _ ↦ normalizedInteriorDerivative_hasDerivAt A x)
    (fun x _ ↦ (hη.differentiable (by norm_num) x).hasDerivAt)
    ((normalizedSecondInterior_continuous A).intervalIntegrable (-A) A)
    (hη.continuous_deriv_one.intervalIntegrable (-A) A)
  rw [(normalizedInteriorDerivative_endpoints A (by linarith)).1,
    (normalizedInteriorDerivative_endpoints A (by linarith)).2] at ibp
  simp only [zero_mul, sub_zero, zero_sub] at ibp
  rw [DerivativeEnergy.normalized_derivative_eq_indicator A hA]
  simp only [normalizedSecondTest, ← Set.indicator_mul_left]
  rw [zeroExtension_integral _ (-A) A (by linarith),
    zeroExtension_integral _ (-A) A (by linarith)]
  exact ibp


/-- The actual first derivative equals its polynomial restricted along the nonexpansive interval projection. -/
theorem normalized_derivative_eq_projected (A : ℝ) (hA : 1 ≤ A) :
    deriv (normalizedTest explicitSecondDerivative A) =
      (Icc (-A) A).domRestrict (normalizedInteriorDerivative A) ∘
        Set.projIcc (-A) A (by linarith : -A ≤ A) := by
  funext x
  rw [DerivativeEnergy.normalized_derivative_eq_indicator A hA]
  dsimp only [Function.comp_apply, Set.domRestrict]
  by_cases hx : x ∈ Icc (-A) A
  · rw [indicator_of_mem hx, Set.projIcc_of_mem _ hx]
  · rw [indicator_of_notMem hx]
    by_cases hxl : x ≤ -A
    · rw [Set.projIcc_of_le_left _ hxl]
      exact (normalizedInteriorDerivative_endpoints A (by linarith)).1.symm
    · have hax : A ≤ x := by
        simp only [mem_Icc, not_and_or] at hx
        rcases hx with hx | hx <;> linarith
      rw [Set.projIcc_of_right_le _ hax]
      exact (normalizedInteriorDerivative_endpoints A (by linarith)).2.symm

/-- Compact polynomial derivative control and the true seam matching give a global Lipschitz constant. -/
theorem normalized_derivative_lipschitz (A : ℝ) (hA : 1 ≤ A) :
    ∃ L : ℝ≥0, LipschitzWith L (deriv (normalizedTest explicitSecondDerivative A)) := by
  obtain ⟨B, hB⟩ := (isCompact_Icc : IsCompact (Icc (-A) A)).exists_bound_of_continuousOn
    (normalizedSecondInterior_continuous A).continuousOn
  have hB0 : 0 ≤ B := (norm_nonneg (normalizedSecondInterior A 0)).trans
    (hB 0 (by constructor <;> linarith))
  let L : ℝ≥0 := ⟨B, hB0⟩
  have hLip : LipschitzOnWith L (normalizedInteriorDerivative A) (Icc (-A) A) := by
    apply (convex_Icc (-A) A).lipschitzOnWith_of_nnnorm_hasDerivWithin_le
      (fun x _ ↦ (normalizedInteriorDerivative_hasDerivAt A x).hasDerivWithinAt)
    intro x hx
    change ‖normalizedSecondInterior A x‖ ≤ B
    exact hB x hx
  have hp : LipschitzWith 1 (Set.projIcc (-A) A (by linarith : -A ≤ A)) :=
    LipschitzWith.projIcc (by linarith)
  refine ⟨L, ?_⟩
  rw [normalized_derivative_eq_projected A hA]
  simpa only [mul_one] using hLip.to_restrict.comp hp

end
end SecondDerivativeEnergyScratch

#print axioms SecondDerivativeEnergyScratch.fourthInterior
#print axioms SecondDerivativeEnergyScratch.normalizedSecondInterior
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest
#print axioms SecondDerivativeEnergyScratch.thirdInterior_hasDerivAt
#print axioms SecondDerivativeEnergyScratch.normalizedInteriorDerivative_hasDerivAt
#print axioms SecondDerivativeEnergyScratch.normalizedSecondInterior_continuous
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_integrable
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_hasDerivAt_ae
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_ae
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integral
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_square_integral_le
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integral
#print axioms SecondDerivativeEnergyScratch.normalized_second_derivative_square_integral_le
#print axioms SecondDerivativeEnergyScratch.normalizedInteriorDerivative_endpoints
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_pairing_integrable
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_pairing_integrable
#print axioms SecondDerivativeEnergyScratch.normalizedSecondTest_weakDerivative
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_eq_projected
#print axioms SecondDerivativeEnergyScratch.normalized_derivative_lipschitz
