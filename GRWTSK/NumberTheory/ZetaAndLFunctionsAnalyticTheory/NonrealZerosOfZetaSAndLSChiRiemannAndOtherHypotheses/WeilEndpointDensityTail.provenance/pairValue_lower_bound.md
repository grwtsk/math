# pairValue_lower_bound — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6831263879.

## Literal declaration

File: [WeilEndpointDensityTail.lean](../WeilEndpointDensityTail.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointPairDefect.pairValue_lower_bound`.
For all a,b,z,w in C,

    -|a-conj(b)|^2*(|z|^2+|w|^2) <= pairValue a b z w.

All squared norms are `Complex.normSq` in the actual source.
No nonnegative diagonal or critical-line hypothesis is imposed.

## Complete proof, source return and comparison

The preceding `reflection_difference_identity` writes the left correction
plus pairValue as two nonnegative squared norms. Subtract the correction.
The source uses the exact identity, `Complex.normSq_nonneg` twice, and
`linarith`; no elaboration or tactic execution has been observed.

The formal consumer is `phased_multiplicity_lower_bound`. The written
consumer is WEDT-v1-1: the negative eigenvalue magnitude of the actual
reflected endpoint-pair matrix is at most m|a-conj(b)|^2. WEDT then bounds
this reflection difference BEFORE absolute values are taken separately,
retaining its quadratic dependence on the distance from the critical line.
The complete complex-transform derivative and infinite arithmetic tail are
written, not additional formal declarations supplied by this inequality.

This is local algebra, not a direct formalization of a paper. The actual
pair is WEPD-v1-1, with both complex locations and analytic multiplicity.
The downstream Simonic Theorem 1 input (arXiv:1910.08274v2) is not imported.
The bound is sharp when a,b are unequal positive real and the coefficient
vector is (1,-1), in the Rayleigh-quotient sense: the pair value is then
-2(a-b)^2. It is therefore not an assertion of pair nonnegativity.

## Pins and evidence

Source blob: `f9690668d97cece7908511e6f083b1a5263dbf2f`.
Initial math main: `05c3158365036f6eaa025d78cf2586dbbfb81f20`.
Lean: `leanprover/lean4:v4.34.1`.
Mathlib: `d13f23b723b8a846827a245b89c10fc7d3f11612`.
The inspected canonical Complex/Basic source has blob
`02ad0aa87f370d1fd2bbb34072fc95cefcb27d87`.
Status: SOURCE_PROOF_CANDIDATE; complete written algebra supplied.
Elaboration, complete dependency build, fresh kernel replay, transitive axiom
audit and independent analytical review: NOT_RUN. Originality: UNASSESSED.
No executed compiler failure or passing build is asserted. The proof body
contains no placeholder proof or new research axiom; this is source inspection,
not a transitive axiom audit. No existing evidence status is promoted.
