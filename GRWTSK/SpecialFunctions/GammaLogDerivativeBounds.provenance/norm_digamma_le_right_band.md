# norm_digamma_le_right_band

Attribution: grwtsk contributors. Date: 2026-11-11.
Declaration: `GRWTSK.SpecialFunctions.GammaLogDerivativeBounds.norm_digamma_le_right_band`.
Maintained source: [../GammaLogDerivativeBounds.lean](../GammaLogDerivativeBounds.lean).
Owning layer: mathematical source; no new frontier claim ID is assigned.
Scope: math#1801, comment 6814543294.
Inspected math main: `5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.

## Exact source statement

The following is the verbatim declaration header, with the proof body omitted.

```lean
theorem norm_digamma_le_right_band {z : ℂ}
    (hl : 2 ≤ z.re) (hu : z.re ≤ 6) (hi : 1 ≤ |z.im|) :
    ‖Complex.digamma z‖ ≤ 80 * (gammaLogBudget + Real.pi * |z.im|)
```

## Individual source correspondence

Canonical ComplexGammaGrowth.norm_Gamma_le_envelope (blob a0cdbf9175ed8956f6001e60c466ab2e12d58e3b); NormalizedDiskLogarithm.exists_normalized_log_bounded (blob 502dd7b5b0e1b2e4383db5792972b95368264168); NormalizedLogDerivativeBound.norm_deriv_log_le_eighty (blob c123cccfcc465ace08cf11b19458e6a1d3fc658e). Pinned Thomas Browning, Mathlib Gamma/Digamma.lean, HasDerivAt.logDeriv_Gamma (blob 7a13afbf72c57f912beea85d5325ca7da3e66ed1). Classical source method: Euler integral, normalized holomorphic logarithm, Borel-Caratheodory and Cauchy.

Canonical local source is attributed to grwtsk contributors (MIT). Mathlib
retains its named upstream authors and Apache-2.0 license. Classical reference
locators and the full analytical argument are in [README.md](README.md).
Classification: local consequence or definition built from the named primary
formal API; not a claim of independent paper-to-kernel verification or novelty.

Direct source reference: [maintained source at the recorded revision](https://github.com/grwtsk/math/blob/5dd12bd1891abbcd5fa06a7eb8ca190b48550ff6/GRWTSK/FunctionsOfAComplexVariable/NormalizedDiskLogarithm.lean).

## Hypotheses, normalization and source return

Both closed real endpoints 2 and 6 are included, with |Im z|>=1. The translated radius-11/4 disk is zero-free by positive real part. The amplitude ceiling, anchor and normalized logarithm are derived rather than supplied.

norm_digamma_le_horizontal_strip shifts the original half-parity strip into this band and returns by a finite recurrence. The full complex norm, not only a real part, is bounded.

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
