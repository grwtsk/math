# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cee8d254b9e8e6f325e97b8c4e3d454f311e7ed4`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Cofinite` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/cfilter--05586d50f69ed3c39c0bf922.md) | 27 | `declaration-track:05586d50f69ed3c39c0bf922fad73d3b3375f9d878269fa42765c1f83ebd9b18` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/instance--096e914e15d26514d0a15ce0.md) | 36 | `declaration-track:096e914e15d26514d0a15ce0c13d0fc76115e88958251dc45a25a2e9fc1d387d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/instance--124e7e6020da975190dd8105.md) | 53 | `declaration-track:124e7e6020da975190dd81059db2d63fb5c0a7786e7e2f9b52e768b7f66b7b00` |
| 4 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/coe-mk--f9178b7adcd04646d654f5a5.md) | 56 | `result-track:f9178b7adcd04646d654f5a55a04e6323e6b4dc291c41cb97ecd711418f6a9e1` |
| 5 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofequiv--891e1dda19437b687c4cc7fa.md) | 60 | `declaration-track:891e1dda19437b687c4cc7fa081e61faa05738a152d9ff337112353b47089d44` |
| 6 | `theorem` | [ofEquiv_val](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofequiv-val--7190a171e39609834eadf2a3.md) | 69 | `result-track:7190a171e39609834eadf2a382039b7091eb8ec6145870a1b2ec1cb4f69b554d` |
| 7 | `def` | [toFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/tofilter--edf41ee7620031301ff43de4.md) | 76 | `declaration-track:edf41ee7620031301ff43de46bcc04dc9948100a0080e588131d9fd26e858bb8` |
| 8 | `theorem` | [mem_toFilter_sets](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/mem-tofilter-sets--3aec3575c14bec12381b293f.md) | 84 | `result-track:3aec3575c14bec12381b293f03ec2c9463efb68bef577f545262980d9cd26114` |
| 9 | `structure` | [Filter.Realizer](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/filter-realizer--b3cbd131c946a03e468e1088.md) | 91 | `declaration-track:b3cbd131c946a03e468e10883b59d184708e8351eb230db59e85dd207c64ded2` |
| 10 | `def` | [CFilter.toRealizer](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/cfilter-torealizer--766d704bd2e0bb76f85ebd07.md) | 97 | `declaration-track:766d704bd2e0bb76f85ebd07187ee1c765311a00cd6b34df8bfcf61c3a1a5699` |
| 11 | `theorem` | [mem_sets](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/mem-sets--c85259f72e7c6e73880a3cb7.md) | 102 | `result-track:c85259f72e7c6e73880a3cb7ee983b3aee5bf93c0b5c81677ef321e49ce88816` |
| 12 | `def` | [ofEq](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofeq--b3e601ce7dc87be62aae1f24.md) | 107 | `declaration-track:b3e601ce7dc87be62aae1f24a6f85071f32f4128ae8867ecb7da246bd82639e1` |
| 13 | `def` | [ofFilter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/offilter--6eee993089e77173d93caf0c.md) | 111 | `declaration-track:6eee993089e77173d93caf0c42d5d07e5a765cf0fa1ca54222257dfa56e7cd74` |
| 14 | `def` | [ofEquiv](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofequiv--5b8204136e9d2544b52da32c.md) | 121 | `declaration-track:5b8204136e9d2544b52da32c1d4011b4a0ea0b6efe822b2e3ac2bd3c86013547` |
| 15 | `theorem` | [ofEquiv_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofequiv--0eac3cdbfb7ff557d128cbc5.md) | 128 | `result-track:0eac3cdbfb7ff557d128cbc52843257229581e640822f19094cee566441683dc` |
| 16 | `theorem` | [ofEquiv_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ofequiv-f--44cb91c4ec68917aa0f6356b.md) | 132 | `result-track:44cb91c4ec68917aa0f6356b3d8cb383b2194bcc216f9314fb4d90a149f32cdf` |
| 17 | `def` | [principal](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/principal--ff06606d25e70b4baa161859.md) | 136 | `declaration-track:ff06606d25e70b4baa161859dea88f754ab144ef59bd7a1280496aa6f10cb11f` |
| 18 | `theorem` | [principal_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/principal--b5233f768d31177265eba2df.md) | 146 | `result-track:b5233f768d31177265eba2df098e71440e0328b44546a45cfde314e091abe7c4` |
| 19 | `theorem` | [principal_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/principal-f--8467a8ed0a5f28cafedf62ad.md) | 150 | `result-track:8467a8ed0a5f28cafedf62adb8a2e88770b9b1be3129c2e7e001c9a5a12b12f3` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/instance--2f284d42bb65b8933e2c95e6.md) | 153 | `declaration-track:2f284d42bb65b8933e2c95e69dc36d9af7ec99f93da6fe764cbe8fca6c8a4957` |
| 21 | `def` | [top](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/top--3eb6b46411900111a5b3e61f.md) | 157 | `declaration-track:3eb6b46411900111a5b3e61f26570d5fd41d1d3f87901ce24f46806ebccd88c0` |
| 22 | `theorem` | [top_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/top--ccc2a56acb114b98cb74954f.md) | 161 | `result-track:ccc2a56acb114b98cb74954f98e5cd0f0444685afdde053a2338156326f81ac5` |
| 23 | `theorem` | [top_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/top-f--96019fad7a272206724f3f35.md) | 165 | `result-track:96019fad7a272206724f3f357cef74a315adbe938f3f8a2c2434696d3fff6d8a` |
| 24 | `def` | [bot](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/bot--aeb9a632b6898aa7c44a58e7.md) | 169 | `declaration-track:aeb9a632b6898aa7c44a58e73effbd94cd426569982a72ea8cedc75f493be92a` |
| 25 | `theorem` | [bot_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/bot--b8b3ba745708a5948b5e4785.md) | 173 | `result-track:b8b3ba745708a5948b5e47856441c8040345adfc42a48d9e31acc47111664d45` |
| 26 | `theorem` | [bot_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/bot-f--d1236255f2cbb4ab7889fff7.md) | 177 | `result-track:d1236255f2cbb4ab7889fff732c3054425e61e26bfab4568eb8c74bc1fdb80a0` |
| 27 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/map--ee9b6ac0aa18edcbc83d06cd.md) | 181 | `declaration-track:ee9b6ac0aa18edcbc83d06cd1f7f5a7d1c7ca626fdd2129a05865def8d1adadf` |
| 28 | `theorem` | [map_σ](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/map--ff7082f28f50bbe395a1844a.md) | 193 | `result-track:ff7082f28f50bbe395a1844a4c7c6abecfe3f19f4cf359b84ce95799d8c7a14c` |
| 29 | `theorem` | [map_F](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/map-f--f522230fa3a58f0fbc4a8d88.md) | 197 | `result-track:f522230fa3a58f0fbc4a8d88cc9c19fc969d36eac846c28b03a7313a0db9444e` |
| 30 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/comap--175ef7b933e993d828e8f17c.md) | 201 | `declaration-track:175ef7b933e993d828e8f17cc64041b803772a8b8cf613dfa78b00762be5a8af` |
| 31 | `def` | [sup](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/sup--0b1fdcde926fb5ef8b3faa99.md) | 214 | `declaration-track:0b1fdcde926fb5ef8b3faa99b416df95835d6c4fb1cf9fd2afd31076f910fcc5` |
| 32 | `def` | [inf](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/inf--6a4d24ad884ff7ba57af1c58.md) | 224 | `declaration-track:6a4d24ad884ff7ba57af1c58dbea7e391fc8c036ce96960950892e116fece96a` |
| 33 | `def` | [cofinite](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/cofinite--d395d4f5e5dd748ea990f717.md) | 242 | `declaration-track:d395d4f5e5dd748ea990f717be734b8f65cfe9b257f29a0f6ebcd918b9bb3f84` |
| 34 | `def` | [bind](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/bind--5b4f61348831dbe11b7400c1.md) | 255 | `declaration-track:5b4f61348831dbe11b7400c1e8df37f5ffcf066c5551411d422b4b44b25fab73` |
| 35 | `def` | [iSup](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/isup--aad04be29bb9b348ce1a7186.md) | 280 | `declaration-track:aad04be29bb9b348ce1a7186dec5da1fe118c41cbe147f35c9edf129a0ef135d` |
| 36 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/prod--9c11318aa018f50eedb2d2a7.md) | 289 | `declaration-track:9c11318aa018f50eedb2d2a7fa5312e843b017a31a1e5b7f19fc2792ad8df5cd` |
| 37 | `theorem` | [le_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/le-iff--111479ea6b8d4c1aa142f5a0.md) | 292 | `result-track:111479ea6b8d4c1aa142f5a0e36284ef8e2aae6acdd3c85b2483904924923677` |
| 38 | `theorem` | [tendsto_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/tendsto-iff--175afea8f757fa8118181832.md) | 300 | `result-track:175afea8f757fa8118181832cd68216a409bb988f2e95c2374236996ed237b57` |
| 39 | `theorem` | [ne_bot_iff](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant4cf00ac95172418b3f0ad1f8536db8cb9df399f577459d6dd9f247ed174322f4.lean/declarations/ne-bot-iff--1d60870ca4c092189c859641.md) | 304 | `result-track:1d60870ca4c092189c8596419cc7bbd21a56c9cc3a3b3c7599df3902a5a8f716` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
