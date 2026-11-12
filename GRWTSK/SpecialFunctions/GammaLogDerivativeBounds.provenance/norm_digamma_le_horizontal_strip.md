# norm_digamma_le_horizontal_strip

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.SpecialFunctions.GammaLogDerivativeBounds.norm_digamma_le_horizontal_strip`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem norm_digamma_le_horizontal_strip {z : ℂ}
    (hl : -(1 / 2 : ℝ) ≤ z.re) (hu : z.re ≤ 3 / 2) (hi : 1 ≤ |z.im|) :
    ‖Complex.digamma z‖ ≤ digammaStripConstant * (1 + |z.im|)
```

## Individual source correspondence

DLMF 5.5.2, iterated finitely. Thomas Browning, pinned Mathlib Gamma/Digamma.lean, Complex.digamma_apply_add_nat (blob 7a13afbf72c57f912beea85d5325ca7da3e66ed1). The analytic bound is norm_digamma_le_right_band in the maintained source, not an infinite-series or asymptotic hypothesis.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Gamma/Digamma.lean).

## Hypotheses, normalization and source return

The real strip is [-1/2,3/2] and |Im z|>=1. Shifting by exactly three stays in the right band. Every reciprocal term is bounded by one using the same imaginary-coordinate gap, with poles excluded.

norm_logDeriv_GammaR_le_horizontal_strip applies this to s/2 and retains the chain factor. No shifted residual at infinity is discarded or proved zero.

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
