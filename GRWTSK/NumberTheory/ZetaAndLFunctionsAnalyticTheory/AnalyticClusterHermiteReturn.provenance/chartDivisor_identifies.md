# chartDivisor_identifies

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chartDivisor_identifies` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

The chartDivisor has exactly the zeros of the original source on the chart domain, using the existing FiniteDivisor.IdentifiesZeros predicate.

Proof and consumer: Listed roots lie in the domain by the chart record and vanish by Chart.zero_iff. Every source zero in the domain is listed by the converse. Multiplicity equality is a separate theorem, not built into the support predicate.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
