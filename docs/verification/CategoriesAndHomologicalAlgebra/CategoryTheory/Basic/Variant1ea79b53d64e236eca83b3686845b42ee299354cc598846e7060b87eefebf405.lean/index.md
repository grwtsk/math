# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a295435443f4d30767c41575a53807e1f9ca98ca",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a295435443f4d30767c41575a53807e1f9ca98ca`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Sites.ConstantSheaf` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Sites.Equivalence` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Condensed.Light.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/discrete--c519a9c973c985834f20839a.md) | 48 | `declaration-track:c519a9c973c985834f20839a8c6b6d4a1d9d9c38bc48b8c61c416e7a49bbde20` |
| 2 | `def` | [underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/underlying--1a98d5d45458da3fcf8963c4.md) | 55 | `declaration-track:1a98d5d45458da3fcf8963c44a606b4f3b494561bda6b67d0bf33be5ea2c8cd9` |
| 3 | `def` | [discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/discreteunderlyingadj--437b99eb2880a0e8a3d5d09c.md) | 62 | `declaration-track:437b99eb2880a0e8a3d5d09c7863c830d7f15e3a04ce0b044aadaa61cb44d122` |
| 4 | `def` | [discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/discrete--9b6fde0b77e5b5cf19d87411.md) | 76 | `declaration-track:9b6fde0b77e5b5cf19d874119600eb3e5bfaf2d6432dc30254024cd8c93ba56f` |
| 5 | `def` | [underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/underlying--a615830296eb165d3bb0475b.md) | 83 | `declaration-track:a615830296eb165d3bb0475b97977f75af1909b8c7fe01d77e6c76bdd2584cb1` |
| 6 | `def` | [discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/discreteunderlyingadj--27ced5967682f82a05e72eb3.md) | 90 | `declaration-track:27ced5967682f82a05e72eb330a68f00cbd40a4e6c0b8677e202b06defb3a525` |
| 7 | `abbrev` | [LightCondSet.discrete](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/lightcondset-discrete--a891fcb65059422388251193.md) | 97 | `declaration-track:a891fcb6505942238825119312b67cc98169bf92ce57712789f6eeb2519ed8c0` |
| 8 | `abbrev` | [LightCondSet.underlying](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/lightcondset-underlying--d46a13a6e24ecddb5bf79923.md) | 100 | `declaration-track:d46a13a6e24ecddb5bf79923a456a11f2841c8ab000a86bc5f4090a506787070` |
| 9 | `abbrev` | [LightCondSet.discreteUnderlyingAdj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant1ea79b53d64e236eca83b3686845b42ee299354cc598846e7060b87eefebf405.lean/declarations/lightcondset-discreteunderlyingadj--2108d54d564f4fe7d3ee8f5d.md) | 104 | `declaration-track:2108d54d564f4fe7d3ee8f5d67f9de4292fc603ac61a9b0905f820a12217a606` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
