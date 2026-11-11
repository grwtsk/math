# measurable_gammaCorrectionDensity

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.measurable_gammaCorrectionDensity`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: for every natural a and continuous complex f, the original gamma density is measurable.
Argument: the joint squared difference is continuous; `StronglyMeasurable.integral_prod_right'` gives measurable inner integration; multiply by the measurable kernel. Measurability is not integrability, and no false continuity at zero is asserted.
Consumer: dominated gamma-domain proofs. Primary API: Floris van Doorn, Mathlib `MeasureTheory/Integral/Prod.lean`, pinned above; [source maps](README.md). Local elementary consequence; upstream authorship/Apache-2.0 retained, local MIT.
Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED. Full arithmetic identity and positivity remain open.
