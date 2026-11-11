# chart_hermite_iff_source_reality

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.chart_hermite_iff_source_reality` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

For an exact chart whose finite support is closed under conjugation, nonnegativity of its full multiplicity-sized Hermite matrix is equivalent to reality of every source zero in the chart domain.

Proof and consumer: Forward: use RP-OC-06 source_reality_of_hermite with the proved chartDivisor_identifies. Reverse: convert listed roots to actual source zeros, then use divisorMatrix_nonnegative_iff. The general Hermite converse and sufficient matrix dimension are imported, not assumed anew. The matrix is not the arithmetic Weil form.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
