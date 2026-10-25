# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.Definability.Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d3f5e88c02ea0f3c8ca0a96b2e468267f7fd025c",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d3f5e88c02ea0f3c8ca0a96b2e468267f7fd025c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.SetLike.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.ModelTheory.Semantics` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable--d0f26279cdf170c6e4c1d155.md) | 46 | `declaration-track:d0f26279cdf170c6e4c1d155d32c7db7adfde1697ee0c07501b1a09acff8576c` |
| 2 | `theorem` | [Definable.map_expansion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-map-expansion--2441cf9a3d90c9c648c32115.md) | 51 | `result-track:2441cf9a3d90c9c648c32115d80b8b3ea97f8b921b810bfdafaa71db8ef01038` |
| 3 | `theorem` | [definable_iff_exists_formula_sum](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-iff-exists-formula-sum--bfb9964bda47bb5adb0fbe47.md) | 58 | `result-track:bfb9964bda47bb5adb0fbe47a4e4b5a3d1dbf70423cae52a3473490e81fcb8d7` |
| 4 | `theorem` | [empty_definable_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/empty-definable-iff--806617c33d0d716816ee5885.md) | 73 | `result-track:806617c33d0d716816ee5885aedcf15c5824e632700a7d4fd7721793ae03765a` |
| 5 | `theorem` | [definable_iff_empty_definable_with_params](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-iff-empty-definable-with-params--efb370649765231fc75e26b7.md) | 78 | `result-track:efb370649765231fc75e26b71b9aa43d333505f80256b8a50e6d6becfd791a7d` |
| 6 | `theorem` | [Definable.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-mono--513b77538cd629c107481dbb.md) | 82 | `result-track:513b77538cd629c107481dbb19fa90808d43bd0d1809a00f63141d5d0be0576c` |
| 7 | `theorem` | [definable_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-empty--56d4296e4803e2fa0b1bffe9.md) | 87 | `result-track:56d4296e4803e2fa0b1bffe982b39ae449bbea4aa7c306043fc629f1f195a786` |
| 8 | `theorem` | [definable_univ](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-univ--a92ee3010d359b909ce8acae.md) | 93 | `result-track:a92ee3010d359b909ce8acae8305fe33919d6b10c802814abd929fab6c897fa5` |
| 9 | `theorem` | [Definable.inter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-inter--c939f7b90c246613ac4ff997.md) | 99 | `result-track:c939f7b90c246613ac4ff9974da15a25540466268f952796ff2595ef152292ee` |
| 10 | `theorem` | [Definable.union](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-union--9936200098be387a5616aef7.md) | 108 | `result-track:9936200098be387a5616aef7411ee5ba0ab6d82c67ced6347cf759c038312f5b` |
| 11 | `theorem` | [definable_finset_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-finset-inf--26a02f7471c430e8f17f5ab7.md) | 116 | `result-track:26a02f7471c430e8f17f5ab744babce245fb3da5c87f8416913873b79f909668` |
| 12 | `theorem` | [definable_finset_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-finset-sup--f04a6db9b68d27b0cb802de4.md) | 123 | `result-track:f04a6db9b68d27b0cb802de4613e84e8191d0af31ea9fc865090adf0dadfce35` |
| 13 | `theorem` | [definable_finset_biInter](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-finset-biinter--a95a1467daf327e655d903df.md) | 130 | `result-track:a95a1467daf327e655d903dfdc4c542ffba1deec2315d3ba64114e379367a5ef` |
| 14 | `theorem` | [definable_finset_biUnion](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-finset-biunion--a5796b0541b00fa613b5e654.md) | 135 | `result-track:a5796b0541b00fa613b5e65424f0df7607f3a17058f6fff867e83906b5804965` |
| 15 | `theorem` | [Definable.compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-compl--a9e67031708c7c6895ded68d.md) | 141 | `result-track:a9e67031708c7c6895ded68d8445b866ee732e8c310038c65e11eed8f47728c1` |
| 16 | `theorem` | [Definable.sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-sdiff--ddfc9f45b5f5fbe677515e68.md) | 148 | `result-track:ddfc9f45b5f5fbe677515e684d112ae0d4fadb23581ccc618b43816562f1222b` |
| 17 | `lemma` | [Definable.himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-himp--853a80594b4b466c3bbb1723.md) | 152 | `result-track:853a80594b4b466c3bbb1723bf4a6bb14944b5500777616e5610bf70d5de8905` |
| 18 | `theorem` | [Definable.preimage_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-preimage-comp--917f81a013af9df578f381a2.md) | 155 | `result-track:917f81a013af9df578f381a21f69f68cbdf5570bb611312f066f32f6bb6e680a` |
| 19 | `theorem` | [Definable.image_comp_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-image-comp-equiv--15ded2caf2c5fc6617032670.md) | 162 | `result-track:15ded2caf2c5fc6617032670bc54d7b8c62dc2876b965b90d9d3ec4f7b0d901f` |
| 20 | `theorem` | [definable_iff_finitely_definable](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-iff-finitely-definable--c511a4d59be9940dc292de47.md) | 173 | `result-track:c511a4d59be9940dc292de471770e8d629c3b9e8e1bdd607b318880d24736aba` |
| 21 | `theorem` | [Definable.image_comp_sumInl_fin](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-image-comp-suminl-fin--afcf3db8e0dad03fc5f6f466.md) | 190 | `result-track:afcf3db8e0dad03fc5f6f46621061a23c91ebc9c83d43eb60339855354bcb6b0` |
| 22 | `theorem` | [Definable.image_comp_embedding](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-image-comp-embedding--efb76b8be17adecd447771d1.md) | 208 | `result-track:efb76b8be17adecd447771d1c249ca2d9c03f9f2264470ddb1a26676d01be4be` |
| 23 | `theorem` | [Definable.image_comp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable-image-comp--bf099c1a50c955dbc1986dc3.md) | 223 | `result-track:bf099c1a50c955dbc1986dc308fc62a6b10a1b18ec0e8580501a1a4d4fa77a9b` |
| 24 | `def` | [Definable₁](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable--10d47e455f5844b8a96c2279.md) | 261 | `declaration-track:10d47e455f5844b8a96c227919dccaa7cb413fb86cb3d8a2a5b299d1087fb971` |
| 25 | `def` | [Definable₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definable--629bfd03430b13286adb036e.md) | 265 | `declaration-track:629bfd03430b13286adb036ed1afd4c42b6573419ea63966c0852a9278d8c2ec` |
| 26 | `def` | [DefinableSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/definableset--4574c1131c00aa6726bd16cf.md) | 280 | `declaration-track:4574c1131c00aa6726bd16cf77d884fda41c916f315baef442e29c41bd5f34cf` |
| 27 | `instance` | [instSetLike](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instsetlike--e2413cdbc81fbcd0788df880.md) | 288 | `declaration-track:e2413cdbc81fbcd0788df8805739434134916a327521e621fa01072d1e15f427` |
| 28 | `instance` | [instTop](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/insttop--4fd1a55e8ea4276adc71f887.md) | 292 | `declaration-track:4fd1a55e8ea4276adc71f887087974a2542f0ecb3292c01a88de60885c60fd96` |
| 29 | `instance` | [instBot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instbot--2112fc11c96d62eb79127a75.md) | 295 | `declaration-track:2112fc11c96d62eb79127a75c7c8d2ec6da34055d07cd68eca63338e47b9d37c` |
| 30 | `instance` | [instSup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instsup--bf25d5de026c371579ff2f5d.md) | 298 | `declaration-track:bf25d5de026c371579ff2f5d862740f2ee4294cd6cf0040fcadc5164dbaeb054` |
| 31 | `instance` | [instInf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instinf--5a41ccb92dae4a2b4a735ad8.md) | 301 | `declaration-track:5a41ccb92dae4a2b4a735ad890dcee1ef24e58def9382f1b511eadfccec11202` |
| 32 | `instance` | [instHasCompl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/insthascompl--56e905f552122e7e4ab95eaf.md) | 304 | `declaration-track:56e905f552122e7e4ab95eafe00f790e3e0297369ce8a1c18257384ba29dc567` |
| 33 | `instance` | [instSDiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instsdiff--97f9852ef518eca6e918cc60.md) | 307 | `declaration-track:97f9852ef518eca6e918cc60eecb9cb600d529360302ad6d7320e0c9abee9eaf` |
| 34 | `instance` | [instHImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/insthimp--b98d28ed5319d9675b6002f8.md) | 311 | `declaration-track:b98d28ed5319d9675b6002f8e4233b45d91056c4cebf443543454230f68c783a` |
| 35 | `instance` | [instInhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instinhabited--8eab2ee8743e420563184262.md) | 314 | `declaration-track:8eab2ee8743e4205631842625ea7fbe73f13c48faf0ec9b3ecf5f1a9539fc706` |
| 36 | `theorem` | [le_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/le-iff--dcbde7f4c5ffa2e1f02b577f.md) | 317 | `result-track:dcbde7f4c5ffa2e1f02b577f88ef1e7f35b4d9429356ee8bf1e7daedcc611f58` |
| 37 | `theorem` | [mem_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/mem-top--18db16c57a49201b79107cc9.md) | 321 | `result-track:18db16c57a49201b79107cc95a4d726383e7c9eea00f05fd40ac04dc2c619c8e` |
| 38 | `theorem` | [notMem_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/notmem-bot--07fc5e57bb012c386a535b81.md) | 325 | `result-track:07fc5e57bb012c386a535b81d798452e3a6f8b02335ca3f355a58d3198c4d854` |
| 39 | `theorem` | [mem_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/mem-sup--244d47dcad2adc9d020bdcbb.md) | 331 | `result-track:244d47dcad2adc9d020bdcbbf1252dee4cc7f1a7f4dd89fe178eef3c7bc5ff4f` |
| 40 | `theorem` | [mem_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/mem-inf--da057ba4d8747c5ef7d8ae5c.md) | 335 | `result-track:da057ba4d8747c5ef7d8ae5ccd4f5c22bdb2d76f9937c51eb6b3884b49bf71b2` |
| 41 | `theorem` | [mem_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/mem-compl--354f5a00302c02e8ec58c499.md) | 339 | `result-track:354f5a00302c02e8ec58c499a963f081d1c73422ef540485334d4a6bf12bfd07` |
| 42 | `theorem` | [mem_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/mem-sdiff--d5e75743b785e3afb37cd74e.md) | 343 | `result-track:d5e75743b785e3afb37cd74e021223aa0e299c209474f842e9f348e368c9343f` |
| 43 | `theorem` | [coe_top](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-top--5c59ae653239c469167366a0.md) | 347 | `result-track:5c59ae653239c469167366a0468163a3d7412546c50845a2b95dede9d4f3de61` |
| 44 | `theorem` | [coe_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-bot--2db05024440130bb6c710025.md) | 351 | `result-track:2db05024440130bb6c710025512fa990cb8aafdabf40d66016bc7accab723d44` |
| 45 | `theorem` | [coe_sup](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-sup--6f15863b3b159f7bd26b5aea.md) | 355 | `result-track:6f15863b3b159f7bd26b5aea6b3fb9b3d1269d262b21c831ae6c9e06b3367df6` |
| 46 | `theorem` | [coe_inf](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-inf--e6c8747972bf7db5020ec064.md) | 360 | `result-track:e6c8747972bf7db5020ec064e954fb0cd5726c67ec15ea83a314a11a54727718` |
| 47 | `theorem` | [coe_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-compl--a4d2158899e5dafa9f00962c.md) | 365 | `result-track:a4d2158899e5dafa9f00962c06c46d8c638408be5424ffb9e9ac719fed14eb52` |
| 48 | `theorem` | [coe_sdiff](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-sdiff--ce92311b9f5e2702ca0c4202.md) | 370 | `result-track:ce92311b9f5e2702ca0c42020826dec469a225d6b9771f1979590f8f6cab9ebc` |
| 49 | `lemma` | [coe_himp](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/coe-himp--3236882c4b43c46856cbe774.md) | 375 | `result-track:3236882c4b43c46856cbe77430dc884fb3b87d5145cdc6c445406a440b26e68f` |
| 50 | `instance` | [instBooleanAlgebra](../../../../../mathematics/FoundationsLogicAndTypeTheory/ModelTheory/Definability/Variant3274f162414d383930c8e80665475690c42a61c7717fb5daea21c0a158952967.lean/declarations/instbooleanalgebra--7757c24d548bcfdd47accfc1.md) | 377 | `declaration-track:7757c24d548bcfdd47accfc149e3399205d5f62218a959e6fd05a26ea98a4864` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
