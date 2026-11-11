# GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_one_sub_eq_gammaC

Local attribution: grwtsk contributors. Date: 2026-11-11. Local license: MIT.
SOURCE_PROOF_CANDIDATE. Novelty: UNASSESSED. This is an individual source-bound adaptation/local-consequence record,
not a new numbered-paper formalization or frontier claim ID. Coordination: math#1801.

Source: [maintained module](../DirichletLFunctionLeftBounds.lean); Git blob `2c47565053a5f684e543f03da4d3f7181b2d0493`;
SHA-256 `3a1f3ec4f7d9d61733406b1b8e8c7b3be394e1a067d081ef620ab32b91a8f80f`. Namespace `GRWTSK.NumberTheory.WeilNegativeWitness`.
Ambient context: `variable {N : ℕ} [NeZero N]`.

Exact statement (proof body in the maintained source):

```lean
theorem LFunction_one_sub_eq_gammaC (chi : DirichletCharacter ℂ N)
    (hprim : chi.IsPrimitive) {w : ℂ} (hw : 2 ≤ w.re) :
    DirichletCharacter.LFunction chi (1 - w) =
      (N : ℂ) ^ (w - 1 / 2) * DirichletCharacter.rootNumber chi *
        Complex.Gammaℂ w * dirichletParityFactor chi w *
          DirichletCharacter.LFunction chi⁻¹ w
```

Argument: Re(w)>=2 proves w!=0 and 1-w!=0. Rewrite the actual L-function by its completed quotient, apply the primitive dual-character functional equation and the preceding reciprocal Gamma identity, and regroup into the actual L-function of chi inverse.

Consumer/source return: norm_poleClearedLFunction_one_sub_le. The [shared analytical argument](README.md)
gives the complete domains, source identities, normalization, dependency comparisons,
all-height obligations and hostile checks. The same-commit local dependencies are
identified in the maintained module; older imported candidates are not revalidated.

Pinned primary correspondence (Mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`):

David Loeffler and Michael Stoll: [Mathlib/NumberTheory/LSeries/DirichletContinuation.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean), `gammaFactor; LFunction_eq_completed_div_gammaFactor; IsPrimitive.completedLFunction_one_sub; rootNumber; rootNumber_modOne; LFunction_modOne_eq`; Git blob `89c72580697983d86706cff17ccbea2cee6475a3`. Apache-2.0.

David Loeffler: [Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Deligne.lean), `Gammaℂ_def; inv_Gammaℝ_one_sub; inv_Gammaℝ_two_sub`; Git blob `09568288ef9897b1e3b0e0763dd31a9421b77616`. Apache-2.0.

Elaboration/build, fresh kernel replay, transitive axiom audit and independent
review: NOT_RUN. Direct-source text integrity and publication are separate evidence.
No full-circle supplier, arithmetic explicit formula, positivity or RH/GRH proof
is asserted. Novelty remains UNASSESSED; the dated prior-art comparison is shared.

Unexecuted axiom query, required after successful elaboration:

```lean
#print axioms GRWTSK.NumberTheory.WeilNegativeWitness.LFunction_one_sub_eq_gammaC
```
