# `GRWTSK.ZeroCountCertificates.FiniteDivisor.source_nonreal_of_negativeCheck`

Local attribution: grwtsk contributors. [Source](../ZeroDivisorIntervalCertificates.lean); [context](context.md).

Given a positive finite divisor d, exact `IdentifiesZeros f D`, a rational Packet enclosing d.divisorMatrix and accepted negative rational q, there exists z in D with f(z)=0 and Im(z) nonzero. Primary proof: negativeCheck_sound yields a strictly negative literal moment value; the existing `exists_nonreal_of_negative` gives a nonreal positive-weight node; exact support/source equivalence gives its source equation and domain.

Conjugation closure is not needed for this negative implication. The function f here is explicitly supplied, not implicitly an arithmetic L-function. Spectral/arithmetic coordinate conversion and nontrivial-strip restriction remain the caller's responsibility. This theorem is not a negative compactly supported Weil test. FORMAL_SOURCE_CANDIDATE; formal checking, arithmetic execution and independent review NOT_RUN.
