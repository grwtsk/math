# `GRWTSK.ZeroCountCertificates.FiniteDivisor.support_card_le_totalCount`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** For every existing positive-natural `FiniteDivisor d`, `card(d.support) <= d.totalCount`.

**Primary argument.** Express cardinality as the sum of ones. A positive natural multiplicity is at least one. Sum these pointwise inequalities over the finite support.

**Correspondence and consumer.** Local finite arithmetic consequence of the existing Program 6 divisor definition, not an external paper theorem. It supplies the interpolation degree budget for a total-multiplicity-sized Hermite matrix. It does not identify the natural weights with actual analytic orders.

Source/dependency pins, exact paper comparison, unrun build target and shared evidence: [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`.
