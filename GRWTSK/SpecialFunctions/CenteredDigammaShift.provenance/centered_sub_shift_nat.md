# centered_sub_shift_nat

Local author: grwtsk contributors. Date: 2026-11-12 UTC.

## Exact declaration and source

- Declaration: `GRWTSK.SpecialFunctions.CenteredDigamma.centered_sub_shift_nat`.
- File: `../CenteredDigammaShift.lean`.
- File SHA-256: `9de2f36392bc0f12c5301b1316d02020f901ba828516668bf5ba2a5883c36ee8`.
- File Git blob: `5867ff865be54a6db7645760bae78a1b94585486`.
- Statement: For every sigma>0, real y and natural N, C(sigma,y)-C(sigma+N,y)=S_N(sigma,y).
- Mathematical source/locator: DLMF 5.5.2, iterated; local centered_sub_shift_one.
- Primary links: https://dlmf.nist.gov/5.5.E2 ; https://dlmf.nist.gov/5.7.E6 .
- Full analytical proof, hypotheses, independent comparator and falsification:
  `../CenteredDigammaShift.md`, with exact numbered equations and declaration map.

## Derivation and consumer

Induct on N; retain the final actual-digamma term and combine exact adjacent differences.

Consumer: shifted_drop_bounds and shifted_residual_tendsto.

Boundary: The final digamma term cannot be deleted without its separately proved zero limit.

## Provenance and verification

This is a local consequence/adaptation using imported canonical declarations,
not a claim to have formalized the entire DLMF series or integral theorem.
The pinned upstream digamma source is Thomas Browning's Apache-2.0 Mathlib
`Mathlib/Analysis/SpecialFunctions/Gamma/Digamma.lean`, blob
`7a13afbf72c57f912beea85d5325ca7da3e66ed1`. Other imported proof authors and exact
blobs are individually recorded in the adjacent analytical source; no imported
implementation or license is overwritten.

Inspected source base: `daa8c88b644cf40ada77e76739d84f749068ffde`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Lean: `leanprover/lean4:v4.34.1`.

Evidence: SOURCE_PROOF_CANDIDATE. Elaboration, fresh kernel replay, transitive
axiom audit and independent review: NOT_RUN. No verified proof is asserted by
publication. No mathematical novelty claimed; originality UNASSESSED.
Local mathematical analysis/source authoring: grwtsk contributors, AI-assisted.
No independent reviewer or corpus-wide prior-art assessment is invented.
No RH/GRH, complete explicit formula or all-scale Weil positivity follows.
Coordination and source-bound publication/verification obligations: math#1801.
