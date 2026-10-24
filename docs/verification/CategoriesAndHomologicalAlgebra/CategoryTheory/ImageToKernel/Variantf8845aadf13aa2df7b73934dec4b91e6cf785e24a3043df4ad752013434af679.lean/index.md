# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernel.Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36be0d86d2d2b4f9b706f3b3c6471fe7344b463f",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36be0d86d2d2b4f9b706f3b3c6471fe7344b463f`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Limits` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_le_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/image-le-kernel--325853ac602d73477f6a4640.md) | 40 | `result-track:325853ac602d73477f6a4640f6a37c02f4fd4f5b6f5681e9e31c99e90832fa80` |
| 2 | `def` | [imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel--b455ea09c2df4d777c5a9040.md) | 45 | `declaration-track:b455ea09c2df4d777c5a904028724a37a51904444b934b0bf6aaaae9053e9c6f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/instance--40c5ab9a4a18af840c7b9a8f.md) | 48 | `declaration-track:40c5ab9a4a18af840c7b9a8fe41f8284162bfd65610409f2c0088ce530e2ad95` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/subobject-ofle-as-imagetokernel--afd90f7867f7b72a97162dc9.md) | 54 | `result-track:afd90f7867f7b72a97162dc9b8576dbb89bbc9dddf433f7d434a034480eba5be` |
| 5 | `theorem` | [imageToKernel_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-arrow--bcf51d25c336af8b586c54bb.md) | 63 | `result-track:bcf51d25c336af8b586c54bb6caa8de24ade52a5193576715f5ef52d82b0a0cb` |
| 6 | `lemma` | [imageToKernel_arrow_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-arrow-apply--a6f5caf44a93184aba10a5f0.md) | 68 | `result-track:a6f5caf44a93184aba10a5f04e61444d9f8bb60414908f53f3712ae1bc57c53c` |
| 7 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/factorthruimagesubobject-comp-imagetokernel--f1f6173d5b6489301c52d2dc.md) | 77 | `result-track:f1f6173d5b6489301c52d2dc78ddbd7d2cdb0f60ded1823e08981f99be617431` |
| 8 | `theorem` | [imageToKernel_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-zero-left--835991290c292d87adf0485f.md) | 89 | `result-track:835991290c292d87adf0485f9de838587ec99e8bf65c3b6ac63fcf26bb69725d` |
| 9 | `theorem` | [imageToKernel_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-zero-right--91479cc96630759b337013f1.md) | 94 | `result-track:91479cc96630759b337013f1b5077f885d24321e6ed3a7ed53c78946ca3967b1` |
| 10 | `theorem` | [imageToKernel_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-comp-right--07ca0df2bef9a22b5bffbbbe.md) | 104 | `result-track:07ca0df2bef9a22b5bffbbbe3db01b1622629c8754ce8fe36666c91561daf92b` |
| 11 | `theorem` | [imageToKernel_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-comp-left--6ddb61241ff25ff78648ec16.md) | 110 | `result-track:6ddb61241ff25ff78648ec1660032fc826ce2b5490a718926310da1dc9c19e12` |
| 12 | `theorem` | [imageToKernel_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-comp-mono--8e7784e1784a370aa71ddab4.md) | 117 | `result-track:8e7784e1784a370aa71ddab4420596b7f85b8e81fb13004ab40819e4e2431c69` |
| 13 | `theorem` | [imageToKernel_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-epi-comp--e80e858b41e81fbd51940950.md) | 125 | `result-track:e80e858b41e81fbd51940950488acf61490a4e5133c05c6413137f6234d5d1bc` |
| 14 | `theorem` | [imageToKernel_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-comp-hom-inv-comp--4b4ed4f0158df9ea6a2c95a6.md) | 135 | `result-track:4b4ed4f0158df9ea6a2c95a6ae744fd69389caf83ec3038b14d6dcf9e5cccb83` |
| 15 | `instance` | [imageToKernel_epi_of_zero_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-epi-of-zero-of-mono--1e99ee6447f44d74d1afab74.md) | 147 | `declaration-track:1e99ee6447f44d74d1afab74b704faa9101134a03cacc3159ef16f97d09c8f59` |
| 16 | `instance` | [imageToKernel_epi_of_epi_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-epi-of-epi-of-zero--46452faf480e04bc70ddc83a.md) | 154 | `declaration-track:46452faf480e04bc70ddc83ad1116199c00a1214ec06dcb42166e35b899acf02` |
| 17 | `def` | [imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel--6dcc56f9c41ed07af3f21782.md) | 179 | `declaration-track:6dcc56f9c41ed07af3f217821d507deea266773ff9433640ccb9b74f7ab05802` |
| 18 | `theorem` | [imageSubobjectIso_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagesubobjectiso-imagetokernel--20b8bf7be719392668ce0c28.md) | 185 | `result-track:20b8bf7be719392668ce0c28ff9351fec9f07f924d2cd4bf21e4b166e50f9b23` |
| 19 | `theorem` | [imageToKernel'_kernelSubobjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantf8845aadf13aa2df7b73934dec4b91e6cf785e24a3043df4ad752013434af679.lean/declarations/imagetokernel-kernelsubobjectiso--914ebb622aceb0acf823098b.md) | 192 | `result-track:914ebb622aceb0acf823098b885d30e6719b164b2f0202f081e0fbaf0a156a8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
