# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.AbelianImages.Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027b0b01ae4d43019ccb4d19c0e48a868289be27",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027b0b01ae4d43019ccb4d19c0e48a868289be27`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Abelian.Images` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Kernels` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PreservesImage.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservesimage-iso--8f7f5231b5f2d5138a70d361.md) | 39 | `declaration-track:8f7f5231b5f2d5138a70d36163f5645e07a48c889a6034d1e5bfeb9d21e7cadf` |
| 2 | `theorem` | [PreservesImage.iso_hom_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservesimage-iso-hom--b0addc5fe40d1e62e4963681.md) | 43 | `result-track:b0addc5fe40d1e62e49636810c1088a1479b7f1e3fb35d3f9c8da44b60560e3d` |
| 3 | `theorem` | [PreservesImage.factorThruImage_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservesimage-factorthruimage-iso-hom--26315a118aa1aec11a0d9271.md) | 48 | `result-track:26315a118aa1aec11a0d92714cadd0cc03c4dcbe2883d0782bd71656822f5cdb` |
| 4 | `theorem` | [PreservesImage.iso_inv_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservesimage-iso-inv--10916758609d11264f90526f.md) | 54 | `result-track:10916758609d11264f90526f944d8d2e928d1708630f39d3da5d0c52a88a9df8` |
| 5 | `theorem` | [PreservesImage.factorThruImage_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservesimage-factorthruimage-iso-inv--165da5b03e6bf3416c83a665.md) | 59 | `result-track:165da5b03e6bf3416c83a665f99fa1aa9c979a81ee802e453e5001b88dcc3a65` |
| 6 | `def` | [PreservesCoimage.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-iso--6f3f1df4fd86621561f28fca.md) | 65 | `declaration-track:6f3f1df4fd86621561f28fca8ec42741c17ceaa7d66a61af0a0f274d9c187ee3` |
| 7 | `theorem` | [PreservesCoimage.iso_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-iso-hom--7a0f9a09856d19fa31e36888.md) | 69 | `result-track:7a0f9a09856d19fa31e368880718635c006a11eb9d51d586dfb1c56c6339fc4f` |
| 8 | `theorem` | [PreservesCoimage.factorThruCoimage_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-factorthrucoimage-iso-inv--10c56fc343c747d8d993960f.md) | 74 | `result-track:10c56fc343c747d8d993960fb2846feba5f03a362d1bccb9743d3edd9c84ba2d` |
| 9 | `theorem` | [PreservesCoimage.factorThruCoimage_iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-factorthrucoimage-iso-hom--9613cdb93853bd0b6fe330e2.md) | 80 | `result-track:9613cdb93853bd0b6fe330e205d6f57ebea153e8629a45db6c59990e74169848` |
| 10 | `theorem` | [PreservesCoimage.iso_inv_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-iso-inv--a37baa33961f9e9fce2501f2.md) | 86 | `result-track:a37baa33961f9e9fce2501f28f34926de390541f00a4ef45f2a7cc7a2656f208` |
| 11 | `theorem` | [PreservesCoimage.hom_coimageImageComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimage-hom-coimageimagecomparison--ef9f0ea49a458c7eef95b59d.md) | 90 | `result-track:ef9f0ea49a458c7eef95b59d522a3dacaba1222880829347414f39a0b4891333` |
| 12 | `def` | [PreservesCoimageImageComparison.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/AbelianImages/Varianta1f1fe48896a13a6576d4f9d61e44143d8a021a78ba8a9c40a7673dc930f0d98.lean/declarations/preservescoimageimagecomparison-iso--f71ee0731069591cf088ddbd.md) | 98 | `declaration-track:f71ee0731069591cf088ddbd66c01d5fe4929f1926e609c87f39a5e78723386d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
