# mul_parityKernel_le_three_halves

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.mul_parityKernel_le_three_halves`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: every natural a and 0<r<=1 give r*kappa_a(r)<=3/2.
Argument: use (1+2r)exp(-2r)<=1 and (2-2r)(1-exp(-2r))>=0; add to obtain 2r<=3(1-exp(-2r)). Bound numerator by one and divide only after strict positivity of the denominator.
Consumer: cancellation of the original near-zero gamma singularity. Primary dependency `Real.add_one_le_exp` and exponential order at the pinned revision; canonical kernel locators and full argument in [README](README.md). Local elementary consequence, not a new paper result; local MIT and upstream authorship/Apache-2.0 retained.
Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED. Full source positivity is not inferred.
