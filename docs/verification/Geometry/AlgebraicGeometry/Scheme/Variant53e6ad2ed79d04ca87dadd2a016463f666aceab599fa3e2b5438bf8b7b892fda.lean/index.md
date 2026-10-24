# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Scheme.Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb4373799c548d13d1e2a75d2e7d49e75a96d6e3",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb4373799c548d13d1e2a75d2e7d49e75a96d6e3`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.Spec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Category.Ring.Constructions` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Scheme](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/scheme--21793df3f71702cb2d823320.md) | 41 | `declaration-track:21793df3f71702cb2d823320579e0ad0bf1d047604785f13bd89a13152324964` |
| 2 | `def` | [Hom](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/hom--d561fbf352f9eea3f347d194.md) | 53 | `declaration-track:d561fbf352f9eea3f347d1948dda8b365be66787d26c06ccaeceabe8c55f7449` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--d174fff7d89d065929023721.md) | 59 | `declaration-track:d174fff7d89d06592902372138c586de413e97531ebe0ace93c48438f4a33723` |
| 4 | `lemma` | [Hom.continuous](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/hom-continuous--d1196c328720476b26357f54.md) | 64 | `result-track:d1196c328720476b26357f54ee7e713155f5a12f95d89e3150ce2e81e309d5f1` |
| 5 | `abbrev` | [sheaf](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/sheaf--6ee650374f6b7a40f32d087f.md) | 67 | `declaration-track:6ee650374f6b7a40f32d087fee14a45f7de3264c093ae0228bc8ab7febbe140b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--2cf24220e457550b69137594.md) | 71 | `declaration-track:2cf24220e457550b69137594dd9d8acbd2b4ea0ed9be021ea71f967991523b34` |
| 7 | `def` | [forgetToLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/forgettolocallyringedspace--02209d366bafbdd3c6da7076.md) | 76 | `declaration-track:02209d366bafbdd3c6da70763d25f0c13893f50946281d2e4bcc09a7028a6b81` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--a45c8948497e91b6a7946636.md) | 81 | `declaration-track:a45c8948497e91b6a7946636eac0b602385570a56587d9e6943ad7409c956fb8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--7e6dfd35c87c86d53f5bf345.md) | 84 | `declaration-track:7e6dfd35c87c86d53f5bf345ac17e32229e6281670417ae7f13e2917e740a1a7` |
| 10 | `theorem` | [forgetToLocallyRingedSpace_preimage](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/forgettolocallyringedspace-preimage--5bd4b2d93425801f98bd6218.md) | 88 | `result-track:5bd4b2d93425801f98bd62184605ba06bb4dda71cbc3a5debd7d28cccf29e023` |
| 11 | `def` | [forgetToTop](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/forgettotop--c67ad04477aed8b23b278c8b.md) | 95 | `declaration-track:c67ad04477aed8b23b278c8b291829d393f2f08899f600c87d9f01cdcf696789` |
| 12 | `instance` | [hasCoeToTopCat](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/hascoetotopcat--2650ce6417860fe197c1b4d3.md) | 100 | `declaration-track:2650ce6417860fe197c1b4d371d1dbaf8fdb84d97721f13536516e3549d07535` |
| 13 | `theorem` | [id_val_base](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/id-val-base--85756617b65a16b7af8edce8.md) | 109 | `result-track:85756617b65a16b7af8edce8e52c90d58e60e39c26481a42ee479b4496ff782b` |
| 14 | `theorem` | [id_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/id-app--10f35ae35ed0c0f8b43e7605.md) | 114 | `result-track:10f35ae35ed0c0f8b43e7605fc6dd6c3077e3b5d46c8248366dd8bf165d18b3e` |
| 15 | `theorem` | [comp_val](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/comp-val--0989afca26843731561e804d.md) | 121 | `result-track:0989afca26843731561e804d23c77e1d994e2177a8691f3e1b8c54681ddf10b7` |
| 16 | `theorem` | [comp_coeBase](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/comp-coebase--0be99c40767b36e3cd5d6bcb.md) | 126 | `result-track:0be99c40767b36e3cd5d6bcb48b4d2f2cdcf9d7dfe5ac495af5422a58add097e` |
| 17 | `theorem` | [comp_val_base](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/comp-val-base--c227179f9bf7beae4b4d4b42.md) | 133 | `result-track:c227179f9bf7beae4b4d4b42082bf22e2d14884c259a19e86fdd41d7b1c00ca6` |
| 18 | `theorem` | [comp_val_base_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/comp-val-base-apply--4306240feaa0ab63336cf69f.md) | 138 | `result-track:4306240feaa0ab63336cf69f65005d88baa0395120611f072a23316dadb25323` |
| 19 | `theorem` | [comp_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/comp-val-c-app--9f8bc08001e3a26f4945dd8c.md) | 144 | `result-track:9f8bc08001e3a26f4945dd8c554e83fac09ac43120b75d1416976aec85012cc1` |
| 20 | `theorem` | [congr_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/congr-app--aca3295e3f70f04e5aa2f7d2.md) | 149 | `result-track:aca3295e3f70f04e5aa2f7d2e42b3e12c49686c9ed320b9f466d492659e6d2d7` |
| 21 | `theorem` | [app_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/app-eq--ffd9dd913d7311a2e6b457f2.md) | 154 | `result-track:ffd9dd913d7311a2e6b457f243051daa8cfd44b3f1d59bdbad0c72a5de6f97d1` |
| 22 | `lemma` | [presheaf_map_eqToHom_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/presheaf-map-eqtohom-op--c1d0aff173313d5d4a0efa39.md) | 166 | `result-track:c1d0aff173313d5d4a0efa396142ffa405a75f4e65d5da7e04a1b010435e6a51` |
| 23 | `instance` | [is_locallyRingedSpace_iso](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/is-locallyringedspace-iso--bd08b819f4a838a26f3f80d1.md) | 170 | `declaration-track:bd08b819f4a838a26f3f80d15aaac882a9dfd8cf5bd8c9719fdd546634c44409` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--09d395e893d16fbe497524fe.md) | 176 | `declaration-track:09d395e893d16fbe497524fe429a154b61f8a1cf4fec4e98de42a1c3e3f42cf2` |
| 25 | `theorem` | [inv_val_c_app](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/inv-val-c-app--6baba3219655a86b22dc7958.md) | 181 | `result-track:6baba3219655a86b22dc79588a6709a4477d36840993214e1542be523e8e0afa` |
| 26 | `abbrev` | [Hom.appLe](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/hom-apple--144da58256d4c521e1b2e781.md) | 195 | `declaration-track:144da58256d4c521e1b2e7817a2dd72c0fe22ea6e26aacbf81ab9bb9568ddf8e` |
| 27 | `def` | [specObj](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/specobj--bcb000e275d6b1f5b16f0133.md) | 202 | `declaration-track:bcb000e275d6b1f5b16f01334f05068e0031cba8050fd3a2999df50dfbad0dc5` |
| 28 | `theorem` | [specObj_toLocallyRingedSpace](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/specobj-tolocallyringedspace--f861a6419e35a14f3cb9a5e3.md) | 208 | `result-track:f861a6419e35a14f3cb9a5e3f4d9fb769633cbb95b6c0728d84b216f652144dd` |
| 29 | `def` | [specMap](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/specmap--66d2b7fba0dbb974aa222700.md) | 215 | `declaration-track:66d2b7fba0dbb974aa2227002dd988d8117be6ca15bca4cb79681696b5c538de` |
| 30 | `theorem` | [specMap_id](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/specmap-id--3701688eb94d9081323849e0.md) | 220 | `result-track:3701688eb94d9081323849e06de1c236d3b705c975ad6c8a3c2033179d913769` |
| 31 | `theorem` | [specMap_comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/specmap-comp--9cd3c5c00614a0fb0f828b24.md) | 224 | `result-track:9cd3c5c00614a0fb0f828b24ff87b1b9cb2eaa3abfd1d41a75db709dcc8c739a` |
| 32 | `def` | [Spec](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/spec--c49ad861d97bda4f8d8df137.md) | 235 | `declaration-track:c49ad861d97bda4f8d8df13717814cb5bc7717734da18ee054a000e4c62dfe32` |
| 33 | `def` | [empty.](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/empty--d6fd250482c45d70725f7a15.md) | 245 | `declaration-track:d6fd250482c45d70725f7a1536232d8ca9f78c94e484b7cde490ebb727e75688` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--f79b52ccd6fdb0c94d3c5698.md) | 253 | `declaration-track:f79b52ccd6fdb0c94d3c56980e89b7b945740b0de362f3c183f938317249c10f` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/instance--67f14014179d6251c7302f6b.md) | 256 | `declaration-track:67f14014179d6251c7302f6bd70414d9d08e8a19e565f7cbd1503cf3684c6105` |
| 36 | `def` | [Γ](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/anonymous--64c103d16f9b8ee878bb808b.md) | 261 | `declaration-track:64c103d16f9b8ee878bb808bf04d7414cf4d7b56151e290933bc8aea0bf2bb0c` |
| 37 | `theorem` | [Γ_def](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/def--4bee4137fa7edd098b10f8f5.md) | 265 | `result-track:4bee4137fa7edd098b10f8f5b1e72c2ab8b769e55b22aa825d0244fcb0c347b0` |
| 38 | `theorem` | [Γ_obj](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/obj--262b7a366ea1fd5e7512fb07.md) | 270 | `result-track:262b7a366ea1fd5e7512fb0738e0bee775f5eb9362822de834a3b8055263c5ac` |
| 39 | `theorem` | [Γ_obj_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/obj-op--1847ea134da8c582559d7c6c.md) | 274 | `result-track:1847ea134da8c582559d7c6c5ec68bf5e810d6cc432923729316e7c406f61423` |
| 40 | `theorem` | [Γ_map](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/map--5c8da327f855ec2a11f3b7d2.md) | 279 | `result-track:5c8da327f855ec2a11f3b7d2b94ce7aaab46188884e9ee4d41896b782d853268` |
| 41 | `theorem` | [Γ_map_op](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/map-op--851dada7ae1e8c9987f72cba.md) | 283 | `result-track:851dada7ae1e8c9987f72cba23f19009882086ecce0bbecb9b026e0b869dabb6` |
| 42 | `def` | [basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen--76092f5ec07e6daa1ebf9877.md) | 292 | `declaration-track:76092f5ec07e6daa1ebf98770544d739dce1d03143b426558f3876f67712b527` |
| 43 | `theorem` | [mem_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/mem-basicopen--b6426b8ff57dd063bbe51d01.md) | 297 | `result-track:b6426b8ff57dd063bbe51d01ea90958ad8771c02ffa6489cb7e36a966ab3c7c6` |
| 44 | `theorem` | [mem_basicOpen_top'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/mem-basicopen-top--9d395e30833e28fdcb592b83.md) | 302 | `result-track:9d395e30833e28fdcb592b837a94305542697f4d393cdf6d283ad95f86c15fcd` |
| 45 | `theorem` | [mem_basicOpen_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/mem-basicopen-top--f4cdddf02c060a096f340664.md) | 311 | `result-track:f4cdddf02c060a096f340664a804e66f849464bd474a8227b360b5862227002f` |
| 46 | `theorem` | [basicOpen_res](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-res--87c6100189e00189f30f63ea.md) | 317 | `result-track:87c6100189e00189f30f63ea90951d27ca46b1693cea8f5dcfeb079a17969745` |
| 47 | `theorem` | [basicOpen_res_eq](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-res-eq--da4c096040c9a75d842dad59.md) | 323 | `result-track:da4c096040c9a75d842dad59f78b44fdec9bd32706b41beae106abdd20c36594` |
| 48 | `theorem` | [basicOpen_le](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-le--dc6481622d4194c4ed9f18f2.md) | 329 | `result-track:dc6481622d4194c4ed9f18f2bce9923d1f3952b0ce42350d0c601309022b695b` |
| 49 | `theorem` | [preimage_basicOpen](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/preimage-basicopen--18165b096a220433b0aa0a72.md) | 334 | `result-track:18165b096a220433b0aa0a7236021e8e1a9e5e7ec99bbdab832ad98eeef09f12` |
| 50 | `theorem` | [basicOpen_zero](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-zero--ac475307f759c5f4bad32267.md) | 342 | `result-track:ac475307f759c5f4bad3226725ef5ba0949efd75c0fa52eb5da298a286938343` |
| 51 | `theorem` | [basicOpen_mul](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-mul--0787321f7c461f5e9da68f9f.md) | 347 | `result-track:0787321f7c461f5e9da68f9fd66e5f8ecf1602dae51833bd6023e9e718980426` |
| 52 | `theorem` | [basicOpen_of_isUnit](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-of-isunit--ac60f6c856a5f93e93a9d9a6.md) | 351 | `result-track:ac60f6c856a5f93e93a9d9a652cdd61f76b99ebb710ebdc8e646fcede98f2990` |
| 53 | `theorem` | [basicOpen_eq_of_affine](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-eq-of-affine--9e007c88b5497526209722d6.md) | 359 | `result-track:9e007c88b5497526209722d6e89adc9e3b72c94eea2e331a02f5e1be9287cfa7` |
| 54 | `theorem` | [basicOpen_eq_of_affine'](../../../../../mathematics/Geometry/AlgebraicGeometry/Scheme/Variant53e6ad2ed79d04ca87dadd2a016463f666aceab599fa3e2b5438bf8b7b892fda.lean/declarations/basicopen-eq-of-affine--be88eab1148d9e9bcbc08a7e.md) | 374 | `result-track:be88eab1148d9e9bcbc08a7e9bbd551b379d42f8e74504b18fe57bba38f7fea8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
