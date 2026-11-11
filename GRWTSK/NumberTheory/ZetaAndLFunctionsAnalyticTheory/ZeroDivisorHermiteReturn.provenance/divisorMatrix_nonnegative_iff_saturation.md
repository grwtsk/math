# `GRWTSK.ZeroCountCertificates.FiniteDivisor.divisorMatrix_nonnegative_iff_saturation`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** With conjugation-closed support, `Nonnegative d.divisorMatrix` iff `d.realCount = d.totalCount`.

**Primary argument.** Compose `divisorMatrix_nonnegative_iff` with the existing `allReal_iff_count_saturation`. Both equivalences concern the same finite support and positive multiplicities.

**Correspondence and consumer.** Local comparison between ZCERT-1 section 5 count saturation and section 6 Hermite reality. This is not a second independent analytic proof. It permits either exact finite conclusion to feed the existing source-reality consumer without changing divisor meaning.

Analytic count completeness is not proved by this finite equivalence. Source pins, paper edition, unrun build target and evidence: [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`.
