# ResidualBall.exists_inverse_bound

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.FunctionalAnalysis.ResidualBallCover.ResidualBall.exists_inverse_bound` in [ResidualBallCover.lean](../ResidualBallCover.lean).

Statement: every point in a valid cell has an actual two-sided inverse bounded by norm(preconditioner)/(1-leftBudget). Complete normed ring and NormOneClass are explicit.

Argument: reuse `TwoSidedResidual.exists_inverse_bound_of_approximation` with the whole-ball error bound. Consumer: a uniform inverse bound on finite parameter covers, not merely eigenvalue location. Source pins, exact digest, full Neumann argument, comparison and verification specification: [context](context.md). Local standard consequence; no novelty asserted. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
