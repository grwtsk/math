import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateWeightedBetaBlockBudget

set_option autoImplicit false

open MeasureTheory Set
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateWeightedBetaKernel EstimateWeightedBetaAbel EstimateWeightedBetaInventory
open EstimateWeightedBetaVariation EstimateWeightedBetaScale EstimateWeightedBetaBlockBudget
open EstimateVaughanSource EstimateMertensResidual EstimateTypeTwoLogBlocks
open EstimateBetaSourceRecombination

example (A x : ℝ) (m : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hx : 0 < x) :
    deriv (rowWeight A m) x = correlationSlope A (Real.log ((m : ℝ)*x)) /
      (x*Real.sqrt ((m : ℝ)*x)) := rowWeight_deriv A x m (by linarith) hm hx

example (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) :
    weightedCenteredInterval A m U L H =
      -rowWeight A m (H : ℝ) * discrepancyPrefix U L (H : ℝ) +
        ∫ x in Ioc (L : ℝ) (H : ℝ), deriv (rowWeight A m) x * discrepancyPrefix U L x :=
  weightedCenteredInterval_eq_abel A m U L H hA hm hU hUL hLH

example (A : ℝ) (m j : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) :
    innerInventory A m j =
      (Finset.Ioc (blockLower A j) (blockUpper A m j)).filter (fun n ↦ n ≠ m) :=
  innerInventory_eq_filter_interval A m j hA hm

example (A : ℝ) (m U L H : ℕ) (hA : 1 ≤ A) (hm : 1 ≤ m) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) :
    |weightedCenteredInterval A m U L H| ≤
      betaPrefixBudget U / Real.sqrt (m : ℝ) * sourceVariationCost A m L H :=
  weightedCenteredInterval_abs_le_scaled_variation A m U L H hA hm hU hUL hLH

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, abelizedCenteredBlock A c) + betaMainLedger A :=
  mertensResidual_eq_abelized_blocks_add_betaMain A hA

example (A K : ℝ) (hA : 1 ≤ A) (hK : 1 ≤ K)
    (hSlope : ∀ t : ℝ, 0 ≤ t → |correlationSlope A t| ≤ K) :
    mertensResidual A ≤ betaMainLedger A +
      ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  mertensResidual_le_betaMain_add_budget A K hA hK hSlope

example (A : ℝ) (hA : 64 ≤ A) : unbalancedCell A ∈ logCells A :=
  unbalancedCell_mem_logCells A hA

example (A K : ℝ) (hA : 64 ≤ A) (hK : 1 ≤ K) :
    Real.exp (A/4-1/2) ≤ ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  summed_budget_ge A K hA hK

example (K D R : ℝ) (hK : 1 ≤ K) :
    ∃ A : ℝ, R ≤ A ∧ 64 ≤ A ∧
      D < ∑ c ∈ logCells A, deterministicBlockBudget A K c :=
  summed_budget_unbounded K D R hK
