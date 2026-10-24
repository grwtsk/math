# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernel.Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3891653c3b70b8367b3c186c3fc36dfc8bc8c0ac",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3891653c3b70b8367b3c186c3fc36dfc8bc8c0ac`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Subobject.Limits` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [image_le_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/image-le-kernel--0f3c42f31ea85bbc124fb081.md) | 32 | `result-track:0f3c42f31ea85bbc124fb08153e2298a6903e3930ba8b507e2d1db4fc0e60ea0` |
| 2 | `def` | [imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel--990503bcbb7ef335c31408c5.md) | 37 | `declaration-track:990503bcbb7ef335c31408c531d8002c86d1cbb39315296c54282d35468218f1` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/instance--f3c096f1a8a8bca8ffaaef9a.md) | 40 | `declaration-track:f3c096f1a8a8bca8ffaaef9a7245430b87bb08f8da63b3b40e5d6eb78a5a4317` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/subobject-ofle-as-imagetokernel--2f841bbcd5d71d12002c3e5f.md) | 46 | `result-track:2f841bbcd5d71d12002c3e5fea87942248248ac8d541c3539579c4c3fdc9dea7` |
| 5 | `theorem` | [imageToKernel_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-arrow--6738ba6435b3437c70c07410.md) | 55 | `result-track:6738ba6435b3437c70c074104f9611efc57711f7a5a47b260d2846e8dec532bd` |
| 6 | `lemma` | [imageToKernel_arrow_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-arrow-apply--e90e5a409d10496e41625748.md) | 60 | `result-track:e90e5a409d10496e41625748e23e540cf97e46eeeea74c9604f32f914a9a0c3f` |
| 7 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/factorthruimagesubobject-comp-imagetokernel--408395a2e239aa485f528796.md) | 69 | `result-track:408395a2e239aa485f5287960f3f1a67fd598dd72167a54d3639130ad9d6f6f7` |
| 8 | `theorem` | [imageToKernel_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-zero-left--103987742b791a916fb0124c.md) | 81 | `result-track:103987742b791a916fb0124c93b93e17c5488ecc758cebfa94eae73450ceb185` |
| 9 | `theorem` | [imageToKernel_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-zero-right--c4d821afc2e1ccffc85e650a.md) | 86 | `result-track:c4d821afc2e1ccffc85e650a9688d8447ced828d2f1f38bcc929f8cb8cfa2564` |
| 10 | `theorem` | [imageToKernel_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-comp-right--0f19efdebc7a706baa8175f6.md) | 96 | `result-track:0f19efdebc7a706baa8175f672bd02234c83116613e7675ebb4adfd29528272a` |
| 11 | `theorem` | [imageToKernel_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-comp-left--728258a2015a45735d85335c.md) | 102 | `result-track:728258a2015a45735d85335c4b0b5cbf4b29a322d260be73820018aea1df93d0` |
| 12 | `theorem` | [imageToKernel_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-comp-mono--c3d8a11014c20776a74379d0.md) | 109 | `result-track:c3d8a11014c20776a74379d0229b72b6865e62c79b2f576df5e3cb6824ff6511` |
| 13 | `theorem` | [imageToKernel_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-epi-comp--fba2c4f9b48f3c170aaba9e2.md) | 117 | `result-track:fba2c4f9b48f3c170aaba9e20838b97a6530b87782478f2f946aa4e5850e29b5` |
| 14 | `theorem` | [imageToKernel_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-comp-hom-inv-comp--389a64ff6804d62f519c6705.md) | 127 | `result-track:389a64ff6804d62f519c670501d2184f892ce1c61e3dc282f3e95aa711c6ec68` |
| 15 | `instance` | [imageToKernel_epi_of_zero_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-epi-of-zero-of-mono--6ff9030ffe10c4e20d9e9b7f.md) | 139 | `declaration-track:6ff9030ffe10c4e20d9e9b7fa6b6391ecce7b1f368581159d48ef2f8354efb41` |
| 16 | `instance` | [imageToKernel_epi_of_epi_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-epi-of-epi-of-zero--3f4fbdce88ebbcdee794522c.md) | 146 | `declaration-track:3f4fbdce88ebbcdee794522c1feb59f76b4f88aec8dfc7170f58cc3213265726` |
| 17 | `def` | [imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel--b0f8792cd1f202bd832659e0.md) | 171 | `declaration-track:b0f8792cd1f202bd832659e0c0ac5c369e7a858d032b258629ea698d81238d03` |
| 18 | `theorem` | [imageSubobjectIso_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagesubobjectiso-imagetokernel--618afdbc02a6ebfab8a60dfe.md) | 177 | `result-track:618afdbc02a6ebfab8a60dfe9b173f218bfe49cbb93c28754a76fdfa55bb4e62` |
| 19 | `theorem` | [imageToKernel'_kernelSubobjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant2fb0cb7a75a979c5f053d9d7b2a30560601e4fbc31fc8834bdf24722d46c9c84.lean/declarations/imagetokernel-kernelsubobjectiso--837e6d08afc3bcb6a9e0aec7.md) | 184 | `result-track:837e6d08afc3bcb6a9e0aec7674d4f574d99a7fe79a4da29bdbf4d201ebe602c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
