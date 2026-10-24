# GRWTSK.Combinatorics.DirectedGraph.PathUnfolding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Combinatorics/DirectedGraph/PathUnfolding.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f0343271b35894fccb1a2abfd33a7c2e37a8eaf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence7a243a219dfd5c4eabdb183e.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](declarations/occurrence--a5271191a3b5142aab4c4773.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Occurrence.endpoint](declarations/occurrence-endpoint--416282fc67ced147c002c7ac.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Occurrence.path](declarations/occurrence-path--36df64a82403f72918e2ec7a.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofPath](declarations/ofpath--6009692a978bdd1529374578.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ofPath_path](declarations/ofpath-path--1a5d0b58a1168161f6b26ef2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [origin](declarations/origin--7bf96403eab7dc50885d55ea.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [extend](declarations/extend--e0248f59e3a20e9b1f5903bb.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Extension](declarations/extension--8dbb87cc70cd10d74b42243a.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--e1656dcf9fed7c3da9ffb64c.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step--4c5e0634c97ea6cab846b860.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [projection](declarations/projection--329e5ebf854c2f79c38cce81.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [projection_step](declarations/projection-step--1dc22c43d0f2ac9547674c5d.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [extension_length](declarations/extension-length--8b289467f69ef5767d207a3f.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [extension_height_lt](declarations/extension-height-lt--d8543c83f5d0b3196d5d5ed1.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unique_incoming](declarations/unique-incoming--18dc7b33856947ae54f4e435.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [root_or_incoming](declarations/root-or-incoming--5a195abe914da1c6fd5edce0.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [unfoldingArborescence](declarations/unfoldingarborescence--488d8196f21acf166fb92a8c.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [uniqueRootPath](declarations/uniquerootpath--37bad187fa08254409eb0702.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [liftHistory](declarations/lifthistory--8b6ff7e469e27f59aa8a34a8.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [projection_liftHistory](declarations/projection-lifthistory--2419a205bee38db73bfe6001.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofPath_comp_projection](declarations/ofpath-comp-projection--346cc51173bcee0e58f17bb0.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [outgoingStarEquiv](declarations/outgoingstarequiv--52e1a2d88f98b0b3be6c6b27.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [outgoing_star_bijective](declarations/outgoing-star-bijective--38f4374db3deb2a539793d37.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [path_star_bijective](declarations/path-star-bijective--ae1118e69ebd676b7600ffbf.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unique_finite_lift](declarations/unique-finite-lift--9bdfc86293e6242368a3dad3.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [endpoint_range_iff](declarations/endpoint-range-iff--bacc0885e17819e7c72da167.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [endpoint_surjective_iff](declarations/endpoint-surjective-iff--deb6cee7c51868073d0620b2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [no_arrow_into_origin](declarations/no-arrow-into-origin--3314de69bc536dfb846b3fe6.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [empty_origin_costar](declarations/empty-origin-costar--4bb5ee7fe6e7ef5cc78af081.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [origin_costar_not_surjective](declarations/origin-costar-not-surjective--93f2901ddb0299e1ebcf46da.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [not_covering_of_incoming](declarations/not-covering-of-incoming--ba7ae106a3be4dfa4ca660a0.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
