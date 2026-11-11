# chart_reality_of_checked_zeroTolerance

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chart_reality_of_checked_zeroTolerance` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

Assume an exact source chart with conjugation-closed support, a sound rational packet enclosing its full Hermite matrix, an accepted existing intervalCheck certificate, and exactly zero tolerance. Every source zero in the chart domain is real.

Proof and consumer: Reuse Program 6 allReal_of_checked_zeroTolerance and the proved chartDivisor_identifies. This is a finite certificate consumer; the sound matrix enclosure and exact source factorization remain mathematical premises. Repeated-root singularity is allowed, with no positive gap or division by a vector norm.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
