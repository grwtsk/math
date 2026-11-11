# chart_nonreal_of_negativeCheck

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chart_nonreal_of_negativeCheck` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

Assume an exact source chart and a sound enclosing rational packet with an accepted negativeCheck on a rational vector. Then the actual source has a nonreal zero in the chart, with positive natural multiplicity proved equal to its analytic order.

Proof and consumer: Use Program 6 source_nonreal_of_negativeCheck with exact chart support, then attach chartDivisor_order and the divisor positivity proof. Conjugation closure is unnecessary in this negative direction. No concrete arithmetic packet or off-critical arithmetic zero is produced by this conditional theorem.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
