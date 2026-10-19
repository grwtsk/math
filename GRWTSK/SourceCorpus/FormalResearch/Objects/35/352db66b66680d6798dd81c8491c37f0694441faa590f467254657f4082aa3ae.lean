import SourceSquarefreeLedger

/-!
Apply the new actual source ledger through the original direct quadratic
consumer and original finite prefix at the same radius. This removes the
inherited smooth-defect transition cost from the exported conditional cap.
Direction: grwtsk contributors. Native source composition: Codex root.
All underlying source, finite-prefix and exact quadratic proofs are reused.
The uniform full signed readout is still a supplied mathematical hypothesis.
-/
set_option autoImplicit false
noncomputable section
namespace RH16SquarefreeDirectEstimate
open RH16SquarefreeLedger RH16ExactOverlapConsumer
open FormalResearch.RiemannHypothesis
open SourcePairing SourceSamplingLedger
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization EstimateTailReduction

/-- Exact original all-real lower constant with the unchanged strict prefix. -/
theorem all_real_lower_of_readout_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
        (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
        (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q) <=
          sourceQuadraticValue explicitSecondDerivative A := by
  intro A hA
  by_cases hQA : Q <= A
  · exact (min_le_right _ _).trans (quadratic_lower_of_residual_upper _ A hA
      (residual_tail_of_readout_squarefree D rho Q hQ hreadout A hQA))
  · have hprefix := prime_contribution_le_finite_budget A Q hA
      (le_of_lt (lt_of_not_ge hQA))
    have harch := SourceCorrectionEstimate.actual_archimedean_lower A hA
    apply (min_le_left _ _).trans
    unfold sourceQuadraticValue
    linarith

/-- One fixed negative-defect cap on the SAME actual source family. -/
theorem actual_negative_defect_cap_squarefree (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    forall A : Real, 1 <= A ->
      max 0 (-sourceQuadraticValue explicitSecondDerivative A) <=
        max 0 (-min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
          (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
          (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q)) := by
  intro A hA
  exact max_le_max le_rfl (neg_le_neg
    (all_real_lower_of_readout_squarefree D rho Q hQ hreadout A hA))

/-- Literal #16 estimate through direct recovery, with no intermediate cost. -/
theorem estimate_of_readout_squarefree_direct (D rho Q : Real) (hQ : 91 <= Q)
    (hreadout : forall A : Real, Q <= A ->
      VaughanOperatorReview.covarianceOperatorValue A / 2 - independentMainTerm A <= D + rho) :
    CorrelationAssembly.EstimateObligation := by
  refine ⟨min (archimedeanMultiplier 0 - 2 * Finset.sum (primeIndices Q)
    (fun n => abs (ArithmeticFunction.vonMangoldt n / Real.sqrt n)))
    (archimedeanMultiplier 0 - 2 * squarefreeResidualBudget D rho Q), ?_⟩
  exact all_real_lower_of_readout_squarefree D rho Q hQ hreadout

end RH16SquarefreeDirectEstimate
