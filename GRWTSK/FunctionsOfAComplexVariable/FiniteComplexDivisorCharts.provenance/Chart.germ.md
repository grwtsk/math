# Chart.germ

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.germ` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

For a chart of f and z in its open domain, f agrees in a complex neighborhood of z with its unit times weightedProduct.

Proof and consumer: The domain is a neighborhood of z by openness; restrict the chart factorization to that neighborhood. Equality only on the real line or at sampled points is insufficient. Consumer: analyticOrderAt_congr and source analyticity.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
