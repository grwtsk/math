# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetCounting

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**24 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `947876811c9527101185978b472bf13ecb875edb`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/ExceptionalSetCounting.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [exponentExceptionalSet](declarations/exponentexceptionalset--7faac347cdf635a3edbd9527.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [radical_lt_height_rpow_iff_quality](declarations/radical-lt-height-rpow-iff-quality--660852292adfabaaac26c6b4.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [boundedExponentExceptionalTriples](declarations/boundedexponentexceptionaltriples--e2bf5b1c673172f3c1377c06.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [mem_boundedExponentExceptionalTriples](declarations/mem-boundedexponentexceptionaltriples--a8e0614a93fbcfbd56ff6cd2.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [exponentExceptionalCount](declarations/exponentexceptionalcount--7bbcd95717258efbe951b10d.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [boundedExponentExceptionalTriples_mono](declarations/boundedexponentexceptionaltriples-mono--0c807566b0d867d6ae5fddb0.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [exponentExceptionalCount_mono](declarations/exponentexceptionalcount-mono--1cd9bb528ccdb3a02bb50d0a.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FrequentlyAtLeastPower](declarations/frequentlyatleastpower--5f394da02c601d458014d71e.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [EventuallyBelowPower](declarations/eventuallybelowpower--32ac7966befee343c403e238.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [eventuallyBelowPower_of_not_frequentlyAtLeastPower](declarations/eventuallybelowpower-of-not-frequentlyatleastpower--e6072b4c9d5ad46b9b135b5b.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [not_frequentlyAtLeastPower_of_eventuallyBelowPower](declarations/not-frequentlyatleastpower-of-eventuallybelowpower--6ac000e698161c8bb792511c.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [HasOptimizationCertificate](declarations/hasoptimizationcertificate--61bb19a44fa59dc9c3443c67.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [exponent_le_three_fifths_of_certificate](declarations/exponent-le-three-fifths-of-certificate--622f3b3a9c36663df3c39272.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ExceptionalSetAnalyticSupplier](declarations/exceptionalsetanalyticsupplier--9b12495fa34ed8c9ee3e130d.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ExceptionalSetOptimizationExtractor](declarations/exceptionalsetoptimizationextractor--5dcacd2d11268cc801223590.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [SplitExceptionalSetAnalyticSupplier](declarations/splitexceptionalsetanalyticsupplier--11339d0f81720851beb60d15.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [SplitExceptionalSetAnalyticSupplier.toAnalyticSupplier](declarations/splitexceptionalsetanalyticsupplier-toanalyticsupplier--873f310d6b36fc558dbbfb69.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [not_frequentlyAtLeastPower_of_supplier](declarations/not-frequentlyatleastpower-of-supplier--7e715aeec887ed010c076296.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [not_frequentlyAtLeastPower_of_split_supplier](declarations/not-frequentlyatleastpower-of-split-supplier--8d52d864482c98224f6be2b3.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [eventuallyBelowPower_of_supplier](declarations/eventuallybelowpower-of-supplier--6b811cfec4a80a94748a50e3.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [eventuallyBelowPower_of_split_supplier](declarations/eventuallybelowpower-of-split-supplier--1e48f3a5afafd132d3be9dda.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [HasThreeFifthsExceptionalBound](declarations/hasthreefifthsexceptionalbound--e37b688fcb3135c4bd9420af.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasThreeFifthsExceptionalBound_of_supplier](declarations/hasthreefifthsexceptionalbound-of-supplier--45de0d76d02913c4f5682095.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasThreeFifthsExceptionalBound_of_split_supplier](declarations/hasthreefifthsexceptionalbound-of-split-supplier--1caa567e0a044652cf49bf0d.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
