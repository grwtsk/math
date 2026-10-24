# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.HasColimits.Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "42fed88610f647a675a52b5f6b593a40d57270d9",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `42fed88610f647a675a52b5f6b593a40d57270d9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.RingedSpace.PresheafedSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [map_id_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/map-id-c-app--8702a5694994674eaa5be9d1.md) | 57 | `result-track:8702a5694994674eaa5be9d137ca1ce03e4bd780e7d7f342897aeaf18465e530` |
| 2 | `theorem` | [map_comp_c_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/map-comp-c-app--c0d0529bd8d601fc3d41e650.md) | 64 | `result-track:c0d0529bd8d601fc3d41e6501eadedcbf0c7fed9b157368057c10f18492c21ba` |
| 3 | `def` | [componentwiseDiagram](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/componentwisediagram--1ec9a52539caa9dd3309d6ab.md) | 78 | `declaration-track:1ec9a52539caa9dd3309d6ab3546d024cc1c6eb43cf5b65a8bfd3a5ec311325e` |
| 4 | `def` | [pushforwardDiagramToColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/pushforwarddiagramtocolimit--c5264da42f4ba7ba6d2e8352.md) | 95 | `declaration-track:c5264da42f4ba7ba6d2e835293adce4e30e26b5de67ae85f9bafd1405fff8dcf` |
| 5 | `def` | [colimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimit--719bb3cd1e5f8480b87da284.md) | 131 | `declaration-track:719bb3cd1e5f8480b87da284c88b464c0a5e5d20fb6411608acc2c3e696018f6` |
| 6 | `theorem` | [colimit_carrier](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimit-carrier--86d84d2534a1c8e3b1239dc6.md) | 136 | `result-track:86d84d2534a1c8e3b1239dc62de127215dd52a9a35750e171fd126da02a79551` |
| 7 | `theorem` | [colimit_presheaf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimit-presheaf--3c17c3a5a53ce8e5fef05e35.md) | 141 | `result-track:3c17c3a5a53ce8e5fef05e3595f46e918b1814ebe6f3c6e655efe0d89f881531` |
| 8 | `def` | [colimitCocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimitcocone--cf3d43265fdeaedaa929fe67.md) | 148 | `declaration-track:cf3d43265fdeaedaa929fe67e4b61f6f544aadca30ce3f9e52c0d8b0ffa20bb6` |
| 9 | `def` | [descCApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/desccapp--94f8892826d28fb6925b8b2a.md) | 173 | `declaration-track:94f8892826d28fb6925b8b2a64819b7926fe7fee221d37851d59621f9ba58e77` |
| 10 | `theorem` | [desc_c_naturality](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/desc-c-naturality--2cc0577fd1796e97fdc6e633.md) | 202 | `result-track:2cc0577fd1796e97fdc6e633cb481aabd800c89d27840c13ed1d393df8a2ec67` |
| 11 | `def` | [desc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/desc--837b2671b151fb940550b2f0.md) | 217 | `declaration-track:837b2671b151fb940550b2f08761116539b95725e0e9ef018e13f7bdb679b01e` |
| 12 | `theorem` | [desc_fac](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/desc-fac--77c0616d71ce8ab0f8b32332.md) | 223 | `result-track:77c0616d71ce8ab0f8b32332bc192566f1317f535e8a6fe875963bca39f6b5f6` |
| 13 | `def` | [colimitCoconeIsColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimitcoconeiscolimit--d9ca0ac72f08f07c96e97238.md) | 241 | `declaration-track:d9ca0ac72f08f07c96e97238db022b804b765ad9881a8860cd8bcad84cc65605` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/instance--d23713cbea3d5f4b2dc7ba2b.md) | 264 | `declaration-track:d23713cbea3d5f4b2dc7ba2bd8e1fdfcb2e783ca3867fdf3eb1c9c5def464920` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/instance--af048a337a157628385afb1b.md) | 267 | `declaration-track:af048a337a157628385afb1b7aae55acc40b76967aab39e74655e8253e91ef11` |
| 16 | `instance` | [instHasColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/insthascolimits--dd758a9173d782d4462dbc70.md) | 277 | `declaration-track:dd758a9173d782d4462dbc70cf8ab6470e4e8597faa02437e250a149eee53db2` |
| 17 | `instance` | [forget_preservesColimits](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/forget-preservescolimits--c2f2349899815db2d229beba.md) | 283 | `declaration-track:c2f2349899815db2d229bebad1657e79309d97a1e054d0b6052209acfa030092` |
| 18 | `def` | [colimitPresheafObjIsoComponentwiseLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimitpresheafobjisocomponentwiselimit--9d9fb5c14009e4ca4bcb715f.md) | 293 | `declaration-track:9d9fb5c14009e4ca4bcb715f94f7b064055ec1ce65f10f4557485b76e3f2270a` |
| 19 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_inv_ι_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimitpresheafobjisocomponentwiselimit-inv-app--425df44041d77ccb02133b2a.md) | 320 | `result-track:425df44041d77ccb02133b2a7e52ebb1fdfb6afd3f09f5c0a8e22830322c1502` |
| 20 | `theorem` | [colimitPresheafObjIsoComponentwiseLimit_hom_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant83c90ed90c37e4367187cb733449ac1c2532fed00bb1dc12807bd06af15b4472.lean/declarations/colimitpresheafobjisocomponentwiselimit-hom--af7234dff8d4b761df547648.md) | 341 | `result-track:af7234dff8d4b761df547648860e1822517d2451aa889283aca5a87512211ef2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
