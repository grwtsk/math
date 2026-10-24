# Verification target: GRWTSK.Algebra.LinearAlgebra.CoassocSimps.Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1dfd4b17dec6a71b7360ff35337e31acfa0274ab",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1dfd4b17dec6a71b7360ff35337e31acfa0274ab`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean.json)

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
| 1 | `lemma` | [TensorProduct.map_comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/tensorproduct-map-comp-assoc--5149c3fd3db607e4fbdd614e.md) | 88 | `result-track:5149c3fd3db607e4fbdd614e907a80dc1dcfb33bc0989b5c62e581c09d8bc737` |
| 2 | `lemma` | [TensorProduct.map_map_comp_assoc_eq_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/tensorproduct-map-map-comp-assoc-eq-assoc--b9e7f0f031755f3edd8f9999.md) | 94 | `result-track:b9e7f0f031755f3edd8f9999d60c9a94bd8a90e72376effd5a3a6f580583cec1` |
| 3 | `lemma` | [TensorProduct.map_map_comp_assoc_symm_eq_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/tensorproduct-map-map-comp-assoc-symm-eq-assoc--517778258056556dc7c5e373.md) | 100 | `result-track:517778258056556dc7c5e37345e08f8588a11a38bf3296daadefe8140d5f0da1` |
| 4 | `lemma` | [assoc_comp_map_map_comp](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-map-comp--1a75c9357e5cbeb26a86c622.md) | 106 | `result-track:1a75c9357e5cbeb26a86c622d3bec536ed1cc2cfd2958a00eb69bab00edd1084` |
| 5 | `lemma` | [assoc_comp_map_map_comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-map-comp-assoc--cfcbb7ceb9d577a1a180a3da.md) | 114 | `result-track:cfcbb7ceb9d577a1a180a3dab1fe3302f068a8d9ba15dabcdeae7eb88b517bcf` |
| 6 | `lemma` | [assoc_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map--5840847261b24354a085944e.md) | 123 | `result-track:5840847261b24354a085944e5da1bee1dec8f5a125bc5d2798041e644085272f` |
| 7 | `lemma` | [assoc_comp_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-assoc--f75e74280f33d9a2d4f004b2.md) | 175 | `result-track:f75e74280f33d9a2d4f004b2a6794ca6d8dd0cd15bc7dba077b5f19232194393` |
| 8 | `lemma` | [assoc_symm_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map--c61221863184b30100c7bb62.md) | 235 | `result-track:c61221863184b30100c7bb62b67f72ba4e37bd106a02e7951967bc91e02350e6` |
| 9 | `lemma` | [assoc_symm_comp_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-assoc--569f709b43b6861c1fc86dd6.md) | 289 | `result-track:569f709b43b6861c1fc86dd6bf128713fd74e2833c0a1a7ebb03d5a21b0a2bc5` |
| 10 | `lemma` | [assoc_symm_comp_map_map_comp](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-map-comp--bc361c68dabfb648f0a4b40f.md) | 349 | `result-track:bc361c68dabfb648f0a4b40f0dd2f4b33dbf355299200cfbd32629536d60205d` |
| 11 | `lemma` | [assoc_symm_comp_map_map_comp_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-map-comp-assoc--e4e629c667d9c43d18d1241f.md) | 357 | `result-track:e4e629c667d9c43d18d1241ff649fb315a15b67fd7ad9c72fdea03575a625fc6` |
| 12 | `lemma` | [assoc_symm_comp_lid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-lid-symm--85f955cb19a25b82e3675c02.md) | 364 | `result-track:85f955cb19a25b82e3675c02e40a508f5a1577debd54554ed29a6ca4ddfbced6` |
| 13 | `lemma` | [assoc_symm_comp_lid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-lid-symm-assoc--0c71cf33ab5aa3977b0a26fb.md) | 368 | `result-track:0c71cf33ab5aa3977b0a26fb176a855ea429ee45139f9e9e65410be7a8bdf199` |
| 14 | `lemma` | [assoc_symm_comp_map_lid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-lid-symm--9dfb9a5db915dc26d16a0807.md) | 372 | `result-track:9dfb9a5db915dc26d16a0807a53f9a8d5105ea08268bcef08c49fa523fc77a6c` |
| 15 | `lemma` | [assoc_symm_comp_map_lid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-lid-symm-assoc--78cbf19a6b090689ba8a876e.md) | 377 | `result-track:78cbf19a6b090689ba8a876e3afd148f6d176d605f0d43bc72822ad9f3d60b68` |
| 16 | `lemma` | [assoc_symm_comp_map_rid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-rid-symm--d275cce1f6fbc4a4027efe15.md) | 382 | `result-track:d275cce1f6fbc4a4027efe15932a23a736f650993d0644408c5af79ddca9b250` |
| 17 | `lemma` | [assoc_symm_comp_map_rid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-symm-comp-map-rid-symm-assoc--243fa87488fd0c9e94cd9c09.md) | 387 | `result-track:243fa87488fd0c9e94cd9c09033f48bfb86abaa494d5e49a1ee8b786a8df3881` |
| 18 | `lemma` | [assoc_comp_rid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-rid-symm--4d5e4dc96c32ff2ccf8acf0f.md) | 392 | `result-track:4d5e4dc96c32ff2ccf8acf0f7e7c0dd288d6c5ef8374ab4f3d50ee4f75ef6fea` |
| 19 | `lemma` | [assoc_comp_rid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-rid-symm-assoc--7d1dbb9a3f592a97ae331604.md) | 396 | `result-track:7d1dbb9a3f592a97ae331604a8a095fbad9e1fa4c69567d07e9e212bbe936d2d` |
| 20 | `lemma` | [assoc_comp_map_lid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-lid-symm--a428d199d0ca563db48fe9a9.md) | 401 | `result-track:a428d199d0ca563db48fe9a9c07d3d47e3a91c05229bffa78944426cd58d5182` |
| 21 | `lemma` | [assoc_comp_map_lid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-lid-symm-assoc--b3054e519921c02c183eb43f.md) | 406 | `result-track:b3054e519921c02c183eb43f08a628bc9b6e246dc9c208d579f21939ab1e7d6b` |
| 22 | `lemma` | [assoc_comp_map_rid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-rid-symm--47aa7ec2f9da2a497bf7a6ef.md) | 411 | `result-track:47aa7ec2f9da2a497bf7a6ef376ef39ad7e38de4896da4388af4505a1c66bc96` |
| 23 | `lemma` | [assoc_comp_map_rid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-rid-symm-assoc--61e578baa496882e7f7862c6.md) | 416 | `result-track:61e578baa496882e7f7862c634cc547e75a48349b663d61768983f25d94ef8c7` |
| 24 | `lemma` | [lid_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/lid-comp-map--61aa81540766557ab1721dd9.md) | 422 | `result-track:61aa81540766557ab1721dd98c62eaafab36c92881c6f65d97948b69f020bac2` |
| 25 | `lemma` | [lid_comp_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/lid-comp-map-assoc--6d932074f4898cb0a54fe56d.md) | 461 | `result-track:6d932074f4898cb0a54fe56ddd0e7af58a995450c891e924c146b2ca9ad24765` |
| 26 | `lemma` | [rid_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/rid-comp-map--dfdcb976c7aef20682a352dd.md) | 507 | `result-track:dfdcb976c7aef20682a352dd478ecc203444cdc4a84e90816e23b5fde3d9454e` |
| 27 | `lemma` | [rid_comp_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/rid-comp-map-assoc--5f2a841dca22522165d5d2d1.md) | 546 | `result-track:5f2a841dca22522165d5d2d16fcd6f29da4f9746fa5a4dc7f9a90fe5c9c7894b` |
| 28 | `lemma` | [lid_symm_comp](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/lid-symm-comp--04c002f36c66013b36cbe3b0.md) | 591 | `result-track:04c002f36c66013b36cbe3b019161ac6207106621d972eadf680ed8761a1ce90` |
| 29 | `lemma` | [rid_symm_comp](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/rid-symm-comp--89147c0baa4d67541a540df0.md) | 596 | `result-track:89147c0baa4d67541a540df0a6fbcd1b16ba0a4d1a7b714e14e9a1c8f27d7436` |
| 30 | `lemma` | [symm_comp_lid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-lid-symm--333e3876e2f11cdb1fd66d41.md) | 601 | `result-track:333e3876e2f11cdb1fd66d4189421bda9a602454cbe8f31c4ee3018af6316781` |
| 31 | `lemma` | [symm_comp_lid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-lid-symm-assoc--557ecd70c876cc4c78a303b5.md) | 605 | `result-track:557ecd70c876cc4c78a303b5031a67186e7e529cc2e2824b76213b2e6cdc59bc` |
| 32 | `lemma` | [symm_comp_rid_symm](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-rid-symm--afdd3632f3d380a741b12630.md) | 609 | `result-track:afdd3632f3d380a741b126309fc03ea7cb3c68906e7c8f02cee8e44725eaafdc` |
| 33 | `lemma` | [symm_comp_rid_symm_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-rid-symm-assoc--a5463ac0b5571b5729ca5061.md) | 613 | `result-track:a5463ac0b5571b5729ca506183b06404f6a17f0ae34b3092f34f73c8da1c8f82` |
| 34 | `lemma` | [symm_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-map--eb870ebe672171b2f6c08fff.md) | 617 | `result-track:eb870ebe672171b2f6c08fffd22298d5701965f863352e814331f0aaaa40e148` |
| 35 | `lemma` | [symm_comp_map_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/symm-comp-map-assoc--39e825e320a602616131634c.md) | 621 | `result-track:39e825e320a602616131634c712fa3a89980373486ca8a980ae85b9205524744` |
| 36 | `lemma` | [coassoc_left](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/coassoc-left--9e8ceac02108f37ae3468737.md) | 626 | `result-track:9e8ceac02108f37ae346873715fa35bc4182c8f8dc39b1b95e03af21834c784a` |
| 37 | `lemma` | [coassoc_left_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/coassoc-left-assoc--289b9f8a3b94d10c11e1f45a.md) | 633 | `result-track:289b9f8a3b94d10c11e1f45a758de8cef7af8ea5a5ca3e0d3672b86ec652c74e` |
| 38 | `lemma` | [coassoc_right](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/coassoc-right--d11e82205bf59c3b9dd32063.md) | 640 | `result-track:d11e82205bf59c3b9dd32063281173528c09969703029591c4296221744e9ae6` |
| 39 | `lemma` | [coassoc_right_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/coassoc-right-assoc--2f54d7e95902ee9f6a7601df.md) | 647 | `result-track:2f54d7e95902ee9f6a7601df561a70b2b79c096456d1bfe1600a1da2cfab2188` |
| 40 | `lemma` | [map_counit_comp_comul_left](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/map-counit-comp-comul-left--e8a7618d2fe6220e737ffdb7.md) | 653 | `result-track:e8a7618d2fe6220e737ffdb78359b4c0c7b90577fcd75e1ef00dbc29f83e8093` |
| 41 | `lemma` | [map_counit_comp_comul_left_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/map-counit-comp-comul-left-assoc--2dca73c5cbb75b495e38d1ea.md) | 658 | `result-track:2dca73c5cbb75b495e38d1ea8b995bf0685819db6d3d242b4ceb4618f8340ee4` |
| 42 | `lemma` | [map_counit_comp_comul_right](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/map-counit-comp-comul-right--6f1a8d14f353a4a6b6b22107.md) | 662 | `result-track:6f1a8d14f353a4a6b6b22107a058a8f25a49f6ff867d2bdf6c16179c662a02bf` |
| 43 | `lemma` | [map_counit_comp_comul_right_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/map-counit-comp-comul-right-assoc--c1c5aa7012047056c0cb7dd6.md) | 667 | `result-track:c1c5aa7012047056c0cb7dd69431952325a165bc986f4dae4b638f290c934f62` |
| 44 | `lemma` | [assoc_comp_map_comm_comp_comul_comp_comul](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-comm-comp-comul-comp-comul--f45c0514ed32cd549b4a0a7e.md) | 672 | `result-track:f45c0514ed32cd549b4a0a7e664b22b31a6edf91399a560f8543091879d9a1df` |
| 45 | `lemma` | [assoc_comp_map_comm_comp_comul_comp_comul_assoc](../../../../../mathematics/Algebra/LinearAlgebra/CoassocSimps/Variant1585b1624fe5aa67320b69f50a185c85550ad60b8d8742c8464deaf271489f28.lean/declarations/assoc-comp-map-comm-comp-comul-comp-comul-assoc--e6cf43c8b14a34b3c81dd269.md) | 683 | `result-track:e6cf43c8b14a34b3c81dd2697dab49aa9f11932b3c62b19d0f6fc50b6f199f13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
