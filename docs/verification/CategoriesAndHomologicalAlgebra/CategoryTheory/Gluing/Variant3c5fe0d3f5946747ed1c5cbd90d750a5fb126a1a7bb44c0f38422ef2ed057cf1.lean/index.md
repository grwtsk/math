# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Gluing.Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b22faf6e74743307c51f730cca92f28fd647146",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b22faf6e74743307c51f730cca92f28fd647146`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/gluedata--6ed650b4df1dd064b3a671ac.md) | 106 | `declaration-track:6ed650b4df1dd064b3a671acaf8e859f85177e900020f30da78af4a23af742cc` |
| 2 | `abbrev` | [toTopGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/totopgluedata--baa0a8f5581b59947e2cb933.md) | 131 | `declaration-track:baa0a8f5581b59947e2cb9334da82f581a0039012ccb9b144f61053f40cc6c17` |
| 3 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopenembedding--1401907c20464b922a1afc23.md) | 136 | `result-track:1401907c20464b922a1afc23e4d8d478771f8dea9c3a4cab75709e7d475ad19c` |
| 4 | `theorem` | [pullback_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/pullback-base--2cf344ee7deafaf752297034.md) | 143 | `result-track:2cf344ee7deafaf752297034d6bd04c30bc626c6e1b6f26c440bedd7144ab736` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/f-invapp-f-app--32545cd7f9cbe7471f7f6cd7.md) | 156 | `result-track:32545cd7f9cbe7471f7f6cd7737fb610e63c10cb9b07a1dd1df88ec275c8adfd` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/snd-invapp-t-app--8fc55635ec1e35ed2c1fde7d.md) | 184 | `result-track:8fc55635ec1e35ed2c1fde7d6ef4d4ca42e76d5b680de9847c49e7df1afcb16b` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/snd-invapp-t-app--1c24f6187d45dce375e15bc7.md) | 235 | `result-track:1c24f6187d45dce375e15bc7af8048608d2cc5957a688f4db0705b3c07b6e0d9` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/image-preimage-eq--36c393e8d278a6511e1e2575.md) | 249 | `result-track:36c393e8d278a6511e1e2575a35a833e847c04082c9fbefdc865646764d3a20b` |
| 9 | `def` | [opensImagePreimageMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/opensimagepreimagemap--9a502e96b3c85f0365465869.md) | 272 | `declaration-track:9a502e96b3c85f03654658691c0d47b42ecd4b670f550f30ae32eb68974df77d` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/opensimagepreimagemap-app--3775ff07955c00d417e8acfa.md) | 282 | `result-track:3775ff07955c00d417e8acfa014c2909742135186e3e492d745c43df45bb07d2` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/opensimagepreimagemap-app--7a218e62182fd2f013e49cb6.md) | 300 | `result-track:7a218e62182fd2f013e49cb6f0d686c46e9c2af17a87aebfd9c1c4a846aa09fb` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/opensimagepreimagemap-app-assoc--35e6f471bce4af0f97e6d9c7.md) | 308 | `result-track:35e6f471bce4af0f97e6d9c7f144d4e4ced2b4e53e7f5c7bbbedcd222833b244` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/diagramoveropen--5e7a6d83d9c0ac5934479e0e.md) | 319 | `declaration-track:5e7a6d83d9c0ac5934479e0e6098e2dd8e7303720fc08ddbe403a8971bf1c2e1` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/diagramoveropen--a586299d4068d0904c554ef9.md) | 325 | `declaration-track:a586299d4068d0904c554ef97b2c476bf9bcb26589e9178c2c0da69ce7d926a7` |
| 15 | `def` | [ιInvAppπApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp-app--75d0a4cb66beb8766c677675.md) | 331 | `declaration-track:75d0a4cb66beb8766c67767518b4421939c02573ad7cb9f10fdc6f1953f28780` |
| 16 | `def` | [ιInvApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp--bd40dbac1223509cc611187d.md) | 349 | `declaration-track:bd40dbac1223509cc611187d61b460f7f7eda3f44cf6668c01676cfe03968fa1` |
| 17 | `theorem` | [ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp--181be6566caf1076e98f9639.md) | 402 | `result-track:181be6566caf1076e98f9639b34809f9b393682e29694e8e8201ea3e889948a6` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp-eqmap--5a19f136ac2c6bcadd85d7cc.md) | 434 | `declaration-track:5a19f136ac2c6bcadd85d7cc14356a24ec8710c2236f41a840d3f50ccaae7db7` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp--76de229406eca6dbcaa49204.md) | 439 | `result-track:76de229406eca6dbcaa49204c67b56a8540812a6354a8f07de0251199779e4e3` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/invapp-eq-id--579729c21f05185c961fe0de.md) | 474 | `result-track:579729c21f05185c961fe0defc1ebf79719b9ed41ae0d7fc4aa523502293b1f0` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/componentwise-diagram-isiso--02d9d355abd16fb2fb7cd243.md) | 490 | `declaration-track:02d9d355abd16fb2fb7cd2439216e6303f4776bb8619d0385f366f1898e843fc` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopenimmersion--0b6055e3020a0d4de9efdaa1.md) | 499 | `declaration-track:0b6055e3020a0d4de9efdaa13f1583e229408fd5150efb7b8cdead2b891517e2` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/vpullbackconeislimit--109de73eb4a53c7dcd9938fd.md) | 514 | `declaration-track:109de73eb4a53c7dcd9938fd27c940ad79fe0a9a15da7c2d1048647e719fab32` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/jointly-surjective--5c51306fdac1ada0025f4cd7.md) | 541 | `result-track:5c51306fdac1ada0025f4cd78b373d56c5d111240e4123136e6854f48952a933` |
| 25 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/gluedata--fff7df34ea004ae1e1ed5a29.md) | 569 | `declaration-track:fff7df34ea004ae1e1ed5a295def01829eefe4e44f41973459a8ba8cae6ab997` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/topresheafedspacegluedata--6c301bd8cfacf4779b4b2a7a.md) | 582 | `declaration-track:6c301bd8cfacf4779b4b2a7a364bb063093085889b6f4b404a76a55f12ccd169` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopresheafedspace--ed3ee705c668ee33a0ea975b.md) | 589 | `declaration-track:ed3ee705c668ee33a0ea975b7ea124ae80dd9de958a955583426ba0cb1927e06` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopresheafedspace-inv--991b80895c3057c4338fc2a5.md) | 593 | `result-track:991b80895c3057c4338fc2a549069dfce726914232af2ffccb6636f3cd8c7d8f` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopenimmersion--bca25967abfa4dfe803f378d.md) | 598 | `declaration-track:bca25967abfa4dfe803f378dd06afb7365025ea4798d11e7b851b1179723d559` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/jointly-surjective--6e665b273688dcf98b33a0b6.md) | 604 | `result-track:6e665b273688dcf98b33a0b6ef31e5f90aed175c9e9e65b17553edd94bf2a7fe` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/vpullbackconeislimit--091b27c64ba943ed384dd596.md) | 616 | `declaration-track:091b27c64ba943ed384dd59659ab1b73da8c44aeab39a01a8de682fe5e04d693` |
| 32 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/gluedata--5def6568168275d155fa6f11.md) | 645 | `declaration-track:5def6568168275d155fa6f1166a51bdd0a8f616dc99fcd178a4b974bb4961604` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/tosheafedspacegluedata--e01805f68536eb853da3d1d9.md) | 657 | `declaration-track:e01805f68536eb853da3d1d94639f02fad3d7a5a067448ad158bbef7653411cd` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isosheafedspace--63ba5a0fb127bf8fcdfdd77b.md) | 662 | `declaration-track:63ba5a0fb127bf8fcdfdd77b1784fde752895981847aa24dbf04239384e2cb49` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isosheafedspace-inv--6907477c0d69158ab95bc56a.md) | 666 | `result-track:6907477c0d69158ab95bc56af78c214b9b9e967bd43626e3e174413305416656` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/isopenimmersion--b37a868ba777a5b56e7f59f3.md) | 671 | `declaration-track:b37a868ba777a5b56e7f59f3baa01e0bc23c8e9758d43331bbc48d5eb2385ecd` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/instance--3fa317e45727cfe99e0b80b2.md) | 678 | `declaration-track:3fa317e45727cfe99e0b80b248cd74bbe4c9deafc929c1c5b18c5d5a9b5e6c28` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/jointly-surjective--24bceab73be123b036b6d916.md) | 681 | `result-track:24bceab73be123b036b6d916d9cc446dc88dd6eec065e3ee2391a2f53efda65a` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant3c5fe0d3f5946747ed1c5cbd90d750a5fb126a1a7bb44c0f38422ef2ed057cf1.lean/declarations/vpullbackconeislimit--d9b320ecfd3b9b8dd87eb426.md) | 694 | `declaration-track:d9b320ecfd3b9b8dd87eb42695f5681f220df984963c6304ba600cb07b9ca2c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
