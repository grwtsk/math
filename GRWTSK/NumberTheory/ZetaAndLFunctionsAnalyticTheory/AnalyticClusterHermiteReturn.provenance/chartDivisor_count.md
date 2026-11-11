# chartDivisor_count

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chartDivisor_count` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

The existing finite-divisor totalCount equals the sum of actual analyticOrderNatAt f over the chart roots.

Proof and consumer: Expand the count and replace each weight using Chart.source_orderNat at its proved domain membership. Repeated roots contribute their entire orders, not one per location. A supplied arbitrary weight list cannot use this theorem without a valid chart.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
