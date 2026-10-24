# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Gluing.Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3722a6572b6365a483023c3a621a58fa54d013c7",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3722a6572b6365a483023c3a621a58fa54d013c7`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean.json)

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
| 1 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/gluedata--a62a1c74964047843e211adb.md) | 98 | `declaration-track:a62a1c74964047843e211adb030eb50c989ffc81be8fdbbd4f1073a92e4b9830` |
| 2 | `abbrev` | [toTopGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/totopgluedata--d79cb92bcdcbabc866b025bc.md) | 123 | `declaration-track:d79cb92bcdcbabc866b025bc1c92de8679dcb470b78a24c9822eca6d49192ccb` |
| 3 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopenembedding--0afa12786cc7945fc76547ed.md) | 128 | `result-track:0afa12786cc7945fc76547ede457d8f7a472efadb5448bcfa78f0849f0145bda` |
| 4 | `theorem` | [pullback_base](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/pullback-base--acc109c8a9813a34d6daa419.md) | 135 | `result-track:acc109c8a9813a34d6daa4191230ce3db269452af8cc5eb43584a0bd786ace19` |
| 5 | `theorem` | [f_invApp_f_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/f-invapp-f-app--8fa030cede125a4eecc329a0.md) | 148 | `result-track:8fa030cede125a4eecc329a02162ab6707a01aff1dd81dfba67341d78dd1e696` |
| 6 | `theorem` | [snd_invApp_t_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/snd-invapp-t-app--e2569c830b17d635ca5d28b1.md) | 176 | `result-track:e2569c830b17d635ca5d28b10500464df07a8efa9cfb3863973f6075cd0c59c4` |
| 7 | `theorem` | [snd_invApp_t_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/snd-invapp-t-app--9469f78d61b82039623adce5.md) | 227 | `result-track:9469f78d61b82039623adce50d367b1b4b932088c5fe5d24b7ac4d33058107c6` |
| 8 | `theorem` | [ι_image_preimage_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/image-preimage-eq--05c62b6774fe693e85dc4c6f.md) | 241 | `result-track:05c62b6774fe693e85dc4c6f7f2fd1681088f8cc84b10a0dc9a0328cb152fbf9` |
| 9 | `def` | [opensImagePreimageMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/opensimagepreimagemap--2c278ac3b2dd43b4455ed490.md) | 264 | `declaration-track:2c278ac3b2dd43b4455ed490491b056c8e49120e5f53799d32e6b39d8a83e6c9` |
| 10 | `theorem` | [opensImagePreimageMap_app'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/opensimagepreimagemap-app--23a25372a1db016b4a5434d2.md) | 274 | `result-track:23a25372a1db016b4a5434d20559e81ee95f74f419c9ba6da0ca503da5a46fa2` |
| 11 | `theorem` | [opensImagePreimageMap_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/opensimagepreimagemap-app--58b6df4ec0216fa90b3e8861.md) | 292 | `result-track:58b6df4ec0216fa90b3e8861ce98429d92356f2f792d9b626edf762cb35b10e8` |
| 12 | `theorem` | [opensImagePreimageMap_app_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/opensimagepreimagemap-app-assoc--68d11995fceb76124e94ba18.md) | 300 | `result-track:68d11995fceb76124e94ba18100f83dea97ff3ec9a2256291720ec78f7b7c312` |
| 13 | `abbrev` | [diagramOverOpen](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/diagramoveropen--98490350e5ff75991a34e8af.md) | 311 | `declaration-track:98490350e5ff75991a34e8af5481b88ede03e26759465204edb3908453bd1e00` |
| 14 | `abbrev` | [diagramOverOpenπ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/diagramoveropen--b2616b915146cbf6a036913f.md) | 317 | `declaration-track:b2616b915146cbf6a036913f875f564da5f4ea41d06bd4434a475144d5bcbfd4` |
| 15 | `def` | [ιInvAppπApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp-app--83087bfba25dae215c61facd.md) | 323 | `declaration-track:83087bfba25dae215c61facdff8b1da3b999f59214d13d50391a6705c5ec905c` |
| 16 | `def` | [ιInvApp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp--306d04782fa98368fd603356.md) | 341 | `declaration-track:306d04782fa98368fd60335625e4c4a581de48b51b6b1e72f9bdd1d3d51c126b` |
| 17 | `theorem` | [ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp--0b546cdacac899bfd7958fdc.md) | 394 | `result-track:0b546cdacac899bfd7958fdca424eb8c1e842c9f23ebe8f2fe39be5401c4d6c0` |
| 18 | `abbrev` | [ιInvAppπEqMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp-eqmap--90a8657de1c80e646cc7287b.md) | 426 | `declaration-track:90a8657de1c80e646cc7287b590edf9ecdedc14cb0af285a4f2fdd407e3f4c16` |
| 19 | `theorem` | [π_ιInvApp_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp--f0cb0a10ab0f4862223879a3.md) | 431 | `result-track:f0cb0a10ab0f4862223879a3413a08c7cffddd5c39feeff282911bb59af8f596` |
| 20 | `theorem` | [π_ιInvApp_eq_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/invapp-eq-id--88f4893cbb56af787f271b97.md) | 466 | `result-track:88f4893cbb56af787f271b9713b7b2e64d8a4c73e90fe84821aaa97ce77ad7e5` |
| 21 | `instance` | [componentwise_diagram_π_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/componentwise-diagram-isiso--98886832fb64041ae3e657f3.md) | 482 | `declaration-track:98886832fb64041ae3e657f3da7b463c44a828094ca6d91c15683b61952ba9a7` |
| 22 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopenimmersion--7f878f11d5b1721171fbc7ba.md) | 491 | `declaration-track:7f878f11d5b1721171fbc7bace5db866caba758a99098f1d43165c84bd33b8c9` |
| 23 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/vpullbackconeislimit--614541dd261368fabab4a5b4.md) | 506 | `declaration-track:614541dd261368fabab4a5b41e4d12d69752bc18ea4b56ed2d9273c9f91cbea7` |
| 24 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/jointly-surjective--7e469a9ce89fe499d5321558.md) | 533 | `result-track:7e469a9ce89fe499d532155838fb19a56d567dece567992e987f2d209963217f` |
| 25 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/gluedata--7da4057ae039645378df3044.md) | 561 | `declaration-track:7da4057ae039645378df3044dd1f9221b9e5225d5eec1ef54ce94b8ed67d025c` |
| 26 | `abbrev` | [toPresheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/topresheafedspacegluedata--a7d445d666bfa33dc471b6d7.md) | 574 | `declaration-track:a7d445d666bfa33dc471b6d7e5dbdaabc335f52764b25b3e9a36790358eb98e4` |
| 27 | `abbrev` | [isoPresheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopresheafedspace--0b10e79b629cc4721d9e6758.md) | 581 | `declaration-track:0b10e79b629cc4721d9e67581a9bf6a4614b061be7a2ebc24a29c208a2272261` |
| 28 | `theorem` | [ι_isoPresheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopresheafedspace-inv--a63ec0b68a6831ce9b40fa8f.md) | 585 | `result-track:a63ec0b68a6831ce9b40fa8fba5b2d8deaade429570552fd059bdc506fc7a624` |
| 29 | `instance` | [ιIsOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopenimmersion--01c4b2a8ebd8b60ee81e51f8.md) | 590 | `declaration-track:01c4b2a8ebd8b60ee81e51f8008efbe79e7c8d816384dc685d36a249c6590876` |
| 30 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/jointly-surjective--cd04b2db6dabaab1dd20877b.md) | 596 | `result-track:cd04b2db6dabaab1dd20877bed58b60654653e0b28cdc4ed417dc65a6caaa730` |
| 31 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/vpullbackconeislimit--b6ad276c35f9452f1619c5b3.md) | 608 | `declaration-track:b6ad276c35f9452f1619c5b38645c695f07686851924c7eb85b573ac66d2cf7e` |
| 32 | `structure` | [GlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/gluedata--f5748d9047af33fa32071a5f.md) | 637 | `declaration-track:f5748d9047af33fa32071a5fe2cc30ed42fd6cfbf57d566274dbe10676b07064` |
| 33 | `abbrev` | [toSheafedSpaceGlueData](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/tosheafedspacegluedata--a4fb82461700a3ffb354f20a.md) | 649 | `declaration-track:a4fb82461700a3ffb354f20a901048416875eca8fcd40546a241dd3f752888bd` |
| 34 | `abbrev` | [isoSheafedSpace](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isosheafedspace--23f24e964a773bcaa3f00d77.md) | 654 | `declaration-track:23f24e964a773bcaa3f00d77f2632e5bce6f56c056e4d8db0c9c356b0416d7cf` |
| 35 | `theorem` | [ι_isoSheafedSpace_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isosheafedspace-inv--40b2ffbf8e735e162dbb4307.md) | 658 | `result-track:40b2ffbf8e735e162dbb4307b6b992c8857e8339868904c88765fcc82b4945e7` |
| 36 | `instance` | [ι_isOpenImmersion](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/isopenimmersion--627557e5eda84d7c8f9b655e.md) | 663 | `declaration-track:627557e5eda84d7c8f9b655ed6ca41623668262935485b35351dfae7f857da5e` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/instance--aaa58d58924164dd109b4b22.md) | 670 | `declaration-track:aaa58d58924164dd109b4b2235fc21904aeb87b54fed95b66490700cd7e175f3` |
| 38 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/jointly-surjective--e5c4ca68acf5a3b3c7c5b3fc.md) | 673 | `result-track:e5c4ca68acf5a3b3c7c5b3fc97a6a7935d444eaf9f0dfe3afd878ed2ed2835e1` |
| 39 | `def` | [vPullbackConeIsLimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Gluing/Variant1e5562749f38090c05d16adccae1bd8d83f43684198ad2b32ecf89ab5f156483.lean/declarations/vpullbackconeislimit--2e62b71b59e7ab83b69f99c2.md) | 686 | `declaration-track:2e62b71b59e7ab83b69f99c207895491ce35712a9b2f1f7cbf8c61d3e22338f6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
