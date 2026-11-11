# `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_of_checked_dyadic`

Local attribution: grwtsk contributors. [Source](../ZeroDivisorIntervalCertificates.lean); [context](context.md).

Fix a positive finite divisor, conjugation closure and one rational metric G whose real quadratic is nonnegative. For EVERY natural k, assume a sound enclosure packet and a finite rational PSD certificate accepted by the existing checker, metric exactly G, and tolerance 2^-k. Then every divisor point is real. Primary proof gets `Q_H(x)>=-2^-k Q_G(x)` for all k, takes the existing scalar small-error limit for each fixed x, and applies the finite Hermite converse.

The metric can be singular, and zero metric mass is handled without division. Keeping G fixed is essential to this limit; allowing its value to grow like 2^k would defeat vanishing error. The theorem does not convert a finite prefix into all-accuracy coverage. Consumer: repeated-zero-safe arithmetic window certification. FORMAL_SOURCE_CANDIDATE; formal checks and independent review NOT_RUN.
