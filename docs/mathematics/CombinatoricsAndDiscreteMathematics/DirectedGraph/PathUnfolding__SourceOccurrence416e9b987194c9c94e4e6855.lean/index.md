# GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.PathUnfolding

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f0343271b35894fccb1a2abfd33a7c2e37a8eaf`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/DirectedGraph/PathUnfolding__SourceOccurrence416e9b987194c9c94e4e6855.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](declarations/occurrence--6f67ac175f358c8c4e470052.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `abbrev` | [Occurrence.endpoint](declarations/occurrence-endpoint--fafa78c28ec573d282e3f554.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `abbrev` | [Occurrence.path](declarations/occurrence-path--021ded900daea67bbf8892cc.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [ofPath](declarations/ofpath--c816d014f7437f3dcdefe36d.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [ofPath_path](declarations/ofpath-path--a78db9d71dccacbf0293a9f8.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [origin](declarations/origin--d7976e127e8b6890b5317066.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [extend](declarations/extend--7fe5ff242d8a2a6261a35ebc.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `abbrev` | [Extension](declarations/extension--cdf7d8d4fffa5abf210e37b0.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--c38ce0ca221978c3571d32e3.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [step](declarations/step--251894078af9e1d72d154593.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [projection](declarations/projection--02358d25164c1760c4db4236.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [projection_step](declarations/projection-step--12332e9a987c8b6df2ed1667.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [extension_length](declarations/extension-length--f999832a14f7f429c4fd4ec5.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [extension_height_lt](declarations/extension-height-lt--5bae5eec4b2797ae6cbbed19.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unique_incoming](declarations/unique-incoming--b9b452d4908fc5ba74b23239.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [root_or_incoming](declarations/root-or-incoming--4611a2968ff54d0cad6cd7a1.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [unfoldingArborescence](declarations/unfoldingarborescence--e8960e818b4634e0ce861761.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [uniqueRootPath](declarations/uniquerootpath--1996e26ef5622cd94eb2b155.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [liftHistory](declarations/lifthistory--45c8f988da4cec6212031772.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [projection_liftHistory](declarations/projection-lifthistory--1b7a9b9d6f6315ca9cc53ac0.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [ofPath_comp_projection](declarations/ofpath-comp-projection--4007ee33dc5e6a9bb259fcce.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [outgoingStarEquiv](declarations/outgoingstarequiv--92378409c9ce1178cea417ad.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [outgoing_star_bijective](declarations/outgoing-star-bijective--8e1c5b27e8108b498c57b38e.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [path_star_bijective](declarations/path-star-bijective--c87706199f2c6bc5b8d96a1c.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unique_finite_lift](declarations/unique-finite-lift--d83aff4b93c9a2914aca5782.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [endpoint_range_iff](declarations/endpoint-range-iff--f275f8f4c82bfafae9cd40bd.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [endpoint_surjective_iff](declarations/endpoint-surjective-iff--dc1cc561a9d9b0fec4fd7b97.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [no_arrow_into_origin](declarations/no-arrow-into-origin--048cc7ca80a1fb3e2aec3313.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [empty_origin_costar](declarations/empty-origin-costar--f92cb17a849d94cc1a8aa09a.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [origin_costar_not_surjective](declarations/origin-costar-not-surjective--9ab31e33d27fc9306ab94386.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [not_covering_of_incoming](declarations/not-covering-of-incoming--2efc203cc4a0ae20d19f4bd9.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
