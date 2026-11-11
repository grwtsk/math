# chartDivisor_order

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chartDivisor_order` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

At every point in the chart domain the actual source analytic order equals the chartDivisor natural multiplicity, coerced into ENat.

Proof and consumer: Apply Chart.source_order; chartDivisor uses the same normalized weightAt. This discharges the previously unsupplied weight-to-order bridge conditional on an exact source chart. Arithmetic construction of that chart remains open.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
