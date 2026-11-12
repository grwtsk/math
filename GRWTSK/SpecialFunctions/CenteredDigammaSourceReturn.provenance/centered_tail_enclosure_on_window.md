# centered_tail_enclosure_on_window

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6814641550. MSC2020: 33B15 (primary).

## Exact declaration

`GRWTSK.SpecialFunctions.CenteredDigamma.centered_tail_enclosure_on_window` in `../CenteredDigammaSourceReturn.lean`.
Source Git blob: `58dafc88e12a30fbbbe796b6d4d88de4afc42a46`.
Source SHA-256: `fd2014741cc85a9ec518633e647b891b926868324cf378b09db740d93214de1a`.
Statement: For sigma>0, Y>=0, every real y satisfying |y|<=Y and every natural N, the actual centered source tail lies in [0,B(sigma+N,Y)].

## Analytical derivation and consumer

Use the actual-source equality and reuse the previous uniform whole-window series bound. No midpoint interpolation or finite sampling is introduced.

Exact dependencies: centered_eq_tsum; existing CenteredDigamma.series_tail_enclosure_on_window.
Consumer: shifted_residual_window_bounds and the written all-frequency-in-window archimedean error estimate.
Full written proof, source comparison and hostile checks: `../GammaEulerLimit.md`.
Locator: GammaEulerLimit.md equations (8)-(9).

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
