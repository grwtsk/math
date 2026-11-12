# differentiableAt_gammaFactor_of_nonreal

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.differentiableAt_gammaFactor_of_nonreal`.
Maintained source: [../DirichletCompletedHorizontalLogDerivative.lean](../DirichletCompletedHorizontalLogDerivative.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

Ambient source context: `variable {N : ℕ} [NeZero N]`; the level-one zeta theorem is closed.

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem differentiableAt_gammaFactor_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hi : s.im ≠ 0) :
    DifferentiableAt ℂ (DirichletCharacter.gammaFactor chi) s
```

## Individual source correspondence

David Loeffler and Michael Stoll, pinned Mathlib NumberTheory/LSeries/DirichletContinuation.lean, gammaFactor definition, blob 89c72580697983d86706cff17ccbea2cee6475a3. Reuses GammaLogDerivativeBounds.differentiableAt_GammaR_of_nonreal. Translation by one has derivative one.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean).

## Hypotheses, normalization and source return

chi is a genuine Dirichlet character of positive level; primitivity is not needed. Nonreal s excludes both parity families of real Gamma poles.

Provides actual product-factor regularity for logDeriv_completedLFunction_of_nonreal; regularity is not mistaken for a magnitude bound.

The complete primary argument, hostile checks and alternative route are in the
source-local README. This record does not assert that a second script constitutes
an independent proof. Mathematical comparison and formal execution are separate.

## Evidence and open obligations

SOURCE_PROOF_CANDIDATE. Novelty UNASSESSED. Elaboration, fresh kernel replay,
transitive axiom audit and independent review: NOT_RUN. Imported candidates
retain their known evidence and failures. There is no passing Lean receipt.
The exact build and declaration-level transitive axiom queries are obligations,
not executed commands. The canonical proof-execution skill was inaccessible at
Noe revision `a5ef0a774b3e5decabc2ed2885108805ea7022bc`; no dependent automation ran.
Source/publication identities and observations are recorded in math#1801 after
readback. Neither publication nor this record proves an RH/GRH conclusion.
