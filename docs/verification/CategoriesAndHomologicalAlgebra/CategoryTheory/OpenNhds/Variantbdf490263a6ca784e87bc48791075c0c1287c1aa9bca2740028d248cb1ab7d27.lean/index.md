# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.OpenNhds.Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "53ac4adf632fa1df4dddab7b5206b2516780c02f",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `53ac4adf632fa1df4dddab7b5206b2516780c02f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Category.TopCat.Opens` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [OpenNhds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/opennhds--f38b040b1f4354b7cc8767c5.md) | 46 | `declaration-track:f38b040b1f4354b7cc8767c5ec7cb26ccdbbbb0e2f2eba0a7b38e16e6af9238d` |
| 2 | `instance` | [partialOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/partialorder--c0fc1ba39beda19edbd44ace.md) | 52 | `declaration-track:c0fc1ba39beda19edbd44ace51f10b8befb1874d1de95bbf3fda9bc3e73cca35` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/instance--3a9473ade1a85c93e05a4da9.md) | 58 | `declaration-track:3a9473ade1a85c93e05a4da9a52d1917ce00c2b05ab94e61c6d82e8dee7ac6b7` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/instance--72ddcbfcbb91d9ae6e4e36be.md) | 69 | `declaration-track:72ddcbfcbb91d9ae6e4e36bee416b7650c045e9cd5a6955177ce34cd423e3eb7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/instance--be359f8201c46573d40994ed.md) | 73 | `declaration-track:be359f8201c46573d40994ed450f0afcb61294eb9677c29ec18c899941a3f294` |
| 6 | `instance` | [openNhdsCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/opennhdscategory--56b3c29394b59110e11c33af.md) | 76 | `declaration-track:56b3c29394b59110e11c33afad5b65ea3cd95092b52ec9b0e0d65841e5a738d8` |
| 7 | `instance` | [opensNhds.instFunLike](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/opensnhds-instfunlike--a8ee21533ab3136b11b10309.md) | 78 | `declaration-track:a8ee21533ab3136b11b10309dd195059ec0534e72872174d48b6a14286472cc2` |
| 8 | `lemma` | [apply_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/apply-mk--a3f1af2d0b93b70148cc878d.md) | 82 | `result-track:a3f1af2d0b93b70148cc878df46a552e3a093033ac0903f96f162b8bd2a5126b` |
| 9 | `lemma` | [val_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/val-apply--97e41a8bc7dd1b22ce4faf2f.md) | 84 | `result-track:97e41a8bc7dd1b22ce4faf2fc4b0594241538d79368db4cdf00f6a38daeae47c` |
| 10 | `lemma` | [coe_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/coe-id--3c75ca8f091cc9d2c2993160.md) | 86 | `result-track:3c75ca8f091cc9d2c2993160ab970b6fc2fc20c49175cc904b01b492cde69b06` |
| 11 | `lemma` | [id_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/id-apply--6a5e4fd6b4dd0f3c22b29d30.md) | 88 | `result-track:6a5e4fd6b4dd0f3c22b29d30f991c0f9c38d084c80176d257096ccbb1e39fbab` |
| 12 | `lemma` | [comp_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/comp-apply--7530851a33c391e4fcf1df74.md) | 90 | `result-track:7530851a33c391e4fcf1df74d1ae13418c683b45f3fe7af2fabe49370607c596` |
| 13 | `def` | [infLELeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/infleleft--f68b698c9b624e7612702847.md) | 93 | `declaration-track:f68b698c9b624e7612702847f9353fcf0765783b29d9e9b774ad38715f6b8b62` |
| 14 | `def` | [infLERight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/infleright--9ac9c56d4503e201c2cb22aa.md) | 97 | `declaration-track:9ac9c56d4503e201c2cb22aaf7718a2c1da290f4a4ff4ffdc0b14b0f69a626a4` |
| 15 | `def` | [inclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/inclusion--cd5c17333a6857ae372cb3a4.md) | 102 | `declaration-track:cd5c17333a6857ae372cb3a455fa3de8c6d5d6601cc66906d4dddab8eb109966` |
| 16 | `theorem` | [inclusion_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/inclusion-obj--68514655d0bca73df9758ba5.md) | 106 | `result-track:68514655d0bca73df9758ba5841fc1832cb9a6c56a94eb41971896335f67a8cc` |
| 17 | `theorem` | [isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/isopenembedding--89d2e634f13df0b574e2f09c.md) | 109 | `result-track:89d2e634f13df0b574e2f09cc2e5e4f683915d3f72f0a73b828320eff4573aab` |
| 18 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/map--1216b42cbb55d28e0c59e2e3.md) | 113 | `declaration-track:1216b42cbb55d28e0c59e2e364468580a6957e8976b7bfdeac1f126ea1081d0f` |
| 19 | `theorem` | [map_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/map-obj--a678f8db4a922e6f86986b65.md) | 118 | `result-track:a678f8db4a922e6f86986b652b13304d672851522a9b8998d83b2a665198a272` |
| 20 | `theorem` | [map_id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/map-id-obj--8f2161781c08b648ef42ccb9.md) | 122 | `result-track:8f2161781c08b648ef42ccb9f616f3329166e19f8b371db1cd87ff6b7f5d4dd3` |
| 21 | `theorem` | [map_id_obj'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/map-id-obj--3a8d7027365132f59c460131.md) | 125 | `result-track:3a8d7027365132f59c460131c9610ff6da2f6d463ca61c78cb9190085078fa34` |
| 22 | `theorem` | [map_id_obj_unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/map-id-obj-unop--c1f908d26af95d09e9c19e22.md) | 129 | `result-track:c1f908d26af95d09e9c19e22382fa7a46aed96a59da4d7d9c81ad8298c7dfe80` |
| 23 | `theorem` | [op_map_id_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/op-map-id-obj--f277ae7c4437f3f4ddf829f5.md) | 133 | `result-track:f277ae7c4437f3f4ddf829f5bcc0cb2c983995732f8df41e0c8eb5ab2cce2b01` |
| 24 | `def` | [inclusionMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/inclusionmapiso--373286a88453d55bf3201bd8.md) | 138 | `declaration-track:373286a88453d55bf3201bd8211764cc03d5d12605f8671bd3aa51c3ff858348` |
| 25 | `theorem` | [inclusionMapIso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/inclusionmapiso-hom--e0d1f8194ea2661e21b69db5.md) | 142 | `result-track:e0d1f8194ea2661e21b69db5e2a4e2adeacbc066c9f0f01e8f5facaef9ce18e4` |
| 26 | `theorem` | [inclusionMapIso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/inclusionmapiso-inv--158d3feb45116a6b84dadb63.md) | 146 | `result-track:158d3feb45116a6b84dadb632e4608f13fcb0216cac4795b8d025e7951f9002c` |
| 27 | `def` | [functorNhds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/functornhds--79ad4c64ce60fddf7945256c.md) | 161 | `declaration-track:79ad4c64ce60fddf7945256c122cae044c8c6bdf43891512f41d8df10441a7ea` |
| 28 | `def` | [adjunctionNhds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/adjunctionnhds--b0bd328cf68b67c6363350c6.md) | 166 | `declaration-track:b0bd328cf68b67c6363350c6885568e068cb3cea7950a59ce3829bff8f72a78a` |
| 29 | `def` | [functorNhds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/functornhds--ea0dbdbac8cb19e46b5dc5ae.md) | 180 | `declaration-track:ea0dbdbac8cb19e46b5dc5ae1dd5ff9a044a819d36d8e4bddef362133acf82ce` |
| 30 | `def` | [adjunctionNhds](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/OpenNhds/Variantbdf490263a6ca784e87bc48791075c0c1287c1aa9bca2740028d248cb1ab7d27.lean/declarations/adjunctionnhds--82de2e3b95ebddead6612594.md) | 188 | `declaration-track:82de2e3b95ebddead6612594ad01559c563aeac356a5f2faa62bbfc2e68f7b8c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
