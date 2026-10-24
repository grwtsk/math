# GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteCyclicEdgeCertificate

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 12 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `43e4146d642551f48744f76956a6317708f4a644`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteCyclicEdgeCertificate.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BinaryEdgeWord](declarations/binaryedgeword--b468b4bef72170e7480b4c36.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CountedBinaryEdge](declarations/countedbinaryedge--85f87ccb4a2d2e0ad2d033f2.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [countedBinaryEdgeTotal](declarations/countedbinaryedgetotal--9e17ef110b19234a1adc46c9.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [binaryEdgePrefix](declarations/binaryedgeprefix--9de36618ed424588c46122e1.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [binaryEdgeSuffix](declarations/binaryedgesuffix--826cd5970e42c4dfa531ce4b.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [countedEdgeLabel](declarations/countededgelabel--580df98d2d12cf6e72370964.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [cyclicSuccessor](declarations/cyclicsuccessor--238d818a439876bab97f059c.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [CountedCyclicEulerCertificate](declarations/countedcycliceulercertificate--bbf70132f282ec8cc9ebd822.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `abbrev` | [CyclicBinaryWord](declarations/cyclicbinaryword--faacf21792557340a4f2403f.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [cyclicBinaryBlock](declarations/cyclicbinaryblock--c29ec290e0d52075ee6af872.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [cyclicBinaryBlockCount](declarations/cyclicbinaryblockcount--b86228d0630a04743bf99757.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [CyclicCountRealizable](declarations/cycliccountrealizable--b6100066e985e8c25afd0d95.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [cyclicShift](declarations/cyclicshift--fd2037bd5fd02370c2b55c4d.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [cyclicShift_zero](declarations/cyclicshift-zero--4d7b562cf43082c82f3d3242.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [cyclicShift_succ](declarations/cyclicshift-succ--8f3cd4942b6a8b2e48d14831.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [CountedCyclicEulerCertificate.word](declarations/countedcycliceulercertificate-word--b4804cba3f2b242f1288ac94.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CountedCyclicEulerCertificate.label_eq_word_shift](declarations/countedcycliceulercertificate-label-eq-word-shift--2a13311583f94cc1ba30d23e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [CountedCyclicEulerCertificate.block_eq_label](declarations/countedcycliceulercertificate-block-eq-label--97b6dd8139a990464c4b583c.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [countedCyclicOrder_label_fiber_equiv](declarations/countedcyclicorder-label-fiber-equiv--c16a13d35f5e6033fe2415c9.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [countedCyclicOrder_label_count](declarations/countedcyclicorder-label-count--dfe2d118f3fbc4953b405cd1.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cyclicBinaryBlock_compatible](declarations/cyclicbinaryblock-compatible--da3ccffbe9109eb70ad1639a.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [countedCyclicOrderOfCounts](declarations/countedcyclicorderofcounts--ff572ed7e5a5bbe9f1fea449.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [countedCyclicOrderOfCounts_label](declarations/countedcyclicorderofcounts-label--1f8119fc6890adb2a28a16b1.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [countedCyclicEulerCertificateOfCounts](declarations/countedcycliceulercertificateofcounts--ad2f8a904280aaf8ad64b01a.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [cyclicCountRealizable_has_certificate](declarations/cycliccountrealizable-has-certificate--9146b15aa9595d348ae0f60a.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [CountedCyclicEulerCertificate.word_count](declarations/countedcycliceulercertificate-word-count--043c989f329c609f95980f64.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [CountedCyclicEulerCertificate.realizable](declarations/countedcycliceulercertificate-realizable--f176f01ad58dccb47c794a06.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [countedCyclicEulerCertificate_nonempty_iff](declarations/countedcycliceulercertificate-nonempty-iff--a09ca8f4d9f4f06010dab24a.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cyclicCountRealizable_iff_certificate](declarations/cycliccountrealizable-iff-certificate--17122cdf2b7883ae951bd6c4.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
