# shift_energy_le_lipschitz_l1

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.shift_energy_le_lipschitz_l1`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: every real shift, L>=0 and globally L-Lipschitz L1/L2 complex f give D(r)<=2L|r|J.
Argument: multiply the pointwise Lipschitz and triangle bounds, integrate, and use translation invariance. Existing `integrable_shift_energy` supplies well-definedness.
Consumer: near-zero integrability of the original gamma correction. Primary sources: the canonical source and pinned `integral_mono`, `integral_add_right_eq_self`, as located in [README](README.md). Local elementary consequence, not a direct paper theorem; upstream authorship/Apache-2.0 retained; local MIT.
Remaining full arithmetic formula, zero-divisor tails and positivity are not supplied. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED. The enclosing commit binds the source; see [migration](MIGRATION-v2.md).
