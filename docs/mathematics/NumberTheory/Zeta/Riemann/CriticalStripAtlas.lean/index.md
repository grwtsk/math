# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripAtlas

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f98f3c4089c3896e1364e35ff3544906d86c1b8f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripAtlas.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [NoncommutativeHeightRoot](declarations/noncommutativeheightroot--85f43e77167989f3b8ee4eb0.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [commutatorAt](declarations/commutatorat--852a2fda360cf694b6c000cd.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [coordinateHeight](declarations/coordinateheight--06e5968f09a1e34a7ee1171d.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [heightAt](declarations/heightat--64dd5853bc214539fe3aa86f.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [heightAt_eq_coordinateHeight](declarations/heightat-eq-coordinateheight--11aeb925558097ba558a2bc7.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [CriticalStripChart](declarations/criticalstripchart--2a4f98ed67345264aefe1dc4.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [rootHeight](declarations/rootheight--887df60a0cb175029e40c165.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [coordinate_height_eq_root](declarations/coordinate-height-eq-root--59a7a16c723bcd584052e1b1.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [Overlaps](declarations/overlaps--9d4ef18a9ab7ab08e789ace6.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [CoordinateTransition](declarations/coordinatetransition--365eb12fdeee4a2c932f5bf5.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [height_preserving](declarations/height-preserving--5749c578496c8fbfe2405993.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ChartTransition](declarations/charttransition--22d3b23cb49bc6f71f968ef4.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [height_preserving](declarations/height-preserving--91a2673a365e02ed2c5b2c49.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `inductive` | [LocalRHStatus](declarations/localrhstatus--6dd8b55d0700c07c8a985706.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [LocalRHProfile](declarations/localrhprofile--2d9dfb3924f589be24867b70.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [ofEquivalence](declarations/ofequivalence--9d089afc2985b28ffa394073.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [ofSufficient](declarations/ofsufficient--4babbf08276cb802c439665f.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [ofNecessary](declarations/ofnecessary--a0806ac91e6ba445e2ca4604.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [neutral](declarations/neutral--b62c90590839ef47f5d62551.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [inconsistent](declarations/inconsistent--7b22a5d2e8611e6a3c45ba4c.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [iff_rh_of_equivalent](declarations/iff-rh-of-equivalent--0ea87cfe0cafc5454bb9ebf8.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [CriticalStripAtlas](declarations/criticalstripatlas--8e617f4866a3da94acc438b6.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [GlobalStatement](declarations/globalstatement--2aedacc08b9c141065ba74d9.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [GapFree](declarations/gapfree--a67a027ed6c60f0d9cdc8e5b.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [ForwardGap](declarations/forwardgap--6cbed7debaf84478b5aa7c5d.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [ReverseGap](declarations/reversegap--1e6e9a72a5ff6d9dd788a50f.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [localStatement_iff_rh](declarations/localstatement-iff-rh--32df5f0528a5d99cf3c5028d.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [globalStatement_iff_rh](declarations/globalstatement-iff-rh--4d99117e5739e2a8aa7c247b.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [overlap_statement_trans](declarations/overlap-statement-trans--212033dd51563e5287ed09cc.md) | 347 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `structure` | [VerticalStep](declarations/verticalstep--b53607204e735a0a23399c66.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [refl](declarations/refl--864825ee92c4906c5b538233.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [trans](declarations/trans--4df089b07bec10ae6fb47a4e.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `structure` | [TopologicalEquivalence](declarations/topologicalequivalence--bcb945f00032499a25d03b72.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [StructuredHomotopy](declarations/structuredhomotopy--4e409a7e6f3ab76e43453a7d.md) | 401 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `structure` | [RingChartHomomorphism](declarations/ringcharthomomorphism--d8c354d72e63125cad266da4.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `structure` | [HolomorphicChartMap](declarations/holomorphicchartmap--00d8fd03f837f9371e8cd1dc.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `structure` | [TopologicalToAnalyticTransport](declarations/topologicaltoanalytictransport--0dd74f0417df96a47de4cd2d.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
