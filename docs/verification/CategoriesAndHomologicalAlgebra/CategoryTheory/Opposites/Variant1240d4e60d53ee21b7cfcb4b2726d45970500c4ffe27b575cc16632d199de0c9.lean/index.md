# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Opposites.Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "123fb6525bc12bd20ff2e5dcb61c8e306d31023b",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `123fb6525bc12bd20ff2e5dcb61c8e306d31023b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean.json)

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
| 1 | `def` | [unop](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/unop--077c6630997bc27e95c286c2.md) | 46 | `declaration-track:077c6630997bc27e95c286c2b9715ec6832cdf341a2fcc86dbff40020012b36b` |
| 2 | `def` | [op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/op--233f314c149882a9f00c63fc.md) | 55 | `declaration-track:233f314c149882a9f00c63fcb3a9b41c74b0b6bf35af6117db888852976985fa` |
| 3 | `def` | [leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/leftop--c8034b6c2299bf3cccd0ce5d.md) | 63 | `declaration-track:c8034b6c2299bf3cccd0ce5da27f9fd556a83023baaf1fd3219f26d2119d5080` |
| 4 | `def` | [rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/rightop--a1c6f8e5a6bb4705c60588c4.md) | 71 | `declaration-track:a1c6f8e5a6bb4705c60588c489fa80dbd837e61103089a3f57675de36b1b3183` |
| 5 | `lemma` | [leftOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/leftop-eq--9c2c2c3bcc4f21a4627b1cdf.md) | 78 | `result-track:9c2c2c3bcc4f21a4627b1cdf9e8c312ed12491b17166dcc40cee67f7dfec633c` |
| 6 | `lemma` | [rightOp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/rightop-eq--093038f1e0f56fa9610cdf2d.md) | 83 | `result-track:093038f1e0f56fa9610cdf2df5149734cdb05a71463fce47028a7771829ae2a8` |
| 7 | `def` | [leftAdjointsCoyonedaEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/leftadjointscoyonedaequiv--068c126a4f914c0829574d99.md) | 93 | `declaration-track:068c126a4f914c0829574d99ab633dc5905db78c17b1d0fc632e7e63a864ab36` |
| 8 | `instance` | [IsLeftAdjoint.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isleftadjoint-op--d4249ef13e8b1089a39fd863.md) | 103 | `declaration-track:d4249ef13e8b1089a39fd86301dab04ee13f4a930befd861fa4c4220c3679e1a` |
| 9 | `instance` | [IsRightAdjoint.op](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isrightadjoint-op--76b44cbee48c6a962befdb29.md) | 106 | `declaration-track:76b44cbee48c6a962befdb29c987830f9f694ede7d77a4434dee8c6d83b11fe8` |
| 10 | `instance` | [IsLeftAdjoint.leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isleftadjoint-leftop--1c660ed239e997aa0a66eb0d.md) | 109 | `declaration-track:1c660ed239e997aa0a66eb0d10332c7f4cd040241a26716700f2d38d961db09f` |
| 11 | `instance` | [IsRightAdjoint.leftOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isrightadjoint-leftop--9fdf6b386e5197ca66b47206.md) | 113 | `declaration-track:9fdf6b386e5197ca66b47206902edcf8af05a78a6021a36d9a366182eb6e84b1` |
| 12 | `instance` | [IsLeftAdjoint.rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isleftadjoint-rightop--1cbbb431601d61c25782d193.md) | 117 | `declaration-track:1cbbb431601d61c25782d193b0995ac0e2ae43581671eb63ba480b643223c25f` |
| 13 | `instance` | [IsRightAdjoint.rightOp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposites/Variant1240d4e60d53ee21b7cfcb4b2726d45970500c4ffe27b575cc16632d199de0c9.lean/declarations/isrightadjoint-rightop--4ec4e3b38cc23d863ab282fd.md) | 120 | `declaration-track:4ec4e3b38cc23d863ab282fd3927e2f5f467ecb4ce7260130cee2c3f4c904f1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
