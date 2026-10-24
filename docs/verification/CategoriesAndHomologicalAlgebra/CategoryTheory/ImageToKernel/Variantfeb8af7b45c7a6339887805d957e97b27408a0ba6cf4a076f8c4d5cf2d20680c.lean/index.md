# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernel.Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11f736382376d59facb65fa3bffe963e52ecf18d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11f736382376d59facb65fa3bffe963e52ecf18d`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean.json)

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
| 1 | `theorem` | [image_le_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/image-le-kernel--bf4697ae17ac90942c87c145.md) | 41 | `result-track:bf4697ae17ac90942c87c145f89cfd485ad518d3eadcd78eb5f32319ceae6843` |
| 2 | `def` | [imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel--4d3594232a894be361bb6cac.md) | 47 | `declaration-track:4d3594232a894be361bb6cac8836666901eabe391d8c13832d642c3ff515b1a7` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/instance--02c6b3b961559dbb25aede0a.md) | 51 | `declaration-track:02c6b3b961559dbb25aede0ac87c313ae96ae37c5e4d7849491446da9e379364` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/subobject-ofle-as-imagetokernel--37849fe5026c4d0b94444186.md) | 57 | `result-track:37849fe5026c4d0b94444186e006daa22286edd913e19ed338bf6ba34bc2bf23` |
| 5 | `theorem` | [imageToKernel_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-arrow--3bd4a341dba3658544a4a211.md) | 67 | `result-track:3bd4a341dba3658544a4a2116c6a11cee1eff36a136be3bb6496443f0fbd142d` |
| 6 | `lemma` | [imageToKernel_arrow_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-arrow-apply--e3e1a77e653e4382605a2ed6.md) | 73 | `result-track:e3e1a77e653e4382605a2ed69214ca5c80d6918e57413804cc09710b0142535d` |
| 7 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/factorthruimagesubobject-comp-imagetokernel--b876e03c70ce3af172241894.md) | 81 | `result-track:b876e03c70ce3af1722418942e8e78658233c21ceb87f745e52bdf5babba373f` |
| 8 | `theorem` | [imageToKernel_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-zero-left--c6c03e3e472cf98fe39f19fe.md) | 94 | `result-track:c6c03e3e472cf98fe39f19fe0be3008c108f51071d4df7e838f090388c6760c6` |
| 9 | `theorem` | [imageToKernel_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-zero-right--55a68317526ff5c24733b7b2.md) | 100 | `result-track:55a68317526ff5c24733b7b27e293d800337e5cdfc0d7398aa23f44988683ccb` |
| 10 | `theorem` | [imageToKernel_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-comp-right--486f1cdb31fa24a5bec4e0f5.md) | 111 | `result-track:486f1cdb31fa24a5bec4e0f5ffb6afcbca3fe2b84f554120319469b24d632512` |
| 11 | `theorem` | [imageToKernel_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-comp-left--5e7c10fd977c14272d2744e3.md) | 118 | `result-track:5e7c10fd977c14272d2744e3791d841ed98bdc9cbd9756f67ac98c4a24177c7f` |
| 12 | `theorem` | [imageToKernel_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-comp-mono--0eb5a4d2705aa29bb230da5c.md) | 126 | `result-track:0eb5a4d2705aa29bb230da5ccc456f0ad62c76d5f3ad9d765cb1d1a47c5e2ab2` |
| 13 | `theorem` | [imageToKernel_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-epi-comp--33578a961fe1d96ef9a3422b.md) | 135 | `result-track:33578a961fe1d96ef9a3422b6bf75ec41151c11dc31160d468045cc560080cec` |
| 14 | `theorem` | [imageToKernel_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-comp-hom-inv-comp--7f979c3f2b61bf361bfe465f.md) | 146 | `result-track:7f979c3f2b61bf361bfe465f180de414797b790186cd8a9a289a59cd5d6b055b` |
| 15 | `instance` | [imageToKernel_epi_of_zero_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-epi-of-zero-of-mono--90d53e5540711e487189aeb1.md) | 159 | `declaration-track:90d53e5540711e487189aeb16363da348228f368e2a0013dfa954a5142745fd6` |
| 16 | `instance` | [imageToKernel_epi_of_epi_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-epi-of-epi-of-zero--af7ebc064c410c2051ae423d.md) | 167 | `declaration-track:af7ebc064c410c2051ae423d7d01f15def6d4ccf3575ee524353ce2c422e86d7` |
| 17 | `def` | [homology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology--78aa8c6f4f9db05dc1f3b717.md) | 184 | `declaration-track:78aa8c6f4f9db05dc1f3b7177bd145398bcbf4bc96417da06f81f6e48b436105` |
| 18 | `def` | [homology.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology--0984637a90e2619da97c6a74.md) | 194 | `declaration-track:0984637a90e2619da97c6a74f45334f8a89ff8a0c415e1593a1a060275617b9b` |
| 19 | `theorem` | [homology.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-condition--efec3fb3a1f45b61783a6f3c.md) | 199 | `result-track:efec3fb3a1f45b61783a6f3c36328edac4a9cb4d3845941c6b13544c212a9a1b` |
| 20 | `def` | [homology.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-desc--3d06cfcc26cd45e36c3fbe63.md) | 206 | `declaration-track:3d06cfcc26cd45e36c3fbe63cbd51a9077fedea430cdaaa5268d22d555e1ec26` |
| 21 | `theorem` | [homology.π_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-desc--6be1678b9de816eb3bede6e9.md) | 213 | `result-track:6be1678b9de816eb3bede6e9732006f4ed86b3833e0982d7c7521ad46ae81c69` |
| 22 | `theorem` | [homology.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-ext--8439dc4ac37dd87e5121e982.md) | 220 | `result-track:8439dc4ac37dd87e5121e9824175d1bc94b4f35a62e6d09c2ae81398837046b3` |
| 23 | `def` | [homologyOfZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homologyofzeroright--3e67478e2c20fdb06c94183e.md) | 226 | `declaration-track:3e67478e2c20fdb06c94183e3608a71e6a115890cd625d5faa1bd242b3d950c3` |
| 24 | `def` | [homologyOfZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homologyofzeroleft--57c42e03807bc4c4294fd06f.md) | 235 | `declaration-track:57c42e03807bc4c4294fd06f2c671f96e14d12796d9764d839eaf2e820d3f911` |
| 25 | `def` | [homologyZeroZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homologyzerozero--d96c473aa84ace28cc2ea16c.md) | 244 | `declaration-track:d96c473aa84ace28cc2ea16cb5bf1a87935fbd8ca57399bf708f8ec864cf4af7` |
| 26 | `theorem` | [imageSubobjectMap_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagesubobjectmap-comp-imagetokernel--a348d61255fa8e63469ad9ef.md) | 269 | `result-track:a348d61255fa8e63469ad9efc6574e7d1497aa1aea4975589a5a2e6eba102e3a` |
| 27 | `def` | [homology.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map--a5716b12d15f33ba19605f75.md) | 284 | `declaration-track:a5716b12d15f33ba19605f753ba5df91b9bbd1399b1c0f60ad63bf36056bce74` |
| 28 | `theorem` | [homology.π_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map--e72bda2de4e4d2750c87b02d.md) | 293 | `result-track:e72bda2de4e4d2750c87b02dac4e61eaf743013d2c70ac12ed0684a33cae725b` |
| 29 | `lemma` | [homology.π_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map-apply--1f76f221a2d46d18129f92a1.md) | 303 | `result-track:1f76f221a2d46d18129f92a138f44081835c2554571f6a9c5f088897f84c617b` |
| 30 | `theorem` | [homology.map_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map-desc--ac371562523a452538b5fc3b.md) | 312 | `result-track:ac371562523a452538b5fc3bf8ce280d9485dc59dd39b317f34193bc9e4b4eb3` |
| 31 | `theorem` | [homology.map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map-id--18a2647388a4b6e29612648d.md) | 322 | `result-track:18a2647388a4b6e29612648d27465c57dbeeca42bcbf7110f01edf9bdf7866aa` |
| 32 | `theorem` | [homology.comp_right_eq_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-comp-right-eq-comp-left--6ddf5b66fdc1962d03a7be8e.md) | 328 | `result-track:6ddf5b66fdc1962d03a7be8e7c10d0cd06d38ade65594ca8b5685827fb7fdaa9` |
| 33 | `theorem` | [homology.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-map-comp--a5130213a8086cba8b7e84bc.md) | 337 | `result-track:a5130213a8086cba8b7e84bc7cda25b1eda7187d8fb6204c6de5bd94d2c890a2` |
| 34 | `def` | [homology.mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-mapiso--0fd75704500bd638be546f4c.md) | 345 | `declaration-track:0fd75704500bd638be546f4c7c4523b44070350dde113904600abe2991e541d0` |
| 35 | `def` | [homology.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homology-congr--1ba0e9588e7c274b9633e60b.md) | 380 | `declaration-track:1ba0e9588e7c274b9633e60b196399988b8e9787337263a352ce7ceb80a99dd5` |
| 36 | `def` | [imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel--7b1b8eb4436b0bc6500a64ea.md) | 414 | `declaration-track:7b1b8eb4436b0bc6500a64eafbb335ac6c0ea1b72da28296e6183c8260b8b024` |
| 37 | `theorem` | [imageSubobjectIso_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagesubobjectiso-imagetokernel--a65b1e2e63f773e6b0af092f.md) | 421 | `result-track:a65b1e2e63f773e6b0af092f7cb36083df2824df39816769c66e0971e20e2e93` |
| 38 | `theorem` | [imageToKernel'_kernelSubobjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/imagetokernel-kernelsubobjectiso--037fb7a6e2a6c0581b0bbb6a.md) | 429 | `result-track:037fb7a6e2a6c0581b0bbb6a4b334a858655fcc01ff17545448e8493d095b237` |
| 39 | `def` | [homologyIsoCokernelImageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homologyisocokernelimagetokernel--f121a2911bcd4fc4a523a5ac.md) | 440 | `declaration-track:f121a2911bcd4fc4a523a5ac2856f403dddd02d8187004a3b41563792eec9dcb` |
| 40 | `def` | [homologyIsoCokernelLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variantfeb8af7b45c7a6339887805d957e97b27408a0ba6cf4a076f8c4d5cf2d20680c.lean/declarations/homologyisocokernellift--a7bf0de5f834aafd6a24f2d4.md) | 464 | `declaration-track:a7bf0de5f834aafd6a24f2d49cafe19b6aa6947562a61f019a41509a36c5b255` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
