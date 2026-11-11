# parityKernel_le_exp_tail

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.parityKernel_le_exp_tail`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: every natural a and r>=1 give kappa_a(r)<=exp(-r/2)/(1-exp(-2)).
Argument: numerator comparison uses a>=0; denominator comparison uses r>=1 and retains both positive denominators when cross-multiplying.
Consumer: source gamma tail. Primary dependency `Real.exp_le_exp` and positive-denominator arithmetic; [canonical kernel and library locators](README.md). Local elementary consequence, local MIT; upstream authorship/Apache-2.0 retained.
No zero-divisor tail or full-form sign. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
