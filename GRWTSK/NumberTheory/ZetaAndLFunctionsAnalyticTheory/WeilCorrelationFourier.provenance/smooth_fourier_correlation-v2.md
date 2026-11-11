# smooth_fourier_correlation — domain migration v2

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.SourcePrimeCorrelation.smooth_fourier_correlation`. Source: [maintained module](../WeilCorrelationFourier.lean).
Corrected source SHA-256 `f2d0ea0a826f93a71a43f96e18bce3a5da4bd8f4c6687b818b52346ac9b944a5`, blob `8b2afb9be022253be047c4e47cbd42d51134dee1`; enclosing commit binds this successor.
Previous source remains at `c14f9934bbe83e7ff5706f6a730947fac003a412`, blob `ecc16c32221c0cc677a074758c0b22378fd7aa17`. This explicitly supersedes the earlier smooth-domain description, not its evidence history.
Regularity is corrected from analytic top to scoped smooth infinity. Original correlation, support, every complex frequency, all inner and outer integrability, and reflected product remain unchanged. Proof body unchanged: compact continuity supplies L1/L2.
Correction source: Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Analysis/Calculus/ContDiff/Defs.lean`, exact notation paragraph; upstream author Sébastien Gouëzel, Apache-2.0. [Complete migration](../WeilArchimedeanDomain.provenance/MIGRATION-v2.md). Local source attribution grwtsk contributors, MIT; not a new paper theorem.
Full explicit formula, zero sums and positivity remain separate. Known semantic failure retained; elaboration, kernel replay, axiom audit, downstream compatibility and independent review NOT_RUN. Novelty UNASSESSED. No target, pins or history rewritten.
