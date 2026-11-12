# admissible_core_midpoint_error

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38. Coordination: math#1801 / 6815942210.

## Exact declaration

`GRWTSK.NumberTheory.WeilFourierQuadrature.admissible_core_midpoint_error` in `../WeilFourierQuadrature.lean`.
Source Git blob: `be5e3afa9925623c322d60518aab08a99d3e5e14`.
Source SHA-256: `81f21e5354a7553fc6ba5d30d714c060050a673b30f281d31d880e8f90fbf7cf`.
Statement and quantifiers: For sigma,T>0, N>=0, every admissible complex f and m>=1, abs(integral_[-T,T] core-coreMidpoint)<=2*coreSlope*T^2/m.

## Analytical derivation and provenance

Derive continuity and Lipschitz regularity from the test. Bound the deviation throughout each entire cell, integrate it, and sum the adjacent interval integrals with the exact mesh 2*T/m.
Dependencies and exact locators: `norm_integral_le_of_norm_le_const; sum_integral_adjacent_intervals; admissible_core_sub_bound`.
Primary/source context: `Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Attribution: Yury Kudryashov, Patrick Massot, Sebastien Gouezel.
Direct reference: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/MeasureTheory/Integral/IntervalIntegral/Basic.lean
Written derivation: `../WeilFourierQuadrature.md`, equation (6).
Consumer: admissible_archimedean_midpoint_enclosure.
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
