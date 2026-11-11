# shift_energy_le_four_mul

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.shift_energy_le_four_mul`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: L2 complex f and every real shift give D(r)<=4E(f). No support or regularity premise.
Argument: square the triangle bound, use (u-v)^2>=0, integrate both square norms with translation invariance. Reuses original energy and `integrable_shift_energy`.
Consumer: entire archimedean tail. Sources: pinned L2 `integrable_norm_pow`, translation integration and canonical energy, with [exact locators](README.md). Local elementary consequence, not a claimed paper formalization; local MIT and upstream authorship/Apache-2.0 retained.
No full arithmetic formula, zero-divisor bound or positivity. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED. Enclosing commit binds this record and source.
