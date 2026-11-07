/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import R2ObservedGramChunked
import R2RectPriceResult
import R2RemoteComplete
/-!
# Checked integer budgets for the radius-two residual

These isolated exact finite decisions concern the frozen observed Gram
on its `2^-154` grid, the complete squared-radius numerator, and the
remote endpoint matrix on its `2^-64` grid. The consumer returns these
budgets to the real literal residual. The decisions alone are finite
arithmetic; the source-entry and complete-tail proofs have separate
returns. The symmetry check keeps both endpoint orientations.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 10000000
namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoResidualIntegerBounds

theorem gramRows : ∀ i : Fin 65,
    5 * (∑ j : Fin 65, |R2ObservedGram.target i j|) ≤ 2 * (2:ℤ)^154 := by
  decide +kernel

theorem remoteSym : ∀ i j : Fin 65,
    R2RemoteEntries.rawEntry i j = R2RemoteEntries.rawEntry j i := by
  decide +kernel

theorem priceBudget :
    (30000:ℤ) * 717340738848873355330903138685249130240628 ≤ 2^154 := by
  decide +kernel

theorem remoteBudget : (4:ℤ) * 4388950584943997659 ≤ 2^64 := by
  decide +kernel

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoResidualIntegerBounds
