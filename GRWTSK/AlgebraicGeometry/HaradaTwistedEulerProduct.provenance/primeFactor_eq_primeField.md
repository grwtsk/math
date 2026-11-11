# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.primeFactor_eq_primeField`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25, 11M41.

For a prime p, every positive-modulus Dirichlet character chi and every
complex s, the new primeFactor equals the existing localFactor evaluated
at q=card(ZMod p), m=residualMultiplicity(ZMod p), and
z=chi(p)*p^(-s). The proof substitutes ZMod.card and the separately proved
characteristic identification. It does not identify an arbitrary fitted
rational function with an arithmetic source.

Consumer: the all-prime convergence theorem uses the local factor whose
all-extension count series was derived in HaradaLocalZeta. The twist is
an explicit weighted substitution, not a constructed geometric local system.
Equality of totalized expressions at poles is not asserted to be an equality
of finite meromorphic values. No global positivity follows.

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`;
blob `aa2e8288531833614c394e7c1fef38ac0d918530`.
[Exact pins, Harada source edition/locator, SHA-256 and reproduction targets](hasProd_primeFactor.md).
Lean elaboration, kernel replay, transitive axiom audit, independent review
and CI: **NOT_RUN**. Novelty: UNASSESSED; elementary source identification.
