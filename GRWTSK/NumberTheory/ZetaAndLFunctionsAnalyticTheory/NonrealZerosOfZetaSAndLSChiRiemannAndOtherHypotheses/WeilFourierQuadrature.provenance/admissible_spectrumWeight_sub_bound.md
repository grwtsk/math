# admissible_spectrumWeight_sub_bound

Author: grwtsk contributors. Date: 2026-11-11 America/Los_Angeles.
MSC2020: 11M26 (primary), 65D32, 42A38. Coordination: math#1801 / 6815942210.

## Exact declaration

`GRWTSK.NumberTheory.WeilFourierQuadrature.admissible_spectrumWeight_sub_bound` in `../WeilFourierQuadrature.lean`.
Source Git blob: `be5e3afa9925623c322d60518aab08a99d3e5e14`.
Source SHA-256: `81f21e5354a7553fc6ba5d30d714c060050a673b30f281d31d880e8f90fbf7cf`.
Statement and quantifiers: For every admissible complex f and real s,t, abs(w_f(s)-w_f(t))<=(L0*Lx/pi)*abs(s-t).

## Analytical derivation and provenance

Factor the difference of squared norms, use the reverse triangle inequality and both global Fourier bounds, and divide by the positive normalization 2*pi.
Dependencies and exact locators: `admissible_plusFourier_bounds; abs_norm_sub_norm_le; ordered real arithmetic`.
Primary/source context: `Mathlib/Analysis/Normed/Group/Basic.lean` at `d13f23b723b8a846827a245b89c10fc7d3f11612`.
Attribution: Patrick Massot, Johannes Holzl, Yael Dillies; imported upstream authorship retained.
Direct reference: https://github.com/leanprover-community/mathlib4/blob/d13f23b723b8a846827a245b89c10fc7d3f11612/Mathlib/Analysis/Normed/Group/Basic.lean
Written derivation: `../WeilFourierQuadrature.md`, equation (3).
Consumer: admissible_core_sub_bound.
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
