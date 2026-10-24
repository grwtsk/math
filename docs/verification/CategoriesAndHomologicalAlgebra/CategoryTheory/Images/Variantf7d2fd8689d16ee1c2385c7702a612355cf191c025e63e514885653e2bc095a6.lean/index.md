# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f11fea8fcf60cac2794e5498fdf68214b0118a0e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f11fea8fcf60cac2794e5498fdf68214b0118a0e`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/image--294a815021420e5da48e4ea9.md) | 27 | `declaration-track:294a815021420e5da48e4ea92d22afa3363b8e04601cd4621f0658cf66ef8740` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/instance--55d8580b936277aa95d0b48b.md) | 30 | `declaration-track:55d8580b936277aa95d0b48bfc45a008de9e452aeffabad6de54131e9a7328be` |
| 3 | `def` | [Image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/image--53d6e0afdfd2b25e8e0bcd8e.md) | 33 | `declaration-track:53d6e0afdfd2b25e8e0bcd8e09ef4b6c6baf4d93d50f4b23c64116890adadd7b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/instance--56522402f270ffe24d9732ed.md) | 36 | `declaration-track:56522402f270ffe24d9732eded1eafb6b95b3a96c503ea6b0869da913b109f5c` |
| 5 | `def` | [Image.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/image-lift--388a2876363b474487bcb18e.md) | 42 | `declaration-track:388a2876363b474487bcb18eb2a0f33942444616ea3b54098c8530c018f426ef` |
| 6 | `theorem` | [Image.lift_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/image-lift-fac--6e57b37706da358a31fbf2da.md) | 45 | `result-track:6e57b37706da358a31fbf2dab3964765eb184434c4fd4d0c13aede8e1b26c0fd` |
| 7 | `def` | [monoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/monofactorisation--19152bb12b9ff2b19e57cb82.md) | 54 | `declaration-track:19152bb12b9ff2b19e57cb829ceaf4f7df35fd0d2e1c31091523454cccc781c7` |
| 8 | `def` | [isImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/isimage--3995f614f92034e485da22de.md) | 60 | `declaration-track:3995f614f92034e485da22de09c2c8549b176cac202067557e8bfb18bb307922` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/instance--13ef1eed581e4e6bfc78bfe6.md) | 64 | `declaration-track:13ef1eed581e4e6bfc78bfe6e2c81522f39019f245bb7cbde8928dbae638da5a` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/instance--b371ee405319de2d380e3cf3.md) | 67 | `declaration-track:b371ee405319de2d380e3cf330d2f7624be00161c6b87094026c26702b4a4674` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/instance--aae80f9640c3fd1e6428e434.md) | 70 | `declaration-track:aae80f9640c3fd1e6428e4349dd49d3f71eaced6cd6186c56fe5771d6f73c443` |
| 12 | `def` | [limitOfSurjectionsSurjective.preimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/limitofsurjectionssurjective-preimage--8403105d43c5271dcd65870f.md) | 82 | `declaration-track:8403105d43c5271dcd65870fde68a2a58140df659addce05a092a31413e5cf66` |
| 13 | `lemma` | [surjective_π_app_zero_of_surjective_map_aux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/surjective-app-zero-of-surjective-map-aux--d8a83eb6394efce8621fdc90.md) | 90 | `result-track:d8a83eb6394efce8621fdc90046639373b7f704581b0b07b9981075f9b3f00fe` |
| 14 | `lemma` | [surjective_π_app_zero_of_surjective_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variantf7d2fd8689d16ee1c2385c7702a612355cf191c025e63e514885653e2bc095a6.lean/declarations/surjective-app-zero-of-surjective-map--65558af553ef8c3ed58ec2c7.md) | 108 | `result-track:65558af553ef8c3ed58ec2c70e9c6106207b3fcd4a6e6bc8c4311b10d1d5ded4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
