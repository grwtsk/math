# gammaCorrectionDensity_le_near_zero

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity_le_near_zero`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: L1/L2 globally L-Lipschitz complex f, L>=0, every natural a and 0<r<=1 give gammaCorrectionDensity<=3LJ.
Argument: multiply `shift_energy_le_lipschitz_l1` by the actual nonnegative kernel, regroup r*kappa and apply `mul_parityKernel_le_three_halves`. No additional continuity is needed for this pointwise inequality.
Consumer: original archimedean near-zero integrability. Local elementary composition of exact source estimates, with [source pins and analytical proof](README.md); local MIT and upstream authorship/Apache-2.0 retained.
Full arithmetic identity, zero sums and positivity remain open. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
