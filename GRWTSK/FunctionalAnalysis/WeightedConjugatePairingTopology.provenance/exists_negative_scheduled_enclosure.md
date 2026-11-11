# exists_negative_scheduled_enclosure

Local attribution: grwtsk contributors.

Declaration: `GRWTSK.FunctionalAnalysis.WeightedConjugatePairing.EvaluationModel.exists_negative_scheduled_enclosure` in [canonical source](../WeightedConjugatePairingTopology.lean), exact blob `3f2101e809d7d56a917a1283a3d3efe190cfad9b`.

Statement: for any D and dense encode:Code->E, let lower,upper:Code->Nat->Real enclose q(encode d) at every d,k. Assume that for every d and delta>0 some k has upper(d,k)-lower(d,k)<delta. For any surjective schedule Nat->Code x Nat, existence of x with q(x)<0 implies existence of n with the scheduled upper endpoint strictly negative. Every enclosure and width quantifier is retained.

Primary argument: compose the derived continuity with canonical Program 10 `exists_negative_at_surjective_schedule`. Dense detection produces d; shrinking sound enclosures produce k; surjectivity produces n. Consumer: an ideal exhaustive negative-witness detector. Comparison: OCERT-1 composition, not construction of an interval engine or a new scheduling algorithm. No automation was created or executed. No running-time, finite resource, arithmetic-source or GRH claim is made.

Pins, analytical boundaries and reproduction: [continuous_quadratic](continuous_quadratic.md). Elaboration, kernel replay, transitive axiom audit, independent review and runtime verification: NOT_RUN. No novelty is asserted.
