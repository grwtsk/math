# exists_admissible_one_at_zero

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.exists_admissible_one_at_zero`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: there exists corrected-canonical-admissible complex f with f(0)=1 and every gamma integral finite.
Argument: cast the actual real ContDiffBump centered at0 with radii1,2 to complex. Use its smoothness, compact support and plateau value; then apply the gamma-domain supplier.
Consumer: nonvacuity after the analytic-versus-smooth domain correction. Primary API sources: Sébastien Gouëzel and Yury Kudryashov, pinned Mathlib `Calculus/BumpFunction/Basic.lean` and `InnerProduct.lean`, `ContDiffBump.contDiff`, `hasCompactSupport`, `one_of_mem_closedBall`; [source maps](README.md). Local consequence, local MIT and upstream authorship/Apache-2.0 retained.
Not a negative Weil witness, interpolation, or assertion of an arithmetic zero. [Known prior domain failure](MIGRATION-v2.md) retained. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
