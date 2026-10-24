# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Kernels.Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d96074629051a6dc2a35edb3943914704a86e70",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d96074629051a6dc2a35edb3943914704a86e70`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Shapes.Kernels` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.Zero` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map-condition--402eb105261095e4a42a4e7a.md) | 40 | `result-track:402eb105261095e4a42a4e7a2cc83781d5c7954651fae75f517b6b2bac76226a` |
| 2 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map--36a191108940e60f9d1bd24a.md) | 45 | `declaration-track:36a191108940e60f9d1bd24a8b9741e4cf1644a3ce775cbcec547ddb310c1bff` |
| 3 | `lemma` | [map_ι](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map--1b94e543a58300089598f875.md) | 49 | `result-track:1b94e543a58300089598f87555a63b718937620a89bdb07dec4a90c38f1206d2` |
| 4 | `def` | [isLimitMapConeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/islimitmapconeequiv--c17b1b6b9c40e4b0a2350048.md) | 53 | `declaration-track:c17b1b6b9c40e4b0a2350048d31689da2a10fa6762ef792c71db9ca9c93a9fd9` |
| 5 | `def` | [mapIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/mapislimit--5c8b3576a87c9d08c4dd0e6d.md) | 61 | `declaration-track:5c8b3576a87c9d08c4dd0e6d1125f4d4bf16168f703bb5ff3c9af489af6f70e5` |
| 6 | `def` | [isLimitMapConeForkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/islimitmapconeforkequiv--a19cc47ceafb2b78c87b7697.md) | 80 | `declaration-track:a19cc47ceafb2b78c87b7697e0d1506eb696ec2adf267fd295a30a2caba7ea21` |
| 7 | `def` | [isLimitForkMapOfIsLimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/islimitforkmapofislimit--5d7fe9030eff459ac202998e.md) | 93 | `declaration-track:5d7fe9030eff459ac202998eb076a89d257ed5bc9ce39292c1b112991c377712` |
| 8 | `def` | [isLimitOfHasKernelOfPreservesLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/islimitofhaskernelofpreserveslimit--4cb9829a656ca3711262a436.md) | 106 | `declaration-track:4cb9829a656ca3711262a43682de2475fbc3b1efd99148bc08b9099792d7278a` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/instance--fb8131deb38b63aed5cf1ba0.md) | 114 | `declaration-track:fb8131deb38b63aed5cf1ba093d65775d9901f7ce41be36bd62a3bbf70cac92f` |
| 10 | `def` | [PreservesKernel.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserveskernel-ofisocomparison--4833ea4ec70b47006f8f7658.md) | 122 | `declaration-track:4833ea4ec70b47006f8f765845c21ab235baaf71a419a3894d666760e09163d4` |
| 11 | `def` | [PreservesKernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserveskernel-iso--ba8bbeb14a084cedd82130af.md) | 134 | `declaration-track:ba8bbeb14a084cedd82130af3c9885581811d8a3209f1f1eaa7958821d0c4d32` |
| 12 | `theorem` | [PreservesKernel.iso_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserveskernel-iso-hom--a1002457d5ce381e92632d00.md) | 139 | `result-track:a1002457d5ce381e92632d00a6f6e96b55df952fa147f743e56d0e40ec2a199a` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/instance--6e6d2f9e8e922f36d8229a0c.md) | 144 | `declaration-track:6e6d2f9e8e922f36d8229a0ce8cdd7078364f69f90df0626603ad1a16e0526e6` |
| 14 | `theorem` | [kernel_map_comp_preserves_kernel_iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/kernel-map-comp-preserves-kernel-iso-inv--0510198808b5f768c27b5e86.md) | 149 | `result-track:0510198808b5f768c27b5e86874e60c90e1b4872fa9203075a57a444e3ae9ebf` |
| 15 | `lemma` | [map_condition](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map-condition--45b3a784c71517c56e9e5ae7.md) | 167 | `result-track:45b3a784c71517c56e9e5ae7b3ee88b483e83443908082673fec1bf124d82a28` |
| 16 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map--2406149755c1faa071f64a68.md) | 172 | `declaration-track:2406149755c1faa071f64a682a4c155b4f8acc1287d196fcb99519981a3a5f89` |
| 17 | `lemma` | [map_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/map--4ada1c2d35edd298caec4793.md) | 176 | `result-track:4ada1c2d35edd298caec4793bb396abcc9a7eef7af1fb122ca407cc44b33702f` |
| 18 | `def` | [isColimitMapCoconeEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/iscolimitmapcoconeequiv--130b3ca788e89eb08a49cf65.md) | 180 | `declaration-track:130b3ca788e89eb08a49cf6597e735fa6571c4cddace55e6487d434913b99347` |
| 19 | `def` | [mapIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/mapiscolimit--937a2a8a8187a674947d3ce1.md) | 188 | `declaration-track:937a2a8a8187a674947d3ce10825250a78eb3cb3093d8e7832ef42281e1d05ba` |
| 20 | `def` | [isColimitMapCoconeCoforkEquiv'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/iscolimitmapcoconecoforkequiv--a901926a1a9599eb81b6746a.md) | 207 | `declaration-track:a901926a1a9599eb81b6746a0fb6a30839738994e7361a7f23d12baf6af5bdd9` |
| 21 | `def` | [isColimitCoforkMapOfIsColimit'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/iscolimitcoforkmapofiscolimit--0d96c9e275885a930cdce182.md) | 220 | `declaration-track:0d96c9e275885a930cdce1822fc022d9417d1e340d9448bae295754a939141a3` |
| 22 | `def` | [isColimitOfHasCokernelOfPreservesColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/iscolimitofhascokernelofpreservescolimit--237ed677dba2cc9f6caf0227.md) | 234 | `declaration-track:237ed677dba2cc9f6caf02275f3219c465431aa2651d6b1dbfedd886d5efc709` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/instance--05d952c4ce54c8c27f9f4eec.md) | 242 | `declaration-track:05d952c4ce54c8c27f9f4eecd9eedf92f395189f97ba25d6a03b1918857f84e1` |
| 24 | `def` | [PreservesCokernel.ofIsoComparison](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preservescokernel-ofisocomparison--831e287c85387f74e2a38a15.md) | 250 | `declaration-track:831e287c85387f74e2a38a15c48d42af18ee5e496fc874fc434b5c1377e025f6` |
| 25 | `def` | [PreservesCokernel.iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preservescokernel-iso--4c3e3d994b144c30eefa46ee.md) | 262 | `declaration-track:4c3e3d994b144c30eefa46ee1ac79d162a8995e95cf1ac51e70a059e25bb0005` |
| 26 | `theorem` | [PreservesCokernel.iso_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preservescokernel-iso-inv--ade155bfa1b7f6800f19d185.md) | 268 | `result-track:ade155bfa1b7f6800f19d185aef47900ea87a1dde7aeb178545bfbe43fd9ca1c` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/instance--d76ea1bf3e6058be3dacc6a9.md) | 273 | `declaration-track:d76ea1bf3e6058be3dacc6a970cf601c0fb31cfe9382a5a6290bba3f7d9a097b` |
| 28 | `theorem` | [preserves_cokernel_iso_comp_cokernel_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserves-cokernel-iso-comp-cokernel-map--41085ad1996e3fb19209af65.md) | 278 | `result-track:41085ad1996e3fb19209af65b6738b600de9b2c4d6dfe94bc3dd36186b342d3d` |
| 29 | `instance` | [preservesKernelZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserveskernelzero--7408fdb4fbba2196409a97a8.md) | 293 | `declaration-track:7408fdb4fbba2196409a97a86aae40eab0f7fa18cb3d1b0b1c7ae93cc2f865ea` |
| 30 | `instance` | [preservesCokernelZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preservescokernelzero--431be453a1b609a49275b07f.md) | 301 | `declaration-track:431be453a1b609a49275b07f8fb218655b5aa6a7a5a55aa85a19469475a5c31a` |
| 31 | `def` | [preservesKernelZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preserveskernelzero--8871b8291f5fbe4dafbd8507.md) | 312 | `declaration-track:8871b8291f5fbe4dafbd85079f5826c97ef2a5809d221bfcaaca8811e05856f6` |
| 32 | `def` | [preservesCokernelZero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Kernels/Variant68d07ce7976077a07ddd3db657a6784222a2c4f3e70c565d1e33088459f65db2.lean/declarations/preservescokernelzero--670b4f4d7394de79b8d6004f.md) | 318 | `declaration-track:670b4f4d7394de79b8d6004f961c3ec286b100597546f36f291b759a8b4962c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
