# completedZeta_logDeriv_eq_prime_gamma

Local attribution: grwtsk contributors. Date: 2026-11-11.
Fully qualified declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_logDeriv_eq_prime_gamma`.
Maintained source: [../DirichletWeilIntegrand.lean](../DirichletWeilIntegrand.lean).
Source line 282; Git blob `4cdd68933d9bd8bf481d4b4ec4ace9689b967829`; SHA-256 `a3f747aed6a43687cccc43f59716796cd14afb792ee80535e066b7fd8a6f83c3`.
Source inspection base `9faf3baa8307ffe27c78db2821945ecb7062ed05`; complete tree `7776847f6fdab7642e423f29b06a80ed241fd484`.
Lean `leanprover/lean4:v4.34.1`; Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Status SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Issue math#1801.

## Exact statement

Ambient namespace `GRWTSK.NumberTheory.WeilNegativeWitness`; shared variables `{N : ℕ} [NeZero N]` are used only where they occur in the statement or inferred dependencies. Complex norms, analytic functions and character objects are the existing canonical ones. No imported candidates are retroactively verified.

```lean
theorem completedZeta_logDeriv_eq_prime_gamma {s : ℂ} (hs : 1 < s.re) :
    logDeriv completedRiemannZeta s =
      -(Real.log Real.pi : ℂ) / 2 + Complex.digamma (s / 2) / 2 -
        LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) s
```

## Individual primary source correspondence

David Loeffler and Michael Stoll, [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `IsPrimitive.completedLFunction_one_sub; gammaFactor; completedLFunction; LFunction_eq_LSeries; deriv_LFunction_eq_deriv_LSeries`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

David Loeffler, [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Gammaℝ_def; Gammaℝ_ne_zero_of_re_pos; differentiable_Gammaℝ_inv`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

Michael Stoll, [Mathlib/NumberTheory/LSeries/Dirichlet.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/Dirichlet.lean), `LSeries_ne_zero_of_one_lt_re; LSeriesSummable_twist_vonMangoldt; LSeries_twist_vonMangoldt_eq`; revision `d13f23b723b8a846827a245b89c10fc7d3f11612`, blob `ce401a3f67dd76b9e251cb7f23feb003b0cb7cc5`. Apache-2.0.

This declaration is a local consequence/composition of the listed pinned primary implementations, not a claimed direct formalization of a new paper theorem. Existing local prerequisites have their own adjacent records and retain their candidate evidence status. No novelty or exhaustive-absence claim is made.

## Analytical argument and consumer

Specialize to the unique character modulo one, using the literal completedLFunction_modOne_eq and even parity. Character values on ZMod 1 are one.

Consumer: The conductor-one source. This right-half-plane theorem deletes neither pole.

Full analytical context: [README.md](README.md). The sign/conjugation correction is recorded in [CHARACTER-ORIENTATION-v1.md](CHARACTER-ORIENTATION-v1.md). The finite contour, integral interchange and Fourier/gamma evaluations in the README are written proofs; they are not asserted to have Lean declarations here. No RH/GRH or lower sign conclusion.

## Verification obligation

Elaboration/build, fresh kernel replay, transitive axiom audit, independent review and repository-wide verification: NOT_RUN. No Lean execution has been performed. Source-text and scalar checks establish only their recorded scope. The following query is UNEXECUTED:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.completedZeta_logDeriv_eq_prime_gamma
```

Use the publication revision recorded in math#1801 and the unchanged pins. Run the targeted module build before the audit. The unavailable Noe skill prevents dependent proof automation; it grants no alternative execution authority.
