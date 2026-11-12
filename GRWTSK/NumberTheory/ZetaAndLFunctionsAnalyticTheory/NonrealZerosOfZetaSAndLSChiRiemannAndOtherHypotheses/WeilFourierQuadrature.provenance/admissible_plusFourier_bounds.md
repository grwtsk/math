# admissible_plusFourier_bounds

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38. Coordination: math#1801 / 6815942210.

## Exact declaration

`GRWTSK.NumberTheory.WeilFourierQuadrature.admissible_plusFourier_bounds` in `../WeilFourierQuadrature.lean`.
Source Git blob: `be5e3afa9925623c322d60518aab08a99d3e5e14`.
Source SHA-256: `81f21e5354a7553fc6ba5d30d714c060050a673b30f281d31d880e8f90fbf7cf`.
Statement and quantifiers: For every canonical admissible complex f and real s,t, norm(plusFourier f s)<=L0 and norm(plusFourier f s-plusFourier f t)<=Lx*abs(s-t).

## Analytical derivation and provenance

Compensate two unit complex phases, apply the pinned phase bound, then integrate against the genuinely integrable first absolute physical moment.
Dependencies and exact locators: `Real.norm_exp_I_mul_ofReal_sub_one_le; SchwartzMap.integrable_pow_mul; admissible_plusFourier_integrable; integral_mono_ae`.
Primary/source context: `Mathlib/Analysis/SpecialFunctions/Trigonometric/Bounds.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Attribution: David Loeffler, Yael Dillies, Bhavik Mehta.
Direct reference: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/SpecialFunctions/Trigonometric/Bounds.lean
Written derivation: `../WeilFourierQuadrature.md`, equation (2).
Consumer: admissible_spectrumWeight_sub_bound and the actual-core quadrature regularity.
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
