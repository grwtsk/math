# admissible_archimedean_sample_enclosure

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38. Coordination: math#1801 / 6815942210.

## Exact declaration

`GRWTSK.NumberTheory.WeilFourierQuadrature.admissible_archimedean_sample_enclosure` in `../WeilFourierQuadrature.lean`.
Source Git blob: `be5e3afa9925623c322d60518aab08a99d3e5e14`.
Source SHA-256: `81f21e5354a7553fc6ba5d30d714c060050a673b30f281d31d880e8f90fbf7cf`.
Statement and quantifiers: For q>=1,sigma,T>0,N>=0,m>=1 and canonical admissible f, with abs(true baseline-B)<=eta and abs(true core(t_j)-v_j)<=e_j, spectralFunctional lies in [Rhat-E,Rhat+E+tailBudget], where Rhat=B+h*sum v_j and E=eta+gridBudget+h*sum e_j.

## Analytical derivation and provenance

Compose the actual-test midpoint enclosure with independent absolute errors for the baseline and samples. No assumed positivity, midpoint-to-cell inference, or unbounded coverage inference is used.
Dependencies and exact locators: `admissible_archimedean_midpoint_enclosure; coreMidpoint_sample_error; ordered real arithmetic`.
Primary/source context: `GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFourierMoments.lean` at `69e41c27fb6ba3518728fad8d0629a564bfc68b1`.
Attribution: grwtsk contributors; local classical consequence.
Direct reference: https://github.com/grwtsk/math/blob/69e41c27fb6ba3518728fad8d0629a564bfc68b1/GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/WeilFourierMoments.lean
Written derivation: `../WeilFourierQuadrature.md`, equation (8).
Consumer: a future source-bound numerical archimedean certificate; not full Weil positivity.
Classical local consequence/adaptation, not direct formalization of an uninspected
historical paper. Upstream source headers and Apache-2.0 imports are preserved;
local authorship is AI-assisted grwtsk contributors work. No novelty is claimed.

## Evidence and open obligations

Inspected math main: `69e41c27fb6ba3518728fad8d0629a564bfc68b1`.
Lean `leanprover/lean4:v4.34.1`; mathlib `d13f23b723b8a846827a245b89c10fc7d3f11612`.
SOURCE_PROOF_CANDIDATE. Elaboration, kernel replay, transitive axiom audit,
independent review and numerical functional certification: NOT_RUN.
Originality: UNASSESSED. Imported local candidates are not promoted.
True scalar/sample evaluation and full signed prime/pole positivity remain
separate. No RH/GRH or universal positivity-certificate existence follows.
