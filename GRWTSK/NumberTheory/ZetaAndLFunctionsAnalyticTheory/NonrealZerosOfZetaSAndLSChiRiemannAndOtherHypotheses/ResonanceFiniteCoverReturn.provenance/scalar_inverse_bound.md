# scalar_inverse_bound

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.ResonanceDeterminantReturn.scalar_inverse_bound` in [ResonanceFiniteCoverReturn.lean](../ResonanceFiniteCoverReturn.lean).

Statement: for every complex z with norm(z)<=1/4, 1-z has a two-sided inverse of norm at most 4/3.

Argument: the explicit scalarResidualBall has center zero, radius 1/4, approximation/preconditioner one, zero center error and slope one. Both total defects are 1/4. Apply the general inverse bound. Consumer: exact positive control exercising the full cell interface. This is not an arithmetic example or an executed floating-point experiment. Exact source pins/digest, argument and verification specification: [context](../../../../FunctionalAnalysis/ResidualBallCover.provenance/context.md). Elaboration, kernel replay, axiom audit and independent review NOT_RUN; no novelty asserted.
