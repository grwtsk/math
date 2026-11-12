# admissible_spectral_integrability

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 42A38, 33B15. Coordination: math#1801 / 6815617192.

## Exact declaration and source

`GRWTSK.NumberTheory.WeilFourierMoments.admissible_spectral_integrability` in `../WeilFourierMoments.lean`.
Source Git blob: `aa20033bb58f9f99ed31e71f33e0a1a2af08136f`.
Source SHA-256: `32e5ac7902b72c60c4d58e4e1afe696732becf69653a4e042131a7cae137fba1`.
Statement: For every canonical Admissible f, both its normalized squared plus-Fourier density and that density times t^2 are integrable.

## Argument, primary provenance and consumer

Supply the zeroth moment by L2 membership plus change of variables. Supply the weighted second moment by its exact pointwise equality with the normalized spectrum of f prime.

Exact dependencies: SchwartzMap.memLp; Integrable.comp_div; Real.fourier_deriv; SchwartzMap.derivCLM.
Primary source: `Mathlib/MeasureTheory/Measure/Haar/NormedSpace.lean` at Mathlib
`d13f23b723b8a846827a245b89c10fc7d3f11612`, locator `Integrable.comp_div`.
Direct link: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Measure/Haar/NormedSpace.lean
Upstream authorship and exact imported blob identities are recorded individually
in `../WeilFourierMoments.md`, section 6; imported Apache-2.0 licenses are retained.
This is a local consequence/adaptation, not a claim of direct formalization of
an uninspected historical paper. Analytical locator: companion (3),(6)-(7).
Consumer: Discharges both h0 and h2 in squared_spectrum_finite_enclosure, not an assumed moment supplier.

## Evidence boundary

Inspected math main: `4363be401abeff44c5620dc3be90f757731c84c9`.
Lean `leanprover/lean4:v4.34.1`; all root dependency pins unchanged.
Canonical admissibility, complex tests, conductor-one zeta and both parities
are preserved. No prime/pole term, exact zero pairing or full-form positivity
is replaced by this archimedean estimate. Effective quadrature and universal
certificate existence are not supplied. No RH/GRH or novelty claim.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom auditing
(including imported local candidates), independent review and numerical
functional certification: NOT_RUN. Originality: UNASSESSED.
Local work is AI-assisted grwtsk contributors work; no independent reviewer
or executed proof evidence is invented. Publication is not proof acceptance.
