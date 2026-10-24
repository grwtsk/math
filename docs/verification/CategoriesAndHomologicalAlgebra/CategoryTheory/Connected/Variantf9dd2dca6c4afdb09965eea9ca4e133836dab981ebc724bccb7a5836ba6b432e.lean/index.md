# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Connected.Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "135a2773a46f3f22e08d5ab61a046175bea8298a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `135a2773a46f3f22e08d5ab61a046175bea8298a`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.GrothendieckAxioms.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Connected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.FunctorCategory.Shapes.Pullbacks` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsColimit.pullbackOfHasExactColimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/iscolimit-pullbackofhasexactcolimitsofshape--29dd751e425a5f7c0c3fc378.md) | 39 | `declaration-track:29dd751e425a5f7c0c3fc3787e68c9286e62195f9d8b43b06af8f5581d2db1e5` |
| 2 | `theorem` | [IsColimit.pullback_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/iscolimit-pullback-hom-ext--62a6c0de56ae54d4be3e1459.md) | 52 | `result-track:62a6c0de56ae54d4be3e1459d0f6d792d1832c8c921e40ec15e68b2c13ce5335` |
| 3 | `theorem` | [IsColimit.pullback_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/iscolimit-pullback-zero-ext--6f9b6222084903455aa8e542.md) | 63 | `result-track:6f9b6222084903455aa8e54252b257ad44a7b992a69221648082035cbf38060c` |
| 4 | `def` | [IsLimit.pushoutOfHasExactLimitsOfShape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/islimit-pushoutofhasexactlimitsofshape--966549be179adcd60f520803.md) | 75 | `declaration-track:966549be179adcd60f5208036f9f6b5466b4265845a5b8a83bcea70af8c41995` |
| 5 | `theorem` | [IsLimit.pushout_hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/islimit-pushout-hom-ext--1082645b2ef91f05d8e14fe4.md) | 88 | `result-track:1082645b2ef91f05d8e14fe4e150af6de1f81ad2e482ea5ca3b53e5eac35209c` |
| 6 | `theorem` | [IsLimit.pushout_zero_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Connected/Variantf9dd2dca6c4afdb09965eea9ca4e133836dab981ebc724bccb7a5836ba6b432e.lean/declarations/islimit-pushout-zero-ext--258bbaed77b4801bec8f1f83.md) | 99 | `result-track:258bbaed77b4801bec8f1f836000ed404c8ed28ee355b4e4f464ba506cd23cd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
