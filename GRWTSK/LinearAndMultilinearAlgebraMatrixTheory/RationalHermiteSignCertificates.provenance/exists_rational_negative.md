# `GRWTSK.RationalHermiteSignCertificates.exists_rational_negative`

Local attribution: grwtsk contributors. Source: [module](../RationalHermiteSignCertificates.lean); exact identity and Mathlib revision: [context](context.md).

For any finite real matrix H, existence of a real vector x with Q_H(x)<0 implies existence of a rational vector q whose real cast has Q_H(q)<0. The strict inequality is essential. Primary argument: the negative locus is open by continuity; `isOpen_pi_iff'` gives a product neighborhood; `Rat.denseRange_cast.exists_mem_open` chooses a rational point in each coordinate. The argument permits singular matrices and repeated source zeros.

Consumer: finite rational negative packets. It replaces the prior real-coefficient existence witness by a rational one, but supplies neither a rational approximation algorithm nor a bit-size bound. Rational vectors cannot in general preserve an arbitrary exact equality, so the proof must not be reused for zero-eigenvector reconstruction. Standard density consequence; no novelty claim. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit, independent review NOT_RUN.
