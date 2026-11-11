# admissible_analytic_domain

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.admissible_analytic_domain`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: corrected canonical Admissible f gives L1, L2 and the gamma integral for EVERY natural a. The name refers to the domain of analytic estimates, not analytic regularity.
Argument: reduce smooth order to C1 and use the new compact C1 theorem; compact continuity supplies both norms. No new admissibility predicate is defined.
Consumer: native primitiveArithmeticValue reduction and nonzero admissible test. Correction source: pinned ContDiff order definitions and [explicit migration](MIGRATION-v2.md); [other source maps](README.md). Local consequence, local MIT and upstream authorship/Apache-2.0 retained.
Known old semantic failure retained. Full explicit formula, interpolation and positivity remain open. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
