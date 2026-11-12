# finite_window_remainder

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6815186343. MSC2020: 33B15 (primary).

## Exact declaration and hypotheses

`GRWTSK.SpecialFunctions.ArchimedeanMomentBounds.finite_window_remainder`
in `../ArchimedeanMomentBounds.lean`.
Source Git blob: `72d24ec6c700c124fcf09d6632f2f56d1010fb66`.
Source SHA-256: `81af8a1d5155ed72f5e7888b2fb7e3df0fdcdf2c276b74feb1c0c58166034975`.
Statement: For every sigma>0, T>0, natural N and measurable nonnegative w with finite mu2, 0<=integral_R(w*C)-integral_[-T,T](w*S_N)<=[b(sigma+N)+H_N(sigma)/T^2]*mu2.

## Derivation, exact source, and consumer

Split the pointwise error into the full rational-series remainder and the retained partial multiplier outside the window. Use t^2>=T^2 outside, the finite reciprocal cap, explicit integrability and the indicator integral theorem.

Exact formal dependencies: frequency_remainder_bounds; partialSum_le_reciprocalCap; both weighted-integrability theorems; Mathlib Integrable.indicator, integral_indicator and integral_mono_ae.
Mathematical locator: ArchimedeanMomentBounds.md equations (6)-(8).
Consumer: spectral_finite_enclosure; only a second moment is required, with every omitted contribution included.
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
