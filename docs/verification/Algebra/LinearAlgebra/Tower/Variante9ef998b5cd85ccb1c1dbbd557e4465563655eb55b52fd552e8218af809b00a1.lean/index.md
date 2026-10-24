# Verification target: GRWTSK.Algebra.LinearAlgebra.Tower.Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a128a867aa6c1cf0b3fe9b1133327ecfee314d11",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a128a867aa6c1cf0b3fe9b1133327ecfee314d11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.TensorProduct` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Algebra.Tower` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [smul_eq_lsmul_rTensor](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/smul-eq-lsmul-rtensor--ab8596a1e505c6d7d10ea402.md) | 73 | `result-track:ab8596a1e505c6d7d10ea4026cb7ca641b1cc623761737080706867cb70b65da` |
| 2 | `def` | [curry](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/curry--9032344effa5eab2ab6bb484.md) | 82 | `declaration-track:9032344effa5eab2ab6bb48473671e289e72bfda38760dd71559ad4c6301de9f` |
| 3 | `theorem` | [restrictScalars_curry](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/restrictscalars-curry--1ee45844aee68c4aad7326eb.md) | 89 | `result-track:1ee45844aee68c4aad7326ebb964e205796984d59a2d52df615e79541fceeba9` |
| 4 | `theorem` | [curry_injective](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/curry-injective--eeb6539073662f3d693d20f1.md) | 99 | `result-track:eeb6539073662f3d693d20f146eb56da6d675319087b5ccaeb04f3e7a3c71e09` |
| 5 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/ext--5fe381572dd6152a4625cc90.md) | 105 | `result-track:5fe381572dd6152a4625cc9062f8413c44d92e328d3a995328951184e9937072` |
| 6 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/lift--515175450e6b6774b9101423.md) | 114 | `declaration-track:515175450e6b6774b9101423b4ec03c52f27f2b799826cbf46153e3a43658a53` |
| 7 | `theorem` | [lift_apply](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/lift-apply--e7e9aefcb8c24ce12d121f14.md) | 130 | `result-track:e7e9aefcb8c24ce12d121f140253bb2011c70d9b99588efe819c3a3c4e3f01f0` |
| 8 | `theorem` | [lift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/lift-tmul--54789d544b074f9946bf065d.md) | 135 | `result-track:54789d544b074f9946bf065d637b071de01c0862cb7c17e262d82ad95d10e93c` |
| 9 | `def` | [uncurry](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/uncurry--3b97ea3f35d38bb2a160aeca.md) | 147 | `declaration-track:3b97ea3f35d38bb2a160aeca02d23be8de2471bf632a92b941bc53749c4a0a34` |
| 10 | `def` | [lcurry](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/lcurry--b608eba42ddd9123f4a54720.md) | 159 | `declaration-track:b608eba42ddd9123f4a54720bca63b87ddb4f54f61dec6640c0b0cd656de99ca` |
| 11 | `def` | [lift.equiv](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/lift-equiv--930308f58ba6ca979f087551.md) | 171 | `declaration-track:930308f58ba6ca979f087551747e6c93d2ab6de400dfce2d6510a8fd16bc1322` |
| 12 | `def` | [mk](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/mk--f0aac5bba6210ead0dc5b7de.md) | 182 | `declaration-track:f0aac5bba6210ead0dc5b7de84a73e0752596fd7f997c0d99eb9d35a3db7e303` |
| 13 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map--45e2bbe9b64b1ea8a779a774.md) | 190 | `declaration-track:45e2bbe9b64b1ea8a779a774eafd8896d906e75f20f7f52b501fb6bc820ea98e` |
| 14 | `theorem` | [map_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map-tmul--6421dda64c62696e6906ba1a.md) | 196 | `result-track:6421dda64c62696e6906ba1a60eddd373019fd09a4b415cdc656f450a5c06346` |
| 15 | `theorem` | [map_add_left](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map-add-left--0c6ce418667227d8e48ea0fc.md) | 200 | `result-track:0c6ce418667227d8e48ea0fca321869f5458a219b98b803564cdb60b7dda0b39` |
| 16 | `theorem` | [map_add_right](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map-add-right--2b5940b7fe848b845a0cd8ee.md) | 206 | `result-track:2b5940b7fe848b845a0cd8ee0e5a6e4985b7263136edd179228dac477ab20e70` |
| 17 | `theorem` | [map_smul_right](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map-smul-right--2a69076d08b4eab32de1e0c0.md) | 212 | `result-track:2a69076d08b4eab32de1e0c0d5511b4a2356b328469d3303f2d93e109be1b548` |
| 18 | `theorem` | [map_smul_left](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/map-smul-left--7e0c27fbc712eff53c90886e.md) | 217 | `result-track:7e0c27fbc712eff53c90886eabab004360a2d90335e717ac7cb876aff1106c99` |
| 19 | `def` | [mapBilinear](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/mapbilinear--420e293970ddf8ee69d63615.md) | 225 | `declaration-track:420e293970ddf8ee69d636153d485fcaa701408415f7cf9f5be1327ffd05fa5a` |
| 20 | `theorem` | [mapBilinear_apply](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/mapbilinear-apply--dc03c3b17ce8cdf10e5201f8.md) | 231 | `result-track:dc03c3b17ce8cdf10e5201f8fb5fc24784b62624af0e9d49c47a052d5803be82` |
| 21 | `def` | [homTensorHomMap](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/homtensorhommap--c703ca2ec3a8189e15ec2df9.md) | 238 | `declaration-track:c703ca2ec3a8189e15ec2df971deed9cd1466a9e00b8b3828d626beb3c489c04` |
| 22 | `theorem` | [homTensorHomMap_apply](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/homtensorhommap-apply--95644d15b7516cc083b5415a.md) | 243 | `result-track:95644d15b7516cc083b5415a6e7336562818b2ef240622f11930067db2b7d714` |
| 23 | `def` | [congr](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/congr--a210e3bbc28a4d6946fabc10.md) | 248 | `declaration-track:a210e3bbc28a4d6946fabc10cb5ed92d6c1c35e37b6bec8eeac1bc8c8270a3f6` |
| 24 | `theorem` | [congr_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/congr-tmul--f1de2aafb291eb67a9809d8f.md) | 253 | `result-track:f1de2aafb291eb67a9809d8fe7638d6be0529ecbefbd43993568fdaf890b2628` |
| 25 | `theorem` | [congr_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/congr-symm-tmul--f353a2cf64a1411ea732ed1d.md) | 257 | `result-track:f353a2cf64a1411ea732ed1defa34d20f0d253afb1fb2bd2918ca64a3c519db7` |
| 26 | `def` | [rid](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/rid--5e3a20ed41f1306d94ebc8d6.md) | 264 | `declaration-track:5e3a20ed41f1306d94ebc8d62cc72a330341e2d5519e7522442f6206a9a02b82` |
| 27 | `theorem` | [rid_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/rid-tmul--03d6d5ea2b13957a46bbd274.md) | 274 | `result-track:03d6d5ea2b13957a46bbd27492b9b33d8db286403fc434af758a83a34eb9ad63` |
| 28 | `def` | [assoc](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/assoc--5c16b8964f62f812003955c7.md) | 305 | `declaration-track:5c16b8964f62f812003955c7d01ea4d216756a312226e457c795945366bf93dc` |
| 29 | `theorem` | [assoc_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/assoc-tmul--ad9ad5060cf01ed8c921694a.md) | 317 | `result-track:ad9ad5060cf01ed8c921694a83ecc83c6edcc5aa07ffc182ff4139abd0f7817e` |
| 30 | `theorem` | [assoc_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/assoc-symm-tmul--804e017a3e49e35eb8966fd4.md) | 322 | `result-track:804e017a3e49e35eb8966fd45889e9deed3ea6f2b67ac847d63478af47e28ac3` |
| 31 | `def` | [leftComm](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/leftcomm--351f442fb08cfeb0d9abcbe5.md) | 331 | `declaration-track:351f442fb08cfeb0d9abcbe509e91b6214a2693fcf62fade5af76a280e4f37aa` |
| 32 | `theorem` | [leftComm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/leftcomm-tmul--ce6cc42fed344029c3a98d52.md) | 340 | `result-track:ce6cc42fed344029c3a98d52fb969e7acd1afd519d9912f24d77e19ad5ccf957` |
| 33 | `theorem` | [leftComm_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/leftcomm-symm-tmul--37a9a755831c69c650bf8fda.md) | 345 | `result-track:37a9a755831c69c650bf8fda222a8dd00f990b5ebd685d50e573c8f81a09a084` |
| 34 | `def` | [rightComm](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/rightcomm--6e4942b8f296015990691a01.md) | 354 | `declaration-track:6e4942b8f296015990691a010be0ccb59d9599a25a2a27eb8132121efc506ba2` |
| 35 | `theorem` | [rightComm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/rightcomm-tmul--9159939aa0a4a3cb1a255100.md) | 371 | `result-track:9159939aa0a4a3cb1a2551001a9793844ed3eee305734aba2a7a61355b9fe1e1` |
| 36 | `theorem` | [rightComm_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/rightcomm-symm-tmul--6c698c431c3572d876f6905e.md) | 376 | `result-track:6c698c431c3572d876f6905e0397885176258db0cb2629c4b0a96b85798a426c` |
| 37 | `def` | [tensorTensorTensorComm](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/tensortensortensorcomm--874423a8ad9b2bf0a0f2c24d.md) | 385 | `declaration-track:874423a8ad9b2bf0a0f2c24df477b0abfb9582a67032130d7bae37caf24117f5` |
| 38 | `theorem` | [tensorTensorTensorComm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/tensortensortensorcomm-tmul--f739074f43bc27ccd375a923.md) | 394 | `result-track:f739074f43bc27ccd375a92347c0c57e0019d74cea6607d2680eba8bbba57d95` |
| 39 | `theorem` | [tensorTensorTensorComm_symm_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Tower/Variante9ef998b5cd85ccb1c1dbbd557e4465563655eb55b52fd552e8218af809b00a1.lean/declarations/tensortensortensorcomm-symm-tmul--c1c2efa7541024cacb0d0d01.md) | 399 | `result-track:c1c2efa7541024cacb0d0d0187e8358f55c9b79ede5e2ecae179d107b26d4a16` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
