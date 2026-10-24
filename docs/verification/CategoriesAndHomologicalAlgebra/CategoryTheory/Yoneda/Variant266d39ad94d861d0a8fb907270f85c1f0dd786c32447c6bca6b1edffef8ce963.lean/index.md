# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Yoneda.Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d7a123e67f10a8e0c6f20897fcef75742e8eaf8",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d7a123e67f10a8e0c6f20897fcef75742e8eaf8`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Types.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compCoyonedaSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/compcoyonedasectionsequiv--1011fb1081a9cea93735751f.md) | 38 | `declaration-track:1011fb1081a9cea93735751fd1796d7bcdd4bafb1519b5318a9a00ae7a745bf6` |
| 2 | `def` | [opCompYonedaSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/opcompyonedasectionsequiv--08ffdd4beb4544aaddda91df.md) | 53 | `declaration-track:08ffdd4beb4544aaddda91df9fbb824b5244f9569dddbadf55bfe698f225f66d` |
| 3 | `def` | [compYonedaSectionsEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/compyonedasectionsequiv--1a4dbb5f6be78d98d78262cc.md) | 68 | `declaration-track:1a4dbb5f6be78d98d78262cc51ecd8568fcec7039aafdeaed4e16da82ae6fb97` |
| 4 | `def` | [limitCompCoyonedaIsoCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/limitcompcoyonedaisocone--e24fba9f9ac7a5d48288f1e7.md) | 87 | `declaration-track:e24fba9f9ac7a5d48288f1e73e51966ced0e6d46bc0defd4cec0825cac5fb367` |
| 5 | `def` | [coyonedaCompLimIsoCones](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/coyonedacomplimisocones--f57bc9d26db6cd1ddafdd566.md) | 94 | `declaration-track:f57bc9d26db6cd1ddafdd5662fc25617de0b697c4edd878d8b8e71a8ebcc8c25` |
| 6 | `def` | [whiskeringLimYonedaIsoCones](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/whiskeringlimyonedaisocones--b7b0cb56448ac4b858e293fe.md) | 102 | `declaration-track:b7b0cb56448ac4b858e293feead513c2add83442753d43bdd51dc1d19e6088b8` |
| 7 | `def` | [limitCompYonedaIsoCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/limitcompyonedaisococone--2f6aca02a2fed6d0f546300b.md) | 108 | `declaration-track:2f6aca02a2fed6d0f546300bcde84403773692c20fd4f49b5e15616efc59c48c` |
| 8 | `def` | [yonedaCompLimIsoCocones](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/yonedacomplimisococones--fb6fdeaf53741fc595a7b40f.md) | 115 | `declaration-track:fb6fdeaf53741fc595a7b40f6e696f7122c4187ceb5c48b9a703027c5691b965` |
| 9 | `def` | [opHomCompWhiskeringLimYonedaIsoCocones](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variant266d39ad94d861d0a8fb907270f85c1f0dd786c32447c6bca6b1edffef8ce963.lean/declarations/ophomcompwhiskeringlimyonedaisococones--53274a80d65d81173bf69834.md) | 123 | `declaration-track:53274a80d65d81173bf698340486a70c0feafe699a94ac2c6b168fef51523b9b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
