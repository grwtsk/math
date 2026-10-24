# Complete source: GRWTSK.Analysis.ErrorBounds.SourceResidualConvergence

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8de6e01f7579920f28f4d21fefaaaa6f824cda96` · SHA-256 `91a7cee6202dad467a2f8536b2f27665d516f877f68be61e054429a97175d2c6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
