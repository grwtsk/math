# gammaCorrectionDensity_integrable_of_contDiff_one

Local attribution: grwtsk contributors. 2026-11-11. SOURCE_PROOF_CANDIDATE.
Source: [WeilArchimedeanDomain.lean](../WeilArchimedeanDomain.lean); declaration: `GRWTSK.NumberTheory.WeilQuadraticForm.gammaCorrectionDensity_integrable_of_contDiff_one`.
Source SHA-256 `4ebb39f0f1a15b241b957580faaee135c43bdd68c37582715513f571fc043564`. Base math `c14f9934bbe83e7ff5706f6a730947fac003a412`; Lean v4.34.1; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Statement: compactly supported C1 complex f, every natural a: original gamma density integrable on (0,infinity).
Argument: the continuous compactly supported derivative is bounded; the real mean value norm estimate gives a global Lipschitz constant. Compact continuity gives L1 and L2, discharging the prior theorem's premises.
Consumer: genuine smooth Weil tests and native conductor comparison. Primary API sources: pinned `ContDiff/Deriv.lean` (`continuous_deriv`), `Deriv/Support.lean` (`HasCompactSupport.deriv`), `Calculus/MeanValue.lean` (norm derivative bound); exact authors/locators in [README](README.md). Local consequence, not a direct paper theorem; local MIT and upstream authorship/Apache-2.0 retained.
No source explicit formula or positivity. Elaboration, kernel replay, axiom audit and independent review NOT_RUN; novelty UNASSESSED.
