/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CompactProfileBoundaryCounterexamples
import GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EvenLinearDefect
import GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy
import GRWTSK.Analysis.RealAnalysis.Integration.TranslationSeamLowerBound

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Proposed sharpness of the fourth correlation derivative

This adapts the actual closed second representative, its
proved L2 energy and positive interior trace to the full translation-energy
identity. The three generic bridges require separate completed acceptance.
No arithmetic cancellation, polarity sector or operator identification follows.
-/

namespace GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction

open MeasureTheory Set
open scoped Topology ContDiff
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.RiemannHypothesis
open BranchSecondDerivativeEnergy BranchCorrelationHigher
open GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.EvenLinearDefect
open GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy
open GRWTSK.Analysis.RealAnalysis.Integration.TranslationSeamLowerBound

noncomputable section

theorem second_representative_memLp (A : ℝ) : MemLp (secondRepresentative A) 2 volume := by
  exact (memLp_two_iff_integrable_sq (secondRepresentative_integrable A).aestronglyMeasurable).2
    (secondRepresentative_square_integrable A)

theorem normalized_second_interior_continuous (A : ℝ) :
    Continuous (normalizedSecondInterior A) := by
  change Continuous (fun x : ℝ ↦ normalizedSecondInterior A x)
  dsimp [normalizedSecondInterior, fourthInterior, unitFourth,
    GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.secondInterior]
  fun_prop

theorem actual_second_autocorrelation_not_differentiable_at_zero {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ (autocorrelation (secondRepresentative A)) 0 := by
  have square := second_representative_memLp A
  have tracePositive := SourceSeamObstruction.normalized_second_interior_right_pos hA
  have interior : ∀ y : ℝ, -A < y → y < A →
      secondRepresentative A y = normalizedSecondInterior A y := by
    intro y left right
    change ((Icc (-A) A).indicator (normalizedSecondInterior A)) y = _
    rw [indicator_of_mem (show y ∈ Icc (-A) A from ⟨left.le, right.le⟩)]
  have outside : ∀ x : ℝ, A < x → secondRepresentative A x = 0 := by
    intro x beyond
    apply indicator_of_notMem
    intro retained
    exact (not_le_of_gt beyond) retained.2
  obtain ⟨ε, positiveε, lower⟩ := positive_trace_eventual_seam_lower_bound
    (by linarith : -A < A) (normalized_second_interior_continuous A).continuousAt
    tracePositive interior outside
    (fun h ↦ translated_difference_square_integrable square h)
  have coefficientPositive : 0 < (normalizedSecondInterior A A / 2) ^ 2 / 2 := by
    exact div_pos (pow_pos (div_pos tracePositive (by norm_num)) 2) (by norm_num)
  apply not_differentiable_at_zero_of_linear_defect (even _) coefficientPositive
  have neighborhood : ∀ᶠ h in 𝓝 (0 : ℝ), h < ε := Iio_mem_nhds positiveε
  have rightNeighborhood : ∀ᶠ h in 𝓝[>] (0 : ℝ), h < ε :=
    neighborhood.filter_mono nhdsWithin_le_nhds
  filter_upwards [rightNeighborhood, self_mem_nhdsWithin] with h short positive
  rw [defect_eq_half_translation_energy square h]
  have seam := lower h positive short
  nlinarith

theorem fourth_correlation_eq_autocorrelation {A : ℝ} (hA : 0 < A) :
    deriv (deriv (deriv (deriv (ArithmeticSupplier.correlation A)))) =
      autocorrelation (secondRepresentative A) := by
  funext t
  exact SourceHigherRegularity.correlation_fourth_deriv_eq_integral hA t

theorem fourth_correlation_not_differentiable_at_zero {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ
      (deriv (deriv (deriv (deriv (ArithmeticSupplier.correlation A))))) 0 := by
  rw [fourth_correlation_eq_autocorrelation hA]
  exact actual_second_autocorrelation_not_differentiable_at_zero hA

theorem correlation_not_contDiff_five {A : ℝ} (hA : 0 < A) :
    ¬ ContDiff ℝ 5 (ArithmeticSupplier.correlation A) := by
  intro five
  have fourth : ContDiff ℝ 1
      (deriv (deriv (deriv (deriv (ArithmeticSupplier.correlation A))))) :=
    five.deriv'.deriv'.deriv'.deriv'
  exact fourth_correlation_not_differentiable_at_zero hA
    (fourth.differentiable one_ne_zero 0)

end

end GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction
