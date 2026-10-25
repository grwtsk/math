# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87a8e79eea4e86cd35cd1a4438204b2712c60f19`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant5d68c77656475010afd99d157953afeacd23b4a2ad93b861202600a4f63408d0.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Hypergraph](declarations/hypergraph--be93d2001923bc1851429e24.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](declarations/subset-vertexset-of-mem-edgeset--b081ee0f301bc6d2b9de9a40.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](declarations/edgeset-subset-powerset-vertexset--cb1f3414929a49d923c16344.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](declarations/mem-vertexset-of-mem-edgeset--9f91e07961d153a5482584a3.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeSet.ext_iff](declarations/edgeset-ext-iff--800fbf9f02a6de34f7cf92e4.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](declarations/sunion-edgeset-subset-vertexset--82db25a531f05b034f710c9f.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Adj](declarations/adj--1dfb72fa6047d6090336fc28.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Adj.symm](declarations/adj-symm--38cf99f3c00c3e2d69ef85be.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [adj_comm](declarations/adj-comm--40d1b3d6b4d806a812147055.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EAdj](declarations/eadj--fac0c822fef1deb952576621.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [EAdj.exists_vertex](declarations/eadj-exists-vertex--7708ea591cd26ffcaeda2b9b.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [EAdj.symm](declarations/eadj-symm--defbce3c4ae9da2ef977db11.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EAdj.inter_nonempty](declarations/eadj-inter-nonempty--54d32393d438775d043adc5d.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eAdj_comm](declarations/eadj-comm--b0ae847383c657db3523cb4b.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [image](declarations/image--1e3107366925df9d494e7253.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_edgeSet_image](declarations/mem-edgeset-image--cbfe3c8616ec2aa3e5c38f2f.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [image_mem_edgeSet_image](declarations/image-mem-edgeset-image--1eab7bb43b8f6e42e087e215.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [image_image](declarations/image-image--cdf49509301d5d6d0004c84b.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsIsolated](declarations/isisolated--56529193d504e9ae0c0d5cf8.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated--77c637e6468016ec65cc4a74.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsLoop](declarations/isloop--1e89195696134c846ebe89db.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](declarations/isloop-iff-mem-edgeset-and-singleton--30131db71480169c1b5de990.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](declarations/isloop-iff-mem-and-ncard-one--40f72392776de156cf449713.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLoop.ncard_one](declarations/isloop-ncard-one--55a1f06b635b8bc99e1ca363.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsNonempty](declarations/isnonempty--4b07ed18a9c92c85b4173adf.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--52217046716935864dd42cca.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](declarations/isnonempty-of-nonempty-vertexset--4e3b53483ea9b91bc7fa8249.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](declarations/isnonempty-of-nonempty-edgeset--0c85427ac143274119b09305.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ne_bot_iff](declarations/ne-bot-iff--94ae69db9d8cd119605370f3.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isNonempty_iff](declarations/not-isnonempty-iff--f90446de08507c0fea86639d.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eq_bot_or_isNonempty](declarations/eq-bot-or-isnonempty--fabb3ad57e7723981a3137ad.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsTrivial](declarations/istrivial--22b175709cde9d30154a4c4e.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trivialOn](declarations/trivialon--730b14c2b13fe2d1e63b351f.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsTrivial.trivialOn](declarations/istrivial-trivialon--37f19732072ea381f89b0fb7.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsTrivial.isNonempty](declarations/istrivial-isnonempty--3d592a7a6b20c75fc4e85f88.md) | 250 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](declarations/istrivial-not-mem-edgeset--0e7b9d67f8caf8e4e31f4d9a.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsComplete](declarations/iscomplete--90ffc9c5cd1ce8c575ff7ca1.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [completeOn](declarations/completeon--3a668b8ca7508cb2547ffc96.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_completeOn](declarations/mem-completeon--ef7a7a2920059fae58a12f8a.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsComplete.mem_iff](declarations/iscomplete-mem-iff--ceecdec451bf6f01656f27b5.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsComplete.completeOn](declarations/iscomplete-completeon--c773ade7de42bafdda8dda4f.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsComplete.isNonempty](declarations/iscomplete-isnonempty--7c32034ab095a73912ec2f43.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsComplete.not_isTrivial](declarations/iscomplete-not-istrivial--407769cdb4d8b81a077d0ae3.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [not_isTrivial_completeOn](declarations/not-istrivial-completeon--a4ae7e3fd431ccfbd8a99f0e.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsLinear](declarations/islinear--fdf8012548ee1b81e3dbaa4d.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isLinear_def](declarations/islinear-def--9f9872d1e4c6431e5ff9d511.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](declarations/islinear-inter-subsingleton--f11c728f079183d942903431.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsTrivial.isLinear](declarations/istrivial-islinear--afbf721f89035273efc0daa9.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
