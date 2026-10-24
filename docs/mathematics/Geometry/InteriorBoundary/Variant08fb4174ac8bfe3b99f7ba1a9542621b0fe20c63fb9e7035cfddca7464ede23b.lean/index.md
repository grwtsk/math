# GRWTSK.Geometry.InteriorBoundary.Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**63 observed declarations and anonymous commands**, 52 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e44227a5404371d3fbe4b9cdd473abc69f26c393`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Geometry/InteriorBoundary/Variant08fb4174ac8bfe3b99f7ba1a9542621b0fe20c63fb9e7035cfddca7464ede23b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](declarations/isinteriorpoint--759037a2d4469039b40f0aa9.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [IsBoundaryPoint](declarations/isboundarypoint--5e27f2251080dc90437785a4.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [interior](declarations/interior--336cfdcc21e1187cb27ddb09.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [isInteriorPoint_iff](declarations/isinteriorpoint-iff--f8f82f79626c7d840a6ace51.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [boundary](declarations/boundary--6f4f53d1d09b602645843cdc.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [isBoundaryPoint_iff](declarations/isboundarypoint-iff--e6000e49a7ec4e73b7d23565.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](declarations/isinteriorpoint-or-isboundarypoint--7b5d4aa5878d6606a9fd7219.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](declarations/interior-union-boundary-eq-univ--47fbe363c74dfb5dce51ddbd.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [disjoint_interior_boundary](declarations/disjoint-interior-boundary--cb9818d35928fb58cdfe17af.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](declarations/isinteriorpoint-iff-not-isboundarypoint--63c69193404b4fe3c8a5a22a.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [isBoundaryPoint_iff_not_isInteriorPoint](declarations/isboundarypoint-iff-not-isinteriorpoint--893b4dd2adc269d3dbc8c02d.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [compl_interior](declarations/compl-interior--6c6d9aad0b8e41bbb3a072b2.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [compl_boundary](declarations/compl-boundary--8535c57bcebb4311ea6a3818.md) | 156 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [_root_.range_mem_nhds_isInteriorPoint](declarations/root-range-mem-nhds-isinteriorpoint--7a5fdef9fccd09157bce441c.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `class` | [_root_.BoundarylessManifold](declarations/root-boundarylessmanifold--9945be52976bb64367e30820.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `instance` | [(anonymous)](declarations/instance--bb2ed175bfb9bfa1533b84a7.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `instance` | [BoundarylessManifold.of_empty](declarations/boundarylessmanifold-of-empty--0af668800e4c73b0a432dcc1.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [_root_.BoundarylessManifold.isInteriorPoint](declarations/root-boundarylessmanifold-isinteriorpoint--933849e389965a241c5cf6be.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [interior_eq_univ](declarations/interior-eq-univ--78b29abc05da605a2a5c209b.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `lemma` | [Boundaryless.boundary_eq_empty](declarations/boundaryless-boundary-eq-empty--fcff3f0067144b770f043801.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `instance` | [(anonymous)](declarations/instance--d2612c27bc8dab6d316dfc7f.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [Boundaryless.iff_boundary_eq_empty](declarations/boundaryless-iff-boundary-eq-empty--ee14f58eac0301151659096d.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [Boundaryless.of_boundary_eq_empty](declarations/boundaryless-of-boundary-eq-empty--0094e03befbf7daf0781ec33.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [_root_.DifferentiableAt.mem_interior_convex_of_surjective_fderiv](declarations/root-differentiableat-mem-interior-convex-of-surjective-fderiv--c24fbdf36bf76b6bf8f720a4.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [mem_interior_range_of_mem_interior_range_of_mem_atlas](declarations/mem-interior-range-of-mem-interior-range-of-mem-atlas--d883561f85cb6b71b6cd03b9.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [mem_interior_range_iff_of_mem_atlas](declarations/mem-interior-range-iff-of-mem-atlas--78267f613f65676eead764bc.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [isInteriorPoint_iff_of_mem_atlas](declarations/isinteriorpoint-iff-of-mem-atlas--a6a63d9081ada3e41f34a00e.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [isBoundaryPoint_iff_of_mem_atlas](declarations/isboundarypoint-iff-of-mem-atlas--78608698659f667f5b97e7e2.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [isOpen_interior](declarations/isopen-interior--adc0deaf253ba7f9e276aeec.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [isClosed_boundary](declarations/isclosed-boundary--c06f93c5e19223a065b78789.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [MDifferentiableAt.isInteriorPoint_of_surjective_mfderiv](declarations/mdifferentiableat-isinteriorpoint-of-surjective-mfderiv--5c4bd85efa9446f87f2e44e1.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `lemma` | [IsLocalDiffeomorphAt.isInteriorPoint_iff](declarations/islocaldiffeomorphat-isinteriorpoint-iff--4c2592c903a9872e43680b53.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `lemma` | [IsLocalDiffeomorphAt.isBoundaryPoint_iff](declarations/islocaldiffeomorphat-isboundarypoint-iff--1c6d94b363087c45fbb9fa7c.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `lemma` | [IsLocalDiffeomorphOn.preimage_interior_inter](declarations/islocaldiffeomorphon-preimage-interior-inter--6ea4c7806f12ea285068a197.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `lemma` | [IsLocalDiffeomorphOn.preimage_boundary_inter](declarations/islocaldiffeomorphon-preimage-boundary-inter--53edf866c1f320fe438b256b.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `lemma` | [IsLocalDiffeomorph.preimage_interior](declarations/islocaldiffeomorph-preimage-interior--2c3e53c251f479bd2bc856ef.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `lemma` | [IsLocalDiffeomorph.preimage_boundary](declarations/islocaldiffeomorph-preimage-boundary--da6968e0a4f51afd851d686f.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `lemma` | [IsLocalDiffeomorph.boundarylessManifold](declarations/islocaldiffeomorph-boundarylessmanifold--da6d9835a6f2bd0296b582a7.md) | 416 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `lemma` | [Diffeomorph.preimage_interior](declarations/diffeomorph-preimage-interior--add7549fc39505b992218c34.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `lemma` | [Diffeomorph.preimage_boundary](declarations/diffeomorph-preimage-boundary--9c5c02b47f319a2e23c68282.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `lemma` | [Diffeomorph.image_interior](declarations/diffeomorph-image-interior--ce7a2df21b6edbdbf9da3c1d.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `lemma` | [Diffeomorph.image_boundary](declarations/diffeomorph-image-boundary--37e59f836ea7ea378bd34555.md) | 433 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `lemma` | [Diffeomorph.boundarylessManifold](declarations/diffeomorph-boundarylessmanifold--a16cfc3adc4e15e39d3dbd25.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [Diffeomorph.boundarylessManifold_iff](declarations/diffeomorph-boundarylessmanifold-iff--f6f368f2e30a768e3e1dd5c5.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [isInteriorPoint_iff_isInteriorPoint_val](declarations/isinteriorpoint-iff-isinteriorpoint-val--4ae7a4889a10f479ee03bb4c.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [isBoundaryPoint_iff_isBoundaryPoint_val](declarations/isboundarypoint-iff-isboundarypoint-val--2e9ac3a839d88caa61849db6.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [interior_open](declarations/interior-open--1291e9203fe8a429e885c423.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [boundary_open](declarations/boundary-open--0c82bd3fcfd61d4ea0b30269.md) | 472 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [BoundarylessManifold.open](declarations/boundarylessmanifold-open--fff0d3941aa4b7a8493252c3.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `lemma` | [interior_prod](declarations/interior-prod--cebd4e7aad1d4523e45759e2.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `lemma` | [boundary_prod](declarations/boundary-prod--ea28f8ac14376e640b20cc71.md) | 508 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `lemma` | [boundary_of_boundaryless_left](declarations/boundary-of-boundaryless-left--72344e6ce87beac2f1f7938f.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `lemma` | [boundary_of_boundaryless_right](declarations/boundary-of-boundaryless-right--d4662515a9f900de77ddb538.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `instance` | [BoundarylessManifold.prod](declarations/boundarylessmanifold-prod--c5a400b327a745830f44e7fd.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `lemma` | [interiorPoint_inl](declarations/interiorpoint-inl--3c44a8f4ed6bc386c936e1f0.md) | 549 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `lemma` | [boundaryPoint_inl](declarations/boundarypoint-inl--3bf721917eec3be84cd62f44.md) | 556 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `lemma` | [interiorPoint_inr](declarations/interiorpoint-inr--9b11cfeb7cb83961a23482f6.md) | 563 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `lemma` | [boundaryPoint_inr](declarations/boundarypoint-inr--48e617d787d8ebdb3477d62a.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `lemma` | [isInteriorPoint_disjointUnion_left](declarations/isinteriorpoint-disjointunion-left--6f3d4f7872049d829b4eb691.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `lemma` | [isInteriorPoint_disjointUnion_right](declarations/isinteriorpoint-disjointunion-right--4e16a02ff3d35bab9cebdf65.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `lemma` | [interior_disjointUnion](declarations/interior-disjointunion--9fdf033367a7f347f84d8891.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `lemma` | [boundary_disjointUnion](declarations/boundary-disjointunion--267151a271e3af47920be60f.md) | 594 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [boundaryless_disjointUnion](declarations/boundaryless-disjointunion--f94e7bd1b16e1c58abc81ad5.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
