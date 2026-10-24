# Complete source: GRWTSK.Analysis.Convolution.CompactProfileSupportEdge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1e12c72887d41dd4b2cbebed5db8705ba61d5173` · SHA-256 `952300948f3aea040b250a5f0ccb31286d8d5e6bab9585826b554824bc6b1109`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction
import GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability
import GRWTSK.Analysis.Convolution.CompactSupportContact

/-!
Current source verification is recorded in
`evidence/Analysis/InnerProductSpace/CausalRealization/formalization-admission.json`.
Original draft annotations and failed checks remain in the preserved evidence archive.

# Actual second-representative correlation at its support edge

Both literal closed endpoint traces are positive. The actual
fourth correlation derivative vanishes at and beyond its support contact and
has a positive linear lower bound from within the support. This is an analytic
edge obstruction, with no literal kernel derivative or arithmetic claim yet.
-/

namespace GRWTSK.Analysis.Convolution.CompactProfileSupportEdge

open MeasureTheory Set
open scoped Topology
open GRWTSK.ProofHorizon.CorkscrewChamberCap
open GRWTSK.RiemannHypothesis
open BranchSecondDerivativeEnergy BranchCorrelationHigher
open GRWTSK.Analysis.Convolution.CompactProfileFifthDerivativeObstruction
open GRWTSK.Analysis.Convolution.AutocorrelationTranslationEnergy
open GRWTSK.Analysis.Calculus.SupportEdgeDifferentiability
open GRWTSK.Analysis.Convolution.CompactSupportContact

noncomputable section

theorem normalized_second_interior_even (A : ℝ) :
    Function.Even (normalizedSecondInterior A) := by
  intro x
  dsimp [normalizedSecondInterior, fourthInterior, unitFourth,
    GRWTSK.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Realization.secondInterior]
  ring

theorem normalized_second_interior_left_pos {A : ℝ} (hA : 0 < A) :
    0 < normalizedSecondInterior A (-A) := by
  rw [normalized_second_interior_even A A]
  exact SourceSeamObstruction.normalized_second_interior_right_pos hA

theorem actual_second_autocorrelation_zero_ge_two_scale (A t : ℝ) (beyond : 2 * A ≤ t) :
    autocorrelation (secondRepresentative A) t = 0 := by
  change (∫ x : ℝ, closedProfile (-A) A (normalizedSecondInterior A) x *
    closedProfile (-A) A (normalizedSecondInterior A) (x - t)) = 0
  exact correlation_zero_of_shift_ge_width (-A) A t (normalizedSecondInterior A)
    (by linarith)

theorem actual_second_autocorrelation_left_contact {A : ℝ} (hA : 0 < A) :
    ∃ ε : ℝ, 0 < ε ∧ ∀ h : ℝ, 0 < h → h < ε →
      (normalizedSecondInterior A A / 2) ^ 2 * h ≤
        autocorrelation (secondRepresentative A) (2 * A - h) := by
  have continuous := normalized_second_interior_continuous A
  obtain ⟨ε, positiveε, lower⟩ := positive_traces_eventual_overlap_lower_bound
    (by linarith : -A < A) (continuous.continuousAt (x := -A))
    (continuous.continuousAt (x := A)) (normalized_second_interior_left_pos hA)
    (SourceSeamObstruction.normalized_second_interior_right_pos hA)
    (fun t ↦ translated_product_integrable (second_representative_memLp A) t)
  refine ⟨ε, positiveε, ?_⟩
  intro h positive short
  have result := lower h positive short
  rw [normalized_second_interior_even A A, min_self] at result
  have shift : A - -A - h = 2 * A - h := by ring
  rw [shift] at result
  exact result

theorem actual_second_autocorrelation_not_differentiable_at_two_scale {A : ℝ}
    (hA : 0 < A) :
    ¬ DifferentiableAt ℝ (autocorrelation (secondRepresentative A)) (2 * A) := by
  apply not_differentiable_of_left_linear_contact
    (c := (normalizedSecondInterior A A / 2) ^ 2)
    (pow_pos (div_pos (SourceSeamObstruction.normalized_second_interior_right_pos hA)
      (by norm_num)) 2)
    (fun t beyond ↦ actual_second_autocorrelation_zero_ge_two_scale A t beyond)
  exact actual_second_autocorrelation_left_contact hA

theorem fourth_correlation_not_differentiable_at_two_scale {A : ℝ} (hA : 0 < A) :
    ¬ DifferentiableAt ℝ
      (deriv (deriv (deriv (deriv (ArithmeticSupplier.correlation A))))) (2 * A) := by
  rw [fourth_correlation_eq_autocorrelation hA]
  exact actual_second_autocorrelation_not_differentiable_at_two_scale hA

end

end GRWTSK.Analysis.Convolution.CompactProfileSupportEdge
```
