# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2132c78bb3233a3c4d7ee4321e7a8c58238fde38",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2132c78bb3233a3c4d7ee4321e7a8c58238fde38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean.json)

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
| 1 | `def` | [linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/linearyoneda--b7347e3678fe4dfdbcae52a1.md) | 39 | `declaration-track:b7347e3678fe4dfdbcae52a1554755b755f9830465a5ff41cf8aff6cc3914266` |
| 2 | `def` | [linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/linearcoyoneda--faf5da1ef4bff50480a14967.md) | 51 | `declaration-track:faf5da1ef4bff50480a14967a7c479ce6aabebcf0c0040a263d4dffcb5ec14bc` |
| 3 | `instance` | [linearYoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/linearyoneda-obj-additive--cef4ffe1434505d61556df90.md) | 59 | `declaration-track:cef4ffe1434505d61556df9032eab99443346ad8ceff200a264bbf9a7bc9421a` |
| 4 | `instance` | [linearCoyoneda_obj_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/linearcoyoneda-obj-additive--91b4bbf88aa6b5d1b4793ed3.md) | 61 | `declaration-track:91b4bbf88aa6b5d1b4793ed3addd179359641bb9f2d50f199538401166dc1444` |
| 5 | `theorem` | [whiskering_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/whiskering-linearyoneda--84119eac793316a2ef079774.md) | 64 | `result-track:84119eac793316a2ef079774504b291c12302d620ae9393a8162f9db2d4cf33c` |
| 6 | `theorem` | [whiskering_linearYoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/whiskering-linearyoneda--5149ce0d5e0af02f7a4f2d84.md) | 69 | `result-track:5149ce0d5e0af02f7a4f2d84ab71001f0a840b68027aafdc3bf79827f2e5e42c` |
| 7 | `theorem` | [whiskering_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/whiskering-linearcoyoneda--3ca46ae8d88ba94c0f277563.md) | 75 | `result-track:3ca46ae8d88ba94c0f277563f06d03c37f8c18b8e92fb9c99f264261f9af4c64` |
| 8 | `theorem` | [whiskering_linearCoyoneda₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/whiskering-linearcoyoneda--d9f4672a2f5bf72836f0aed9.md) | 80 | `result-track:d9f4672a2f5bf72836f0aed90564cc8f63951dded686d39bcf9fa9d3a0651eca` |
| 9 | `instance` | [full_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/full-linearyoneda--dee3d5d98ae41fd4a87854cd.md) | 86 | `declaration-track:dee3d5d98ae41fd4a87854cd80980bac18294cc0ba97c45e0e6c6bfd5edea4fb` |
| 10 | `instance` | [full_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/full-linearcoyoneda--bc5321e37a9e525dca7802ff.md) | 92 | `declaration-track:bc5321e37a9e525dca7802ffabb33b40ba7318abefb75b0e999d757375e77004` |
| 11 | `instance` | [faithful_linearYoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/faithful-linearyoneda--724778b88f7d44577ad29d3d.md) | 98 | `declaration-track:724778b88f7d44577ad29d3d805a0b0fafdfd21d5c6dd7d6d398e2d790f02f92` |
| 12 | `instance` | [faithful_linearCoyoneda](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant9ff377fe5fc8d09bb4284469c6eaa34746af9c81323d996ebefd21beae2a5c1b.lean/declarations/faithful-linearcoyoneda--623e725eec70303e89dd1105.md) | 101 | `declaration-track:623e725eec70303e89dd110531561be4325fc0fb81e22349681f3038b2f7cc0b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
