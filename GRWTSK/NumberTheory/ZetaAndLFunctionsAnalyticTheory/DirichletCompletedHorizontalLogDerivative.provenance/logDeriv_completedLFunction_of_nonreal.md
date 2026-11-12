# logDeriv_completedLFunction_of_nonreal

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.logDeriv_completedLFunction_of_nonreal`.
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
theorem logDeriv_completedLFunction_of_nonreal (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hi : s.im ≠ 0)
    (hn : DirichletCharacter.completedLFunction chi s ≠ 0) :
    logDeriv (DirichletCharacter.completedLFunction chi) s =
      logDeriv (DirichletCharacter.LFunction chi) s +
        logDeriv (DirichletCharacter.gammaFactor chi) s
```

## Individual source correspondence

Canonical DirichletHorizontalLogDerivative.completedLFunction_eq_mul_of_nonreal and gammaFactor_ne_zero_of_nonreal, blob df57cc0537745d34b8a6c5451eeb636d829d108d. Pinned Loeffler/Stoll differentiableAt_LFunction and Chris Birkbeck logDeriv_fun_mul provide the derivative rule with nonzero factors.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/grwtsk/math/blob/5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/DirichletHorizontalLogDerivative.lean).

## Hypotheses, normalization and source return

s is nonreal and the actual completed function is nonzero at s. LFunction nonvanishing is derived. Equality is proved on an open neighborhood of s before differentiating; pointwise equality alone is not used.

Exact source return to completedLFunction. The normalization has no extra N^(s/2), so no conductor half-log is inserted. Its future residue formula still retains both zeta poles.

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
