# `GRWTSK.ZeroCountCertificates.FiniteDivisor.source_reality_of_hermite`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** Given `d.IdentifiesZeros f D`, conjugation-closed support and `Nonnegative d.divisorMatrix`, every zero of `f` in `D` is real.

**Primary argument.** The finite Hermite criterion gives count saturation for `d`. Apply the already-published `source_reality_of_saturation` to the unchanged divisor, function and domain.

**Source comparison.** Local source-return consequence of the classical finite Hermite criterion and ZCERT-1 sections 5--7. This is not an argument-principle formalization.

**Consumer and limits.** The exact support identity is a mathematical premise, not a hash or agreement of sampled zeros. It identifies locations only. Analytic multiplicities, boundary nonvanishing, pole-corrected moments and complete contour counting remain separate suppliers. It can consume Program 4's exact divisor transport without replacing those suppliers.

Exact editions, source/dependency pins, unrun build and shared evidence: [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, kernel replay, axiom audit and independent review `NOT_RUN`.
