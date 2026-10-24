/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactProfileNormalization
import GRWTSK.Analysis.TestFunctions.PolynomialBumpNormalization
import GRWTSK.Analysis.Convolution.PolynomialBumpRegularity

/-!
# Exact specialization of general normalization to the immutable source bump

The actual `SourcePairing.sourceBump` is zero-extended at the two closed support
endpoints. Its ordinary first and second derivatives are proved by matching the
interior polynomial and derivative traces to zero on the interval frontier.
Thus the general C² compact-support normalization theorem applies to the
actual source function, without assuming ordinary and weak derivatives agree.

The three full-line square energies are exact rational constants. Substituting
them recovers the existing `SourcePairing.sourceNormalization`, with all three
positive terms, for every positive scale. The actual differential operator also
agrees with the existing test built from `Realization.explicitSecondDerivative`.
No quantitative Gevrey estimate, arithmetic comparison, or RH claim is made.

AI attribution: developed with OpenAI Codex; the proof terms are checked by Lean.
-/

namespace GRWTSK.RiemannHypothesis.GevreyPolynomial

open MeasureTheory Set
open SourcePairing
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.CorrelationRegularity
open GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BridgeNormalization

noncomputable section

/-- The zero-extended ordinary first derivative of the scaled source polynomial. -/
def firstDerivative (A : ℝ) : ℝ → ℝ :=
  (Icc (-A) A).indicator (firstInterior A)

/-- The polynomial and its first derivative both match zero at the interval frontier. -/
theorem bumpInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    bumpInterior A x = 0 ∧ firstInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(bumpInterior_endpoints A hA.ne').1, (bumpInterior_endpoints A hA.ne').2,
      (firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2]

/-- The first and second derivative traces both match zero at the interval frontier. -/
theorem firstInterior_frontier {A : ℝ} (hA : 0 < A) (x : ℝ)
    (hx : x ∈ frontier (Icc (-A) A)) :
    firstInterior A x = 0 ∧ secondInterior A x = 0 := by
  rw [frontier_Icc (by linarith : -A ≤ A), mem_insert_iff, mem_singleton_iff] at hx
  rcases hx with hx | hx <;> rw [hx] <;>
    simp [(firstInterior_endpoints A hA.ne').1, (firstInterior_endpoints A hA.ne').2,
      (secondInterior_endpoints A hA.ne').1, (secondInterior_endpoints A hA.ne').2]

/-- Ordinary differentiation of the actual scaled source bump, including both seams. -/
theorem scaledBump_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (scaledBump A) (firstDerivative A x) x := by
  rw [scaledBump_eq_indicator A hA]
  exact indicator_hasDerivAt (bumpInterior_hasDerivAt A) (bumpInterior_frontier hA) x

/-- The zero-extended first derivative has the explicit ordinary second derivative. -/
theorem firstDerivative_hasDerivAt {A : ℝ} (hA : 0 < A) (x : ℝ) :
    HasDerivAt (firstDerivative A) (explicitSecondDerivative A x) x :=
  indicator_hasDerivAt (firstInterior_hasDerivAt A) (firstInterior_frontier hA) x

/-- The actual first derivative is the zero extension of the interior first derivative. -/
theorem deriv_scaledBump {A : ℝ} (hA : 0 < A) :
    deriv (scaledBump A) = firstDerivative A :=
  funext fun x ↦ (scaledBump_hasDerivAt hA x).deriv

/-- The actual ordinary second derivative equals the independently realized weak derivative. -/
theorem second_scaledBump {A : ℝ} (hA : 0 < A) :
    deriv (deriv (scaledBump A)) = explicitSecondDerivative A := by
  rw [deriv_scaledBump hA]
  exact funext fun x ↦ (firstDerivative_hasDerivAt hA x).deriv

/-- Both zero-extension seams preserve global C² regularity at every positive scale. -/
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

