# gammaCorrectionDensity_integrable_of_lipschitz

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity_integrable_of_lipschitz`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: continuous L1/L2 globally L-Lipschitz complex f with L>=0, for every natural a, belongs to the original gamma integral domain (0,infinity).
Argument: dominate on (0,1] by the proved finite constant and on (1,infinity) by the proved exponential; combine their exact union. Neither endpoint behavior nor infinite tail is discarded.
Consumer: compact C1 and canonical smooth-domain suppliers. Dependencies: preceding source estimates and pinned `IntegrableOn.union`, compact interval integrability; [source map and primary argument](README.md). Local elementary consequence, local MIT and upstream authorship/Apache-2.0 retained.
Full explicit formula and positivity remain open. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
