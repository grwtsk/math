# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ImageToKernel.Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8107fb238bbb7de1f436388dd2bdeec886f6d73",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8107fb238bbb7de1f436388dd2bdeec886f6d73`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean.json)

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
| 1 | `theorem` | [image_le_kernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/image-le-kernel--8ff3dbe93e431b46880ff565.md) | 49 | `result-track:8ff3dbe93e431b46880ff565e0e09357f5d2d32de4f209adeffe9ef84ad3dc22` |
| 2 | `def` | [imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel--007f99f5d59858add35e07f1.md) | 55 | `declaration-track:007f99f5d59858add35e07f196d11c439c856c9493541745db51e71bf2358cb2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/instance--06aeb8410f289388357572a9.md) | 59 | `declaration-track:06aeb8410f289388357572a9d7bb3bbd00f76b2ba683404d96f67492426d228a` |
| 4 | `theorem` | [subobject_ofLE_as_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/subobject-ofle-as-imagetokernel--c67ce2692d233e60e23e8251.md) | 65 | `result-track:c67ce2692d233e60e23e82517dfd1ef7028806ce50bf79e94e8cdbc3f731d602` |
| 5 | `theorem` | [imageToKernel_arrow](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-arrow--a73da8869ef1a23bd0420d8d.md) | 75 | `result-track:a73da8869ef1a23bd0420d8d71a019883ec19744abbadba6d02d8153d7a73e36` |
| 6 | `lemma` | [imageToKernel_arrow_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-arrow-apply--e195be19c2aab59763b4987b.md) | 81 | `result-track:e195be19c2aab59763b4987ba37f7a02169c42c146bf593360c86db1272ecf24` |
| 7 | `theorem` | [factorThruImageSubobject_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/factorthruimagesubobject-comp-imagetokernel--ba2a9101136879ca806e4617.md) | 89 | `result-track:ba2a9101136879ca806e461748b095a620e0bfd5ccdc95f039d27c6dbe701d2e` |
| 8 | `theorem` | [imageToKernel_zero_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-zero-left--a2aabb1bb2149d35c67a5f94.md) | 102 | `result-track:a2aabb1bb2149d35c67a5f94f8892a6e53c443ecf715a9c6d4224166da593e9b` |
| 9 | `theorem` | [imageToKernel_zero_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-zero-right--ad9d54d5bfac819c1efa2873.md) | 108 | `result-track:ad9d54d5bfac819c1efa28738aa424ef0b54613e6ddbe052f842bd5dba28e223` |
| 10 | `theorem` | [imageToKernel_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-comp-right--bbbf3bee1b6ef93a5410d9aa.md) | 119 | `result-track:bbbf3bee1b6ef93a5410d9aac39867d568e8ebe4ef84b30283ef732796421329` |
| 11 | `theorem` | [imageToKernel_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-comp-left--4f64addd1073db48076aa09b.md) | 126 | `result-track:4f64addd1073db48076aa09bfebf356541b16cb25ca1a8fcabe8e2b03026fcbd` |
| 12 | `theorem` | [imageToKernel_comp_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-comp-mono--cf19e31e14edfb0c65af3a82.md) | 134 | `result-track:cf19e31e14edfb0c65af3a82b12ebc04a7efe350f9a0a63c610b1e87c7e5a0c3` |
| 13 | `theorem` | [imageToKernel_epi_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-epi-comp--adec7e1c222d36ff66afdbd5.md) | 143 | `result-track:adec7e1c222d36ff66afdbd5004a05c4438ac570c234419ae14ec297a9a05308` |
| 14 | `theorem` | [imageToKernel_comp_hom_inv_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-comp-hom-inv-comp--6d179640f16454113c467208.md) | 154 | `result-track:6d179640f16454113c467208694ab9587b7ed16cd777b482f2d3c6649a1cfd36` |
| 15 | `instance` | [imageToKernel_epi_of_zero_of_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-epi-of-zero-of-mono--535aec0bd445b5d32fa103e5.md) | 167 | `declaration-track:535aec0bd445b5d32fa103e54e261f6b537a6232d80318aa9e0f834ad5f55250` |
| 16 | `instance` | [imageToKernel_epi_of_epi_of_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-epi-of-epi-of-zero--756ff93b65735136b3081f47.md) | 175 | `declaration-track:756ff93b65735136b3081f4712ec6d7316fa994745960df679e275e27a3e2b97` |
| 17 | `def` | [homology](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology--bf519aeb29e1c96a9951df7f.md) | 192 | `declaration-track:bf519aeb29e1c96a9951df7f1bde1fa621bae8836412ff03b23f40d44bdc55ed` |
| 18 | `def` | [homology.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology--319e28e937baa6cfee6fe9bd.md) | 202 | `declaration-track:319e28e937baa6cfee6fe9bd79d2ea59bf219ec38f04f64797ad7b3beb149ac6` |
| 19 | `theorem` | [homology.condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-condition--579f0dce92103883efa53dbf.md) | 207 | `result-track:579f0dce92103883efa53dbf71c991b66612af4db09df7c23cffb7608d0b4703` |
| 20 | `def` | [homology.desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-desc--c5ab3e4483f5f78ed00962a2.md) | 214 | `declaration-track:c5ab3e4483f5f78ed00962a2205b637e2cf75d2ed9a3087d0033c38cd92e6fa4` |
| 21 | `theorem` | [homology.π_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-desc--edc09ec10d0dd1ffd854ec9b.md) | 221 | `result-track:edc09ec10d0dd1ffd854ec9bd9786c0a53049f6ded35ca35663ae7f831cf360c` |
| 22 | `theorem` | [homology.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-ext--8f04c78c3ab3d587c185970f.md) | 228 | `result-track:8f04c78c3ab3d587c185970fecde6f03d694edba2c38c03ed03eb1650b81760e` |
| 23 | `def` | [homologyOfZeroRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homologyofzeroright--75090f6397393b1044ae47b9.md) | 234 | `declaration-track:75090f6397393b1044ae47b9d72b4873d49e350b1a7db00a37ad79923e42fff5` |
| 24 | `def` | [homologyOfZeroLeft](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homologyofzeroleft--68e5627a3be527ac9206af3e.md) | 243 | `declaration-track:68e5627a3be527ac9206af3ebf8c78d21f5b68af2592ae6485698d1b31873d10` |
| 25 | `def` | [homologyZeroZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homologyzerozero--a0c7076c5e2f40106d573589.md) | 252 | `declaration-track:a0c7076c5e2f40106d5735891e02f92586829ee8baaee20e292b881846a38e3d` |
| 26 | `theorem` | [imageSubobjectMap_comp_imageToKernel](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagesubobjectmap-comp-imagetokernel--dfe52cc76d80afd61ef1d4b9.md) | 277 | `result-track:dfe52cc76d80afd61ef1d4b9f12589a89236418f17662c190401050c707f5ec4` |
| 27 | `def` | [homology.map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map--cfeb1364b62db26502ad696a.md) | 292 | `declaration-track:cfeb1364b62db26502ad696a37963ae3d27546af4acef6501f4be4ec15d33a25` |
| 28 | `theorem` | [homology.π_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map--562bcaa29df1a5f770d3eb41.md) | 301 | `result-track:562bcaa29df1a5f770d3eb41f66cb142f50d76f01955e69bd194d03a858bc870` |
| 29 | `lemma` | [homology.π_map_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map-apply--bed0ce4c51b2e6882988655e.md) | 311 | `result-track:bed0ce4c51b2e6882988655ef3d3db9fbcf299441f2d779c8e30633f60c6262a` |
| 30 | `theorem` | [homology.map_desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map-desc--a0eff9e61d734ddf6b5bef8c.md) | 320 | `result-track:a0eff9e61d734ddf6b5bef8cb60232ca6b2d4d4e84c08d34a8ec20d14e52ffc5` |
| 31 | `theorem` | [homology.map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map-id--6679ca95aaab9bd3c9ad29d3.md) | 330 | `result-track:6679ca95aaab9bd3c9ad29d392bbd9c4f8fc23b4dcaa02dcdc132df25f286a58` |
| 32 | `theorem` | [homology.comp_right_eq_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-comp-right-eq-comp-left--e28ba7619096445ed80d57b3.md) | 336 | `result-track:e28ba7619096445ed80d57b38c6fb828083130a4fe08746072cffe9761e1976a` |
| 33 | `theorem` | [homology.map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-map-comp--361dd42eb6f805befa7b8636.md) | 345 | `result-track:361dd42eb6f805befa7b8636345581ee2de6f60b1b9035444f33f1b11e97ad18` |
| 34 | `def` | [homology.mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-mapiso--af9936ad3ff09b24c9c677df.md) | 353 | `declaration-track:af9936ad3ff09b24c9c677df5a23816ca0fbdb87b6dac9b8b400b617348b912a` |
| 35 | `def` | [homology.congr](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homology-congr--471bfa24b13dce53ef93eec6.md) | 388 | `declaration-track:471bfa24b13dce53ef93eec6a5606dcf63aff8d38d64c3f19b380b24eafaf1e7` |
| 36 | `def` | [imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel--44b3a355c9b0348e4020c2bb.md) | 422 | `declaration-track:44b3a355c9b0348e4020c2bbf9d1afbd4224a8ac9193a1cd9065837143f742d0` |
| 37 | `theorem` | [imageSubobjectIso_imageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagesubobjectiso-imagetokernel--877e0d8b3d6bbc7bc9d7c88d.md) | 429 | `result-track:877e0d8b3d6bbc7bc9d7c88dfb1fe3ef27a10f64252fd1a083a7ebe3d84c749c` |
| 38 | `theorem` | [imageToKernel'_kernelSubobjectIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/imagetokernel-kernelsubobjectiso--5f362f6e22c00782c5ea3f88.md) | 437 | `result-track:5f362f6e22c00782c5ea3f88c9de44b98e9c93345a618ad05af52cef88e3a648` |
| 39 | `def` | [homologyIsoCokernelImageToKernel'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homologyisocokernelimagetokernel--27561ce06847dd322237ca2e.md) | 448 | `declaration-track:27561ce06847dd322237ca2ea3d24d8f5e31b4f62aa32679f595fa4752aac1cd` |
| 40 | `def` | [homologyIsoCokernelLift](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ImageToKernel/Variant4bf1486ec2a370c1b40c67c7be09a9b68306edd9808bc38c93dd6cf6b34a48e0.lean/declarations/homologyisocokernellift--9dd53ef7414d54271eb477f6.md) | 472 | `declaration-track:9dd53ef7414d54271eb477f64295334f71ed9cca06554f00ff2cc29d832cc424` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
