# exists_finite_closed_cover

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.FunctionalAnalysis.ResidualBallCover.exists_finite_closed_cover` in [ResidualBallCover.lean](../ResidualBallCover.lean).

Statement: an already supplied open-ball cover of a compact S by valid cells has finitely many corresponding closed-ball cells covering S. The parameter space is pseudometric.

Argument: apply pinned Mathlib `IsCompact.elim_finite_subcover` and enlarge each selected open ball to its closed ball. Consumer: finite certificate coverage. Compactness does not manufacture valid cells, give effective bounds, or establish a search halts. Source pin, exact digest, primary argument and verification specification: [context](context.md). Standard compactness adapter; no novelty asserted. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
