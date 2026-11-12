# phased_multiplicity_lower_bound — individual declaration provenance

By grwtsk contributors. Version 1, 2026-11-12.
Coordination: grwtsk/math#1801, scope comment 6831263879.

## Literal declaration

File: [WeilEndpointDensityTail.lean](../WeilEndpointDensityTail.lean).
Fully qualified declaration:
`GRWTSK.NumberTheory.WeilEndpointPairDefect.phased_multiplicity_lower_bound`.
For all a,b,phase,z,w in C and m in R, assume m>=0 and |phase|^2=1.
Then

    -m*|a-conj(b)|^2*(|z|^2+|w|^2)
        <= m*pairValue a b z (phase*w).

The source uses `Complex.normSq` and the exact hypotheses `hm`, `hphase`.
It does not assume any arithmetic form is positive.

## Complete proof and exact downstream consumer

Apply `pairValue_lower_bound` to z,phase*w. Multiply by nonnegative m.
Multiplicativity of normSq and |phase|^2=1 return the coefficient norm to
|z|^2+|w|^2. These are precisely the steps in the Lean body.

For an actual two-point reflection orbit, phase=exp(i*(gamma+eta)*L),
and m is the common analytic multiplicity. Thus WEDT-v1-1's signed matrix
is bounded below by the stated error times the identity. For fixed points
on the critical line, WEPD counts the location once and uses its actual
rank-one positive contribution; no artificial doubling is licensed here.
The endpoint coefficient norm is not the physical L2 norm: the latter
conversion still needs g_L=1-exp(-L)-Lexp(-L/2).

This local consequence of the preceding exact algebra supplies the entry
used by the WRITTEN density-tail summation, not an automatically positive
replacement model. Simonic's explicit zeta Theorem 1, arXiv:1910.08274v2,
is a separate downstream input. No Dirichlet-uniform numerical version or
new inhabitant of a universal RH/GRH positivity premise is supplied.

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
