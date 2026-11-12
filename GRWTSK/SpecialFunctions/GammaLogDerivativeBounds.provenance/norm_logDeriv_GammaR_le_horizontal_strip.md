# norm_logDeriv_GammaR_le_horizontal_strip

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.SpecialFunctions.GammaLogDerivativeBounds.norm_logDeriv_GammaR_le_horizontal_strip`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem norm_logDeriv_GammaR_le_horizontal_strip {s : ℂ}
    (hl : -1 ≤ s.re) (hu : s.re ≤ 3) (hi : 2 ≤ |s.im|) :
    ‖logDeriv Complex.Gammaℝ s‖ ≤ gammaRLogDerivativeConstant * (1 + |s.im|)
```

## Individual source correspondence

Local consequence of logDeriv_GammaR_of_nonreal and norm_digamma_le_horizontal_strip, preserving the pinned David Loeffler GammaR normalization and Thomas Browning digamma source. Complete primary argument and dependency locators are in README.md.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](../GammaLogDerivativeBounds.lean).

## Hypotheses, normalization and source return

The strip is [-1,3], |Im s|>=2, including endpoints and both signs. The point s/2 lies in the preceding strip; no totalized pole value is used.

DirichletCompletedHorizontalLogDerivative.norm_logDeriv_gammaFactor_le_horizontal_strip applies this to s or s+1, then returns to the actual completedLFunction. This is an upper complex norm bound, not arithmetic nonnegativity.

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
