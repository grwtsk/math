# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.PairwiseIntersections.Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba4abd957280c5affa78d35a2334338f5696bb48",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba4abd957280c5affa78d35a2334338f5696bb48`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Pairwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.BinaryProducts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Final` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.SheafCondition.OpensLeCover` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheafpairwiseintersections--1879d92e13ff8ce4e08abe9c.md) | 58 | `declaration-track:1879d92e13ff8ce4e08abe9c183f424c6566ee51e9c05b76854c36ff957bccec` |
| 2 | `def` | [IsSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheafpreserveslimitpairwiseintersections--e75b1a3e836b1633886f8168.md) | 69 | `declaration-track:e75b1a3e836b1633886f81680ce7c258f498d89733825a5ec667fc1dcd1f5259` |
| 3 | `def` | [pairwiseToOpensLeCoverObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/pairwisetoopenslecoverobj--76307980c68e970cabb5647e.md) | 84 | `declaration-track:76307980c68e970cabb5647ee49d0326f06d0bfa0b93e2439af8400230c3cde4` |
| 4 | `def` | [pairwiseToOpensLeCoverMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/pairwisetoopenslecovermap--3157dd2c37d9be7ca5c4af7e.md) | 93 | `declaration-track:3157dd2c37d9be7ca5c4af7e3e9603e54352efdb175008c56a7137dd4a9aa5c6` |
| 5 | `def` | [pairwiseToOpensLeCover](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/pairwisetoopenslecover--22b92c544600de5f7c0195b1.md) | 104 | `declaration-track:22b92c544600de5f7c0195b10e7484e4d1ccad00c060981cec156d00b5fa0515` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/instance--412892d132a4469f5cd82574.md) | 108 | `declaration-track:412892d132a4469f5cd8257422d6a1dad644f1e3fd89bd1a321c5fca8480a5d5` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/instance--d9390b27ec6bfd41163bd04b.md) | 116 | `declaration-track:d9390b27ec6bfd41163bd04b02a5ac650ea79b74ddbb70f333af1e9b371ce68e` |
| 8 | `def` | [pairwiseDiagramIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/pairwisediagramiso--ed7d2af42e7d899cadd42d05.md) | 208 | `declaration-track:ed7d2af42e7d899cadd42d0522581e943aadd2040ba6c8320b13867e98c1912c` |
| 9 | `def` | [pairwiseCoconeIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/pairwisecoconeiso--c02b7105cb85fa60867eb639.md) | 218 | `declaration-track:c02b7105cb85fa60867eb639e4eb5a867093f6c627f26ae5c80eed8fcab6ad82` |
| 10 | `def` | [isLimitOpensLeCoverEquivPairwise](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/islimitopenslecoverequivpairwise--b669214927c309b5cda4e17d.md) | 232 | `declaration-track:b669214927c309b5cda4e17d6ae765e470946a50f50a556f4968e758c34e6217` |
| 11 | `theorem` | [isSheafOpensLeCover_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheafopenslecover-iff-issheafpairwiseintersections--436564f468650ed6b0f9aa8a.md) | 259 | `result-track:436564f468650ed6b0f9aa8ac5174fda61ab83053f399fca92ba023aea8086b6` |
| 12 | `theorem` | [IsSheaf.isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheaf-issheafpairwiseintersections--a2195f5db465ccdfd6f97403.md) | 264 | `result-track:a2195f5db465ccdfd6f97403419a17f0e32697e4d43226fff9baeae8c7e77b72` |
| 13 | `theorem` | [isSheaf_iff_isSheafPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheaf-iff-issheafpairwiseintersections--c415ea86c46082570f82a9de.md) | 271 | `result-track:c415ea86c46082570f82a9de9f9151c27ddf71f58f715dedd1fa0444c6ae8a88` |
| 14 | `theorem` | [IsSheaf.isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheaf-issheafpreserveslimitpairwiseintersections--1c09ba455167d11a1971ef83.md) | 275 | `result-track:1c09ba455167d11a1971ef83aa538167b24e3d1ab001a3345aa30db8be003516` |
| 15 | `theorem` | [isSheaf_iff_isSheafPreservesLimitPairwiseIntersections](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/issheaf-iff-issheafpreserveslimitpairwiseintersections--cc5f3a7a839f05e69b024a19.md) | 284 | `result-track:cc5f3a7a839f05e69b024a196dd6163c5cbda96fbc38704b45436b53d0f0745b` |
| 16 | `def` | [interUnionPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackcone--4b48dd8bd7cd36ae8d91eb65.md) | 301 | `declaration-track:4b48dd8bd7cd36ae8d91eb653940744b07593387a3c692e95251d66b71aeb05d` |
| 17 | `theorem` | [interUnionPullbackCone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackcone-pt--c3a2d619264bf833c0d66554.md) | 309 | `result-track:c3a2d619264bf833c0d6655442b34d2178585886a5516a470ed9ed8d30c13397` |
| 18 | `theorem` | [interUnionPullbackCone_fst](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackcone-fst--1b6cafd9c787912bcf6acb3e.md) | 313 | `result-track:1b6cafd9c787912bcf6acb3e072b8304dcc18822437adc6bb7dbebdff7e599d2` |
| 19 | `theorem` | [interUnionPullbackCone_snd](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackcone-snd--34e2db453239216764cd5fa5.md) | 318 | `result-track:34e2db453239216764cd5fa5101d8a042ca6204a52a40993a52850b125453c21` |
| 20 | `def` | [interUnionPullbackConeLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackconelift--2351d74ff711cc20ec5bb5a8.md) | 329 | `declaration-track:2351d74ff711cc20ec5bb5a851b1178a5ce56cd4eeafb4a6105683a0bee30a96` |
| 21 | `theorem` | [interUnionPullbackConeLift_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackconelift-left--ff60ebad5d63941ea2924f9d.md) | 362 | `result-track:ff60ebad5d63941ea2924f9d0af026ad5f479d43fbf56a25c0b3bb7aec4c6d45` |
| 22 | `theorem` | [interUnionPullbackConeLift_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/interunionpullbackconelift-right--4f25a9df7a87bd1a2869bcdd.md) | 370 | `result-track:4f25a9df7a87bd1a2869bcdd2516be5f7e1cead58ad1e15f5a92ab8cf26bdb60` |
| 23 | `def` | [isLimitPullbackCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/islimitpullbackcone--6c4b24204ac388409f7fc648.md) | 379 | `declaration-track:6c4b24204ac388409f7fc648d94515c458eb2ba53695def9e11ead0c96b64e33` |
| 24 | `def` | [isProductOfDisjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/PairwiseIntersections/Variant9cf4ac015d320cfc48d1b4ea0b64288293ad14867b059dc7ae1953a9c4f4419c.lean/declarations/isproductofdisjoint--b3175385e909cc5ec992d17b.md) | 418 | `declaration-track:b3175385e909cc5ec992d17b75fddda0251eea4fa483b691be551fca1e42588e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
