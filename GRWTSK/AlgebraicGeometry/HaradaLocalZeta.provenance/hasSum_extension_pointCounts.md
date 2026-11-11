# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.hasSum_extension_pointCounts`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25; 30B10.

Let K be any finite field and E(n) actual finite K-algebra fields with
`finrank K (E n) = n+1` for every natural n. If `norm ((card K : C)^2*z)<1`
and `norm z<1`, the series with terms `(card (Points (E n)) : C)*z^n`
has sum `logDeriv (localFactor (card K : C) (residualMultiplicity K)) z`.
The point-count coefficients are the actual polynomial solution counts,
not free numerical inputs or hypotheses asserting the desired cardinality.

Primary argument: apply `card_points_extension` to each E(n), rewrite its
specified degree, cast its exact natural cardinality into C, and apply
`hasSum_localFactor_logDeriv`. Extension fields and algebra structures are
explicit inputs. No compatibility among the E(n) is needed for this count
invariant. Existence or a canonical construction of a compatible tower is
not asserted in this theorem.

Consumer: the precise source-bound generating series needed for local
reconstruction. The theorem does not construct a global completed zeta
function or infer source identity from samples.

Source comparison: local consequence of Shinya Harada,
[arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2), 31 January 2014,
p. 1, f2 and the point-count exponential. The original
HaradaCharacterSurface.Points is reused without changing its definition.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Imported counts remain source candidates.
Novelty: UNASSESSED; no novelty or GRH claim.
