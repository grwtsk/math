# satisfiesGRH_of_analytic_cluster_cover

Attribution: grwtsk contributors.
Declaration: `GRWTSK.NumberTheory.AnalyticClusterHermiteReturn.satisfiesGRH_of_analytic_cluster_cover` in [AnalyticClusterHermiteReturn.lean](../AnalyticClusterHermiteReturn.lean).
Source base: `bd54902a7de572ca1d0405ff94192814f28050d4`. Authored source blob: `270bb4212f05d563c72c975dba618e8638e7a3e0`.

For an existing PrimitiveDirichletSource, assume countably many exact analytic complex-cluster charts of its spectral-coordinate LFunction, covering EVERY open-strip zero; conjugation-closed supports; and nonnegative Hermite matrices in EVERY chart. Conclude the existing per-source SatisfiesGRH.

Proof and consumer: Choose a covering chart, convert the original zero using the existing inverse arithmetic/spectral coordinates, apply chart_hermite_iff_source_reality, and convert imaginary part zero back to real part one-half. No complete arithmetic chart family, symmetry proof, or matrix-sign supplier is constructed.

Source correspondence: [context, primary dependencies, exact edition and checks](context.md); monograph edition 1.0, section 20.1. Classification: local consequence or conditional consumer, not a newly established arithmetic supplier. Novelty UNASSESSED. Elaboration, kernel replay, transitive axiom audit, independent review and CI: **NOT_RUN**. Coordination: math#1809.
