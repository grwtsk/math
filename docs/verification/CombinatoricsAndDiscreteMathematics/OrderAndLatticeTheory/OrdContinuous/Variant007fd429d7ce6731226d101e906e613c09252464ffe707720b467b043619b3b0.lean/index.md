# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrdContinuous.Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84aa2fc5507d8fdee86a563d116eae5e8f0f2ec1",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84aa2fc5507d8fdee86a563d116eae5e8f0f2ec1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.ConditionallyCompleteLattice.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.RelIso.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [LeftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/leftordcontinuous--977b6c7e3e009fa8a6894bfd.md) | 46 | `declaration-track:977b6c7e3e009fa8a6894bfdda1cea9ad65e4aad22157f944a880e2f2d64bcaa` |
| 2 | `def` | [RightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/rightordcontinuous--94a97f9d2fdd3b7823a2aeb6.md) | 53 | `declaration-track:94a97f9d2fdd3b7823a2aeb6e19179b031bed0e69c89691eed5ddf6f1cfe76fc` |
| 3 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/id--98d2a2126b0c5a58a1e15718.md) | 63 | `result-track:98d2a2126b0c5a58a1e157183cac7d1e8c53ec4472135df435fa9ca301622849` |
| 4 | `theorem` | [order_dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/order-dual--f23e1b69c7fdd548b8577780.md) | 70 | `result-track:f23e1b69c7fdd548b85777807e62078a60e19df14b101e4f9059166b33a07b89` |
| 5 | `theorem` | [map_isGreatest](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-isgreatest--40b4824a2c451d0d3136f49a.md) | 74 | `result-track:40b4824a2c451d0d3136f49a9fdb995ab1be4a5bd4e787f9ca6f46fa0414db9e` |
| 6 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/mono--f5721179b155968bc163fafe.md) | 79 | `result-track:f5721179b155968bc163fafe23e53ce527905bc2092d085beaf6774a25ee2458` |
| 7 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/comp--bc4cf3a9a28d69fb33fcef1d.md) | 84 | `result-track:bc4cf3a9a28d69fb33fcef1d74257aaf5cbfca14f0820fd1fa0c326032f9d1bf` |
| 8 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/iterate--0be6cfe22b7119bd5b99ebed.md) | 89 | `result-track:0be6cfe22b7119bd5b99ebed220c218d9f373716c879a2cb07e9cfe51dee5387` |
| 9 | `theorem` | [map_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-sup--58f415ee4309646a5aae62f3.md) | 102 | `result-track:58f415ee4309646a5aae62f3fd68bc5412c7af23b86176a9c1412ad013573531` |
| 10 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/le-iff--23f83b94c2314d54cc4c044b.md) | 106 | `result-track:23f83b94c2314d54cc4c044be52a858d523887391c20fa3737458a605eef99b0` |
| 11 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/lt-iff--0c0e486b17f95b622a099c23.md) | 110 | `result-track:0c0e486b17f95b622a099c2368685353ed47a90f11e3644060a0ef6ff81ff626` |
| 12 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/toorderembedding--4977701d31a027050449adfb.md) | 117 | `declaration-track:4977701d31a027050449adfbb223bc366f3e02221b4c4cb506070ad17528284f` |
| 13 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/coe-toorderembedding--40863a8eb2b90016e7082f48.md) | 124 | `result-track:40863a8eb2b90016e7082f487f585e78308a5995e9cfb334a515456c7a8f2023` |
| 14 | `theorem` | [map_sSup'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-ssup--83ce70e2b1bb8c621c96ccfa.md) | 135 | `result-track:83ce70e2b1bb8c621c96ccfa5f171bf2f112612c690d76cda2018ed5c501f646` |
| 15 | `theorem` | [map_sSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-ssup--1630732811075fc36498da6a.md) | 139 | `result-track:1630732811075fc36498da6ad7ae84a550c5f7226618107a24d06c25227b11d2` |
| 16 | `theorem` | [map_iSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-isup--7845cc724c56dcacd6bc78ef.md) | 143 | `result-track:7845cc724c56dcacd6bc78efee483cd3e976a790652d6030d6922b21590415a0` |
| 17 | `theorem` | [map_csSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-cssup--9f9673ec474bdd1a40549be0.md) | 154 | `result-track:9f9673ec474bdd1a40549be0c4de43a83bdc3bab648ac9fb17f07bc9b192fb23` |
| 18 | `theorem` | [map_ciSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-cisup--8506406aedb1e181b34e7d7f.md) | 159 | `result-track:8506406aedb1e181b34e7d7fadec84e8d217d97e7e5d77bd6127da6a48ccc784` |
| 19 | `theorem` | [id](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/id--ce8e08e64dc659d471d6a1d0.md) | 175 | `result-track:ce8e08e64dc659d471d6a1d09d92f86690400c0900976bc2fe1ba0fddaa070ff` |
| 20 | `theorem` | [orderDual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/orderdual--e09809dab5e94bbc393bf387.md) | 181 | `result-track:e09809dab5e94bbc393bf387bdea52e797a86ccd8e0af99d1ba805883fe0dca7` |
| 21 | `theorem` | [map_isLeast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-isleast--1e030a3bceacaa73c948dc43.md) | 185 | `result-track:1e030a3bceacaa73c948dc43d6ea2e9c16a10b355053c8f471d43a3e68426873` |
| 22 | `theorem` | [mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/mono--ea9ca1df7548af714bb3fe73.md) | 190 | `result-track:ea9ca1df7548af714bb3fe73a04ba30dc2716a5cf132459ef97828dbdf11aed5` |
| 23 | `theorem` | [comp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/comp--aab81cee7635a43291fb5e95.md) | 194 | `result-track:aab81cee7635a43291fb5e95cfc6a36674f7f7778fc3772676eaff14c72b57b7` |
| 24 | `theorem` | [iterate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/iterate--86839f4caf070f2637da51c2.md) | 198 | `result-track:86839f4caf070f2637da51c2f8d5958570b90ea49f7336ab3a3d937cf22157e7` |
| 25 | `theorem` | [map_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-inf--2940a344d14c9478d2b53cd1.md) | 209 | `result-track:2940a344d14c9478d2b53cd142446650e719fc8fee23ea72b56a3c4597b98694` |
| 26 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/le-iff--01ceb4751668a968bdc8433e.md) | 213 | `result-track:01ceb4751668a968bdc8433e2336098edb50355cda6f58058c05ac11f02eb855` |
| 27 | `theorem` | [lt_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/lt-iff--91758160b3c5f929269dc859.md) | 217 | `result-track:91758160b3c5f929269dc859101acb45fa51add832ccd3b4fb07f4bcfd1335fd` |
| 28 | `def` | [toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/toorderembedding--3a06efaa028b385caef9c365.md) | 224 | `declaration-track:3a06efaa028b385caef9c3654a7bcb0d9a49fcb974d6ad5215916af2cf6369c6` |
| 29 | `theorem` | [coe_toOrderEmbedding](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/coe-toorderembedding--56f707e3a5f87907e2d1939e.md) | 231 | `result-track:56f707e3a5f87907e2d1939e183ddad3586ac11ce813ab6af329c02fb73ed068` |
| 30 | `theorem` | [map_sInf'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-sinf--3280cccfc05e2eaedc730d7a.md) | 242 | `result-track:3280cccfc05e2eaedc730d7a05b120f32e240b5a5241be299c0012ccc56b3080` |
| 31 | `theorem` | [map_sInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-sinf--e1fb4c2e393e2e9b8441a511.md) | 246 | `result-track:e1fb4c2e393e2e9b8441a5115e3f80ac54f3be17b25cbdf4206b1998e92b1809` |
| 32 | `theorem` | [map_iInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-iinf--66365f957e533fd6ad6ffe38.md) | 250 | `result-track:66365f957e533fd6ad6ffe38b63b8aeedb64614920f1c09da43e3f66e088f648` |
| 33 | `theorem` | [map_csInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-csinf--f50cab49e036daaafc648a98.md) | 260 | `result-track:f50cab49e036daaafc648a989cb3eb65b20f09dbc5e96582310d2cfef89bff4a` |
| 34 | `theorem` | [map_ciInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/map-ciinf--6ef273a3ebe82bfefbe683a1.md) | 265 | `result-track:6ef273a3ebe82bfefbe683a1453aa6af6c1348621bd52161064f42d6ce05a9e9` |
| 35 | `theorem` | [leftOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/leftordcontinuous--139590489fbf3bc3aaa9b564.md) | 280 | `result-track:139590489fbf3bc3aaa9b56423590ff84fa2f527d9860cb114ca3325de64f418` |
| 36 | `theorem` | [rightOrdContinuous](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrdContinuous/Variant007fd429d7ce6731226d101e906e613c09252464ffe707720b467b043619b3b0.lean/declarations/rightordcontinuous--2568a5dd7d316e56c9ada9fc.md) | 286 | `result-track:2568a5dd7d316e56c9ada9fc9b8b6334966287fa85bd0a5259c45a71d95f7847` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
