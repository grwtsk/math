# reflection_difference_identity — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6831263879.

## Literal declaration and mathematical consumer

File: [WeilEndpointDensityTail.lean](../WeilEndpointDensityTail.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointPairDefect.reflection_difference_identity`.
For every a,b,z,w in C, with no further hypothesis, the declaration states

    pairValue a b z w + |a-conj(b)|^2*(|z|^2+|w|^2)
      = |conj(a)*z+a*w|^2 + |b*z+conj(b)*w|^2.

The Lean source uses `Complex.normSq` for these squared norms. Its local
`pairValue` is exactly 2Re(a*b)(|z|^2+|w|^2)
+2Re(conj(z)*w*(a^2+conj(b)^2)); it is not a new Weil source.

## Complete proof and provenance

Expand the two norms on the right. Their diagonal coefficient is
|a|^2+|b|^2 and their cross coefficient is a^2+conj(b)^2. Subtract
2Re(a*b) from the diagonal: the difference is |a-conj(b)|^2.
This proves the identity; the source expresses this expansion with `ring`.
No execution of that tactic is claimed.

Consumer: WEDT-v1-1, equation (3), of
[WeilEndpointDensityTail.md](../WeilEndpointDensityTail.md), after substitution
of WEPD-v1-1's literal transforms and absorption of exp(i*tau*L) into w.
This gives a positive sum MINUS a specified correction, not positivity of
the signed pair. The determinant obstruction and full mixed inequality remain.

This is local algebra derived from the canonical endpoint formulas, not copied
external Lean or a formalization of Simonic's density theorem. That paper,
arXiv:1910.08274v2, Theorem 1, is used only in the adjacent WRITTEN downstream
tail argument, with its range, additive errors and external proof status retained.

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
