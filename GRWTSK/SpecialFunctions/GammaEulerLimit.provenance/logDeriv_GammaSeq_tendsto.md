# logDeriv_GammaSeq_tendsto

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6814641550. MSC2020: 33B15 (primary).

## Exact declaration

`GRWTSK.SpecialFunctions.GammaEulerLimit.logDeriv_GammaSeq_tendsto` in `../GammaEulerLimit.lean`.
Source Git blob: `b04828358d697dd7c61ce5755374fc8e40379ff9`.
Source SHA-256: `74959ab8c30c0509db91e8892b7b8a18f01ed5538a7eb9d5d4165334d072f2a5`.
Statement: For every z with Re(z)>0, logarithmic derivatives of canonical GammaSeq tend to logDeriv Gamma at z.

## Analytical derivation and consumer

Supply an open right half-plane, eventual holomorphy of the actual approximants, locally uniform convergence, and actual Gamma nonvanishing. Invoke the imported Cauchy-derived logarithmic-derivative convergence theorem with all its hypotheses.

Exact dependencies: Complex.logDeriv_tendsto; GammaSeq_tendstoLocallyUniformlyOn; Complex.Gamma_ne_zero; differentiability of finite GammaSeq away from its denominators.
Consumer: CenteredDigamma.centered_eq_tsum: both actual evaluation points converge to digamma before comparing the positive-series limit.
Full written proof, source comparison and hostile checks: `../GammaEulerLimit.md`.
Locator: GammaEulerLimit.md equation (4).

## Provenance and evidence

Local classical consequence/adaptation; no novelty claim. The exact primary
formal sources and upstream authors/licenses are individually identified in
`../GammaEulerLimit.md`, section 3, at mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Primary Euler source: David Loeffler, Mathlib Gamma/Beta,
`Complex.GammaSeq_eq_approx_Gamma_integral` and `Complex.GammaSeq_tendsto_Gamma`.
Primary special-function comparator: NIST DLMF 5.7.6,
https://dlmf.nist.gov/5.7.E6 . It is not imported as an axiom.
Comparison dated 2026-11-11 America/Los_Angeles. Imports preserve upstream
Apache-2.0 authorship/licenses; local source is attributed to grwtsk contributors.
Inspected math base: `d980f553aca7f636c267d022b4604e487f40b424`.
Lean: `leanprover/lean4:v4.34.1`; all dependency pins unchanged.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
independent review and numerical certification: NOT_RUN. Originality: UNASSESSED.
AI-assisted local source authoring; no independent reviewer is claimed.
No RH/GRH, full Weil positivity or universal certificate existence follows.
