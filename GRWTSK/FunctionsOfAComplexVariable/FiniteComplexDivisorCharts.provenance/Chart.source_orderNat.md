# Chart.source_orderNat

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.Chart.source_orderNat` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

At every point in the chart domain, analyticOrderNatAt f z equals the normalized chart weight.

Proof and consumer: Apply ENat.toNat to the finite order supplied by source_order. This is safe because finiteness was proved from a product identity; it is not a silent conversion of infinite order to zero. Consumer: overlap comparisons and source zero counts.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
