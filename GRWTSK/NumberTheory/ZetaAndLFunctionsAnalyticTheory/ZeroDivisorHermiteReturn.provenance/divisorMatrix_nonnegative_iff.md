# `GRWTSK.ZeroCountCertificates.FiniteDivisor.divisorMatrix_nonnegative_iff`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** For a positive natural finite divisor with conjugation-closed support, its `totalCount`-by-`totalCount` real-part Hermite matrix is nonnegative iff `d.AllReal`.

**Primary argument.** The support cardinality is at most total multiplicity by `support_card_le_totalCount`. Cast positive natural multiplicities to strictly positive real weights and apply `HermiteRealRootCriterion.nonnegative_iff_real_support` to exactly the same support.

**Source comparison.** The finite weighted version of Nathanson v2 Theorem 1, in the existing ZCERT-1 section 6 divisor representation. Empty support, central zeros and arbitrary positive repetitions are admitted. No simplicity, matrix nonsingularity or numerical approximation replaces the hypotheses.

**Consumer and limits.** Supplies the finite converse to source-reality and cofinal-window consumers. Exact source support, analytic orders and contour moments remain analytic obligations.

Exact external edition, dependency pins, unrun reproduction and evidence are in the [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, axiom audit and independent review `NOT_RUN`.
