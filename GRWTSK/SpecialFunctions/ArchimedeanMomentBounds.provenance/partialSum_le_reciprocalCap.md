# partialSum_le_reciprocalCap

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6815186343. MSC2020: 33B15 (primary).

## Exact declaration and hypotheses

`GRWTSK.SpecialFunctions.ArchimedeanMomentBounds.partialSum_le_reciprocalCap`
in `../ArchimedeanMomentBounds.lean`.
Source Git blob: `72d24ec6c700c124fcf09d6632f2f56d1010fb66`.
Source SHA-256: `81af8a1d5155ed72f5e7888b2fb7e3df0fdcdf2c276b74feb1c0c58166034975`.
Statement: For every sigma>0, real y and natural N, S_N(sigma,y)<=sum_(n<N)1/(sigma+n).

## Derivation, exact source, and consumer

For each positive shift s prove y^2/[s*(s^2+y^2)]<=1/s by multiplying by its strictly positive denominator. Sum the finite inequalities.

Exact formal dependencies: Canonical CenteredDigamma.term and partialSum; ordered-field comparison and Finset.sum_le_sum. This is an elementary local consequence, not a new special-function theorem.
Mathematical locator: ArchimedeanMomentBounds.md equation (3).
Consumer: Control only the retained multiplier outside the frequency window. It is not a global bound on the actual infinite centered multiplier.
Full primary argument and hostile checks: `../ArchimedeanMomentBounds.md`.

## Provenance and evidence

Local elementary consequence/adaptation of the canonical centered-digamma
source and pinned Mathlib integration APIs, not a direct formalization of
an entire paper. The classical comparator is NIST DLMF 5.7.6,
https://dlmf.nist.gov/5.7.E6 . Exact upstream authors, paths and blob identities
are individually listed in the companion section 6, at Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`; Lean is `leanprover/lean4:v4.34.1`.
Inspected math main: `21c3956913b469693e5acaf5bc6bf05c34c78196`.
Comparison date: 2026-11-11 America/Los_Angeles. Imported Apache-2.0 authorship
and licensing are retained. Local source is AI-assisted grwtsk contributors work.
SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive axiom audit,
independent review and numerical certification: NOT_RUN. Originality UNASSESSED;
no novelty or independent reviewer claimed. Publication is not proof acceptance.
The Fourier-to-test moment supplier and certified core integration remain
separate; no full Weil positivity, RH/GRH, or universal certificate existence follows.
