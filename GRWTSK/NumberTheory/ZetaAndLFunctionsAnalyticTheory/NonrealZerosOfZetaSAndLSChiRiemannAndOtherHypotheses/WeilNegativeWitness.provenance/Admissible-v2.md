# Admissible — domain migration v2

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.Admissible`. Source: [maintained module](../WeilNegativeWitness.lean).
Corrected source SHA-256 `1bf8c0ec477b51b174cc116b8a09131d8b7cd0ea84ae8d02e6311006cf135722`, blob `abd27c24bfac7422baa4c2482ae71e684b558ff0`; enclosing commit binds this successor.
Previous bytes at `c14f9934bbe83e7ff5706f6a730947fac003a412`, blob `35111c956a8c68047199e1fb2aab9ca24848004d`, encoded analyticity plus compact support rather than the advertised smooth compact domain. That is a known statement-fidelity failure.
The canonical predicate now is `ContDiff ℝ ∞ f ∧ HasCompactSupport f` with `open scoped ContDiff`. No parallel predicate or altered RH target is introduced. The actual nonzero smooth bump consumer is `GRWTSK.NumberTheory.WeilQuadraticForm.exists_admissible_one_at_zero`.
Primary correction source: Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`, `Analysis/Calculus/ContDiff/Defs.lean`, exact order notation; Sébastien Gouëzel, Apache-2.0. [Complete versioned migration](../../WeilArchimedeanDomain.provenance/MIGRATION-v2.md). Local source attribution grwtsk contributors, MIT.
Earlier full-smooth-domain descriptions are withdrawn; historical statuses are not promoted. The full arithmetic identity, detector, interpolation and positivity remain open. Elaboration, kernel replay, axiom audit, downstream compatibility and independent review NOT_RUN; novelty UNASSESSED.
