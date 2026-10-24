# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Core.Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b38a140936080f1a9a0d1974b0f46889202d796",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b38a140936080f1a9a0d1974b0f46889202d796`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Core.Basic` — import line 1; external provider; requires a separately pinned dependency.
- `Quantization.Resolution` — import line 2; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Quantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quantizer--1dbd734d6fd3d3ab660a06b6.md) | 38 | `declaration-track:1dbd734d6fd3d3ab660a06b6be0149af7501eb1575a059ba730b7cde1cd1da9a` |
| 2 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable--22472c9f1f1d40d02604cb4e.md) | 49 | `declaration-track:22472c9f1f1d40d02604cb4e222251332adef6a707f153d4473b070c2f58b6fd` |
| 3 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-refl--f8956215067d78f80290718e.md) | 57 | `result-track:f8956215067d78f80290718eb11090f36c3d7505d8f38361bcfc549e08d6dfd4` |
| 4 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-symm--5a2f7f662ae73ca2fa0d0641.md) | 64 | `result-track:5a2f7f662ae73ca2fa0d0641435aff6a02c0249b8dfa2d9aac36c5edae72274f` |
| 5 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-trans--48139f8df10f356884b55ab4.md) | 72 | `result-track:48139f8df10f356884b55ab45ae7f35b6c89566b534c59a5d9e3ece1e5754f02` |
| 6 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/setoid--1454c3b36683269d21df045c.md) | 84 | `declaration-track:1454c3b36683269d21df045c623710d51e9c45fa84b9fac12ed24f6550fefe0d` |
| 7 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/effectivestate--30744562ea380f643ba18337.md) | 98 | `declaration-track:30744562ea380f643ba183377d2808c05205ca9f8b8cc25b8d6a0a230838d780` |
| 8 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/toeffective--4f69af37fc8f8b7c6a719450.md) | 103 | `declaration-track:4f69af37fc8f8b7c6a719450a22d5e864a7e0a7fdf56e18fd20629ce0830e943` |
| 9 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective--5aed5bf55fce2b28ec141b77.md) | 113 | `declaration-track:5aed5bf55fce2b28ec141b77364cef3c5cc715d3867769b99de009d693c22844` |
| 10 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-mk--476ebb4b652516720e101697.md) | 123 | `result-track:476ebb4b652516720e101697bbaf038109707422036d298127bfdaf7735dec20` |
| 11 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-injective--91219e2e1c6c5ea2bc95f8e5.md) | 134 | `result-track:91219e2e1c6c5ea2bc95f8e5c004780da77480f649df769c9eb41564ec0736c6` |
| 12 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-surjective--f1d1136bece352e213543c82.md) | 147 | `result-track:f1d1136bece352e213543c82fb4214c3c4531b504513821d7ed8dc369bebf8a2` |
| 13 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotientequiveffective--00a2d84e8bef11ca8a2d36b9.md) | 160 | `declaration-track:00a2d84e8bef11ca8a2d36b90ef7904bbab2059f33e84d6b7424c8b2285a94a7` |
| 14 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/effectivestates--68258883bda63668c718eef9.md) | 168 | `declaration-track:68258883bda63668c718eef9dd3c8941ef936b2e31a18aae3a0385efce2ffce0` |
| 15 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/mem-effectivestates-iff--ea3d8ef5b9e6b9c5459ddccc.md) | 175 | `result-track:ea3d8ef5b9e6b9c5459ddccca1502c4831e13182748afa1722077baecb289a5e` |
| 16 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-effectivestates-le-domain--f46dc0027f6d95944fa43b9a.md) | 184 | `result-track:f46dc0027f6d95944fa43b9a295d8e8edc06a16607e3dd04088f9822c313a0d7` |
| 17 | `theorem` | [card_bitMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-bitmatrix--da98ed4e34be6c6ffb02f280.md) | 197 | `result-track:da98ed4e34be6c6ffb02f2804ca7340e38fa5892b9cf03db184cedcede2833e3` |
| 18 | `theorem` | [card_effectiveStates_le_bits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-effectivestates-le-bits--d3a78a228603b0fb3d260808.md) | 209 | `result-track:d3a78a228603b0fb3d2608081be342a878e83b4f9b8111eff544230dcb146642` |
| 19 | `def` | [ofArrayBacked](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/ofarraybacked--7a7582fdb69935dc5efa8a86.md) | 222 | `declaration-track:7a7582fdb69935dc5efa8a865678d30f06b4e5216c27b4665ed5586eeeaf7c91` |
| 20 | `theorem` | [ofArrayBacked_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/ofarraybacked-encode--230427fe37c8dee8c9d1ac01.md) | 229 | `result-track:230427fe37c8dee8c9d1ac01257f52223172c6751cdbc340b7c449c911b4996c` |
| 21 | `theorem` | [ofArrayBacked_indistinguishable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/ofarraybacked-indistinguishable-iff--90503f8f774edc8b2c66fc9d.md) | 240 | `result-track:90503f8f774edc8b2c66fc9d96ab9ce3851bc03f88890334082f490e4da29ace` |
| 22 | `def` | [QuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quantizedmatrix--ca70d4ae53971e0ce52fc887.md) | 260 | `declaration-track:ca70d4ae53971e0ce52fc88770d3da7a72889e19048ddab694647b577a78f56e` |
| 23 | `instance` | [instFintypeQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/instfintypequantizedmatrix--dacfb83de68e0cf2f9356f29.md) | 264 | `declaration-track:dacfb83de68e0cf2f9356f2900601461461d93afa9cbb48043343d13248a9f0a` |
| 24 | `instance` | [instDecidableEqQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/instdecidableeqquantizedmatrix--adcf9518f086ebea20e267b6.md) | 270 | `declaration-track:adcf9518f086ebea20e267b6ec6a5083893717ba6f04ff0fc4c450750e9b9ff4` |
| 25 | `theorem` | [card_quantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-quantizedmatrix--4a4f9a330f513c6da442cc4f.md) | 277 | `result-track:4a4f9a330f513c6da442cc4ffa2ec7a56a8b27070579da66d725bf7087d66c30` |
| 26 | `structure` | [NQuantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/nquantizer--652b89cc9ac495889c717bf3.md) | 297 | `declaration-track:652b89cc9ac495889c717bf320355ed82ef1b68190c99091d4f4666da1ba8fbe` |
| 27 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable--e1113c59e2b916e037e27aba.md) | 309 | `declaration-track:e1113c59e2b916e037e27abacf799705a8e15dec76fb0e53377f86bd953e3e68` |
| 28 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-refl--1d63d8c1dc79a40a0959616f.md) | 315 | `result-track:1d63d8c1dc79a40a0959616f8e07ad12895a89ae765401d7250f8a1442ed840f` |
| 29 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-symm--146236a7b18d97cde8d3d586.md) | 321 | `result-track:146236a7b18d97cde8d3d5864c243384d7ac3bdfe5750f930109d572c235478e` |
| 30 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/indistinguishable-trans--5f0d3584ad704c66dd34c1bd.md) | 328 | `result-track:5f0d3584ad704c66dd34c1bd5df69b4557fbffef79e57fc46c13ffea0f38d5bb` |
| 31 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/setoid--b70234ca1bd2cc387d5a148c.md) | 337 | `declaration-track:b70234ca1bd2cc387d5a148ccdc3c4c16e954bd9e4c90eda0535ca9e2891538f` |
| 32 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/effectivestate--4e815fe03e21e78a45ae0932.md) | 346 | `declaration-track:4e815fe03e21e78a45ae093242e0872de153c688dcc31eb0837fd57a1344c6d7` |
| 33 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/toeffective--c130c28d398a61fc91626f28.md) | 352 | `declaration-track:c130c28d398a61fc91626f28b92e55073eb857507ad70b343881c173a7940ece` |
| 34 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective--6b32eb36d49d7118950d6920.md) | 358 | `declaration-track:6b32eb36d49d7118950d6920b90889668af1e2bae17da63c43862828acbe6f37` |
| 35 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-mk--0935c7091cbf00d9df25ae80.md) | 367 | `result-track:0935c7091cbf00d9df25ae800d4d635ad5582d4063e5db792f3eab4b0b2484a4` |
| 36 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-injective--7c224ab6428e10261290dd09.md) | 374 | `result-track:7c224ab6428e10261290dd090e669824a3c498553c45b6300b8a9256b7d70f55` |
| 37 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotienttoeffective-surjective--2833ce5431ed4fb395fa4ff0.md) | 386 | `result-track:2833ce5431ed4fb395fa4ff02061d7b71b485dfaffb9f7886fc59e2c55c89d0a` |
| 38 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/quotientequiveffective--2b5fd2716c9cb0833a714921.md) | 395 | `declaration-track:2b5fd2716c9cb0833a7149215dde2fa9714a7b01b07f05800dd5aa4a5ed9bcf4` |
| 39 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/effectivestates--7871556ea6734e88ccc518f6.md) | 403 | `declaration-track:7871556ea6734e88ccc518f6c7013b403a99433688019bd93ecea5c4fcbbe875` |
| 40 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/mem-effectivestates-iff--abaa0cafed48f506f97d2baf.md) | 409 | `result-track:abaa0cafed48f506f97d2bafd32818c2ece56dd10f5f5ed940d5ddf6232a12ca` |
| 41 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-effectivestates-le-domain--d1a1104469974ba1792867b9.md) | 417 | `result-track:d1a1104469974ba1792867b9ec06756aa1f7ec80f5df12553417e2c4bad2ee5e` |
| 42 | `theorem` | [card_effectiveStates_le_resolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/card-effectivestates-le-resolution--607398aaa9d307390d2e0efa.md) | 425 | `result-track:607398aaa9d307390d2e0efa75fe59990aa3b6d5934d25ec09e5e4449767c56f` |
| 43 | `def` | [decodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes--14c1a0041e44da87ea7fe392.md) | 441 | `declaration-track:14c1a0041e44da87ea7fe392f0e85136947eddbb6a1dc3ec88b0d096be56dcfb` |
| 44 | `def` | [encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/encodebitplanes--0337c40400ccb64cd1741d02.md) | 453 | `declaration-track:0337c40400ccb64cd1741d027cc94dd0e11068618b5e2f0d1da7a28a5b637608` |
| 45 | `theorem` | [decodeBitPlanes_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes-nonnegative--b54b77e342de79194b0512fb.md) | 459 | `result-track:b54b77e342de79194b0512fb0c7e9426b5ec5d44bcc94dc5606cc537cc3632b1` |
| 46 | `theorem` | [decodeBitPlanes_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes-succ--6bc61032bcb0afc2c67f4b0f.md) | 467 | `result-track:6bc61032bcb0afc2c67f4b0f75a90c739fe92cf2fa23073015f33b1be4b0ec88` |
| 47 | `theorem` | [decodeBitPlanes_eq_ofBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes-eq-ofbits--ccc869bf135d10e86f742166.md) | 483 | `result-track:ccc869bf135d10e86f7421663519f720d2c914d89171e465bb82b0076765ca51` |
| 48 | `theorem` | [decodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes-lt-pow--f659f2473b315185025d9b00.md) | 498 | `result-track:f659f2473b315185025d9b009f3616cac2302062721e0bf14c17e246ec22e984` |
| 49 | `def` | [decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodedfinitematrix--d38b1878d5bacf50bd054b47.md) | 524 | `declaration-track:d38b1878d5bacf50bd054b475231ae15112edf179d02fd6730a0de46697b212e` |
| 50 | `theorem` | [decodeBitPlanes_encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decodebitplanes-encodebitplanes--59b5a9e9c18c75894f176cfe.md) | 535 | `result-track:59b5a9e9c18c75894f176cfee8d54dbcc9b7caa433624ff9831e6e2b4baa4659` |
| 51 | `theorem` | [decode_encodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/decode-encodebitplanes-lt-pow--faf05f49a051c6ef4b1b6116.md) | 548 | `result-track:faf05f49a051c6ef4b1b61164968eb22eec427bb76655c0b1c1bd90f3c604b6f` |
| 52 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Core/Variantd3ce1df042ea2552c9f97ffb4f84aa07a8c7f02240158d87c7461bc10b64b715.lean/declarations/encodebitplanes-decodedfinitematrix--5c094b21151d636e02c0cc74.md) | 561 | `result-track:5c094b21151d636e02c0cc74b0b40777141b2b26326d284263c4c25cce36dab6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