/-- Unit scaling is exactly the immutable source function. -/
theorem sourceBump_eq_scaled_unit : sourceBump = scaledBump 1 := by
  funext x
  simp [scaledBump]

/-- The general scaling convention agrees exactly with the immutable source amplitude. -/
theorem scaledProfile_sourceBump_eq (A : ℝ) :
    GevreyNormalization.scaledProfile sourceBump A = scaledBump A := by
  rfl

/-- The actual source bump is C², including the two support endpoints. -/
theorem sourceBump_contDiff : ContDiff ℝ 2 sourceBump := by
  rw [sourceBump_eq_scaled_unit]
  exact scaledBump_contDiff (by norm_num)

/-- The actual source bump has compact support in the closed unit interval. -/
theorem sourceBump_hasCompactSupport : HasCompactSupport sourceBump := by
  apply HasCompactSupport.of_support_subset_isCompact (isCompact_Icc (a := (-1 : ℝ)) (b := 1))
  intro x hx
  by_contra hm
  exact hx (by simp [sourceBump, hm])

/-- The source bump equals one at zero and is nontrivial. -/
theorem sourceBump_nonzero : ∃ x, sourceBump x ≠ 0 := by
  refine ⟨0, ?_⟩
  norm_num [sourceBump]

/-- The actual source bytes are the zero extension of the recovered unit polynomial. -/
theorem sourceBump_eq_indicator : sourceBump = (Icc (-1) 1).indicator unitBump := by
  funext x
  simp [sourceBump, unitBump, indicator_apply]

/-- The actual second derivative is the zero extension of the recovered second polynomial. -/
theorem sourceBump_second_eq_indicator :
    deriv (deriv sourceBump) = (Icc (-1) 1).indicator unitSecond := by
  rw [sourceBump_eq_scaled_unit, second_scaledBump (by norm_num)]
  funext x
  simp [explicitSecondDerivative, unitSecond, secondInterior, indicator_apply]

/-- The first exact source constant is the full-line square energy of the actual bump. -/
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

/-- The third exact source constant is the full-line square energy of the actual
second derivative. -/
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

/-- The mixed full-line integral retains its negative sign before integration by parts. -/
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

/-- The second exact source constant is the square energy of the actual ordinary
first derivative. -/
theorem sourceBump_deriv_square_integral :
    (∫ x : ℝ, (deriv sourceBump x) ^ 2) = (131072 / 45045 : ℝ) := by
  have hi := GevreyNormalization.integral_second_mul_profile
    sourceBump_contDiff sourceBump_hasCompactSupport
  rw [sourceBump_second_mul_integral] at hi
  linarith

/-- General normalization specializes exactly to the prescribed source normalization
for all positive scales. -/
theorem normalization_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.normalization sourceBump A = sourceNormalization A := by
  rw [GevreyNormalization.normalization_eq sourceBump_contDiff sourceBump_hasCompactSupport hA,
    sourceBump_second_square_integral, sourceBump_deriv_square_integral,
    sourceBump_square_integral]
  unfold sourceNormalization
  ring

/-- The actual differential operator equals the existing source test at every positive scale. -/
theorem dilationOperator_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.dilationOperator sourceBump A =
      dilationTest explicitSecondDerivative A := by
  unfold GevreyNormalization.dilationOperator GevreyNormalization.scaledProfile dilationTest
  change (fun x ↦ deriv (deriv (scaledBump A)) x - scaledBump A x / 4) = _
  rw [second_scaledBump hA]

/-- The two unit-normalized operators agree using the same actual source normalization. -/
theorem normalizedOperator_sourceBump_eq {A : ℝ} (hA : 0 < A) :
    GevreyNormalization.normalizedOperator sourceBump A =
      normalizedTest explicitSecondDerivative A := by
  funext x
  unfold GevreyNormalization.normalizedOperator normalizedTest
  rw [normalization_sourceBump_eq hA, dilationOperator_sourceBump_eq hA]

end

end GRWTSK.RiemannHypothesis.GevreyPolynomial
