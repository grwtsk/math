# norm_Gamma_sub_GammaSeq_le_endpoint_errors

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
Coordination: math#1801, scope comment 6814641550. MSC2020: 33B15 (primary).

## Exact declaration

`GRWTSK.SpecialFunctions.GammaEulerLimit.norm_Gamma_sub_GammaSeq_le_endpoint_errors` in `../GammaEulerLimit.lean`.
Source Git blob: `b04828358d697dd7c61ce5755374fc8e40379ff9`.
Source SHA-256: `74959ab8c30c0509db91e8892b7b8a18f01ed5538a7eb9d5d4165334d072f2a5`.
Statement: For 0<alpha<=beta, every complex z with alpha<=Re(z)<=beta and every natural n != 0, bound the actual complex Euler-Gamma approximation error by the sum of its two actual real endpoint errors.

## Analytical derivation and consumer

Write the same nonnegative cutoff error e_n=exp(-x)-1_(0,n](1-x/n)^n in all three integrals. Prove integrability first. Split the comparison of x^(Re(z)-1) at x=1 and use the two real endpoints as one integrable majorant. There is no restriction on Im(z).

Exact dependencies: Complex.GammaSeq_eq_approx_Gamma_integral; Complex.Gamma_eq_integral; Complex.GammaIntegral_convergent; Real.one_sub_div_pow_le_exp_neg; norm_integral_le_integral_norm; integral_re.
Consumer: GammaSeq_tendstoUniformlyOn_strip: the RHS tends to zero by the canonical pointwise Euler limit; this supplies the local-uniform premise rather than assuming it.
Full written proof, source comparison and hostile checks: `../GammaEulerLimit.md`.
Locator: GammaEulerLimit.md equations (1)-(3).

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
