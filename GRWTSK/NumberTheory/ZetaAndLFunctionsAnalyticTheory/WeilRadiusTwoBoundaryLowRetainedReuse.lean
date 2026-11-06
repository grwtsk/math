/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoBoundaryLowObservations

/-!
# Reusing the retained grid in low radius-two boundary observations

The arctangent and half-summand grids do not depend on the retained
partial-sum grid. A checked physical residual row can therefore supply
the retained endpoints directly. The 48-bit provider is a specialization.

Local attribution is to grwtsk contributors.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowRetainedReuse

open GRWTSK.Algebra.LinearAlgebra.RationalRealBounds
open RadiusTwoBoundaryLowBounds RadiusTwoBoundaryLowObservations
open RadiusTwoGammaPoleObservations OddBoundaryObservation OddBoundarySignalBounds

/-- Complete 49-bit interval from supplied retained endpoints. -/
def scaledLowBoundaryBoundsUsing (n : ℕ) (retained : Bounds) : Bounds :=
  round 49 (scaledLowBoundsFrom n retained (scaledArctanBounds n) (scaledHalfKernelBounds n))

/-- Direct soundness from a certified retained interval. -/
theorem scaledLowBoundaryBoundsUsing_sound {n : ℕ} (hn : 0 < n) (hn' : n ≤ 1023)
    {retained : Bounds} (hRetained : Encloses retained (boundarySignalPartial 2 n 1024)) :
    Encloses (scaledLowBoundaryBoundsUsing n retained) ((n:ℝ)*boundarySignal 2 n) :=
  round_sound 49 (scaledLowBoundsFrom_sound hn hn' hRetained
    (scaledArctanBounds_sound hn') (scaledHalfKernelBounds_sound n))

/-- Soundness from the endpoint equality checked by the physical residual replay. -/
theorem scaledLowBoundaryBoundsUsing_checkedPartial {bits n : ℕ}
    (hn : 0 < n) (hn' : n ≤ 1023) {retained : Bounds}
    (hRetained : boundaryPartialBounds bits n 1024 = retained) :
    Encloses (scaledLowBoundaryBoundsUsing n retained) ((n:ℝ)*boundarySignal 2 n) := by
  apply scaledLowBoundaryBoundsUsing_sound hn hn'
  rw [← hRetained]
  exact boundaryPartialBounds_sound bits n 1024

/-- Evaluator with an independently chosen retained grid. -/
def scaledLowBoundaryBoundsAtGrid (bits n : ℕ) : Bounds :=
  scaledLowBoundaryBoundsUsing n (boundaryPartialBoundsGrid bits n 1024)

/-- All retained grids use the same literal source soundness. -/
theorem scaledLowBoundaryBoundsAtGrid_sound (bits : ℕ) {n : ℕ}
    (hn : 0 < n) (hn' : n ≤ 1023) :
    Encloses (scaledLowBoundaryBoundsAtGrid bits n) ((n:ℝ)*boundarySignal 2 n) :=
  scaledLowBoundaryBoundsUsing_sound hn hn' (boundaryPartialBoundsGrid_sound bits n 1024)

theorem scaledLowBoundaryBoundsAtGrid_48 (n : ℕ) :
    scaledLowBoundaryBoundsAtGrid 48 n = scaledLowBoundaryBounds n := rfl

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoBoundaryLowRetainedReuse
