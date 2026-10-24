# Verification target: GRWTSK.Algebra.GroupTheory.Stabilizer.Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3839209a499f16fd1e829695a31442d24315f32",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3839209a499f16fd1e829695a31442d24315f32`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [stabilizer_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-empty--0fc68d33d3df7488835f3f41.md) | 33 | `result-track:0fc68d33d3df7488835f3f4188920415570fcc380469b3846cff638aa923544d` |
| 2 | `lemma` | [stabilizer_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-univ--473712722fe0ef0c53b8eb31.md) | 37 | `result-track:473712722fe0ef0c53b8eb31df163e973687f9e4d88b7e4aec3ad11a8dba4c36` |
| 3 | `lemma` | [stabilizer_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-singleton--4196d9da5034ed3ad2f52379.md) | 42 | `result-track:4196d9da5034ed3ad2f5237994687765ccc6cf458ec4acb7bbba46bbffeec9b1` |
| 4 | `lemma` | [mem_stabilizer_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-set--cac8c842ef0df4e6cbf42ff3.md) | 45 | `result-track:cac8c842ef0df4e6cbf42ff36a6cb6c5d89ec98c615be045cbd92bf76bb0c683` |
| 5 | `lemma` | [map_stabilizer_le](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/map-stabilizer-le--acaf1da67a5c282945386df9.md) | 52 | `result-track:acaf1da67a5c282945386df94ad7dcc0e7c434813cdf1dd906f081bbba8f3124` |
| 6 | `lemma` | [stabilizer_mul_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-mul-self--4a956f32c937ca81cdec3beb.md) | 60 | `result-track:4a956f32c937ca81cdec3bebf86b2f8ff0088d4af66f09527a05d08e71e23d5b` |
| 7 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_apply₂](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-apply--c6b8c44596ad215ce82b3fe1.md) | 68 | `result-track:c6b8c44596ad215ce82b3fe1b3f75d6c95f1e6591a251b7bb439d65f10836d45` |
| 8 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_union](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-union--3c3e09f4108e12f827ba266a.md) | 73 | `result-track:3c3e09f4108e12f827ba266a13ed0ec0d44387a5d1a268c782bdfa1212660088` |
| 9 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_inter](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-inter--051a4b14895192f7ed7fbd63.md) | 78 | `result-track:051a4b14895192f7ed7fbd632acc8c13566ec37a6ad5746f8aebd6920f3625fd` |
| 10 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_sdiff](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-sdiff--c454571370e6670ac80cd2c6.md) | 83 | `result-track:c454571370e6670ac80cd2c672258dfd9039a6362028e0e2bf640d9026f42288` |
| 11 | `lemma` | [stabilizer_union_eq_left](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-union-eq-left--c370111f1703661892370c03.md) | 88 | `result-track:c370111f1703661892370c03e2494ce13f5241bd2d67c373bdbe5ac8c96ba9ff` |
| 12 | `lemma` | [stabilizer_union_eq_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-union-eq-right--b3dc484a198f56939b7c818e.md) | 103 | `result-track:b3dc484a198f56939b7c818e4b0d02d75d7d87a1a901596b4990794963d939f5` |
| 13 | `lemma` | [op_smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/op-smul-set-stabilizer-subset--239fa064f89997d0ad090579.md) | 112 | `result-track:239fa064f89997d0ad0905795fd712f14ebc6d305b5e34e5a6b14e5152bd717c` |
| 14 | `lemma` | [stabilizer_subset_div_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-subset-div-right--5f7cc065178977ec238983fa.md) | 116 | `result-track:5f7cc065178977ec238983fab6aac09359ae882aac65c0d499283ff1d049de87` |
| 15 | `lemma` | [stabilizer_finite](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-finite--0e32e0fcb09ed4857dbd07e5.md) | 120 | `result-track:0e32e0fcb09ed4857dbd07e5cc5dfd8a74053c1111a645a758499791441bb09e` |
| 16 | `lemma` | [smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/smul-set-stabilizer-subset--89dfa14f830b83759eb3af09.md) | 130 | `result-track:89dfa14f830b83759eb3af0942641e418f9f78ef28cb7d867d12641572da5ea1` |
| 17 | `lemma` | [stabilizer_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-subgroup--94586a2e759700934e7a6a5c.md) | 145 | `result-track:94586a2e759700934e7a6a5cd601b5894fa3e74f385605e8c3a2879ab124dbc8` |
| 18 | `lemma` | [stabilizer_op_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-op-subgroup--8e1c8dd3d62269c953fa32b1.md) | 151 | `result-track:8e1c8dd3d62269c953fa32b1fbc54d41333f0c0be40703bfbe26ddca89d0d9ff` |
| 19 | `lemma` | [stabilizer_subgroup_op](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-subgroup-op--75590a9a87c9562da5e531ad.md) | 158 | `result-track:75590a9a87c9562da5e531addfb119ca38fdebe96781d12385290592470c40e2` |
| 20 | `lemma` | [stabilizer_coe_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-coe-finset--cbb934f278cfff2b6e0d96c5.md) | 172 | `result-track:cbb934f278cfff2b6e0d96c56fddc87b6294d37819dd378e5e460607fe5d1c04` |
| 21 | `lemma` | [stabilizer_finset_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-finset-empty--5d61e1564f920a64174c2916.md) | 176 | `result-track:5d61e1564f920a64174c29167faffb0d783b3c1dc4f607bb03724c629def8d2d` |
| 22 | `lemma` | [stabilizer_finset_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-finset-univ--284fb0fd2373fc2d3c63c0f6.md) | 180 | `result-track:284fb0fd2373fc2d3c63c0f6942fe6ab8b99ae4fe05ece688fa75ca81d424f44` |
| 23 | `lemma` | [stabilizer_finset_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-finset-singleton--8447e0498f344c2037fa5df8.md) | 185 | `result-track:8447e0498f344c2037fa5df8f4e97ecd238194eeaf996b15a5936b09f23ba870` |
| 24 | `lemma` | [mem_stabilizer_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-finset--6a0729a42a89a1f838a706e8.md) | 189 | `result-track:6a0729a42a89a1f838a706e8071cc051e9c7a2702e65647ff8b4fd4dee2a579c` |
| 25 | `lemma` | [mem_stabilizer_finset_iff_subset_smul_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-finset-iff-subset-smul-finset--a89f4bf645234bee970b4729.md) | 193 | `result-track:a89f4bf645234bee970b472928f284ed140a3ddb030c271b413a6da7c2292b73` |
| 26 | `lemma` | [mem_stabilizer_finset_iff_smul_finset_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-finset-iff-smul-finset-subset--24a975012dd992fec2fc2e86.md) | 198 | `result-track:24a975012dd992fec2fc2e861bb62595cdfdcdc238eb2502564151c3bf818db8` |
| 27 | `lemma` | [mem_stabilizer_finset'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-finset--89d295e53f5c45d797c74485.md) | 203 | `result-track:89d295e53f5c45d797c74485677987773b853419ea2af506787e5909e18d3a01` |
| 28 | `lemma` | [mem_stabilizer_set_iff_subset_smul_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-set-iff-subset-smul-set--51c2bf7a7a5dc462d63f86bb.md) | 214 | `result-track:51c2bf7a7a5dc462d63f86bb29c031a3431bcffb7f1cea30da24af5d8dbd8938` |
| 29 | `lemma` | [mem_stabilizer_set_iff_smul_set_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-set-iff-smul-set-subset--f5b4e58913a37450ee479613.md) | 222 | `result-track:f5b4e58913a37450ee479613907edcd4f5824c361869764da6b3f5b77612c260` |
| 30 | `lemma` | [mem_stabilizer_set'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mem-stabilizer-set--9ee451e4a9961c16135a5e65.md) | 230 | `result-track:9ee451e4a9961c16135a5e65d8bc2d106841d3f42780b3fcb7e463a97cb6be49` |
| 31 | `lemma` | [mul_stabilizer_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/mul-stabilizer-self--bf700cfe0626c6730c7df4a8.md) | 243 | `result-track:bf700cfe0626c6730c7df4a8430793cf0f3622c62c9556f6db67c3bc3b628013` |
| 32 | `lemma` | [stabilizer_image_coe_quotient](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variantc56775dcca4ea1dc68268a65687974eb02b0b70f07c215921f6917d83d69d38d.lean/declarations/stabilizer-image-coe-quotient--c693b34028108b5b0c59fc66.md) | 249 | `result-track:c693b34028108b5b0c59fc664af26d0a22bebb4d1b4e43c6b5c858e391fca7a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
