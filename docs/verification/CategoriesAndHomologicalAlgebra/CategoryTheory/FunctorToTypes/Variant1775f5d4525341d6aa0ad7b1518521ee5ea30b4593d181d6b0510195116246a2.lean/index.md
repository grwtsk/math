# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FunctorToTypes.Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "afa80ec6bf669b44596c3560e20750c10d29ba82",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `afa80ec6bf669b44596c3560e20750c10d29ba82`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Functor.FunctorHom` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [functorHomEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/functorhomequiv--b03d3e8d3161ef98b8142a6c.md) | 33 | `declaration-track:b03d3e8d3161ef98b8142a6c567c19fea7215d8f3710f6186ec845bdfc18e05e` |
| 2 | `def` | [rightAdj_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/rightadj-map--19af705ab68c0722a7d765ec.md) | 39 | `declaration-track:19af705ab68c0722a7d765ec8662bd788b668de8bca63f878591bb212d8adb69` |
| 3 | `def` | [rightAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/rightadj--ec68d9338135980edd9f6723.md) | 49 | `declaration-track:ec68d9338135980edd9f67231c18f04ab3561fd5fe3a3d5e36700612fab89218` |
| 4 | `def` | [adj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/adj--ec6c59006cecf6a4ee2ac3ef.md) | 54 | `declaration-track:ec6c59006cecf6a4ee2ac3ef85b14660f0ad92d7f48edf1ba10a6b260bc98840` |
| 5 | `instance` | [closed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/closed--6a177c5b8f3ec82ebdebf333.md) | 63 | `declaration-track:6a177c5b8f3ec82ebdebf33302653b0cb894c6d3faeb72d246aeebe583f922c6` |
| 6 | `instance` | [monoidalClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorToTypes/Variant1775f5d4525341d6aa0ad7b1518521ee5ea30b4593d181d6b0510195116246a2.lean/declarations/monoidalclosed--d9278ec544bcbfec741d3080.md) | 67 | `declaration-track:d9278ec544bcbfec741d308061c0fbba02c3ce83a4ef56894f51801beff2756c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
