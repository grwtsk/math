# kernel_denominator_pos

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); private source-local helper `kernel_denominator_pos`. Compiler-generated fully qualified name NOT_RUN; not guessed.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: r>0 implies 1-exp(-2r)>0. Argument: strict exponential monotonicity compared with exp(0)=1.
Consumer: all subsequent division and norm-domination steps; no division by a zero endpoint. Primary source: pinned `Real.exp_lt_exp`, `Real.exp_zero`, with dependency conventions in [README](README.md). Local elementary consequence; local MIT, upstream authorship/Apache-2.0 retained.
No arithmetic sign claim. Elaboration, kernel replay, transitive axiom audit and independent review NOT_RUN; novelty UNASSESSED.
