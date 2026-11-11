# `GRWTSK.AlgebraicGeometry.HaradaTwistedEulerProduct.residualMultiplicity_zmod`

Local attribution: grwtsk contributors. MSC2020: 14G15, 11G25.

For prime p, the already defined residual multiplicity of the actual field
`ZMod p` is 1 exactly when p=2 and is 2 otherwise. The proof uses
`CharP.cast_eq_zero_iff` to turn 2=0 in ZMod p into p dividing 2;
primality excludes p=1. It then rewrites the existing definition, rather
than assigning a free characteristic flag to a model.

Consumer: identify each all-prime local Euler factor with its prime-field
source. A nonprime modulus is deliberately not admitted as a finite field.
This is an elementary consequence of the Harada point-count convention,
not a new count theorem or a global zeta assertion.

Canonical file: `GRWTSK/AlgebraicGeometry/HaradaTwistedEulerProduct.lean`.
Exact source blob `aa2e8288531833614c394e7c1fef38ac0d918530`;
[full pins, Harada edition/locator, SHA-256, comparison and reproduction targets](hasProd_primeFactor.md).
Mathlib CharP/Defs blob `1a8c5b1237d949074eae83c1046ef940e60a6aaf` was inspected
at the recorded Mathlib pin. Lean elaboration, kernel replay, transitive
axiom audit, independent review and CI: **NOT_RUN**. Novelty: UNASSESSED.
