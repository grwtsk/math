# Verification target: GRWTSK.Algebra.Transitivity.Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "872a99f9134db81c722fd55c07cdcf273a9ce63b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/index.md) · [Full source](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `872a99f9134db81c722fd55c07cdcf273a9ce63b`.

Source path: `GRWTSK/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [auxMat](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/auxmat--801fa24073b548894731c760.md) | 49 | `declaration-track:801fa24073b548894731c760bf81ed3f20b72e1ed7580a00cad0e76bc27c0ebf` |
| 2 | `lemma` | [auxMat_blockTriangular](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/auxmat-blocktriangular--1aaf10e769830b0fe1876173.md) | 58 | `result-track:1aaf10e769830b0fe187617338520107e19f5339d2dcc964e16f1a63ec74a43b` |
| 3 | `lemma` | [auxMat_toSquareBlock_ne](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/auxmat-tosquareblock-ne--4649d23c978d47e33907f32d.md) | 64 | `result-track:4649d23c978d47e33907f32d37d4fe2d6c4d9df1ef6f0a1174d74529450d2a23` |
| 4 | `lemma` | [auxMat_toSquareBlock_eq](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/auxmat-tosquareblock-eq--601756182e8266c9f37d83ab.md) | 69 | `result-track:601756182e8266c9f37d83ab0fbafb34becf4b93321ce48f4d02c6bfd66400e6` |
| 5 | `lemma` | [mul_auxMat_blockTriangular](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/mul-auxmat-blocktriangular--90ed8ee0b3795853509289fc.md) | 78 | `result-track:90ed8ee0b3795853509289fcc5c38b43c241712f5a6b7f269c57f9ac70266172` |
| 6 | `lemma` | [mul_auxMat_corner](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/mul-auxmat-corner--3422a6ee23dc4fd6b7dbd871.md) | 88 | `result-track:3422a6ee23dc4fd6b7dbd87154050dbbdf7631f2e7d26598ecb8f174680c54a1` |
| 7 | `lemma` | [mul_auxMat_toSquareBlock_eq](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/mul-auxmat-tosquareblock-eq--c8d070b3254e2a8ab1688085.md) | 90 | `result-track:c8d070b3254e2a8ab16880853f77b0523b43a4bd0ac13ee80439e39b38ac32b5` |
| 8 | `lemma` | [det_mul_corner_pow](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/det-mul-corner-pow--0ee16749fc1b729e4061f1b5.md) | 100 | `result-track:0ee16749fc1b729e4061f1b540a54884aef65484d80e89f18c1c39943ec16b67` |
| 9 | `def` | [cornerAddX](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/corneraddx--71f35a1e68ac0eae7fb1c580.md) | 114 | `declaration-track:71f35a1e68ac0eae7fb1c580b19c5e88be3726ff214cb421850709252b9de3b5` |
| 10 | `lemma` | [polyToMatrix_cornerAddX](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/polytomatrix-corneraddx--85e0fb383564feb0d3a043ca.md) | 120 | `result-track:85e0fb383564feb0d3a043ca2d463bcb377b8c545f372755bede5bc89246fbe8` |
| 11 | `lemma` | [eval_zero_det_det](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/eval-zero-det-det--7782dc735a0ebdab579e261d.md) | 125 | `result-track:7782dc735a0ebdab579e261d44a717ee339c7fd2af5b23b495656df3c9170c9d` |
| 12 | `lemma` | [eval_zero_comp_det](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/eval-zero-comp-det--4f062cd26a9ebb7666825b18.md) | 130 | `result-track:4f062cd26a9ebb7666825b1835c6b661e2e41c13c3dcfef8abc4da775588a3de` |
| 13 | `theorem` | [comp_det_mul_pow](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/comp-det-mul-pow--b9acd9816cb5f2f9083cd75f.md) | 140 | `result-track:b9acd9816cb5f2f9083cd75f3c896457a000314c40757c2fad8c82b674067c9e` |
| 14 | `lemma` | [det_det_aux](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/det-det-aux--f84c573ce4ad384e4fdb6fd2.md) | 158 | `result-track:f84c573ce4ad384e4fdb6fd243cc97ca7f6f532690b323a105163b245c02639a` |
| 15 | `theorem` | [Matrix.det_det](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/matrix-det-det--383b92de90edab239d3ef143.md) | 173 | `result-track:383b92de90edab239d3ef143dace32414b76cc4767fbb4b6670d4dacf7d30b23` |
| 16 | `theorem` | [LinearMap.det_restrictScalars](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/linearmap-det-restrictscalars--60b8541fcb87e863161cb82c.md) | 193 | `result-track:60b8541fcb87e863161cb82c350ecdabca375fab855feb736bc013f401f6c72e` |
| 17 | `theorem` | [Algebra.norm_norm](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/algebra-norm-norm--f75437677c7d44e046d1af7a.md) | 215 | `result-track:f75437677c7d44e046d1af7a6e8188adf2f5ab7b153b13f710708760354af89e` |
| 18 | `theorem` | [isIntegral_norm](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/isintegral-norm--c8c56e0313ded0b49973613b.md) | 226 | `result-track:c8c56e0313ded0b49973613b2c228603587bb092a1c1204256dc95aa50118ea8` |
| 19 | `theorem` | [norm_eq_norm_adjoin](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/norm-eq-norm-adjoin--c5fb0bebdd88f5522072e099.md) | 242 | `result-track:c5fb0bebdd88f5522072e09980b3ee7c145ad9f18cca7d33b925266843452aaf` |
| 20 | `theorem` | [norm_eq_prod_roots](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/norm-eq-prod-roots--0e625bb00440ffe435fa0e57.md) | 266 | `result-track:0e625bb00440ffe435fa0e572c2019e861b0511f775f89598fbf1889fdc29736` |
| 21 | `theorem` | [norm_eq_prod_embeddings](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/norm-eq-prod-embeddings--a8acbe533ea0c5aaeb6c97b9.md) | 276 | `result-track:a8acbe533ea0c5aaeb6c97b99fb7dced7442cde3f9b97451da22cbfb92ff814b` |
| 22 | `theorem` | [norm_eq_prod_automorphisms](../../../../mathematics/Algebra/Transitivity/Variantd15500af1e81a36fc1042e6de0f6adcc9efbc35ed0249cff30ac9014c863182f.lean/declarations/norm-eq-prod-automorphisms--791ad39615f564add053d70f.md) | 285 | `result-track:791ad39615f564add053d70f15cf4ccfc7857be6cdba992eec731b89e4bca046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
