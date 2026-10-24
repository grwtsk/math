# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5eec25cee6d3c5a6ad77bc146736aef9fe79fd17",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5eec25cee6d3c5a6ad77bc146736aef9fe79fd17`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map-condition--e116d4c9b950af7e4410be67.md) | 48 | `result-track:e116d4c9b950af7e4410be67012b577244ec56c90b2ea8774548ace4f659a9f4` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map--55b02f846112aef8908ea7da.md) | 53 | `declaration-track:55b02f846112aef8908ea7da1caf7fbabad71f72dbd2f9353a40d3d568cc5a98` |
| 3 | `lemma` | [map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map--4488b80de8c26f6937de5af2.md) | 57 | `result-track:4488b80de8c26f6937de5af2ecba9a415f763ae7aae34070de6bbba000e58874` |
| 4 | `def` | [isLimitMapConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/islimitmapconeequiv--d56e82d034269c4e634f66f0.md) | 61 | `declaration-track:d56e82d034269c4e634f66f0bcb15e3ffa63ebfe491b186ac634c30b0840ccd6` |
| 5 | `def` | [mapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/mapislimit--35d0126cc252b6bd86c359ef.md) | 69 | `declaration-track:35d0126cc252b6bd86c359efad1bb17ec028cbb1f2d74e90a7dd9b4dcff378ea` |
| 6 | `def` | [isLimitMapConeForkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/islimitmapconeforkequiv--b0ca19663d7ef0220a97746f.md) | 88 | `declaration-track:b0ca19663d7ef0220a97746f3133d740a88393bf7c6de39e72fcbc67d64acc0b` |
| 7 | `def` | [isLimitForkMapOfIsLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/islimitforkmapofislimit--f91ff5d6a00de206b52b61c1.md) | 101 | `declaration-track:f91ff5d6a00de206b52b61c11f2c42564cdac025fde6c65062c0a418dbc0d895` |
| 8 | `def` | [isLimitOfHasKernelOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/islimitofhaskernelofpreserveslimit--46bee949b596724ca6894db4.md) | 114 | `declaration-track:46bee949b596724ca6894db41b82da50345c6ee1d3dfc86ca32fd640293e6c2e` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/instance--258eda49055ec56fb4aae9b4.md) | 122 | `declaration-track:258eda49055ec56fb4aae9b489198337857dc3d6818be68d442dbdf365ae5ff9` |
| 10 | `def` | [PreservesKernel.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserveskernel-ofisocomparison--5cc2f4fb836258e34f8c537a.md) | 130 | `declaration-track:5cc2f4fb836258e34f8c537a401281946ff8e11616074cae5f1efac791abc495` |
| 11 | `def` | [PreservesKernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserveskernel-iso--7dcb1ef5d45b8ac28c854bd3.md) | 142 | `declaration-track:7dcb1ef5d45b8ac28c854bd3e71f0985468bfabcfdd7ab452a063032108f548e` |
| 12 | `theorem` | [PreservesKernel.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserveskernel-iso-hom--fcb3e03c346f40af5c720ad6.md) | 147 | `result-track:fcb3e03c346f40af5c720ad666c2a737d21c6a15edaf7414a15fe0fdbb633666` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/instance--12f2343af70eba3c97e829ab.md) | 152 | `declaration-track:12f2343af70eba3c97e829ab6b7e200b801822fde5380f810fb9e651dc7df541` |
| 14 | `theorem` | [kernel_map_comp_preserves_kernel_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/kernel-map-comp-preserves-kernel-iso-inv--8355642fb8026625fe4a78ff.md) | 157 | `result-track:8355642fb8026625fe4a78ffc9f484b1dad08785fbb5e8865a61b943e0bda373` |
| 15 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map-condition--160edbe7fe3a0fee3428deb5.md) | 175 | `result-track:160edbe7fe3a0fee3428deb5631ffc19595150544161e902592570391b7af0db` |
| 16 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map--dc9758541aff7845779a5856.md) | 180 | `declaration-track:dc9758541aff7845779a5856591d1592a2f1f7890d6c896519746b6b59af3f21` |
| 17 | `lemma` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/map--f7a056702afc4edca24643e3.md) | 184 | `result-track:f7a056702afc4edca24643e3e86cee00fd94d936186fe20a679015e1596af204` |
| 18 | `def` | [isColimitMapCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/iscolimitmapcoconeequiv--3f365d14c4ab1d289c563b8b.md) | 188 | `declaration-track:3f365d14c4ab1d289c563b8b0c4f01082fcb4621b697630c435f2076382365e2` |
| 19 | `def` | [mapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/mapiscolimit--ba73fbbfa52be16075164412.md) | 196 | `declaration-track:ba73fbbfa52be1607516441240b154637a285cc4639b65d72f3b17694c373101` |
| 20 | `def` | [isColimitMapCoconeCoforkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/iscolimitmapcoconecoforkequiv--1c16bbc27f6901c8849e651d.md) | 215 | `declaration-track:1c16bbc27f6901c8849e651dd774009a4e8d15df2b03ef128a811c718a3907bc` |
| 21 | `def` | [isColimitCoforkMapOfIsColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/iscolimitcoforkmapofiscolimit--333d310c088e0d29de882911.md) | 228 | `declaration-track:333d310c088e0d29de8829119ed980388ad672d237dee9ede663a07a3d41fcf2` |
| 22 | `def` | [isColimitOfHasCokernelOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/iscolimitofhascokernelofpreservescolimit--11a7a2cb8d44b520c13370f8.md) | 242 | `declaration-track:11a7a2cb8d44b520c13370f85a49eb6445749d68c45532b7475c3d0b17cba4a8` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/instance--d1afd38917b48687dde1698c.md) | 250 | `declaration-track:d1afd38917b48687dde1698ce6c36d8449db15b952aeb4696f49ad2319af248b` |
| 24 | `def` | [PreservesCokernel.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preservescokernel-ofisocomparison--3e423a3877e041cf68c5c158.md) | 258 | `declaration-track:3e423a3877e041cf68c5c158b16287c00c42bae562d99e24265ea4896540c082` |
| 25 | `def` | [PreservesCokernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preservescokernel-iso--536f130078e07033369ce7f9.md) | 270 | `declaration-track:536f130078e07033369ce7f9b4e650655c3a6c4ca2399d5ed9a99a0961a07858` |
| 26 | `theorem` | [PreservesCokernel.iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preservescokernel-iso-inv--308a8fa91a0219d1ce72172a.md) | 276 | `result-track:308a8fa91a0219d1ce72172ae93131aec9e334c6a42904fb9b84c1a7d84f1d77` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/instance--a52187309dd00b220317b237.md) | 281 | `declaration-track:a52187309dd00b220317b23785996840debd2860f41d312df33205fa57c29a8e` |
| 28 | `theorem` | [preserves_cokernel_iso_comp_cokernel_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserves-cokernel-iso-comp-cokernel-map--6ddcde57b77971aac6d618b5.md) | 286 | `result-track:6ddcde57b77971aac6d618b5518ecc6977325f45022488a63d2a014616bcc76e` |
| 29 | `instance` | [preservesKernelZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserveskernelzero--55a8ecd2fac9fb771fccb1a6.md) | 301 | `declaration-track:55a8ecd2fac9fb771fccb1a61ceb2726e88bbd3e6cd92372873df56aa4222bb1` |
| 30 | `instance` | [preservesCokernelZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preservescokernelzero--98a1a6a038236b1d537c0610.md) | 309 | `declaration-track:98a1a6a038236b1d537c06108e006c63670a2d5774fffe77eacae9be91cf881e` |
| 31 | `def` | [preservesKernelZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preserveskernelzero--68edce51bad14a34ab2dd71a.md) | 320 | `declaration-track:68edce51bad14a34ab2dd71a230052b0ff38e67fd5f92350af99c360e8f7afab` |
| 32 | `def` | [preservesCokernelZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant9a2e0c7d4cf2711967413f59fbf31988f58e465939c454deb87378ab06a6c536.lean/declarations/preservescokernelzero--e932e75040243e25a03eb123.md) | 326 | `declaration-track:e932e75040243e25a03eb1230ab08198cb93738d1a284c0cc4163356c1c664d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
