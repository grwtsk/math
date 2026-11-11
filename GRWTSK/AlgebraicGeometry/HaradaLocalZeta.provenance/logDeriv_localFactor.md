# `GRWTSK.AlgebraicGeometry.HaradaLocalZeta.logDeriv_localFactor`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25; 30B10.

For complex q,z and natural m, with `1-q^2*z != 0` and `1-z != 0`,
`logDeriv (localFactor q m) z = q^2/(1-q^2*z) + m/(1-z)`.
Every denominator hypothesis is explicit. The coefficient m retains its
multiplicity; it is not a count of distinct roots.

Primary argument: the affine reciprocal has derivative
`d/dz (1-a*z)^(-1) = a/(1-a*z)^2`. The logarithmic derivative of a product is
the sum of those of its factors, and that of an m-th power is m times the
original logarithmic derivative. Apply these identities and field algebra.
Pinned APIs inspected: `HasDerivAt.inv`, `logDeriv_mul`, `logDeriv_fun_pow`,
and `logDeriv_apply` in Mathlib's calculus/logarithmic-derivative hierarchy.

Consumer: identify the all-degree point-count series as the exact logarithmic
derivative before applying anchored source rigidity. This does not justify
an infinite global product, spectral determinant, or pole-free completion.

Source comparison: elementary consequence of the local factor associated with
f2 in Shinya Harada, [arXiv:1207.6177v2](https://arxiv.org/pdf/1207.6177v2),
31 January 2014, p. 1; not an independently novel analytic identity.
Canonical file: `GRWTSK/AlgebraicGeometry/HaradaLocalZeta.lean`.
Source SHA-256: `1b1e145e6447f211e8905469fbec95e58225ef1a8609faf2992ba5a2c6be4fc3`.
Source blob: `57bc19ddc1bef4cf1517fad006bfa9966995e5bb`.
Inspected math revision: `5f66eb82a40921253664f53602851091ccd01d94`.
[Full pins and reproduction targets](eqOn_of_extension_pointCounts.md);
[publication coordination](https://github.com/grwtsk/math/issues/1802).
Lean elaboration, fresh kernel replay, transitive axiom audit, independent
review and CI: **NOT_RUN**. Novelty: UNASSESSED; no GRH claim.
