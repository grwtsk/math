# Verification target: GRWTSK.Analysis.Complex.HolomorphicIndexedCoverGluing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab418e07e82f099d134f5f0608563b29a5aaf78a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab418e07e82f099d134f5f0608563b29a5aaf78a`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicIndexedCoverGluing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicIndexedCoverGluing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicOpenCoverGluing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicOpenCoverGluing.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IndexedDomainCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/indexeddomaincover--c11fe41da0c9be9e9239d3a4.md) | 21 | `declaration-track:c11fe41da0c9be9e9239d3a4cce1e7c6ff105279e6b05fae4daea62e082556a5` |
| 2 | `structure` | [IsOpenCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/isopencover--5365192b405ef1c84583b715.md) | 32 | `declaration-track:5365192b405ef1c84583b715b34ff2239ca3aa76f29a195db306b4b840862cfb` |
| 3 | `def` | [xTo](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/xto--40c1be9025a8195b47e60b8c.md) | 36 | `declaration-track:40c1be9025a8195b47e60b8c07770a58a15ff9d3446765c044000aefa8da8935` |
| 4 | `def` | [overlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/overlap--2cefe66878ef3290d9eab415.md) | 40 | `declaration-track:2cefe66878ef3290d9eab41500d38f76e018e079c86c8732136cbb14155cab2c` |
| 5 | `def` | [leftToOverlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/lefttooverlap--fc7e5fa15db7a5618a1751c6.md) | 43 | `declaration-track:fc7e5fa15db7a5618a1751c6c065c628740b44074e6039eba0516547d8ae8103` |
| 6 | `def` | [rightToOverlap](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/righttooverlap--a8b23df35adcacab29954965.md) | 46 | `declaration-track:a8b23df35adcacab2995496518073d53679335badd2971237eb528396fe5ddfe` |
| 7 | `abbrev` | [Family](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/family--8b5a85488267b1a2f6c9c220.md) | 50 | `declaration-track:8b5a85488267b1a2f6c9c2201ec3e58fe326a8df74e0fe8e1792cce633f252ad` |
| 8 | `def` | [Matching](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/matching--dad5101b7ec9506f74b09863.md) | 53 | `declaration-track:dad5101b7ec9506f74b098630a820ec6a1a6bb9fd3f9b0692ca7c13a51a080e5` |
| 9 | `theorem` | [matching_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/matching-apply--0dc453073657b86365da21db.md) | 61 | `result-track:0dc453073657b86365da21db2cfb79d38c4f2d29aec6143da9fe6f996277a167` |
| 10 | `def` | [select](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/select--78a6443fe5a9a09510e8d38e.md) | 68 | `declaration-track:78a6443fe5a9a09510e8d38e0400fd2bd72d0a2de3a3c74c96f325bcf74fb6a3` |
| 11 | `theorem` | [select_mem](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/select-mem--e8b136488e2445e75c780a33.md) | 71 | `result-track:e8b136488e2445e75c780a3328de305dbde3436044bc826f02508edb724a82ad` |
| 12 | `def` | [glueSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/gluesection--9d5341a8ea3e49d3180d5c33.md) | 76 | `declaration-track:9d5341a8ea3e49d3180d5c33ed767711c6901302090f31c674031667ca344042` |
| 13 | `theorem` | [glueSection_apply](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/gluesection-apply--56c86ab74c9a29562661760f.md) | 80 | `result-track:56c86ab74c9a29562661760f7b1bd2633d4b07fc2cfdd76b348a90ed4d1431df` |
| 14 | `theorem` | [restrict_glueSection](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/restrict-gluesection--9e8dcc17f68f511ed043d992.md) | 87 | `result-track:9e8dcc17f68f511ed043d992c90dd97e481024df2b87327cac31b23e8cd0a068` |
| 15 | `theorem` | [holomorphic_iff_restrictions](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/holomorphic-iff-restrictions--45b72d1e7893354258d19ff2.md) | 94 | `result-track:45b72d1e7893354258d19ff28a772e3d8219a64e67cd6b1aacd0a8af2548403c` |
| 16 | `def` | [glue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/glue--ff067f38fd250ca159e045ba.md) | 120 | `declaration-track:ff067f38fd250ca159e045bab493dfe3dbd95f0b9ccdeeebe7bddb035756ab76` |
| 17 | `theorem` | [glue_coe](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/glue-coe--5105d3581f10ac00e96d1d7a.md) | 128 | `result-track:5105d3581f10ac00e96d1d7a486c1ee7745f588b5ee0362d8e1b6cb752a1cf75` |
| 18 | `theorem` | [restrict_glue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/restrict-glue--934896db586304ff7f9406e2.md) | 133 | `result-track:934896db586304ff7f9406e2ae61abe80d2bc76df94a55cdb1469cd3c0fcb317` |
| 19 | `theorem` | [holomorphic_ext](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/holomorphic-ext--e6daebb1348b12db92e5a5a5.md) | 141 | `result-track:e6daebb1348b12db92e5a5a5c33904b2f7e7f3b87e21e0a6042836579db8a1ff` |
| 20 | `theorem` | [existsUnique_glue](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/existsunique-glue--72b054ca7bd245a5d96f7a86.md) | 153 | `result-track:72b054ca7bd245a5d96f7a8631520580697c33f0256690010de7cdd058297318` |
| 21 | `theorem` | [matching_restrictions](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/matching-restrictions--83a58b72cd7043c11098a857.md) | 164 | `result-track:83a58b72cd7043c11098a8573b7dc2fbafca1d1c09eea446b52cde29b8ec9e00` |
| 22 | `theorem` | [glue_restrictions](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/glue-restrictions--68f79e5559e4662ea8e252ae.md) | 173 | `result-track:68f79e5559e4662ea8e252ae6099ef06d1c4e21dffed9c6d57d298e9da50186c` |
| 23 | `def` | [reindex](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/reindex--9dcb55e07c60bf45d1aecb06.md) | 183 | `declaration-track:9dcb55e07c60bf45d1aecb06ff612f811a0cec0051321994528c8f594baf2082` |
| 24 | `def` | [reindex_isOpen](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/reindex-isopen--27430b9ac9d844ea49cc47c8.md) | 194 | `declaration-track:27430b9ac9d844ea49cc47c82e61e878c403c0c64affbdef2215ae003c6a6928` |
| 25 | `theorem` | [reindex_matching](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/reindex-matching--f4d409aaa5e2d95dfd18a787.md) | 199 | `result-track:f4d409aaa5e2d95dfd18a7876dad59c232268720213381e0f406bd8604528a82` |
| 26 | `theorem` | [glue_reindex](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/glue-reindex--eee3ac5075cc11fb4f4c400f.md) | 205 | `result-track:eee3ac5075cc11fb4f4c400f718622b5bfbde1727bfdc5f35dca324ea0a921d1` |
| 27 | `def` | [allPunctures](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/allpunctures--adbd98cbb27bba7c1eae47b1.md) | 218 | `declaration-track:adbd98cbb27bba7c1eae47b14af8e63b0d3a24e4fb4fb7db60bf54d073d1cd4a` |
| 28 | `def` | [allPunctures_isOpen](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/allpunctures-isopen--89b13c899768495cc1a4d1c9.md) | 228 | `declaration-track:89b13c899768495cc1a4d1c91eb605edc1d61046533aa321ac201aa798617cba` |
| 29 | `def` | [disagreeingFamily](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/disagreeingfamily--5ced804271bcd16af03c2ccf.md) | 232 | `declaration-track:5ced804271bcd16af03c2ccfef50662f672991e5fc3d552177f515b9911649a7` |
| 30 | `theorem` | [disagreeingFamily_not_matching](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/disagreeingfamily-not-matching--de7054d9fb130a7436ee6b8c.md) | 236 | `result-track:de7054d9fb130a7436ee6b8ce94765b1250eb69da274acdede381e8464347ae5` |
| 31 | `theorem` | [empty_index_not_nonempty](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/empty-index-not-nonempty--51a5371313170b9993b8cd78.md) | 243 | `result-track:51a5371313170b9993b8cd7822316b3aa4bfc12f73aedf5fc825d9ba1bab63ae` |
| 32 | `def` | [emptyCover](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/emptycover--0542af411634f3b3c2b0b95e.md) | 250 | `declaration-track:0542af411634f3b3c2b0b95e8cf64ce9ea41f432506559211beee4052b3b80b6` |
| 33 | `def` | [emptyCover_isOpen](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/emptycover-isopen--0fcb308a8b8343f9298ec1b0.md) | 256 | `declaration-track:0fcb308a8b8343f9298ec1b04d9ae1319b526ab6e57e587dfcb8fe931d0685fa` |
| 34 | `theorem` | [emptyCover_glue_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicIndexedCoverGluing.lean/declarations/emptycover-glue-unique--c8d7150a2c9edd8ea17b8fb2.md) | 260 | `result-track:c8d7150a2c9edd8ea17b8fb2bae79d8bbdb1120a0bbbb251ef80e1278ae0e7f4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
