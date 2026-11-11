# `GRWTSK.ZeroCountCertificates.FiniteDivisor.allReal_iff_dyadic_lower_bounds`

Local attribution: grwtsk contributors. Date: 2026-11-11.

Source: [ZeroDivisorHermiteReturn.lean](../ZeroDivisorHermiteReturn.lean).
Module SHA-256: `a66819f6c780c44f3778f688b05a7379d5e043f359849f5d5a68942d49e57fb1`.

**Statement.** Under conjugation closure, `d.AllReal` iff for every real coefficient vector `v` and every natural `k`, `-((1/2)^k) <= quadraticValue d.divisorMatrix v`.

**Primary argument.** Real support implies nonnegative matrix values and hence every negative-dyadic lower bound. Conversely fix a vector and apply Program 10 `nonneg_of_dyadic_lower_bounds`. This gives nonnegativity on every vector, then the finite Hermite converse gives real support.

**Source comparison.** Local composition with RP-OC-10 shrinking-error logic, math#1807, and the classical Hermite criterion. ZCERT-1 section 8 distinguishes exact semidefiniteness from finite robust interval certificates.

**Consumer and limits.** Singular matrices are included semantically, but the statement quantifies over EVERY vector and EVERY accuracy. It does not construct a finite positive certificate, exact kernel information, rational dictionary, terminating checker, or all-window arithmetic positivity.

Exact paper edition, source/dependency pins and unrun reproduction: [principal record](allZerosReal_iff_cofinal_hermite.md). `FORMAL_SOURCE_CANDIDATE`; elaboration, fresh kernel replay, axiom audit and independent review `NOT_RUN`.
