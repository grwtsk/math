# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Widesubcategory.Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c3d2d29a1eee7390eb841707a429ef9bed076559",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c3d2d29a1eee7390eb841707a429ef9bed076559`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FullyFaithful` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Composition` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [InducedWideCategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/inducedwidecategory--f8ba7d7829ac87f970d58ef5.md) | 51 | `declaration-track:f8ba7d7829ac87f970d58ef58419569a1750451eacbc818b30f9892db431a467` |
| 2 | `instance` | [InducedWideCategory.hasCoeToSort](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/inducedwidecategory-hascoetosort--bb89c938347a6534df0aac47.md) | 56 | `declaration-track:bb89c938347a6534df0aac478675b6297f299a23161559873876508fcc0fa185` |
| 3 | `instance` | [InducedWideCategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/inducedwidecategory-category--64377032678950191debd0fb.md) | 61 | `declaration-track:64377032678950191debd0fb12e981aa1c4ec611efe859bc3ad0812e5280d789` |
| 4 | `def` | [wideInducedFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/wideinducedfunctor--b94f827633d0c778dd30d4a7.md) | 69 | `declaration-track:b94f827633d0c778dd30d4a74bd74391d545844c3e774864eeb11d6093f23e93` |
| 5 | `instance` | [InducedWideCategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/inducedwidecategory-faithful--b058ea49978c9ec1ace892f2.md) | 75 | `declaration-track:b058ea49978c9ec1ace892f21418ee3872fbc524c4879f9104a13592c01cbbd0` |
| 6 | `structure` | [WideSubcategory](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategory--fb8234f8d23a302a5f421243.md) | 92 | `declaration-track:fb8234f8d23a302a5f42124322625788c114520b8dd6ed3fd16a4e3dd7a47db3` |
| 7 | `instance` | [WideSubcategory.category](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategory-category--0843be6af73f0137b3a5737d.md) | 96 | `declaration-track:0843be6af73f0137b3a5737d9579ec5b9fb5b459e3fb2c20a8cb6fb91f8a0f43` |
| 8 | `lemma` | [WideSubcategory.id_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategory-id-def--e775ed8ac5383b54fc78d96a.md) | 100 | `result-track:e775ed8ac5383b54fc78d96ab0e2d0879d5cff2781ca2b3ddae90f9104e9886e` |
| 9 | `lemma` | [WideSubcategory.comp_def](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategory-comp-def--62d3ae465986ac984dc7e937.md) | 103 | `result-track:62d3ae465986ac984dc7e9379bba5be32b17a63fceffc9aff50ab96064032a5b` |
| 10 | `def` | [wideSubcategoryInclusion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategoryinclusion--43115ea238762ca28781eb4a.md) | 109 | `declaration-track:43115ea238762ca28781eb4a6a32b680b75705befd7281e0566be115d9877f0c` |
| 11 | `theorem` | [wideSubcategoryInclusion.obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategoryinclusion-obj--bf12bc64f6d2063cc9598667.md) | 113 | `result-track:bf12bc64f6d2063cc9598667c7a062c4008ecb8a21701e5a46d4996a491ef3f4` |
| 12 | `theorem` | [wideSubcategoryInclusion.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategoryinclusion-map--66c43fb87d96919716e038ba.md) | 117 | `result-track:66c43fb87d96919716e038ba47649c8b2eebb9d273533f6524f04b29e25ab9d5` |
| 13 | `instance` | [wideSubcategory.faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Widesubcategory/Variantc4cf3261122f70c030048e2fd0f724c84868f2f701144313db5059c12deae7f7.lean/declarations/widesubcategory-faithful--193ad848c1b5e6f49f02fee6.md) | 122 | `declaration-track:193ad848c1b5e6f49f02fee68f85d06ce32f8b364f49c040dc1734a4d86320c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
