# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Const.Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9efa7d74aeeb70c556a0739646abb76b6f483a05",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9efa7d74aeeb70c556a0739646abb76b6f483a05`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Control.Functor.Multivariate` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.QPF.Multivariate.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Const](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/const--d10c1fa424dd43122882c5cd.md) | 40 | `declaration-track:d10c1fa424dd43122882c5cd8eeb28e39c1cd193c29b6cb3ca45c24d2bc844ba` |
| 2 | `instance` | [Const.inhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/const-inhabited--0ff29887e61e31ee6440b614.md) | 43 | `declaration-track:0ff29887e61e31ee6440b614f360607700b498e575e16907df2d89071d904c47` |
| 3 | `def` | [mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/mk--0231065d4db91e498cee4899.md) | 53 | `declaration-track:0231065d4db91e498cee48990e3ffd8bae7a8a715e33ee9650e4709e50f41e28` |
| 4 | `def` | [get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/get--73c3857e2a236c42b4061d07.md) | 57 | `declaration-track:73c3857e2a236c42b4061d07643488fb821a816715af09507dae36c95e57d25f` |
| 5 | `theorem` | [mk_get](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/mk-get--54b4867dd3f3dce99c4af4f7.md) | 61 | `result-track:54b4867dd3f3dce99c4af4f71e30f6ffc5686942f794ae7f8f2f26ceffe5f0c6` |
| 6 | `theorem` | [get_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/get-mk--eb819b6ffd7789331dc25387.md) | 65 | `result-track:eb819b6ffd7789331dc253871955388839146fb75de5ed703791358265c8f1fa` |
| 7 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/map--895c61800df3722059033cd9.md) | 69 | `declaration-track:895c61800df3722059033cd98994f72d159c36b911e2e6f91aca37365eb6d031` |
| 8 | `instance` | [MvFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/mvfunctor--9eb4bb72a0684c9963cb172d.md) | 72 | `declaration-track:9eb4bb72a0684c9963cb172dc9825c9d1c14decc4c941919e07169ce1957a31e` |
| 9 | `theorem` | [map_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/map-mk--84510c13660705d81549d982.md) | 74 | `result-track:84510c13660705d81549d9822321f324eebe20520f490726129d2eb986b24a8c` |
| 10 | `theorem` | [get_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/get-map--b016654f3003a4c619b80031.md) | 77 | `result-track:b016654f3003a4c619b800313e1db7c49c475a1b637a4eac7c6ae88c693f097e` |
| 11 | `instance` | [mvqpf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Const/Variantb16d13273a40d5e2c1fcb711fea116283466f21e8f06842327903677e628c5e2.lean/declarations/mvqpf--0a0a11b4b86f55af945d921e.md) | 80 | `declaration-track:0a0a11b4b86f55af945d921ec0ccb154e4fcae6186aa127a95f480c4c739fa28` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
