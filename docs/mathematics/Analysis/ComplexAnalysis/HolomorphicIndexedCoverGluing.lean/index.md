# GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 16 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ab418e07e82f099d134f5f0608563b29a5aaf78a`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [IndexedDomainCover](declarations/indexeddomaincover--c11fe41da0c9be9e9239d3a4.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [IsOpenCover](declarations/isopencover--5365192b405ef1c84583b715.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [xTo](declarations/xto--40c1be9025a8195b47e60b8c.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [overlap](declarations/overlap--2cefe66878ef3290d9eab415.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [leftToOverlap](declarations/lefttooverlap--fc7e5fa15db7a5618a1751c6.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [rightToOverlap](declarations/righttooverlap--a8b23df35adcacab29954965.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `abbrev` | [Family](declarations/family--8b5a85488267b1a2f6c9c220.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [Matching](declarations/matching--dad5101b7ec9506f74b09863.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [matching_apply](declarations/matching-apply--0dc453073657b86365da21db.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [select](declarations/select--78a6443fe5a9a09510e8d38e.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [select_mem](declarations/select-mem--e8b136488e2445e75c780a33.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [glueSection](declarations/gluesection--9d5341a8ea3e49d3180d5c33.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [glueSection_apply](declarations/gluesection-apply--56c86ab74c9a29562661760f.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [restrict_glueSection](declarations/restrict-gluesection--9e8dcc17f68f511ed043d992.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [holomorphic_iff_restrictions](declarations/holomorphic-iff-restrictions--45b72d1e7893354258d19ff2.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [glue](declarations/glue--ff067f38fd250ca159e045ba.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [glue_coe](declarations/glue-coe--5105d3581f10ac00e96d1d7a.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [restrict_glue](declarations/restrict-glue--934896db586304ff7f9406e2.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [holomorphic_ext](declarations/holomorphic-ext--e6daebb1348b12db92e5a5a5.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [existsUnique_glue](declarations/existsunique-glue--72b054ca7bd245a5d96f7a86.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [matching_restrictions](declarations/matching-restrictions--83a58b72cd7043c11098a857.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [glue_restrictions](declarations/glue-restrictions--68f79e5559e4662ea8e252ae.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [reindex](declarations/reindex--9dcb55e07c60bf45d1aecb06.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [reindex_isOpen](declarations/reindex-isopen--27430b9ac9d844ea49cc47c8.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reindex_matching](declarations/reindex-matching--f4d409aaa5e2d95dfd18a787.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [glue_reindex](declarations/glue-reindex--eee3ac5075cc11fb4f4c400f.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [allPunctures](declarations/allpunctures--adbd98cbb27bba7c1eae47b1.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [allPunctures_isOpen](declarations/allpunctures-isopen--89b13c899768495cc1a4d1c9.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [disagreeingFamily](declarations/disagreeingfamily--5ced804271bcd16af03c2ccf.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [disagreeingFamily_not_matching](declarations/disagreeingfamily-not-matching--de7054d9fb130a7436ee6b8c.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [empty_index_not_nonempty](declarations/empty-index-not-nonempty--51a5371313170b9993b8cd78.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [emptyCover](declarations/emptycover--0542af411634f3b3c2b0b95e.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [emptyCover_isOpen](declarations/emptycover-isopen--0fcb308a8b8343f9298ec1b0.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [emptyCover_glue_unique](declarations/emptycover-glue-unique--c8d7150a2c9edd8ea17b8fb2.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
