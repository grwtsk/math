# `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_of_checked_zeroTolerance`

Local attribution: grwtsk contributors. [Source](../ZeroDivisorIntervalCertificates.lean); [context](context.md).

For a positive finite divisor with conjugation-closed support, assume an existing rational Packet encloses its exact Hermite matrix, the existing PSD certificate checker accepts, and tolerance is exactly zero. Then all support points are real. Primary proof specializes Program 10's all-real-vector lower bound to zero tolerance and invokes the already maintained finite Hermite converse.

Consumer: one exact finite reality certificate, including a singular matrix if the supplied checker certificate is exact. No completeness of a positive-certificate algorithm or analytic moment evaluator follows. A small positive tolerance cannot replace the zero-tolerance premise. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit and independent review NOT_RUN.
