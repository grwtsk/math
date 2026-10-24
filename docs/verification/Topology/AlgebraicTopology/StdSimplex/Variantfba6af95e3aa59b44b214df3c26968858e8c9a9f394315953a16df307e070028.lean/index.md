# Verification target: GRWTSK.Topology.AlgebraicTopology.StdSimplex.Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "62d9a8cfacb1965191592d0019fb8fd21bec4606",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `62d9a8cfacb1965191592d0019fb8fd21bec4606`.

Source path: `GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.OfSection` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.SuccAboveOrderIso` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/stdsimplex--32ec44dba3e5d29e04e4b709.md) | 39 | `declaration-track:32ec44dba3e5d29e04e4b709bb5c7790b90e3e3e95c290fcab6a3368a0ded79d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/instance--5d4d8d9138492ca1dbfaba82.md) | 47 | `declaration-track:5d4d8d9138492ca1dbfaba82160df0ab010e7492ae1298cd38c0ad1310ac67f5` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/instance--05c806933a47b4678c8a8aed.md) | 50 | `declaration-track:05c806933a47b4678c8a8aedcf66a2566180fbf19e1e1cfe90116703067cddc7` |
| 4 | `lemma` | [map_id](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/map-id--2ec6f1ffcee08575acda545b.md) | 58 | `result-track:2ec6f1ffcee08575acda545bd30ad5e9192fe02a3a850f229337c34ceaeeab00` |
| 5 | `def` | [objEquiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objequiv--fb4de6974e9532e3c467613a.md) | 63 | `declaration-track:fb4de6974e9532e3c467613a07197fc0b375d93d495d1af8ea2c90c5072a68f5` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/instance--4d19518845b62e5831be640d.md) | 68 | `declaration-track:4d19518845b62e5831be640d48db8c284269a70401af8cf4835853ed58395275` |
| 7 | `lemma` | [ext](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/ext--309103f666b6ff6d45e6a1ff.md) | 73 | `result-track:309103f666b6ff6d45e6a1ff706a2c2bdfe6959d94ceb5c1c5b875c2e5047d34` |
| 8 | `lemma` | [objEquiv_toOrderHom_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objequiv-toorderhom-apply--63193803a7721d546cb1e40f.md) | 77 | `result-track:63193803a7721d546cb1e40f8b87570f9dc7bed430d8bac52f30e450bc4f04e3` |
| 9 | `lemma` | [objEquiv_symm_comp](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objequiv-symm-comp--f6def4941a161d6ff363bcfc.md) | 84 | `result-track:f6def4941a161d6ff363bcfc9fef28caa46a40ed0ea68a160bc5e06d09577eda` |
| 10 | `lemma` | [objEquiv_symm_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objequiv-symm-apply--14e67e3c53d3eae57d6913e5.md) | 90 | `result-track:14e67e3c53d3eae57d6913e5cb7d5b002644c2aceb24c39b2c43e8789067c4d2` |
| 11 | `abbrev` | [objMk](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objmk--9e31c86792f4c74c6d7484b3.md) | 95 | `declaration-track:9e31c86792f4c74c6d7484b313b72ba75e6c205e06019702c859d427d7713f18` |
| 12 | `lemma` | [objMk_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/objmk-apply--bd91854fcc94abd782f55d02.md) | 101 | `result-track:bd91854fcc94abd782f55d02a3d18a53c81c54750719365144cd81fa7aca332a` |
| 13 | `def` | [asOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/asorderhom--4f99428b2b34753774c1fc60.md) | 107 | `declaration-track:4f99428b2b34753774c1fc603b9fc1a9abb48e99001ef92f6c4df3474c5a2ccf` |
| 14 | `lemma` | [map_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/map-apply--53d976e6ddd1d3cb92f9798f.md) | 110 | `result-track:53d976e6ddd1d3cb92f9798fb569404e69693c1231eefa2e908e75d995a262af` |
| 15 | `def` | [_root_.GRWTSK.Topology.AlgebraicTopology.StdSimplex.Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.SSet.yonedaEquiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/root-grwtsk-topology-algebraictopology-stdsimplex-variant850f211fdb3e1a4--778895bd2e2caaa4a54582ae.md) | 116 | `declaration-track:778895bd2e2caaa4a54582aed99af77f7452e98bcb044770c16d502052260059` |
| 16 | `lemma` | [yonedaEquiv_map](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/yonedaequiv-map--6f79b83e66ec0b330affd351.md) | 120 | `result-track:6f79b83e66ec0b330affd351a71fb31e86d16042dcd4cd4a43c0ae6f9f3f369c` |
| 17 | `def` | [const](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/const--6eecebf69a96aabf761c75ba.md) | 125 | `declaration-track:6eecebf69a96aabf761c75ba116b57738c9c49745408939fd8794b5c694ccde7` |
| 18 | `lemma` | [const_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/const-down-toorderhom--ddd6f97ca4664fb3fc1a27df.md) | 129 | `result-track:ddd6f97ca4664fb3fc1a27df7f23f0ccf444cd8d68e5ad2a689752106d394cb3` |
| 19 | `def` | [obj₀Equiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/obj-equiv--2511bb00b89f8716425ff639.md) | 135 | `declaration-track:2511bb00b89f8716425ff6390c5c244663941d665e42eeb47f3d87cd466cc75e` |
| 20 | `def` | [edge](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/edge--7d280efc20da3ac330d09aaa.md) | 142 | `declaration-track:7d280efc20da3ac330d09aaa8131902c3674878e9adf144ede0bb8cd9187bdf9` |
| 21 | `lemma` | [coe_edge_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/coe-edge-down-toorderhom--12da1ec49ddb8eec1615fa04.md) | 148 | `result-track:12da1ec49ddb8eec1615fa04a6c57f2fc35dcac0c90f577085634bd11aa4ebcc` |
| 22 | `def` | [triangle](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/triangle--45e633a3260277a38a0842c9.md) | 153 | `declaration-track:45e633a3260277a38a0842c97a59691930576e1240636c83422142541c86c006` |
| 23 | `lemma` | [coe_triangle_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/coe-triangle-down-toorderhom--6b26351da0b4b8a13d35006f.md) | 160 | `result-track:6b26351da0b4b8a13d35006feb646c6e6b1fbfad067097cf340da75f0c5143cb` |
| 24 | `def` | [face](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/face--216cd33fa4e4139b4a0e887e.md) | 169 | `declaration-track:216cd33fa4e4139b4a0e887ea719725d2c32c42856507fc511e52c9fd281d0f1` |
| 25 | `lemma` | [mem_face_iff](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/mem-face-iff--0a6b85c4cdec54ed4b5aa9e9.md) | 176 | `result-track:0a6b85c4cdec54ed4b5aa9e93d20f23cb82a9877a7e55042a56d1c3bf3f0ea50` |
| 26 | `lemma` | [face_inter_face](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/face-inter-face--d81713deef22a3d49ba58657.md) | 180 | `result-track:d81713deef22a3d49ba58657c36f671dc71bba872b47fe1b7d331e77d21566b4` |
| 27 | `lemma` | [yonedaEquiv_comp](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/yonedaequiv-comp--ca7cfcd9a2d91db9e059285f.md) | 186 | `result-track:ca7cfcd9a2d91db9e059285f4c3283a270effd99d1acb0fa75657f97ae4b88f2` |
| 28 | `abbrev` | [ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/ofsimplex--9d3648ba256e9c23015d3bed.md) | 195 | `declaration-track:9d3648ba256e9c23015d3bed75c1391d3592f74c6e08ae72ad9f1eda70830b8b` |
| 29 | `lemma` | [range_eq_ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/range-eq-ofsimplex--804bfdf5cbba05e1a261ad02.md) | 197 | `result-track:804bfdf5cbba05e1a261ad025792bd7a40b03c9221c153e822ae66b5fc80ce67` |
| 30 | `lemma` | [mem_ofSimplex_obj](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/mem-ofsimplex-obj--7680360bb52172b9406ffdb8.md) | 201 | `result-track:7680360bb52172b9406ffdb841efca90fd252cb7b6cfb884fa60641c1d5107c0` |
| 31 | `lemma` | [ofSimplex_le_iff](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/ofsimplex-le-iff--e3b8d6e1c845d831abc33751.md) | 205 | `result-track:e3b8d6e1c845d831abc33751fb3fbc1b829e075def9c95f6fa8b1cc0ea5e2e27` |
| 32 | `lemma` | [yonedaEquiv_coe](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/yonedaequiv-coe--2ce115e9685ba574052d77b6.md) | 209 | `result-track:2ce115e9685ba574052d77b66c7708baed0a6ee806f00712fe2c174b92a5858f` |
| 33 | `lemma` | [face_eq_ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/face-eq-ofsimplex--56315bdc69f3a43f3bed3931.md) | 219 | `result-track:56315bdc69f3a43f3bed393153d7cd2764469ee025e304ae869c04bd0d85f24f` |
| 34 | `def` | [faceRepresentableBy](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/facerepresentableby--8f9cc4430d1298f71b3ee454.md) | 241 | `declaration-track:8f9cc4430d1298f71b3ee454d79f592bba6584c4d3049f9ec1f72c837f67c7c1` |
| 35 | `def` | [isoOfRepresentableBy](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/isoofrepresentableby--b3501ac6169b110131d056b4.md) | 265 | `declaration-track:b3501ac6169b110131d056b47c13c596fbb9ae310cfe498785a0ef00c7bb4187` |
| 36 | `lemma` | [ofSimplex_yonedaEquiv_δ](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/ofsimplex-yonedaequiv--e6d47403054d07cf1c0b4d53.md) | 272 | `result-track:e6d47403054d07cf1c0b4d53d68c41f517ed3db36dfafeb8d885308667bd2353` |
| 37 | `lemma` | [range_δ](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/range--cce2af4f0e7a86d39468cbad.md) | 277 | `result-track:cce2af4f0e7a86d39468cbada94e5cea6e9a36b2e9d0cc13e7d12e5ab2af8b50` |
| 38 | `def` | [S1](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/s1--744dd9e50ff4c14f33f0ac5a.md) | 289 | `declaration-track:744dd9e50ff4c14f33f0ac5a155a5ed1b9ee91a9623f0151aa60bd1d297ff202` |
| 39 | `def` | [stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variantfba6af95e3aa59b44b214df3c26968858e8c9a9f394315953a16df307e070028.lean/declarations/stdsimplex--d933b6017724f54aab157226.md) | 300 | `declaration-track:d933b6017724f54aab157226c0c1f8a230ec45aaf33762319f851a5ff234355d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
