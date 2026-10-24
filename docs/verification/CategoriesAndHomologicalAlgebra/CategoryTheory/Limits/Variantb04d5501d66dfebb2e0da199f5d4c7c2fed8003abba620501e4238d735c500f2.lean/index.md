# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Limits.Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cba23b08ba730e01cc709e4acafae59c0667264",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cba23b08ba730e01cc709e4acafae59c0667264`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.MonCat.Limits` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.GroupCat.Preadditive` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Over` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.ReflectsIso` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [GroupCatMax.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/groupcatmax--4ddbbf59d85cad1eb1e8b4e3.md) | 36 | `declaration-track:4ddbbf59d85cad1eb1e8b4e3b2f8653eab3637768de8d1200ae9ab693f2cd674` |
| 2 | `instance` | [groupObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/groupobj--795897b6df235befb2a9e6e9.md) | 42 | `declaration-track:795897b6df235befb2a9e6e98913f15d5969bbf1dc8967e36ef51f866cd28524` |
| 3 | `def` | [sectionsSubgroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/sectionssubgroup--64624c00620275b39627e813.md) | 54 | `declaration-track:64624c00620275b39627e813abfdb02477677c3591a17c872a017e748e1f1913` |
| 4 | `instance` | [limitGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitgroup--207d42b589aa7a9cff5e9ab6.md) | 67 | `declaration-track:207d42b589aa7a9cff5e9ab633307b3ba7efaaa768e1fbe940eb782130453158` |
| 5 | `instance` | [Forget₂.createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-createslimit--592f47bd5b01a7fa8c611d10.md) | 84 | `declaration-track:592f47bd5b01a7fa8c611d105b73665c11405f807e188d42e4b8b57a72088d9d` |
| 6 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitcone--c05d91e15ba3df77dc2a9240.md) | 112 | `declaration-track:c05d91e15ba3df77dc2a92409c4b8269937fc0bd4f75da060e385a14a58f3129` |
| 7 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitconeislimit--77569a83860c35ff612d33e8.md) | 128 | `declaration-track:77569a83860c35ff612d33e8b49ffe7e8790841eea05fb0465b0ab4a75767662` |
| 8 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/haslimitsofsize--cc8df3d0916ccbd4676b6e64.md) | 137 | `declaration-track:cc8df3d0916ccbd4676b6e640f171592da57dd76ed4c192ea4f38e3d08352a6e` |
| 9 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/haslimits--c327d2ffcd533299682f4d8b.md) | 150 | `declaration-track:c327d2ffcd533299682f4d8ba439a7af3e2345d1a7df62c4c73ad4b1e43680ed` |
| 10 | `instance` | [forget₂MonPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-monpreserveslimitsofsize--b218c2f0c1feea3eb18ff6b5.md) | 166 | `declaration-track:b218c2f0c1feea3eb18ff6b515e22d302f2c7013d54c11c73f77b0efd28c4628` |
| 11 | `instance` | [forget₂MonPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-monpreserveslimits--b73fb0abc96894f718879405.md) | 179 | `declaration-track:b73fb0abc96894f71887940534801b77d59df30f8c0232781e407d511e7f0c33` |
| 12 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forgetpreserveslimitsofsize--b7e60a44fa5c87777e6272d4.md) | 194 | `declaration-track:b7e60a44fa5c87777e6272d424491ff83dac5e5325c73e4852e5458c048d3fa2` |
| 13 | `instance` | [forgetPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forgetpreserveslimits--13a4bc1a3740949777a94c1d.md) | 212 | `declaration-track:13a4bc1a3740949777a94c1dac53ecf3b77c373a689a682ae1745a349e859576` |
| 14 | `abbrev` | [CommGroupCatMax.](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/commgroupcatmax--e7912b73b1f401c0cc9f88c6.md) | 225 | `declaration-track:e7912b73b1f401c0cc9f88c6d8d4af572d4605c39df53e335737cb6ebb5b578b` |
| 15 | `instance` | [commGroupObj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/commgroupobj--f456389e16b8789ca22609d8.md) | 230 | `declaration-track:f456389e16b8789ca22609d864907f12e759976f687d47cb43915d26bac552e8` |
| 16 | `instance` | [limitCommGroup](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitcommgroup--4bfd70999b9b00f481734b91.md) | 240 | `declaration-track:4bfd70999b9b00f481734b911ee47a63eae74fc55d062b0b81d7586122a7bd59` |
| 17 | `instance` | [Forget₂.createsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-createslimit--44a6be4d0a85df55c77c3189.md) | 259 | `declaration-track:44a6be4d0a85df55c77c3189083c02b30d94da2f1b2d562115ea0dd256963b56` |
| 18 | `def` | [limitCone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitcone--353efa450b2d9a0e811b1eaf.md) | 285 | `declaration-track:353efa450b2d9a0e811b1eaf775f58d8c00c6a273ea2e62d1d9394c141955bbb` |
| 19 | `def` | [limitConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/limitconeislimit--40b130590395d69e1ae6052c.md) | 298 | `declaration-track:40b130590395d69e1ae6052cb9b9c7845fd833c4f392ddf7d941efc6d9d20ed8` |
| 20 | `instance` | [hasLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/haslimitsofsize--a0d6c3f3993f9aa5c4b93363.md) | 308 | `declaration-track:a0d6c3f3993f9aa5c4b9336368927d11858be4047df99688dd853e06b00502e7` |
| 21 | `instance` | [hasLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/haslimits--1d0b46c92e3a0e4ace0c8256.md) | 318 | `declaration-track:1d0b46c92e3a0e4ace0c82560611db9875ead9dac90e239ca2d9fcaf7f26ec8d` |
| 22 | `instance` | [forget₂GroupPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-grouppreserveslimitsofsize--b06a66d93fcb8b7340d9d3e1.md) | 333 | `declaration-track:b06a66d93fcb8b7340d9d3e164410911a40d7be042ae71d95e271eb9bbe09829` |
| 23 | `instance` | [forget₂GroupPreservesLimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-grouppreserveslimits--ee83d292617a0375941796e3.md) | 342 | `declaration-track:ee83d292617a0375941796e322fddbedd005a732fd71eb28d3f8e52fac6e4efb` |
| 24 | `def` | [forget₂CommMonPreservesLimitsAux](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-commmonpreserveslimitsaux--2d83df589e666bcf28e79812.md) | 354 | `declaration-track:2d83df589e666bcf28e798127570c292e60ce24f51b0447cd609e41bc56b1e8c` |
| 25 | `instance` | [forget₂CommMonPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forget-commmonpreserveslimitsofsize--634ac7dc0ba78fbce7be873c.md) | 370 | `declaration-track:634ac7dc0ba78fbce7be873cef6d8222bb4990493bc0fa6ea46b3c1f2dd21a3b` |
| 26 | `instance` | [forgetPreservesLimitsOfSize](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/forgetpreserveslimitsofsize--e54c7f2b307b4b6c03b0f22c.md) | 388 | `declaration-track:e54c7f2b307b4b6c03b0f22c36943a09f4835a401fa5d06f7c3430a70fe070a7` |
| 27 | `example` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/example--5de9246191b2415b0edccdc3.md) | 404 | `declaration-track:5de9246191b2415b0edccdc36286dcb3b53b5b9ae3bf0305fe2e651064042706` |
| 28 | `def` | [kernelIsoKer](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/kernelisoker--d07c25fb4d9d420cbbc8670f.md) | 413 | `declaration-track:d07c25fb4d9d420cbbc8670f95853501fe5e6242e7df2e0266766be5216e57b7` |
| 29 | `theorem` | [kernelIsoKer_hom_comp_subtype](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/kernelisoker-hom-comp-subtype--e468e32b22bb0bdb037e0de1.md) | 452 | `result-track:e468e32b22bb0bdb037e0de1bf83cc0b6468113356a0bc72e1fbacd5551ab046` |
| 30 | `theorem` | [kernelIsoKer_inv_comp_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/kernelisoker-inv-comp--98aa5b4f6a6f61314a053aee.md) | 458 | `result-track:98aa5b4f6a6f61314a053aeeb9db101935af71f2b358f047f2a443d53c5ed536` |
| 31 | `def` | [kernelIsoKerOver](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantb04d5501d66dfebb2e0da199f5d4c7c2fed8003abba620501e4238d735c500f2.lean/declarations/kernelisokerover--4926dbe3871e996b6c4b7a02.md) | 471 | `declaration-track:4926dbe3871e996b6c4b7a0230d96a18fe380bf00758954b0857ffff4134f0b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
