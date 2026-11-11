# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.localFactor_characteristic_correction`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25.

For every field K and complex q,z with z!=1,
`localFactor q (residualMultiplicity K) z = localFactor q 2 z * c(z)`,
where c(z)=1-z when 2=0 in K and c(z)=1 otherwise.

Primary argument: split on 2=0 in K. In the first case, use the nonzero
hypothesis to cancel one of the two reciprocal (1-z) factors; in the other
case the expressions agree directly. No cancellation involving 1-q^2*z is
needed. The theorem is not a statement about meromorphic values at z=1.

Consumer: recover the exact exceptional local numerator factor. For the
rational prime 2, substitution z=2^(-s) would recover 1-2^(-s); that analytic
substitution and the infinite Euler product are separate formal obligations.
Dropping this factor fails the companion log-derivative regression at zero.

Source comparison: the explicit correction in Shinya Harada,
[arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2), 31 January 2014,
p. 1, unnumbered theorem for L2=(12/5). This is its local algebraic
consequence, not a formal proof of the paper's full global theorem.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no novelty or GRH claim.
