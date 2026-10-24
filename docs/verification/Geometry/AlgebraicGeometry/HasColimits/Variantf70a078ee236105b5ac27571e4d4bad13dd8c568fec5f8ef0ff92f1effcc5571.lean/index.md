# Verification target: GRWTSK.Geometry.AlgebraicGeometry.HasColimits.Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d1d31b8ff076c8c338694de7c1ab588cd37de0c",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d1d31b8ff076c8c338694de7c1ab588cd37de0c`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.LocallyRingedSpace` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.OpenImmersion.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Constructions.LimitsOfProductsAndEqualizers` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isColimit_exists_rep](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/iscolimit-exists-rep--572d2bb8f14e30243b9241cd.md) | 44 | `result-track:572d2bb8f14e30243b9241cd8491acf5b71013f81654a83c9476dc0fb5b0b670` |
| 2 | `theorem` | [colimit_exists_rep](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/colimit-exists-rep--79901d4dc40fe00dc4b797cf.md) | 50 | `result-track:79901d4dc40fe00dc4b797cf0f395b6fee252ba3d39602152bdfdc465805678f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--e3aaf6f16fade53c1ac24f24.md) | 56 | `declaration-track:e3aaf6f16fade53c1ac24f24bf47d3062fb7804c1cd19c6eb8560ad18d16a698` |
| 4 | `def` | [coproduct](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coproduct--b62cf5b2fab41b2971bd745c.md) | 83 | `declaration-track:b62cf5b2fab41b2971bd745c0187f7dca8be48f2eb7d3c34fab7b5eb9c0509f7` |
| 5 | `def` | [coproductCofan](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coproductcofan--7ab1366e29b054b277b266e0.md) | 97 | `declaration-track:7ab1366e29b054b277b266e03d337ce6ea56db6c4c2a2c98da8e766e91a0903c` |
| 6 | `def` | [coproductCofanIsColimit](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coproductcofaniscolimit--5983544d8b3dd55ec57c84f7.md) | 106 | `declaration-track:5983544d8b3dd55ec57c84f7b77312fcdc3b1b537ad0357bbd9f3caa68a75ac8` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--a2968abcb2a35a32e29eb540.md) | 135 | `declaration-track:a2968abcb2a35a32e29eb540406912ad948d965b5febac68e24ffda18432b373` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--9a2a8a4ea4cc2aa62f973fd9.md) | 138 | `declaration-track:9a2a8a4ea4cc2aa62f973fd973c473df95b24163d65ff45e9a514a80c4f5adc9` |
| 9 | `instance` | [coequalizer_π_app_isLocalRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coequalizer-app-islocalringhom--7954f9b2416220ddf4319221.md) | 153 | `declaration-track:7954f9b2416220ddf43192215af56ff7d3dd213bcbc306d1c73558b59dbf718c` |
| 10 | `def` | [imageBasicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/imagebasicopen--3bfcf7d4f0a142840c2c4654.md) | 190 | `declaration-track:3bfcf7d4f0a142840c2c4654fe173e1357e51b2b4c06a74e151ccff0e032f14c` |
| 11 | `theorem` | [imageBasicOpen_image_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/imagebasicopen-image-preimage--87cabd5737f55d6f758164a6.md) | 195 | `result-track:87cabd5737f55d6f758164a6a898c6df3ecad1573d16434b9ae1892c560ac073` |
| 12 | `theorem` | [imageBasicOpen_image_open](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/imagebasicopen-image-open--f5cca641a79014905f09b207.md) | 224 | `result-track:f5cca641a79014905f09b207ff1cff397c23f0578d0e1c1b1fba697eab30baca` |
| 13 | `instance` | [coequalizer_π_stalk_isLocalRingHom](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coequalizer-stalk-islocalringhom--de049e35fece586c92d57ea7.md) | 236 | `declaration-track:de049e35fece586c92d57ea7de71bb790f3f896236523da4f17f94da4cb45388` |
| 14 | `def` | [coequalizer](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coequalizer--c9f664f240e83b94dea28f3d.md) | 270 | `declaration-track:c9f664f240e83b94dea28f3ddcae6c2acfe8c26794f93af014b64981a810bdc8` |
| 15 | `def` | [coequalizerCofork](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coequalizercofork--2d951101351ece85343376f9.md) | 279 | `declaration-track:2d951101351ece85343376f9a62796692d98378314f085b6068a9690734d4b36` |
| 16 | `theorem` | [isLocalRingHom_stalkMap_congr](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/islocalringhom-stalkmap-congr--655f4c2569c2d8343c638779.md) | 286 | `result-track:655f4c2569c2d8343c63877979485f5440a0ad5c765a9aa3f5313c7df31067f8` |
| 17 | `def` | [coequalizerCoforkIsColimit](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/coequalizercoforkiscolimit--3b5a81dcfbe6bff5972ed50c.md) | 293 | `declaration-track:3b5a81dcfbe6bff5972ed50c6d3a443a33a8976e0735f937912ea7b961b18598` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--db081985819b7e9379ed67e7.md) | 326 | `declaration-track:db081985819b7e9379ed67e72a445ce6cb46c5f1cc1e98483d6b5d0f1b13b164` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--43e387b0f5bfe4c4fcea9b3c.md) | 329 | `declaration-track:43e387b0f5bfe4c4fcea9b3c58899a196e068beed150b63272f9a378e12582e1` |
| 20 | `instance` | [preservesCoequalizer](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/preservescoequalizer--bd1ffa53946ed621006fbb99.md) | 332 | `declaration-track:bd1ffa53946ed621006fbb9961a64341b6aafd06951ed68d215f4277c73d956d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/instance--41f5912b34b6a5c9b6ecfffc.md) | 348 | `declaration-track:41f5912b34b6a5c9b6ecfffc8d82d92a54b3aa2d1bee2651ced42577ac8c92b5` |
| 22 | `instance` | [preservesColimits_forgetToSheafedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/HasColimits/Variantf70a078ee236105b5ac27571e4d4bad13dd8c568fec5f8ef0ff92f1effcc5571.lean/declarations/preservescolimits-forgettosheafedspace--20d5fde5834fe3b2fcd439be.md) | 351 | `declaration-track:20d5fde5834fe3b2fcd439be3f10a38cfb703c083bbc7c95397a9eff4fb3f0fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
