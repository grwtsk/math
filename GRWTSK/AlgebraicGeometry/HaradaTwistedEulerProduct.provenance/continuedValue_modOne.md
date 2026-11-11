# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.continuedValue_modOne`

Local attribution: grwtsk contributors. MSC2020: 11G25, 11M06.

For the trivial character modulo one, continuedValue is exactly
zeta(s)^2*zeta(s-2)*(1-2^(-s)). Mathlib's LFunction_modOne_eq identifies
the actual L-functions with zeta. Subsingleton arithmetic in ZMod 1 gives
chi(2)=1. No Euler-product expansion outside Re(s)>3 is used.

This specializes the new character-weighted construction to Harada's
known formula for the explicit affine f2 model of L2=(12/5), arXiv:
1207.6177v2, p.1. The equality is an identity of the library's total
expressions; it does not assign finite meromorphic values at poles.

Consumer: exact untwisted source return and a normalization check, not a
proof of the link-group/canonical-component comparison or of RH.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`;
blob `aa2e8288531833614c394e7c1fef38ac0d918530`.
[Complete pins, source comparison, SHA-256 and reproduction targets](hasProd_primeFactor.md).
Elaboration, kernel replay, transitive axiom audit, independent review and
CI: **NOT_RUN**. Novelty: UNASSESSED; the zeta identity is known prior art.
