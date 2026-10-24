# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.TransfiniteIteration.Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead09d34aad48e43e79cc224c2a997f328a4ee90",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead09d34aad48e43e79cc224c2a997f328a4ee90`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.SmallObject.Iteration.Nonempty` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.TransfiniteComposition` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Preorder.WellOrderContinuous` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iter--015222750ae2dc40051401b2.md) | 32 | `declaration-track:015222750ae2dc40051401b2341699eb9d3cc988ab3b153837caa4c0bba77e2c` |
| 2 | `def` | [iterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctor--6288998cfbf47817358ca960.md) | 36 | `declaration-track:6288998cfbf47817358ca96097d4cd2afa2bbf9a494b35b164b47f0913ee947a` |
| 3 | `def` | [iteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iteration--52bb407bdebe191814f17cb4.md) | 43 | `declaration-track:52bb407bdebe191814f17cb4b47c78d354d29c8debff6e17e03d52166f39b6d5` |
| 4 | `def` | [iterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationcocone--ae5bc52900a57b296373af94.md) | 47 | `declaration-track:ae5bc52900a57b296373af947e2f5b58a08ac26048c6dae07e8886acef6aed4a` |
| 5 | `lemma` | [iterationCocone_pt](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationcocone-pt--d85fd8d03fc6a7c328cf4a82.md) | 51 | `result-track:d85fd8d03fc6a7c328cf4a82ee28d556ead58e429a9986048dc2c3dddb645de8` |
| 6 | `def` | [isColimitIterationCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iscolimititerationcocone--e26889648fe826a0de1f554d.md) | 54 | `declaration-track:e26889648fe826a0de1f554d177f3fba9c466655c0e31854c4f34d0517aa97ae` |
| 7 | `lemma` | [iterationFunctor_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctor-obj--5b2efb17303bfe8a381efa0f.md) | 59 | `result-track:5b2efb17303bfe8a381efa0f5ec84fa154658bc8c9d0bcaa0742ef21aa6b1054` |
| 8 | `lemma` | [arrowMk_iterationFunctor_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/arrowmk-iterationfunctor-map--9d13ea5e56d3b9679480c1c7.md) | 63 | `result-track:9d13ea5e56d3b9679480c1c72f34580d33deacfb8fc04ffa23a0d0105d998e6b` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/instance--e88047a4ef5ad7eea9cffdbc.md) | 74 | `declaration-track:e88047a4ef5ad7eea9cffdbc9fd131da3c7eb01db4538d92ac53e2a93a6c5239` |
| 10 | `def` | [iterationFunctorObjBotIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctorobjbotiso--85c40b85376ba6b9cb32a3dd.md) | 90 | `declaration-track:85c40b85376ba6b9cb32a3ddeb235648d34857eef430268a6a28160a97b697fa` |
| 11 | `def` | [ιIterationFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctor--2d632386f3b44727f56764d8.md) | 94 | `declaration-track:2d632386f3b44727f56764d8cdcacde41b6374be8a799d883062f720bfca5136` |
| 12 | `def` | [ιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iteration--539b52ae67b39a5eba9f6038.md) | 105 | `declaration-track:539b52ae67b39a5eba9f60387c8d22e6cb217493952b7ed2be306b97d40658b0` |
| 13 | `def` | [transfiniteCompositionOfShapeιIteration](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/transfinitecompositionofshape-iteration--67cc7bfd440a85f8c9cf52aa.md) | 111 | `declaration-track:67cc7bfd440a85f8c9cf52aabea863d819c0871480d7dadb655159eabd651267` |
| 14 | `lemma` | [prop_iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/prop-iterationfunctor-map-succ--0acf7d9194e238fe6d0fca72.md) | 126 | `result-track:0acf7d9194e238fe6d0fca72b6da1b7c5e796af89ea54e90e945228941290425` |
| 15 | `def` | [iterationFunctorObjSuccIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctorobjsucciso--2b0f542bf3b5c0ab15e7a7b9.md) | 133 | `declaration-track:2b0f542bf3b5c0ab15e7a7b9d6dae222fa640adfdc703598b25839c0bf2a2a4e` |
| 16 | `lemma` | [iterationFunctor_map_succ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/TransfiniteIteration/Variantc6b3129f7b53e51309b40a28e8085eaa5a0285dda608a93f37560d78ccaee163.lean/declarations/iterationfunctor-map-succ--4650e5b700ac2e1e6485066a.md) | 139 | `result-track:4650e5b700ac2e1e6485066a3a53009cb752dd1f701267e2dd6896c996272b51` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
