# `GRWTSK.RationalHermiteSignCertificates.negativeCheck_sound`

Local attribution: grwtsk contributors. [Source](../RationalHermiteSignCertificates.lean); [exact context](context.md).

For rational Packet P, rational q and real matrix H, assume `Encloses P H` and `negativeCheck P q = true`. Then the literal real quadratic Q_H(cast q) is strictly negative. Primary proof: acceptance extracts the strict rational upper inequality, `negativeUpper_cast` returns the real error budget, and the existing Program 6 `negative_of_errorBudget` supplies the conclusion.

Consumer: `FiniteDivisor.source_nonreal_of_negativeCheck`. Encloses is an external mathematical premise; neither Packet.Guard nor a hash supplies it. False acceptance output is inconclusive. No source zero, contour evaluation or finite arithmetic-to-runtime refinement is manufactured. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
