# integral_gammaCorrectionDensity_tail_le

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.integral_gammaCorrectionDensity_tail_le`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: continuous L2 f, every natural a and every R>=1 give tail integral<=8E(f)*exp(-R/2)/(1-exp(-2)).
Argument: integrate the proved entire pointwise majorant after both functions' integrability is supplied; evaluate its improper integral exactly. No finite sampling or unbudgeted remainder.
Consumer: archimedean error budgets for the original arithmetic form. Primary dependency: David Loeffler, pinned Mathlib `Analysis/SpecialFunctions/ImproperIntegrals.lean`, `integral_exp_mul_Ioi`; [source maps](README.md). Local elementary consequence, local MIT and upstream authorship/Apache-2.0 retained.
The bound is not a zero-divisor tail estimate. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
