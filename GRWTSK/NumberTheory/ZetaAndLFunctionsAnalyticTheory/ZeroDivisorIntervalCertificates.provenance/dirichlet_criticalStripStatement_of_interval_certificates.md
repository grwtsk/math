# `GRWTSK.ZeroCountCertificates.dirichlet_criticalStripStatement_of_interval_certificates`

Local attribution: grwtsk contributors. [Source](../ZeroDivisorIntervalCertificates.lean); [exact context](context.md).

For any Dirichlet character chi of nonzero modulus, assume exact finite divisors of `DirichletCharacter.LFunction chi (1/2+I*z)` on stated windows, coverage of every open-critical-strip zero, conjugation closure, one fixed nonnegative rational metric per window, and sound accepted rational PSD packets for EVERY window and EVERY dyadic accuracy. The conclusion is the unchanged `WeilNegativeWitness.criticalStripStatement chi`.

Primary proof applies `allReal_of_checked_dyadic` per window, turns it into exact Hermite nonnegativity using the maintained iff, and invokes the existing cofinal continued-Dirichlet consumer. This is a source-return composition, not a proof of either analytic coverage or certificate production. All moduli/primitive characters require their own quantified instances; no stronger all-plane or boundary-zero statement follows. The arithmetic full Weil form is untouched. FORMAL_SOURCE_CANDIDATE; elaboration, kernel replay, axiom audit, independent review and arithmetic certificates NOT_RUN.
