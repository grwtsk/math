# order_weightedProduct

Attribution: grwtsk contributors.
Declaration: `GRWTSK.FunctionsOfAComplexVariable.FiniteComplexDivisorCharts.order_weightedProduct` in [FiniteComplexDivisorCharts.lean](../FiniteComplexDivisorCharts.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `980ed347dbaf7cb9331f313cc974de49acd79e6c`.

The actual analytic order of the weighted product at every complex z equals weightAt S m z. Weights may be zero in this algebraic lemma; Chart later requires positivity on its support.

Proof and consumer: Induct on the finite support. The empty product is nonzero constant. At insertion use analyticOrderAt_mul and order_powered_linear; the inserted location is not in the old support, so exactly one term contributes at each root. This extends the inspected RP-OC-08 finite-product argument from real coordinates to arbitrary complex coordinates, without changing that source.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
