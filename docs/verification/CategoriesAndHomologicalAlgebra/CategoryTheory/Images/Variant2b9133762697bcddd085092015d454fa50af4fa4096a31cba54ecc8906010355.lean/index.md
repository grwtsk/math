# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Images.Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8a34c61cce4a9ddf70ea35b4cd675ef7d2a394a2",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8a34c61cce4a9ddf70ea35b4cd675ef7d2a394a2`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.ModuleCat.Abelian` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Images` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [image](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/image--bd4dd5a37a06777438f1a14e.md) | 34 | `declaration-track:bd4dd5a37a06777438f1a14e2517a4fb230ee63702398f5ab9370c11fa3d347e` |
| 2 | `def` | [image.ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/image--b16ba09804ab41ed26a7ce8a.md) | 38 | `declaration-track:b16ba09804ab41ed26a7ce8aa38fd0c18a94f30c476b831e76cc2f60181a950e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/instance--8ed964a43f01cca34240e304.md) | 41 | `declaration-track:8ed964a43f01cca34240e304cef75d07545e00ffd8793db0719382a430fc4d2e` |
| 4 | `def` | [factorThruImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/factorthruimage--63fc0f6a07d13dfeceddd4b9.md) | 45 | `declaration-track:63fc0f6a07d13dfeceddd4b934e1b643489b456a4cf429f6e9e67605a2c7d86c` |
| 5 | `theorem` | [image.fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/image-fac--118b24d27d4fec3bb5fc4213.md) | 48 | `result-track:118b24d27d4fec3bb5fc42131358ed52f1e92bd2eb24efca78b702024f1696d8` |
| 6 | `def` | [image.lift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/image-lift--7ca9766f8e47ac29cbf1da8f.md) | 56 | `declaration-track:7ca9766f8e47ac29cbf1da8ffecc96da2de6c7a7a769bcb1b65efadc30e9e524` |
| 7 | `theorem` | [image.lift_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/image-lift-fac--8e72a4af1cb6b966e0288e83.md) | 74 | `result-track:8e72a4af1cb6b966e0288e83ebc4d5602579078e82d0acb509f6ef82d4806e53` |
| 8 | `def` | [monoFactorisation](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/monofactorisation--e11ca7123b57a7c83adcb28d.md) | 83 | `declaration-track:e11ca7123b57a7c83adcb28da23cfb2d5ab9fa301ee476d2ec85af28e2e12304` |
| 9 | `def` | [isImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/isimage--2c663a7672a1d2c6cd2ddb69.md) | 90 | `declaration-track:2c663a7672a1d2c6cd2ddb69038b2e0bc6f0ecfc1aa0ce6fd7185a1ce8508e65` |
| 10 | `def` | [imageIsoRange](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/imageisorange--4889b57795ec91e5bf7991c1.md) | 95 | `declaration-track:4889b57795ec91e5bf7991c12443f50c428f57aade0236f000c4721ca64da741` |
| 11 | `theorem` | [imageIsoRange_inv_image_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/imageisorange-inv-image--d2642de3722888c934b61523.md) | 100 | `result-track:d2642de3722888c934b615239b24ffcb4f621dba61da8bdc418990e2bcb25ac6` |
| 12 | `theorem` | [imageIsoRange_hom_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Images/Variant2b9133762697bcddd085092015d454fa50af4fa4096a31cba54ecc8906010355.lean/declarations/imageisorange-hom-subtype--c8d5b8277c034789c547f8ce.md) | 105 | `result-track:c8d5b8277c034789c547f8cea54baa9de8b3ce4e088cf786669dfe67307bb531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
