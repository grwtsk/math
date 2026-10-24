# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PrismaticProjection.Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 14 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29b6969c0d0883fdd987d9419dc6780be4ddf24d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/PrismaticProjection/Variant02a66523355f1fb4da1cabd477da86abe5a1030d1b43054c6273326618c883aa.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ProjectionErrorEnvelope](declarations/projectionerrorenvelope--6debb9212200e8b1144a422f.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [MatrixTreeHashes](declarations/matrixtreehashes--44c05fdb6a19cb586426e826.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [BoundaryHashes](declarations/boundaryhashes--5d66806cdb550a9f677d8d6c.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ToroidalShadowState](declarations/toroidalshadowstate--1ea14a3f314c623777b0ec9a.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [ToroidalShadowStream](declarations/toroidalshadowstream--0c44eda3d19c44aa44ce1861.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [PrismaticCertificate](declarations/prismaticcertificate--86ae965566765bed0a8d2f3b.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ShapeUpdateWitness](declarations/shapeupdatewitness--2e4e715d404a545d8bd72755.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [stepChecked](declarations/stepchecked--5681c1d90c2b623c11b998ed.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [stepChecked_comparison_sound](declarations/stepchecked-comparison-sound--f17c6bc4087dba1c78a1d281.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [stepChecked_precision_sound](declarations/stepchecked-precision-sound--7952be137a00fefac0e676f1.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [stepChecked_prior_hash_consistency](declarations/stepchecked-prior-hash-consistency--4146426b1702c7ef4ec0d2c2.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [stepChecked_next_hash_consistency](declarations/stepchecked-next-hash-consistency--2427cd4280eb9952d9c07640.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [ShapeUpdateWitnessOwnsFullGeometry](declarations/shapeupdatewitnessownsfullgeometry--6ea6aec12aa544ea2b7403bc.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [shape_update_witness_does_not_own_full_geometry](declarations/shape-update-witness-does-not-own-full-geometry--d1ef97eecbea353984cb33fc.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [PrismaticComputed](declarations/prismaticcomputed--763b8b0b71978e6cc228834a.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [PrismaticComputed.toShapeUpdateWitness](declarations/prismaticcomputed-toshapeupdatewitness--c576bc5976458e80f850014a.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [computed_toShapeUpdateWitness_prior_hash](declarations/computed-toshapeupdatewitness-prior-hash--2c1c798b8c96bd70e82430d0.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [computed_toShapeUpdateWitness_next_hash](declarations/computed-toshapeupdatewitness-next-hash--901d9dc4e0f3038ff83a388d.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [shadow_state_exposes_support_hashes](declarations/shadow-state-exposes-support-hashes--f7a1d6a19c28248924ab0fd4.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [shadow_state_exposes_matrix_tree_hashes](declarations/shadow-state-exposes-matrix-tree-hashes--35e6d9d486f118be3573805f.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [shadow_state_exposes_boundary_hashes](declarations/shadow-state-exposes-boundary-hashes--619eab6085d52e619fa557ae.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [shadow_state_exposes_depths](declarations/shadow-state-exposes-depths--cb46c732bf5c8995771b0610.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [error_envelope_total_eq](declarations/error-envelope-total-eq--b4978504f36a5c2a8454ea9c.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [exampleZeroErrorEnvelope](declarations/examplezeroerrorenvelope--18e632715af6019af2997a8f.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [exampleMatrixTreeHashes](declarations/examplematrixtreehashes--c5e97083392a66dd39781b2e.md) | 283 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [exampleBoundaryHashes](declarations/exampleboundaryhashes--aefb23f0fa14c62fb47940b4.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [examplePriorShadowState](declarations/examplepriorshadowstate--7865400a0730bb953d99eac6.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [exampleNextShadowState](declarations/examplenextshadowstate--31a6f4310d9b73bc6effcf51.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [examplePrismaticCertificate](declarations/exampleprismaticcertificate--224b12cdbe56024b20c85243.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [examplePrismaticComputed](declarations/exampleprismaticcomputed--e9e19feacc8e9c33d50cc9ae.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [exampleShapeUpdateWitness](declarations/exampleshapeupdatewitness--7e28a6943cbe66bbbd25f7b7.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [example_stepChecked](declarations/example-stepchecked--c0f395cfe56fc274c93dabf2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [example_stepChecked_exposes_precision](declarations/example-stepchecked-exposes-precision--22ca57573072b2321dac563d.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
