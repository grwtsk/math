# smooth_l1_lower_bound — domain migration v2

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.MeasureAndIntegration.FourierCollisionBound.smooth_l1_lower_bound`. Source: [maintained module](../FourierCollisionBound.lean).
Corrected source SHA-256 `ea5121af9de0dcfee3af31119f909111897946e49c415bbac49df8046c1431af`, blob `d7a7d75aea20705cdc037695c07f073e84399a76`; enclosing commit binds this successor.
Previous source remains at `c14f9934bbe83e7ff5706f6a730947fac003a412`, blob `6669b1cd87456ca18f5a773d50622c56a70272f5`. This explicitly supersedes the earlier smooth-domain description, not its evidence history.
Regularity is corrected from analytic top to scoped smooth infinity. Support, nonzero displacement, strict error-sum, and both actual Fourier-value bounds are unchanged. Proof body unchanged: only continuity and compact support are used to derive L1.
Correction source: Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Analysis/Calculus/ContDiff/Defs.lean`, exact notation paragraph; upstream author Sébastien Gouëzel, Apache-2.0. [Complete migration](../../NumberTheory/ZetaAndLFunctionsAnalyticTheory/WeilArchimedeanDomain.provenance/MIGRATION-v2.md). Local source attribution grwtsk contributors, MIT; no new paper-formalization claim.
The original necessary conditioning cost is retained; constructive interpolation, full source identity and joint varying-test tails remain open. Known semantic failure retained; elaboration, kernel replay, axiom audit, downstream compatibility and independent review NOT_RUN. Novelty UNASSESSED. No arithmetic target, pins or history rewritten.
