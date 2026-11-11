# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.card_points_extension`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25.

## Statement and primary argument

For every pair of finite fields K,E with an actual K-algebra structure on E,
`card (HaradaCharacterSurface.Points E) = card K ^ (2 * finrank K E) + residualMultiplicity K`.
Here residualMultiplicity is 1 when 2=0 in K and 2 otherwise. The original
polynomial solution type is retained; no point-count conclusion is assumed.

The field algebraMap is injective, so 2=0 in E if and only if 2=0 in K.
Apply HaradaCharacterSurface.card_points to E, substitute the pinned
`Module.card_eq_pow_finrank`, and combine the powers. The result holds for
all finite extension degrees, not just a tested finite list.

Consumer: the all-degree local logarithmic-derivative series and its normalized
source identification. The theorem does not construct a compatible tower,
a number field, an Euler product, or a link-group representation variety.

## Source correspondence and evidence

This is a standard consequence of the affine point count in Shinya Harada,
*Hasse-Weil zeta functions of SL2-character varieties of arithmetic two-bridge
link complements*, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1: f2 and the unnumbered theorem for L2=(12/5).
The finite-dimensional cardinality theorem was inspected in Mathlib's
`Mathlib/FieldTheory/Finiteness.lean` at d13f23b723b8a846827a245b89c10fc7d3f11612.

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
See [reconstruction provenance](eqOn_of_extension_pointCounts.md) for full
pins and reproduction targets and [issue #1802](https://github.com/grwtsk/math/issues/1802)
for publication readback. Lean elaboration, fresh kernel replay, transitive
axiom audit, independent review and CI: **NOT_RUN**. The imported count remains
a source candidate. Novelty: UNASSESSED; no novelty or GRH claim.
