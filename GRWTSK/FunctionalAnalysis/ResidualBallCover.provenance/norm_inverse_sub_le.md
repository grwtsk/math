# norm_inverse_sub_le

Local attribution: grwtsk contributors.

Exact declaration: `GRWTSK.FunctionalAnalysis.ResidualBallCover.norm_inverse_sub_le` in [ResidualBallCover.lean](../ResidualBallCover.lean).

Statement: if u*p=1 and q*v=1, norm(u-v)<=norm(u)*norm(p-q)*norm(v), for the declared submultiplicative ring norm.

Argument: apply submultiplicativity twice to the ordered inverse-difference identity, then norm(q-p)=norm(p-q). Consumer: quantitative inverse comparison after actual inverse bounds are supplied. Eigenvalue agreement alone does not supply these hypotheses. Source pins, exact digest, primary argument, comparison and verification specification: [context](context.md). No novelty asserted. Elaboration, kernel replay, axiom audit and independent review NOT_RUN.
