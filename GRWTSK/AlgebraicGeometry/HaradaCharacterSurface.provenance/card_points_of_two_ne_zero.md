# Odd-characteristic specialization

Declaration: `GRWTSK.AlgebraicGeometry.HaradaCharacterSurface.card_points_of_two_ne_zero`.
Local attribution: grwtsk contributors.

For every finite field K with a chosen decidable equality and the explicit
hypothesis `(2 : K) != 0`, the actual affine solution count is `(card K)^2+2`.
The proof specializes `card_points`; it is not an independent proof. See
[the full correspondence record](card_points.md) for the polynomial, coordinate
representation, complete counting argument and unresolved source-return bridges.
The hypothesis excludes the characteristic-two merger and cannot be discarded.

Paper: Shinya Harada, *Hasse-Weil zeta functions of SL2-character varieties of
arithmetic two-bridge link complements*, arXiv:1207.6177v2, 31 January 2014,
p. 1, f2 and unnumbered Theorem, L2=(12/5) case.
https://arxiv.org/abs/1207.6177v2 . Paper byte digest: NOT_COMPUTED.
This is a local consequence of the counting formalization, not the global zeta
theorem, an imported Lean proof, a novel result or a GRH theorem. The intended
consumer is the ordinary-prime Euler factor. No PDF is redistributed.

Canonical source: `GRWTSK/AlgebraicGeometry/HaradaCharacterSurface.lean`.
Source SHA-256: `9ac7156b4686ba41a1ef026b57da359df6b54ff79c50cee624dbe2499151c87b`.
Inspected base: `grwtsk/math@6cab1fb0725c00a9d06b112ffc215e3523396c50`.
Publication commit: Git history and https://github.com/grwtsk/math/issues/1802 .
Configuration: Lean v4.34.1; mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
No dependency or root-import changes.

Status: source candidate. Elaboration, fresh kernel replay, transitive axiom
audit, independent review and CI: NOT_RUN. No proof execution was dispatched.
There was no Lean runtime in the authoring session. The inspected .github tree
contains no workflows. Static inspection is not verification; the file contains
no new axiom or proof placeholder, but its transitive axioms are not audited.

Reproduction target, not a receipt:
`lake build GRWTSK.AlgebraicGeometry.HaradaCharacterSurface`.
A subsequent authorized exact-source check must also inspect `#print axioms`.
All analytic Euler-product, continuation, Weil-positivity and GRH bridges remain
outside this statement and unformalized by this module.
