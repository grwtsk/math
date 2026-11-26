/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import OAI.LinearAlgebra.SpectralBooks.SpectralFlatLaw
import GRWTSK.Combinatorics.GraphTheory.TransportResourceLowerBounds

/-!
# Spectral chart mean width as a lower bound on calibrated transport

Original local consequence of `SpectralPlacementPrices.flatDiagonalLaw_chart`
at `openai/math` commit `3344da59991ed94f9ba711217b29c1d760badfa6`,
`lean/OAI/LinearAlgebra/SpectralBooks/SpectralFlatLaw.lean`. Uses the actual
spectral placement tensor price and its monotonicity, intersecting
submodularity and two-site distance law. Keep the upstream dependency and
its toolchain in the isolated adaptation environment.

The terminal identities originate inside the chart. The bound applies to
routes through the ambient metric space, since the pricing inequalities used
along the route hold there. The graph model charges every oriented traversal
occurrence in the specified route. Application to an execution requires a
proved transport ledger and the local calibration on its darts.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
audit and independent review: NOT_RUN.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TransportResourceLowerBounds

open OAI.HyperbolicObstruction OAI.LinearAlgebra.SpectralBooks
open scoped Classical

/-- Pull the ambient spectral transport lower bound back to the original
Euclidean terminal set via the actual finite-dimensional chart law. -/
theorem calibrated_chart_meanWidth_le_covering_walkCharge
    {K V : Type*} {X E : Type} [Field K] [MetricSpace X]
    [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
    [MeasurableSpace E] [BorelSpace E]
    (P : SpectralPlacementPrices K X) (hX : CATZero X)
    (hJoint : P.JointlyConvexDiagonal hX)
    {C : Set E} (hC : Convex ℝ C) (chart : E → X)
    (hChart : ∀ x ∈ C, ∀ y ∈ C, dist (chart x) (chart y) = dist x y)
    (S : Finset E) (hS : S.Nonempty) (hSC : (S : Set E) ⊆ C)
    {G : SimpleGraph V} (site : V → X) (scale : ℝ) (hScale : 0 ≤ scale)
    (charge : G.Dart → ℝ)
    (hDart : ∀ d : G.Dart, scale * dist (site d.fst) (site d.snd) ≤ charge d)
    {a b : V} (walk : G.Walk a b) (hCover : S.image chart ⊆ walkSites walk site) :
    scale * meanWidth S hS ≤ walkCharge walk charge := by
  rw [← P.flatDiagonalLaw_chart hX hJoint hC hChart S hS hSC]
  exact calibrated_sitePrice_le_covering_walkCharge site P.diagonal scale hScale
    P.diagonal_mono P.intersectingSubmodular (fun u v => P.diagonal_pair (site u) (site v))
    charge hDart walk (S.image chart) hCover

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TransportResourceLowerBounds
