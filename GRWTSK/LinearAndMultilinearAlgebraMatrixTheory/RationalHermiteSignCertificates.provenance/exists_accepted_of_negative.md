# `GRWTSK.RationalHermiteSignCertificates.exists_accepted_of_negative`

Local attribution: grwtsk contributors. [Source](../RationalHermiteSignCertificates.lean); [context](context.md).

For a fixed finite real H and packet family P_k, assume every guard, every exact enclosure, arbitrarily small error budgets for each rational vector, and some strictly negative real value. Then some rational q and finite k satisfy `negativeCheck (P k) q = true`. Primary proof: choose rational negative q, then a budget less than -Q_H(q)/2. Reversing the entrywise enclosure gives center quadratic <= Q_H(q)+budget, so the tested upper expression is <= Q_H(q)+2*budget<0.

Consumer: conditional completeness of finite negative source certificates. The factor TWO is essential because the center can lie at the upper edge of its enclosure. No monotonicity, convergence rate, enclosure implementation, effective witness size or bounded search is asserted. Existing real-witness and Program 10 enclosure logic are reused, not confused with an arithmetic supplier. FORMAL_SOURCE_CANDIDATE; formal checks and independent review NOT_RUN.
