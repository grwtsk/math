# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b4b6a16873afeb0bdebe6d8a0722c99c44dfa47",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b4b6a16873afeb0bdebe6d8a0722c99c44dfa47`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/image--847a51a1ea9a8564759b7dac.md) | 41 | `declaration-track:847a51a1ea9a8564759b7dac400e995efce8f1aeee7eb9f0d330a0b99fd417de` |
| 2 | `abbrev` | [image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/image--d5d0f0859f5b96c2aee191e5.md) | 45 | `declaration-track:d5d0f0859f5b96c2aee191e5fa1826fbe687f583ffd63f9ddc344bb9328f5be0` |
| 3 | `abbrev` | [factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/factorthruimage--97d3a0adecb72c3bac163e46.md) | 49 | `declaration-track:97d3a0adecb72c3bac163e4697e0eaa37a4e2af9dbb69fbe8940dadce316a728` |
| 4 | `theorem` | [image.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/image-fac--16c42a1d1b1301f118d1535c.md) | 53 | `result-track:16c42a1d1b1301f118d1535c646b66b1181f70905ef1270a0c4bdebd64172bd9` |
| 5 | `instance` | [mono_factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/mono-factorthruimage--ddb8a4c73ce6bf1d524fb895.md) | 56 | `declaration-track:ddb8a4c73ce6bf1d524fb89525bc5c193ab4e4c270f6375007b26dcab980d561` |
| 6 | `abbrev` | [coimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimage--2c25e0fa98c854949316a825.md) | 64 | `declaration-track:2c25e0fa98c854949316a825848293879e194dcd18b61e5e8df9738b89c8642d` |
| 7 | `abbrev` | [coimage.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimage--b2fa825b550a7640cb7c4d11.md) | 68 | `declaration-track:b2fa825b550a7640cb7c4d110b052dcb8de0603ad9f7b189196edc510be57409` |
| 8 | `abbrev` | [factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/factorthrucoimage--46ec82bc81dbb6017f79887e.md) | 72 | `declaration-track:46ec82bc81dbb6017f79887eee62d61398f30c8ccc26d52cdae2cef9dae0d330` |
| 9 | `theorem` | [coimage.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimage-fac--22932fcc5aeb9e0888219e9c.md) | 76 | `result-track:22932fcc5aeb9e0888219e9c2e6f79a845ee0124567061b75c6ab20eb1efad81` |
| 10 | `instance` | [epi_factorThruCoimage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/epi-factorthrucoimage--246239d23de7d85e060851f2.md) | 79 | `declaration-track:246239d23de7d85e060851f2d5b865bd1dc5e601a552b3611a73c43f2b472c88` |
| 11 | `def` | [coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimageimagecomparison--0d4114400c9f8e8d03495106.md) | 90 | `declaration-track:0d4114400c9f8e8d0349510633ddd29e2dfa2725c07e52d9a0ac7b71b2211da1` |
| 12 | `def` | [coimageImageComparison'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimageimagecomparison--57976c49870a497cc8e4caa8.md) | 95 | `declaration-track:57976c49870a497cc8e4caa8b0d63a4d8bf08e700ecf49f5a8d7243c96e4966e` |
| 13 | `theorem` | [coimageImageComparison_eq_coimageImageComparison'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimageimagecomparison-eq-coimageimagecomparison--6795d1937c097e2574947abf.md) | 98 | `result-track:6795d1937c097e2574947abfc5b06079e567f764ffb6380b551d252f26e1b42f` |
| 14 | `theorem` | [coimage_image_factorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimage-image-factorisation--1c81e5afc7be8a7e8c5a7fd4.md) | 104 | `result-track:1c81e5afc7be8a7e8c5a7fd49cd2723156540e4689e4bb5f6629fe44f9d8ea69` |
| 15 | `def` | [coimageImageComparisonFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant47ec3f2ed4efaf25c6912d2f9caa815b46511d149ab512edce0482e26550135c.lean/declarations/coimageimagecomparisonfunctor--5601dd77de62c9f04da03215.md) | 109 | `declaration-track:5601dd77de62c9f04da03215b598c1d324a7376adedca63df014df00f0ecaade` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
