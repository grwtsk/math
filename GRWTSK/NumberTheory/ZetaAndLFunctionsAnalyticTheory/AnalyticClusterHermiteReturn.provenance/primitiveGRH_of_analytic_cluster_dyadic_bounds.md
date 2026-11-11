# primitiveGRH_of_analytic_cluster_dyadic_bounds

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.primitiveGRH_of_analytic_cluster_dyadic_bounds` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

Replace matrix nonnegativity by lower bounds -2^(-k) for EVERY real coefficient vector and EVERY natural k in EVERY chart of EVERY primitive source; keep exact source charts, coverage, and support symmetry. Conclude the same existing PrimitiveDirichletGRH.

Proof and consumer: Use RP-OC-06 allReal_iff_dyadic_lower_bounds, backed by RP-OC-10 nonneg_of_dyadic_lower_bounds, then its finite Hermite equivalence and the previous cover theorem. Singular matrices at repeated roots are admitted. Neither a finite number of vector tests nor a fixed error tolerance supplies the universal premise.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
