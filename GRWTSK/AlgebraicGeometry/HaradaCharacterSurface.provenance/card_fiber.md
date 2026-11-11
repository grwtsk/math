# Fiber cardinality for the exact affine polynomial

Declaration: `GRWTSK.AlgebraicGeometry.HaradaCharacterSurface.card_fiber`.
Local attribution: grwtsk contributors.

## Exact statement and representation

For any type K with Field, Fintype and DecidableEq instances, put q=card K.
For every z in K, the cardinality of
`{(x,y) : K × K // z^3 - x*y*z^2 + (x^2+y^2-1)*z - x*y = 0}`
is `2*q-1` if z=0, q if z is nonzero and z^2=1, and q-1 otherwise.
The subtraction is natural-number subtraction; q>0 is used explicitly.

## Mathematical argument and comparison

The polynomial is `(z*x-y)*(x-z*y) - z*(1-z^2)`. When `1-z^2 != 0`,
the transformation `(x,y) -> (z*x-y,x-z*y)` has inverse
`(u,v) -> ((v-z*u)/(1-z^2),(z*v-u)/(1-z^2))`. Both compositions are
proved algebraically, and the equivalence restricts to the actual equation
fibers. For c!=0, solutions of uv=c correspond to nonzero u, with v=c/u.
For c=0, the disjoint partition `(0,v)` and `(u,0), u!=0` gives q+(q-1).
At z=1 the equation is (x-y)^2=0; at z=-1 it is -(x+y)^2=0. In a field
these give q points each. Factoring z^2-1 classifies all remaining cases.

This is a helper rederivation for the exact affine model, not a formalization
of the link-group/canonical-component identification. Its consumer is
`card_points`, which supplies local arithmetic data for Harada's factorization.
Hostile cases retained: characteristic two and z=0,1,-1. Division is not used
at z^2=1. The square-zero argument would fail over rings with nilpotents.

## Source and evidence

Shinya Harada, *Hasse-Weil zeta functions of SL2-character varieties of arithmetic
two-bridge link complements*, arXiv:1207.6177v2 (31 January 2014), p. 1,
Introduction: polynomial f2 and unnumbered Theorem, case L2=(12/5).
https://arxiv.org/abs/1207.6177v2 . The inspected PDF identifies this edition.
Paper byte digest: NOT_COMPUTED. No third-party PDF is copied. This is an
elementary paper-motivated rederivation, not an imported Lean proof or a novelty claim.

Canonical source: `GRWTSK/AlgebraicGeometry/HaradaCharacterSurface.lean`.
Source SHA-256: `9ac7156b4686ba41a1ef026b57da359df6b54ff79c50cee624dbe2499151c87b`.
Inspected base: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Publication commit is identified by this file's Git history and
https://github.com/grwtsk/math/issues/1802 .
Lean pin: v4.34.1. Mathlib pin: d13f23b723b8a846827a245b89c10fc7d3f11612.
No dependency or root-import change is made.

Status: source candidate, written argument. Elaboration, fresh kernel replay,
transitive axiom audit, independent review and CI: NOT_RUN. No new axiom or
proof placeholder is introduced in this module; this is not an axiom audit.
The authoring session has no Lean runtime and dispatched no proof execution.
The inspected .github tree has no workflow definitions.

Reproduction target, NOT an executed receipt:
`lake build GRWTSK.AlgebraicGeometry.HaradaCharacterSurface`.
After a successful build, separately check the exact declarations and their
transitive axioms. Operational execution receipts belong outside this repository.
Euler products, analytic continuation, Weil positivity and GRH are not established.
