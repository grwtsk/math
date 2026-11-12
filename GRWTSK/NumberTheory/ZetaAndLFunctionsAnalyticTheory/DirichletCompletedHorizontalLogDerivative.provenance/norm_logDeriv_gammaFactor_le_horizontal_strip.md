# norm_logDeriv_gammaFactor_le_horizontal_strip

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.NumberTheory.WeilNegativeWitness.norm_logDeriv_gammaFactor_le_horizontal_strip`.
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
theorem norm_logDeriv_gammaFactor_le_horizontal_strip (chi : DirichletCharacter ℂ N)
    {s : ℂ} (hl : -1 ≤ s.re) (hu : s.re ≤ 2) (hi : 2 ≤ |s.im|) :
    ‖logDeriv (DirichletCharacter.gammaFactor chi) s‖ ≤
      gammaRLogDerivativeConstant * (1 + |s.im|)
```

## Individual source correspondence

Pinned DirichletContinuation.lean gammaFactor definition, Loeffler/Stoll, blob 89c72580697983d86706cff17ccbea2cee6475a3. Reuses GammaLogDerivativeBounds.norm_logDeriv_GammaR_le_horizontal_strip; the odd translation uses Chris Birkbeck's pinned logDeriv_comp (blob 08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9).

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/NumberTheory/LSeries/DirichletContinuation.lean).

## Hypotheses, normalization and source return

The original real strip is [-1,2], |Im s|>=2. The enlarged GammaR strip includes both genuine arguments s and s+1. The coefficient is independent of parity, conductor and height.

The actual completed-source theorem combines this full complex-norm bound with the existing original LFunction estimate on the same sequence.

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
