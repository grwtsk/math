# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PairwiseIntersections.Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "124fd14001e5816f4c52a149370cf255223a3481",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `124fd14001e5816f4c52a149370cf255223a3481`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Pairwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheafpairwiseintersections--884dbeb3dcfddd3621f73994.md) | 66 | `declaration-track:884dbeb3dcfddd3621f739946116713223fab5bf953b7183596afb327170f639` |
| 2 | `def` | [IsSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheafpreserveslimitpairwiseintersections--045f12d2742a15fed080db09.md) | 77 | `declaration-track:045f12d2742a15fed080db093b19da68744a5c92ded52f2c52988bd14c74078e` |
| 3 | `def` | [pairwiseToOpensLeCoverObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/pairwisetoopenslecoverobj--0b86f2eca1f47a14c3f0954e.md) | 92 | `declaration-track:0b86f2eca1f47a14c3f0954ec3a4dbf39c814e199a3216913213026984c0de12` |
| 4 | `def` | [pairwiseToOpensLeCoverMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/pairwisetoopenslecovermap--276b4bf1dc919cd0f3deaaad.md) | 101 | `declaration-track:276b4bf1dc919cd0f3deaaad66591cb34115a3f1f6b44ad7e9f1f55210614f19` |
| 5 | `def` | [pairwiseToOpensLeCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/pairwisetoopenslecover--4eacae8e230fc2eaa3010509.md) | 112 | `declaration-track:4eacae8e230fc2eaa30105090723834cee66e89574a3a7bcad37378a2cf1aae3` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/instance--d46fc7555ee8ecadee4cffdd.md) | 116 | `declaration-track:d46fc7555ee8ecadee4cffddcb34ab15ffc52a25999c4e9f060c277b32ca4e91` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/instance--9706fb7f5878cc823cfe4e24.md) | 124 | `declaration-track:9706fb7f5878cc823cfe4e24a164922af605efbb373acea9d812d55451833ef5` |
| 8 | `def` | [pairwiseDiagramIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/pairwisediagramiso--56d505ff99c9e38f3e6f6b32.md) | 216 | `declaration-track:56d505ff99c9e38f3e6f6b32dc1dc5acdf70389a4fef1f8edd05aea304a4fad4` |
| 9 | `def` | [pairwiseCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/pairwisecoconeiso--80d7f065fbb1d54803ae995b.md) | 226 | `declaration-track:80d7f065fbb1d54803ae995bf43e7336cb1fb9034044172a31ceaa3588011841` |
| 10 | `def` | [isLimitOpensLeCoverEquivPairwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/islimitopenslecoverequivpairwise--060f65eb350d74d0dea4998f.md) | 240 | `declaration-track:060f65eb350d74d0dea4998f3d982886b0e63d7e96b9d22cd48b85794b725d63` |
| 11 | `theorem` | [isSheafOpensLeCover_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheafopenslecover-iff-issheafpairwiseintersections--09962d5967386a8b295abb28.md) | 267 | `result-track:09962d5967386a8b295abb2898a93c7885985efdcefa295fbe48a17a14320d96` |
| 12 | `theorem` | [IsSheaf.isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheaf-issheafpairwiseintersections--a8109f48de77c85a6e806e78.md) | 272 | `result-track:a8109f48de77c85a6e806e78b723e492a92cac80905797023556016e85b55e66` |
| 13 | `theorem` | [isSheaf_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheaf-iff-issheafpairwiseintersections--e19834e087d0fe98081c8e59.md) | 279 | `result-track:e19834e087d0fe98081c8e594793b66acd62abdda0c54fc3ab4e1c4aadbe46f3` |
| 14 | `theorem` | [IsSheaf.isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheaf-issheafpreserveslimitpairwiseintersections--4344aabe65be7e822843e891.md) | 283 | `result-track:4344aabe65be7e822843e89116011d6ecf53e801d673250f7ed0ee70448b4300` |
| 15 | `theorem` | [isSheaf_iff_isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/issheaf-iff-issheafpreserveslimitpairwiseintersections--192e99c7a43cf8de693dd4da.md) | 292 | `result-track:192e99c7a43cf8de693dd4dae1954fd6cfe010742284b2208eb58407f1069dcc` |
| 16 | `def` | [interUnionPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackcone--1cdf583dea92ee1a4040c4ae.md) | 309 | `declaration-track:1cdf583dea92ee1a4040c4aeb0df176665dc5692bd47314c33480acb2c8b0139` |
| 17 | `theorem` | [interUnionPullbackCone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackcone-pt--64842939a52ea3799cda11c5.md) | 317 | `result-track:64842939a52ea3799cda11c5826037ee4a0551d8396ca579d124721ae4f0f42e` |
| 18 | `theorem` | [interUnionPullbackCone_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackcone-fst--51874414f891ccbf07a394db.md) | 321 | `result-track:51874414f891ccbf07a394dbfa60b84391c4297d8e65d04c41f0d1045c1b1fe2` |
| 19 | `theorem` | [interUnionPullbackCone_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackcone-snd--2c22a59c7dadf38264374856.md) | 326 | `result-track:2c22a59c7dadf38264374856d19e5a78736cd3023636774ef1c379cbcdee16b1` |
| 20 | `def` | [interUnionPullbackConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackconelift--bd8f8bf17ed41b0f38781bef.md) | 337 | `declaration-track:bd8f8bf17ed41b0f38781befe87b707bd572fe11166d294eed47f1d2f7db8fcb` |
| 21 | `theorem` | [interUnionPullbackConeLift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackconelift-left--c8f0c223137c3d529f9fc5eb.md) | 370 | `result-track:c8f0c223137c3d529f9fc5eb7fb6118dc03ae02395d11c4d8814aa53c89d1c4d` |
| 22 | `theorem` | [interUnionPullbackConeLift_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/interunionpullbackconelift-right--3bce958a0ae1f0ad35ae2840.md) | 378 | `result-track:3bce958a0ae1f0ad35ae28408d32350ac89d6f22298f58fb58780f3c17ae3ce8` |
| 23 | `def` | [isLimitPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/islimitpullbackcone--da026576d5d41d0a099524c6.md) | 387 | `declaration-track:da026576d5d41d0a099524c647055e70b8864d76195830b3d92cb0c35ea02e75` |
| 24 | `def` | [isProductOfDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variantdb6e47f63a6dd37e298344fdae7afb01e1f6b3bfb185ea1ce57682a360f5e1ff.lean/declarations/isproductofdisjoint--10660f6773c36471bd55ade9.md) | 426 | `declaration-track:10660f6773c36471bd55ade9486edec631a8050163cb9368e13387459c33f6d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
