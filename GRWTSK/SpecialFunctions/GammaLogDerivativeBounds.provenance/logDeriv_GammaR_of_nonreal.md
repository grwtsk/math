# logDeriv_GammaR_of_nonreal

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.SpecialFunctions.GammaLogDerivativeBounds.logDeriv_GammaR_of_nonreal`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem logDeriv_GammaR_of_nonreal {s : ℂ} (hi : s.im ≠ 0) :
    logDeriv Complex.Gammaℝ s =
      (Complex.digamma (s / 2) - Complex.log (Real.pi : ℂ)) / 2
```

## Individual source correspondence

David Loeffler, pinned Gamma/Deligne.lean definition, blob 09568288ef9897b1e3b0e0763dd31a9421b77616; Thomas Browning, Gamma/Digamma.lean, HasDerivAt.logDeriv_Gamma, blob 7a13afbf72c57f912beea85d5325ca7da3e66ed1; Chris Birkbeck, Calculus/LogDeriv.lean, logDeriv_fun_mul, blob 08d54d356bcb2fd5e1aa24bde02529f2ec10e4c9. This is exact differentiation of the stated source normalization.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Calculus/LogDeriv.lean).

## Hypotheses, normalization and source return

The point is nonreal. Gamma(s/2) and pi^(-s/2) are nonzero before division; the factors 1/2 and -Log(pi)/2 are retained.

Returns the full GammaR logarithmic derivative to actual digamma and the exact normalization term; consumed by the uniform parity-strip magnitude bound.

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
