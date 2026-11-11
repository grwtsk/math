# `GRWTSK.RationalHermiteSignCertificates.nonnegative_iff_rational`

Local attribution: grwtsk contributors. [Source](../RationalHermiteSignCertificates.lean); [exact context](context.md).

For every finite real matrix H, nonnegative quadratic value on every real vector is equivalent to nonnegative value on every rational vector after casting. The forward implication restricts the domain. For the converse, a negative real value would supply a rational negative value by `exists_rational_negative`, contradicting the rational premise.

Consumer: the finite Hermite real-support criterion in `ZeroDivisorIntervalCertificates`. The rational quantifier is universal, not a finite sample or merely the coordinate basis. This does not identify H with an arithmetic form. Standard consequence, no novelty claim. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit, independent review NOT_RUN.
