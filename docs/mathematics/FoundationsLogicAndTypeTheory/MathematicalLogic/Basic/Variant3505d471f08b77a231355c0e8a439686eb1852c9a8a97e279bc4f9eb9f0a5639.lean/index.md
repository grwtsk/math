# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Basic.Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**48 observed declarations and anonymous commands**, 35 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef1003d2ac85d44690f9c7847b79d82889c508f0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant3505d471f08b77a231355c0e8a439686eb1852c9a8a97e279bc4f9eb9f0a5639.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Hypergraph](declarations/hypergraph--408da6e98cc6db1da474e8bc.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [subset_vertexSet_of_mem_edgeSet](declarations/subset-vertexset-of-mem-edgeset--dbd99bc72c6880abd3dd1dad.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [edgeSet_subset_powerset_vertexSet](declarations/edgeset-subset-powerset-vertexset--e482a43c16e74b2912f3acfd.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [mem_vertexSet_of_mem_edgeSet](declarations/mem-vertexset-of-mem-edgeset--2fc4c5d053f2cd160d60db81.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [edgeSet.ext_iff](declarations/edgeset-ext-iff--fdde7368942469041f3584e3.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [sUnion_edgeSet_subset_vertexSet](declarations/sunion-edgeset-subset-vertexset--230560e9de39dfc12accd1cc.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [Adj](declarations/adj--bb4bb672492abb2cd0548445.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [Adj.symm](declarations/adj-symm--01ac6c8b2d7d120dbfc4ad59.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [adj_comm](declarations/adj-comm--d6640f4a6277aafb8964b019.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [EAdj](declarations/eadj--75f8534589a715b2782d8a2f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [EAdj.exists_vertex](declarations/eadj-exists-vertex--5fe478034b12354d021274ef.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [EAdj.symm](declarations/eadj-symm--cd33db6431dc89557f68bb3f.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [EAdj.inter_nonempty](declarations/eadj-inter-nonempty--5e1520677d99266a1cb63d43.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [eAdj_comm](declarations/eadj-comm--ba4b678fb4ea8880cb8471e1.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [image](declarations/image--7f0ac3a015f6b8ba2f001dc6.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [mem_edgeSet_image](declarations/mem-edgeset-image--4421e17a7f2a77d2de3269a2.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [image_mem_edgeSet_image](declarations/image-mem-edgeset-image--8b0b3d7fb19498eed365e443.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [image_image](declarations/image-image--51aaa84e04bd0c88a4aedb68.md) | 177 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [IsIsolated](declarations/isisolated--4d9fa10c63f86ac91c977b5a.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [sUnion_edgeSet_eq_vertexSet_iff_all_vertex_not_isolated](declarations/sunion-edgeset-eq-vertexset-iff-all-vertex-not-isolated--dde64133926fa34fa2ba3877.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [IsLoop](declarations/isloop--db1e0557124a8fb175530c9a.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [isLoop_iff_mem_edgeSet_and_singleton](declarations/isloop-iff-mem-edgeset-and-singleton--3b49206d38bd3dce6a08dbd5.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [isLoop_iff_mem_and_ncard_one](declarations/isloop-iff-mem-and-ncard-one--750b488865d1f37590800abb.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [IsLoop.ncard_one](declarations/isloop-ncard-one--dbcf66f98bcd262dfb00c2b2.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [IsNonempty](declarations/isnonempty--142318393b196760598737ce.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `instance` | [(anonymous)](declarations/instance--8f3667442cf6fa890821958f.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [IsNonempty.of_nonempty_vertexSet](declarations/isnonempty-of-nonempty-vertexset--4df1a4695cd9d7bcf19ee22a.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [IsNonempty.of_nonempty_edgeSet](declarations/isnonempty-of-nonempty-edgeset--263d2094cfe3ad755b7193fe.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [ne_bot_iff](declarations/ne-bot-iff--87e1c7c574da900acce1379e.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [not_isNonempty_iff](declarations/not-isnonempty-iff--bfb7b8d9c5c1bde1eb21022e.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [eq_bot_or_isNonempty](declarations/eq-bot-or-isnonempty--4291b96d3bfe952babd5a20c.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [IsTrivial](declarations/istrivial--f46df0d52009514e376021c3.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [trivialOn](declarations/trivialon--400b9bbb1a815e53e7261151.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsTrivial.trivialOn](declarations/istrivial-trivialon--cd0a6d031e0e0f2de20932f2.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsTrivial.isNonempty](declarations/istrivial-isnonempty--a1dda1204c278bfab81ff0d6.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsTrivial.not_mem_edgeSet](declarations/istrivial-not-mem-edgeset--4e83aa3972fe6e0c94625a50.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [IsComplete](declarations/iscomplete--cf03731121353733ac1b82a9.md) | 265 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [completeOn](declarations/completeon--141a2eae3e5bf33ddc240f18.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [mem_completeOn](declarations/mem-completeon--992b65db10b790a83a39d528.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [IsComplete.mem_iff](declarations/iscomplete-mem-iff--fa414729bcc10067afaf1241.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [IsComplete.completeOn](declarations/iscomplete-completeon--66b776224a360680813b3b41.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [IsComplete.isNonempty](declarations/iscomplete-isnonempty--821e94e04c132b180f9365fc.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [IsComplete.not_isTrivial](declarations/iscomplete-not-istrivial--ca5fa88971fb513f49b79d46.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [not_isTrivial_completeOn](declarations/not-istrivial-completeon--4a59e73d0933bf3c9da61ff0.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [IsLinear](declarations/islinear--05b37214fe9bf23e78ff2195.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isLinear_def](declarations/islinear-def--9fd14a8663c2b8540b9ffca2.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [IsLinear.inter_subsingleton](declarations/islinear-inter-subsingleton--89d4444ed859da3a38569933.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [IsTrivial.isLinear](declarations/istrivial-islinear--d896f38b5ff6530f7d69d1af.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
