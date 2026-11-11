# ResidualBall.isUnit

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.FunctionalAnalysis.ResidualBallCover.ResidualBall.isUnit` in [ResidualBallCover.lean](../ResidualBallCover.lean).

Statement: the true operator is a unit at every point of a valid closed-ball cell, in a complete normed ring. Both strict residual margins are retained.

Argument: apply the existing `TwoSidedResidual.isUnit_of_approximation` to `ResidualBall.error_bound`. Consumer: continuum exclusion and determinant return. A one-sided inverse is not upgraded without the second budget. Source pins, exact digest, primary argument, comparison and verification specification: [context](context.md). Local standard consequence; no novelty asserted. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
