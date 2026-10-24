# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Evaluation.Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fdb198410652342703795af9e83811aafa62ffa0",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fdb198410652342703795af9e83811aafa62ffa0`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Products` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.EpiMono` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evaluationLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationleftadjoint--fd2af8e09cb0ebe20ba22df7.md) | 44 | `declaration-track:fd2af8e09cb0ebe20ba22df7a847d254f5d36036973cfa4acdc87dd3e5559cd7` |
| 2 | `def` | [evaluationAdjunctionRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationadjunctionright--2d2ebed6ce451f503a30c7dc.md) | 59 | `declaration-track:2d2ebed6ce451f503a30c7dc0233770b4dc33ae90bd113c8a19fff61e99be654` |
| 3 | `instance` | [evaluationIsRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationisrightadjoint--60b7a067185176fd8d5a352d.md) | 83 | `declaration-track:60b7a067185176fd8d5a352d51a483b2b112ea3c48b32e51a24dbc5809e78a4a` |
| 4 | `theorem` | [NatTrans.mono_iff_mono_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/nattrans-mono-iff-mono-app--796c2529e606cff1acae2e37.md) | 87 | `result-track:796c2529e606cff1acae2e37765d9f357eb736cd90b013f37ea6e5053a58b971` |
| 5 | `def` | [evaluationRightAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationrightadjoint--12ffbf4cb38f24bba465894c.md) | 103 | `declaration-track:12ffbf4cb38f24bba465894ce323cc2cb130818c280d28d9ba6c441ca152ed7a` |
| 6 | `def` | [evaluationAdjunctionLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationadjunctionleft--dd4d11868aa840595f586c84.md) | 118 | `declaration-track:dd4d11868aa840595f586c8461030e8f98bebf41dab116ec0724f9c28f685611` |
| 7 | `instance` | [evaluationIsLeftAdjoint](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/evaluationisleftadjoint--2f410bd0dd14c9d41f2a8a20.md) | 142 | `declaration-track:2f410bd0dd14c9d41f2a8a20f5e302538ab7f3c4f1b19c36371db408e75adea8` |
| 8 | `theorem` | [NatTrans.epi_iff_epi_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Evaluation/Variantab1964bee6c9f357f42cb278bd0fd85553a5cdb745da92336bfe5263a4d094e6.lean/declarations/nattrans-epi-iff-epi-app--3565a455e6ae09a7a9d96194.md) | 146 | `result-track:3565a455e6ae09a7a9d961946d4ba454204f033c7377f99a7b89937126e7d2cd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
