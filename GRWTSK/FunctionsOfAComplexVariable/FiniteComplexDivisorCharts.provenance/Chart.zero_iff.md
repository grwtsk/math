# Chart.zero_iff

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.zero_iff` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

At any point in a chart domain, f(z)=0 exactly when z belongs to the chart roots.

Proof and consumer: Use the actual function factorization, discard the nonzero unit, and apply weightedProduct_zero_iff with positive exponents. Completeness comes from that exact identity, not from a numerically observed list or a contour count alone.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
