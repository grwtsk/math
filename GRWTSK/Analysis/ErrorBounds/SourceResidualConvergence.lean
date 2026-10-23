import GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution

/-! Conditional finite-channel convergence for the status manuscript's S4.
The source paths, strict weighted column bound, and vanishing net forcing remain
independent premises. No arithmetic source or changing-channel comparison is supplied. -/
namespace GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution

open GRWTSK.Analysis.ErrorBounds
open GRWTSK.Analysis.ErrorBounds.ContractingResidualBudget

/-- Exact source-derived evolution now yields convergence of its weighted residual. -/
theorem source_residual_vanishes {ι : Type*} [Fintype ι]
    (weight : ι → ℝ) (gain : ℕ → ι → ι → ℝ)
    (source model : ℕ → ι → ℝ) (r : ℝ)
    (weightsNonnegative : ∀ i, 0 ≤ weight i)
    (rateNonnegative : 0 ≤ r) (rateStrict : r < 1)
    (columnBound : ∀ n j, (∑ i, weight i * |gain n i j|) ≤ r * weight j)
    (netForcingVanishes : VanishesAtInfinity
      (fun n => channelMass weight (residualForcing gain source model n))) :
    VanishesAtInfinity (fun n => channelMass weight (sourceResidual source model n)) := by
  exact variable_budget_vanishes _ _ r rateNonnegative rateStrict
    (fun n => channelMass_nonnegative weight _ weightsNonnegative)
    (source_residual_budget_step weight gain source model r weightsNonnegative columnBound)
    netForcingVanishes
end GRWTSK.Analysis.ErrorBounds.SourceResidualEvolution
