# parity_centered_enclosure_regression

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6814641550. MSC2020: 33B15 (primary).

## Exact declaration

`GRWTSK.SpecialFunctions.CenteredDigamma.parity_centered_enclosure_regression` in `../CenteredDigammaSourceReturn.lean`.
Source Git blob: `58dafc88e12a30fbbbe796b6d4d88de4afc42a46`.
Source SHA-256: `fd2014741cc85a9ec518633e647b891b926868324cf378b09db740d93214de1a`.
Statement: 64/17<=centered(1/4,1)<=9768/2125 and 64/75<=centered(3/4,1)<=30952/25725.

## Analytical derivation and consumer

Instantiate both parity parameters. Compute the first retained rational term and the complete rational omitted-tail budget exactly. The conclusions concern actual digamma values at spectral frequency t=2.

Exact dependencies: centered_tail_enclosure with N=1; existing partialSum, term, remainderBudget; exact rational arithmetic.
Consumer: Nonvacuous source regression for both parity cases. Not a completed numerical certificate for the full Weil form.
Full written proof, source comparison and hostile checks: `../GammaEulerLimit.md`.
Locator: GammaEulerLimit.md section 2.

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
