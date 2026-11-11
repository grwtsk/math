# ResidualBall.error_bound

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.FunctionalAnalysis.ResidualBallCover.ResidualBall.error_bound` in [ResidualBallCover.lean](../ResidualBallCover.lean).

Statement: for every point in the cell's closed ball, the true operator differs from the center approximation by at most error+slope*radius. Hypotheses are the cell's center enclosure, whole-ball variation bound, nonnegative slope, and membership.

Argument: split a(x)-a0 through a(center), apply the triangle inequality, and multiply dist(x,center)<=radius by the nonnegative slope. Consumer: both residual budgets. Center samples alone do not supply the variation bound. Source pins, exact digest, complete argument, prior-art comparison and verification specification: [context](context.md). Local standard consequence; no novelty asserted. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
