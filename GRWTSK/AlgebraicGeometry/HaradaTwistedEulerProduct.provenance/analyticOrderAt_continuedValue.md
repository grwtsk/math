# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.analyticOrderAt_continuedValue`

Local attribution: grwtsk contributors. MSC2020: 11M41, 30C15.

Let L be the actual `DirichletCharacter.LFunction chi` and
U(s)=L(s-2)*(1-chi(2)*2^(-s)). At a point s, assume AnalyticAt L,
AnalyticAt U, and U(s) nonzero. Then the actual Mathlib analytic order
of continuedValue at s is twice the analytic order of L at s, in ENat.
No simplicity or finite-order assumption is inserted.

Primary argument: commute the factors in continuedValue=L^2*U to obtain
an actual neighborhood identity with U*L^2. Apply Program 4's existing
`GRWTSK.ResonanceDeterminantReturn.analyticOrder_eq_of_unit_factor`, with
its analytic-germ and nonvanishing premises. Then use
`analyticOrderAt_mul` on L*L, adding its two orders. This explicitly
retains the multiplicity-two source factor rather than copying a set of
distinct zeros. Program 8's finite-product multiplicity work was compared;
it is not an independent proof of this arithmetic multiplier condition.

Consumer: source-faithful divisor transport for the Harada product after
its shifted multiplier has been controlled. The global Euler-product
identity and the present local analytic statement have different domains.
Neither source nonvanishing on the critical strip nor GRH is proved.
The principal-character poles must not instantiate analytic-germ premises.

Source comparison: standard analytic-order multiplicativity, specialized
to the Harada/Dirichlet factorization, not a novelty claim or an independent
formal proof. The reused Program 4 source is
`GRWTSK/NumberTheory/ZetaAndLFunctionsAnalyticTheory/NonrealZerosOfZetaSAndLSChiRiemannAndOtherHypotheses/ResonanceDeterminantReturn.lean`,
blob `b7f5b4f55734b90669c8ee7343b8d59cd70017b5`, at math
`8d7c8b8084caa6ff3cf6b254da449042617519f8`; its evidence remains candidate.

Canonical new file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`;
blob `aa2e8288531833614c394e7c1fef38ac0d918530`.
[Full pins, Harada edition/locator, SHA-256 and reproduction targets](hasProd_primeFactor.md).
Elaboration, kernel replay, transitive axiom audit, independent review and
CI: **NOT_RUN**. Novelty: UNASSESSED.
