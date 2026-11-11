# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.continuedValue_zero_iff`

Local attribution: grwtsk contributors. MSC2020: 11M41, 30C15.

For a positive-modulus Dirichlet character and point s, if
U(s)=LFunction chi (s-2)*(1-chi(2)*2^(-s)) is nonzero, then
continuedValue chi s=0 if and only if LFunction chi s=0.

Primary argument: continuedValue=LFunction^2*U. In C a product with
nonzero U vanishes exactly when the square, hence its base, vanishes.
This pointwise theorem requires no analytic hypothesis; the subsequent
analytic-order theorem is strictly stronger and has additional premises.

Consumer: source return for the actual continued Dirichlet L-function.
Nonvanishing of U throughout the primitive critical strip is NOT proved
here. Dropping that premise admits zeros from the shifted or correction
factor. No critical-line exclusion or new GRH predicate is supplied.

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`;
blob `aa2e8288531833614c394e7c1fef38ac0d918530`.
[Source comparison, pins, SHA-256 and reproduction targets](hasProd_primeFactor.md).
Elaboration, kernel replay, transitive axiom audit, independent review and
CI: **NOT_RUN**. Novelty: UNASSESSED; elementary conditional consequence.
