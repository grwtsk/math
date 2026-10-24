# Verification target: GRWTSK.Algebra.GroupTheory.Stabilizer.Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3f75bae64b5017215f700d6616e0caec0e3c9bf",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3f75bae64b5017215f700d6616e0caec0e3c9bf`.

Source path: `GRWTSK/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Pointwise.Finset` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.QuotientGroup.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [stabilizer_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-empty--70e4def09cabb2c93251ea9a.md) | 29 | `result-track:70e4def09cabb2c93251ea9a5132d43cb43fbffa7ef140c30ea1bb147ae54508` |
| 2 | `lemma` | [stabilizer_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-univ--1c68abd6158e13975984cd0a.md) | 33 | `result-track:1c68abd6158e13975984cd0a0e343969da11679efac92ba1fa5d2f57253952ef` |
| 3 | `lemma` | [stabilizer_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-singleton--56c0825245ff412b4668e06d.md) | 38 | `result-track:56c0825245ff412b4668e06d7c66943242732afb0ac6fc5914c95827afdd4123` |
| 4 | `lemma` | [mem_stabilizer_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-set--4a12099e4b39bd3141e310e4.md) | 41 | `result-track:4a12099e4b39bd3141e310e4421f64521329c04a12f91d04699bb4865093c905` |
| 5 | `lemma` | [map_stabilizer_le](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/map-stabilizer-le--d18ceb978b4fc376e256c253.md) | 48 | `result-track:d18ceb978b4fc376e256c253225189a1293af4fe1e37ac599bf1c5c4d2204984` |
| 6 | `lemma` | [stabilizer_mul_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-mul-self--10f02c245ad11581cbf976cb.md) | 56 | `result-track:10f02c245ad11581cbf976cb335cce2702b02836d40081a7e03104f8e84fd2b9` |
| 7 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_apply₂](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-apply--efb5cfb1676a999588aa58dd.md) | 64 | `result-track:efb5cfb1676a999588aa58dd06706123a762bf646a4d7257f592179d8e4ea179` |
| 8 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_union](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-union--5b40a698db89f06e4b40f227.md) | 69 | `result-track:5b40a698db89f06e4b40f2277e368e4917e102aac147d84fbd5dc33b259cf6ec` |
| 9 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_inter](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-inter--b850a71c143c86ad38cbcd47.md) | 74 | `result-track:b850a71c143c86ad38cbcd47b4215489757fa57c86487521a2f52921c794bf8a` |
| 10 | `lemma` | [stabilizer_inf_stabilizer_le_stabilizer_sdiff](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-inf-stabilizer-le-stabilizer-sdiff--b49e88f57ae62941217c12f6.md) | 79 | `result-track:b49e88f57ae62941217c12f6a8d4ae5724d6c3c92206726c05c78ae22126cbaf` |
| 11 | `lemma` | [stabilizer_union_eq_left](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-union-eq-left--67607aa1d9bdc4b4828fda14.md) | 84 | `result-track:67607aa1d9bdc4b4828fda1469b9eb67e0c7a52eaf0e0d3c9dfe4e7124f1c150` |
| 12 | `lemma` | [stabilizer_union_eq_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-union-eq-right--9b50b366a06be60a41844a3f.md) | 99 | `result-track:9b50b366a06be60a41844a3fa0a9fac3377463a498b18cf21939e94dd9236ca6` |
| 13 | `lemma` | [op_smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/op-smul-set-stabilizer-subset--278b4b5f9ef6b1958450a0a6.md) | 108 | `result-track:278b4b5f9ef6b1958450a0a68ba883cc4c82025924f7e5e70989a18f76de6b8b` |
| 14 | `lemma` | [stabilizer_subset_div_right](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-subset-div-right--3e724ae0e436934b8a018e62.md) | 112 | `result-track:3e724ae0e436934b8a018e62fe3ed328f9137439b7972fac8ef527f26e7c34e0` |
| 15 | `lemma` | [stabilizer_finite](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-finite--265719283120242a1aac4bd4.md) | 116 | `result-track:265719283120242a1aac4bd44035528906394a55e2b44616fe1f2742f682b258` |
| 16 | `lemma` | [smul_set_stabilizer_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/smul-set-stabilizer-subset--ea2fd9ca13c7b619bddb81b2.md) | 126 | `result-track:ea2fd9ca13c7b619bddb81b2385044687ae7f6d98c42665f16ad3798755601f4` |
| 17 | `lemma` | [stabilizer_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-subgroup--5d4792f5f8a080adde7975b1.md) | 141 | `result-track:5d4792f5f8a080adde7975b1bd64d968dd4fdd7b8e06e5f8c19769357ceddb42` |
| 18 | `lemma` | [stabilizer_op_subgroup](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-op-subgroup--1b2592679a1df91e63d430c0.md) | 147 | `result-track:1b2592679a1df91e63d430c0a5d85b459b49e7e7c5513d82d5d7f61c32a0116e` |
| 19 | `lemma` | [stabilizer_subgroup_op](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-subgroup-op--18979e1d2e53ddb5725e6205.md) | 154 | `result-track:18979e1d2e53ddb5725e62058b89c22537ce8c26e12e265efa647fa4e0c122ac` |
| 20 | `lemma` | [stabilizer_coe_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-coe-finset--472348c936b4fb4681402d3d.md) | 168 | `result-track:472348c936b4fb4681402d3d6d4caa67497c05f01e94e5e26c14473acfb2fb7b` |
| 21 | `lemma` | [stabilizer_finset_empty](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-finset-empty--79524b40b86f5e9cb5775e39.md) | 172 | `result-track:79524b40b86f5e9cb5775e39a1d1e1532975a4dab35c1b9c18760e0ffeb94761` |
| 22 | `lemma` | [stabilizer_finset_univ](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-finset-univ--6797da6a99864d68e31f923b.md) | 176 | `result-track:6797da6a99864d68e31f923bae62f8fd79827b3737b8c42d2b679c094c502218` |
| 23 | `lemma` | [stabilizer_finset_singleton](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-finset-singleton--c5b691e3cca82348d0d5ff69.md) | 181 | `result-track:c5b691e3cca82348d0d5ff692d6c3f5d88af10c55f5417863355494629efe78f` |
| 24 | `lemma` | [mem_stabilizer_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-finset--e265c20d8de6d3d62661c6ba.md) | 185 | `result-track:e265c20d8de6d3d62661c6ba1b470d78a42f04c911217a24de00ef6f698a1b82` |
| 25 | `lemma` | [mem_stabilizer_finset_iff_subset_smul_finset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-finset-iff-subset-smul-finset--1111dbd17ffd28c750d97fe0.md) | 189 | `result-track:1111dbd17ffd28c750d97fe03c5821efc59866d19ed419606eaeb5f8abc23bf0` |
| 26 | `lemma` | [mem_stabilizer_finset_iff_smul_finset_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-finset-iff-smul-finset-subset--c7f0d623ca4cec57fded6432.md) | 194 | `result-track:c7f0d623ca4cec57fded643271cf23271a26e0d2706550b4d24a884c84856f8a` |
| 27 | `lemma` | [mem_stabilizer_finset'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-finset--01db44c9c19b0a030a571ae0.md) | 199 | `result-track:01db44c9c19b0a030a571ae0f4e4b3f8a4703df1d218dc30a8cee3ec354f6c1f` |
| 28 | `lemma` | [mem_stabilizer_set_iff_subset_smul_set](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-set-iff-subset-smul-set--f9e3e98ebf5bd94bf8723524.md) | 210 | `result-track:f9e3e98ebf5bd94bf8723524c6ccef911a2cc29e677a0bad37814aa905f3cde7` |
| 29 | `lemma` | [mem_stabilizer_set_iff_smul_set_subset](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-set-iff-smul-set-subset--ccd153001134308eb59b6650.md) | 218 | `result-track:ccd153001134308eb59b6650f221a937fc3c1b2862db7801af47ac513bbc6e27` |
| 30 | `lemma` | [mem_stabilizer_set'](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mem-stabilizer-set--1942e76d2034fa8d6a66fb42.md) | 232 | `result-track:1942e76d2034fa8d6a66fb425cc4eb820902b80cb27594ece63cf4d69343e004` |
| 31 | `lemma` | [mul_stabilizer_self](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/mul-stabilizer-self--8bf6d4cd65d5ece194da9c03.md) | 245 | `result-track:8bf6d4cd65d5ece194da9c03af9e1d4cba6be57b3ff2015df3bdff9734de28a0` |
| 32 | `lemma` | [stabilizer_image_coe_quotient](../../../../../mathematics/Algebra/GroupTheory/Stabilizer/Variant057db7ae2055ba75aa28dcfb9b7a14f09ff3cd5fdaff67ab4cd933b86ec2deba.lean/declarations/stabilizer-image-coe-quotient--e6bb86028dd825c491563136.md) | 251 | `result-track:e6bb86028dd825c4915631367aff40539f5492976483b061cfb1405a37516436` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
