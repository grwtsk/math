# gammaCorrectionDensity_le_exp_tail

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity_le_exp_tail`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: L2 complex f, every natural a and r>=1 give density<=4E(f)*exp(-r/2)/(1-exp(-2)).
Argument: combine `parityKernel_le_exp_tail` with `shift_energy_le_four_mul`, retaining nonnegative factors and the original source energy.
Consumer: entire infinite ARCHIMEDEAN tail, not an arithmetic zero-divisor tail. Local elementary consequence of the canonical source and pinned library, with [exact locators](README.md). Local MIT; upstream authorship/Apache-2.0 retained.
No full explicit formula or sign theorem. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
