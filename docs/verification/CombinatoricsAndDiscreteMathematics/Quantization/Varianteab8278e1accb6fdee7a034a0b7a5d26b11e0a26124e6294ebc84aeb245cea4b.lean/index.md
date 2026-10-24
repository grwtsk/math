# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Quantization.Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1ef51f9eb8899a53d7b5443075ef0f178db45a8",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1ef51f9eb8899a53d7b5443075ef0f178db45a8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BinaryMatrix` — import line 1; external provider; requires a separately pinned dependency.
- `Surface.ContinuousAssurance.QuantizationLevel` — import line 2; external provider; requires a separately pinned dependency.
- `Batteries.Data.Nat.Lemmas` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Quantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quantizer--5f39662bd9c21ef610886e3b.md) | 38 | `declaration-track:5f39662bd9c21ef610886e3b0f67aab0b70ed0f4c06c1a28fa5b48aca514991c` |
| 2 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable--451ad3dc1008f6151cbb50d3.md) | 49 | `declaration-track:451ad3dc1008f6151cbb50d358b9d6041317bf2720e6bab0cd994bf7746eb181` |
| 3 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-refl--ed36583795c715f25c94201c.md) | 57 | `result-track:ed36583795c715f25c94201c21e6a3abd17cc3f480029a7835b0230e6738170d` |
| 4 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-symm--ef7fa6b6a44a46d9b0e8f527.md) | 64 | `result-track:ef7fa6b6a44a46d9b0e8f52790b1d88b95f4f4d3044864800881c10f01ece476` |
| 5 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-trans--161c2a1862233a4ae6904b8c.md) | 72 | `result-track:161c2a1862233a4ae6904b8c261ed9159d5d515bd460de955d9821227cc08fa4` |
| 6 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/setoid--05782077f89b6cb8e6c3b085.md) | 84 | `declaration-track:05782077f89b6cb8e6c3b0859421854e176a7ff1543b20fdee813b2b399479d5` |
| 7 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/effectivestate--45ded4617166b1bc817938c3.md) | 98 | `declaration-track:45ded4617166b1bc817938c35cd56672c5b5123d216a468607c3969383952122` |
| 8 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/toeffective--ef50a069ff20a3662e6ff8e1.md) | 103 | `declaration-track:ef50a069ff20a3662e6ff8e12734639d6df7f76f0f40752147a7fb828842c514` |
| 9 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective--ae879e985f9ea5109ab43752.md) | 113 | `declaration-track:ae879e985f9ea5109ab437520d7e94b644055785bb5ec59065c329a57aec423d` |
| 10 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-mk--b7245ec8365126e653c50104.md) | 123 | `result-track:b7245ec8365126e653c501040136e48ee0daf09ffc8b0969a7702e06f6f3fb68` |
| 11 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-injective--92269626071a32e856365108.md) | 134 | `result-track:92269626071a32e8563651080a264f0cd31ac62deef3a4fed0f270682beeb2e0` |
| 12 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-surjective--b0a75bfb35a1a992bcf27f07.md) | 147 | `result-track:b0a75bfb35a1a992bcf27f072a52c9c8ae73ca39cda12610346439d4a1ac85b0` |
| 13 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotientequiveffective--868e5d9d1b1bf2f097b64874.md) | 160 | `declaration-track:868e5d9d1b1bf2f097b6487432b840941d0f708f3d82923ee3e76a296f59c481` |
| 14 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/effectivestates--669c1669cb71b14b1e04c113.md) | 168 | `declaration-track:669c1669cb71b14b1e04c1139e6f14cd84369ce9be0a0ea9aca2cfba4c9798c7` |
| 15 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/mem-effectivestates-iff--7cb600067a4cf50f1773792e.md) | 175 | `result-track:7cb600067a4cf50f1773792e13c1bcfe00a67e4829d0d234ac27a864e417b80a` |
| 16 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-effectivestates-le-domain--8505f2290184ba58a5ea3ece.md) | 184 | `result-track:8505f2290184ba58a5ea3eceae39efffbc9a0bdb86890298f0ba51446f6d98fd` |
| 17 | `theorem` | [card_binMat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-binmat--d0970cb9c363a688d6c16f28.md) | 197 | `result-track:d0970cb9c363a688d6c16f289b5db9df33f3be43c805679383bd0bf6bea2c99f` |
| 18 | `theorem` | [card_effectiveStates_le_bits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-effectivestates-le-bits--593866bd404e318ad2f25909.md) | 209 | `result-track:593866bd404e318ad2f259098d119007acfd4500673b6727e826cfc23d8a8e72` |
| 19 | `def` | [ofMut](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/ofmut--922761cce52766d2ebadb38d.md) | 222 | `declaration-track:922761cce52766d2ebadb38d47cd5822c068b9911cbede18772febe923c0484f` |
| 20 | `theorem` | [ofMut_encode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/ofmut-encode--8bb28f4fae6c7d4467968af5.md) | 229 | `result-track:8bb28f4fae6c7d4467968af51f163da724ee6623732a76591c07a15815389d79` |
| 21 | `theorem` | [ofMut_indistinguishable_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/ofmut-indistinguishable-iff--ee38991c946c3fb70d677b95.md) | 240 | `result-track:ee38991c946c3fb70d677b9584ae61c82653b757caf906aea146b0d1a53d6c13` |
| 22 | `def` | [QuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quantizedmatrix--6ba4d5f264a8fb741f3f98dd.md) | 260 | `declaration-track:6ba4d5f264a8fb741f3f98dd401669425641ec7a7588944a97152bdbf878c94c` |
| 23 | `instance` | [instFintypeQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/instfintypequantizedmatrix--0dda8920255b0f50aa81f800.md) | 264 | `declaration-track:0dda8920255b0f50aa81f8003972ab58b2055a6d276b7c741ea2411de1fa1d1d` |
| 24 | `instance` | [instDecidableEqQuantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/instdecidableeqquantizedmatrix--2b746daaecafc1c109e70c4e.md) | 270 | `declaration-track:2b746daaecafc1c109e70c4ef85e4a4deb1ad39f870d62d182bbebf6bd3d05d5` |
| 25 | `theorem` | [card_quantizedMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-quantizedmatrix--6cff7d572878c06fb52178da.md) | 277 | `result-track:6cff7d572878c06fb52178da12d22a80fcfecda5423dea167a590bbf8a940b55` |
| 26 | `structure` | [NQuantizer](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/nquantizer--ffc3ece04c0a375b13270b4d.md) | 297 | `declaration-track:ffc3ece04c0a375b13270b4dc800dc0009f64bc2b9089ce9522460eac5a80ed9` |
| 27 | `def` | [Indistinguishable](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable--0919a8eaf9e451f3304a1823.md) | 309 | `declaration-track:0919a8eaf9e451f3304a182340aac150d41a07aeef20128f44b05cf3dc01ede7` |
| 28 | `theorem` | [indistinguishable_refl](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-refl--eb6464bbf2bd58c7d4e8dc69.md) | 315 | `result-track:eb6464bbf2bd58c7d4e8dc69b3dba05b148f84c0d578e94123ffe3a43a6f1782` |
| 29 | `theorem` | [indistinguishable_symm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-symm--0df1c45bd2727988bb7c97c2.md) | 321 | `result-track:0df1c45bd2727988bb7c97c23357fee4dd64512494514e6c65d705a83612cd28` |
| 30 | `theorem` | [indistinguishable_trans](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/indistinguishable-trans--efb13d9539a1f6575380e512.md) | 328 | `result-track:efb13d9539a1f6575380e5126c04aeace0b90fca4d3817a33efc9454e7fa365c` |
| 31 | `def` | [setoid](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/setoid--b9a11f2e6da9f53fb024ee8a.md) | 337 | `declaration-track:b9a11f2e6da9f53fb024ee8af30e04672c449da41023ebeefec2398e78220c9b` |
| 32 | `def` | [EffectiveState](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/effectivestate--478bb6525f40a86ddbfdda03.md) | 346 | `declaration-track:478bb6525f40a86ddbfdda03c4b5272d25118a921b0b93cce6ec74de88a46c56` |
| 33 | `def` | [toEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/toeffective--19005f7d6e992f6af5d0d373.md) | 352 | `declaration-track:19005f7d6e992f6af5d0d373eb6ed72b438675c289ad4a8c9614b39b3d505e08` |
| 34 | `def` | [quotientToEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective--7265808bd4816838de8df6d7.md) | 358 | `declaration-track:7265808bd4816838de8df6d7b9d4ee70fdde753d986edc85dd621a3b90d29125` |
| 35 | `theorem` | [quotientToEffective_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-mk--9bf337172fb380fdfd2fbf88.md) | 367 | `result-track:9bf337172fb380fdfd2fbf883f7ebbbbbfc18d0f4bf551afd8f76c831b77b3df` |
| 36 | `theorem` | [quotientToEffective_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-injective--7e3ed4a12c7cf6ad6dc2a233.md) | 374 | `result-track:7e3ed4a12c7cf6ad6dc2a2333fd7c955376c65186b37982562b0a443161bf962` |
| 37 | `theorem` | [quotientToEffective_surjective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotienttoeffective-surjective--964550c847950ac25a5583d0.md) | 386 | `result-track:964550c847950ac25a5583d03f9ad82bd181d45be1e4c63facbf0c932cd8ca6f` |
| 38 | `def` | [quotientEquivEffective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/quotientequiveffective--a30fd12c43165c4211e20047.md) | 395 | `declaration-track:a30fd12c43165c4211e20047d5a92232c292ab402b727e5298e4f433526abb82` |
| 39 | `def` | [effectiveStates](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/effectivestates--5ccef13a1b3408aed23fc4e6.md) | 403 | `declaration-track:5ccef13a1b3408aed23fc4e65339a7d28d7aa22b8885c17ba345fb9db3fb4152` |
| 40 | `theorem` | [mem_effectiveStates_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/mem-effectivestates-iff--9cf8246ac298c6824ae10f03.md) | 409 | `result-track:9cf8246ac298c6824ae10f03f9ea5f2f36a480a005b79302f925790018045ea8` |
| 41 | `theorem` | [card_effectiveStates_le_domain](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-effectivestates-le-domain--1f4abc22ffb95cf31bd10cbb.md) | 417 | `result-track:1f4abc22ffb95cf31bd10cbba102a662f1d091eb04b5901dd3eb88b989bd5baa` |
| 42 | `theorem` | [card_effectiveStates_le_resolution](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/card-effectivestates-le-resolution--58305f62e2361326381b7a8a.md) | 425 | `result-track:58305f62e2361326381b7a8a048aea8ca5d004425a92948e3cbaa216408d29c7` |
| 43 | `def` | [decodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes--3b4cf996739147b054509249.md) | 441 | `declaration-track:3b4cf996739147b054509249acce75570ece0ec9ec05da4ef849bd88a8892dee` |
| 44 | `def` | [encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/encodebitplanes--5b67937d917074dbdd454eff.md) | 453 | `declaration-track:5b67937d917074dbdd454eff8c4cf4fdca04e37a2172324369f923707065467d` |
| 45 | `theorem` | [decodeBitPlanes_nonnegative](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes-nonnegative--e5b59ff9c4744d40210b5956.md) | 459 | `result-track:e5b59ff9c4744d40210b5956039f5e965d3c1295fb687b0658040dddf2e5b2cd` |
| 46 | `theorem` | [decodeBitPlanes_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes-succ--4fa07c08cbedeea5ff84dba6.md) | 467 | `result-track:4fa07c08cbedeea5ff84dba6897cf81af153b7dc86ecb804421109bf6a5a4ff9` |
| 47 | `theorem` | [decodeBitPlanes_eq_ofBits](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes-eq-ofbits--400ebf17d7ed716e4d6cc6bd.md) | 483 | `result-track:400ebf17d7ed716e4d6cc6bda301cd4de04d2f5d90fba56a10f9e984baa84c0f` |
| 48 | `theorem` | [decodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes-lt-pow--d904fe76cc1574d84f2b9420.md) | 498 | `result-track:d904fe76cc1574d84f2b9420c2924ef1aa03d25ff7d6ffb65e69b6a1ddcdd2e8` |
| 49 | `def` | [decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodedfinitematrix--37c263030f9ccdb652819d22.md) | 524 | `declaration-track:37c263030f9ccdb652819d223074fcdcec6b01ea7a79d8c130588f3142c21451` |
| 50 | `theorem` | [decodeBitPlanes_encodeBitPlanes](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decodebitplanes-encodebitplanes--6d25f8d55ae91229b28d7fa1.md) | 535 | `result-track:6d25f8d55ae91229b28d7fa114be8b6d1f1b9a2ff032fa2244fecae38415fe82` |
| 51 | `theorem` | [decode_encodeBitPlanes_lt_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/decode-encodebitplanes-lt-pow--7ce341aefd6fc467f4859acd.md) | 548 | `result-track:7ce341aefd6fc467f4859acd5d3bcc95831908e523139fa033971b9c18d6044a` |
| 52 | `theorem` | [encodeBitPlanes_decodedFiniteMatrix](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Quantization/Varianteab8278e1accb6fdee7a034a0b7a5d26b11e0a26124e6294ebc84aeb245cea4b.lean/declarations/encodebitplanes-decodedfinitematrix--b211725ce226ea42b620c0d6.md) | 561 | `result-track:b211725ce226ea42b620c0d67afb1938bc6d9e64ff6ac2cd0b4fb25ca5053856` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
