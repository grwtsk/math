# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.primeFactor_eq_eulerFactors`

Local attribution: grwtsk contributors. MSC2020: 11G25, 11M41.

For every positive-modulus Dirichlet character, complex s and prime p,
primeFactor is eulerFactor(s)^2 times eulerFactor(s-2), multiplied by
1-chi(2)*2^(-s) at p=2 and by one elsewhere.

Primary argument: complex-power addition for nonzero base p gives
p^2*chi(p)*p^(-s)=chi(p)*p^(-(s-2)). The local m=2 denominator splits
into the three ordinary Euler factors. For m=1, cancel one unshifted
denominator; the zero-denominator case is separately handled in Lean's
totalized algebra. This is a factor identity, not a meromorphic value
claim or a convergence assertion. Genuine convergence is a separate theorem.

Consumer: factorwise input to HasProd multiplication. Omitting p=2 is
not licensed: the exact s=4 regression records the lost 15/16 factor.
This is a standard consequence of Harada's local counts and the usual
Dirichlet twist, not an asserted theorem quoted verbatim from his paper.

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`;
blob `aa2e8288531833614c394e7c1fef38ac0d918530`.
[Full source comparison, pins, SHA-256 and reproduction targets](hasProd_primeFactor.md).
Elaboration, kernel replay, axiom audit, independent review and CI: **NOT_RUN**.
Novelty: UNASSESSED; no GRH assertion.
