# Verification target: GRWTSK.Algebra.GroupTheory.Pi.Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fa7fc11558c16fab01401f72262fcca3d7ed52d2",
  "lexical_observation_count": 71,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fa7fc11558c16fab01401f72262fcca3d7ed52d2`.

Source path: `GRWTSK/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Pairwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.GroupInstances` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Pi.Algebra` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Function` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Set.preimage_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/set-preimage-one--6e6f3ed0e6728908ab5447d7.md) | 45 | `result-track:6e6f3ed0e6728908ab5447d7b75379dfdba8a9b917d9f8e942db410ff62a3c97` |
| 2 | `instance` | [semigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/semigroup--4531d86f4b1d581d8e681ad0.md) | 54 | `declaration-track:4531d86f4b1d581d8e681ad02f4072d169afb0caa17720a81c1998623f227a1e` |
| 3 | `instance` | [commSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/commsemigroup--b8cafad8f7ff9fba93b8e954.md) | 62 | `declaration-track:b8cafad8f7ff9fba93b8e95491f022aea72536e65ab51cb324087b8c11cc5d06` |
| 4 | `instance` | [mulOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/muloneclass--b5523b64dab3b40b65621745.md) | 71 | `declaration-track:b5523b64dab3b40b65621745090e1ec8e1b6d577a587e30d5f4f52376a0aac7d` |
| 5 | `instance` | [invOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/invoneclass--2172ea3c5790a3364578cb86.md) | 82 | `declaration-track:2172ea3c5790a3364578cb863731a5bca261cd26583459b3c33dbd58d63ed40d` |
| 6 | `instance` | [monoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoid--1688b9801eba67c00819bc4a.md) | 88 | `declaration-track:1688b9801eba67c00819bc4a18d9e6dcb7a89c4d34af97ef4570644d702145eb` |
| 7 | `instance` | [addMonoidWithOne](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/addmonoidwithone--15022c0c56ffb19ec4288e5b.md) | 98 | `declaration-track:15022c0c56ffb19ec4288e5b0ac3e8fa7797baf2a450c62f31633e43949dc13b` |
| 8 | `instance` | [commMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/commmonoid--8c07ca6474818108e8985125.md) | 106 | `declaration-track:8c07ca6474818108e898512590aa849881c77469e2fe1ba14d2ce13483a5b3b2` |
| 9 | `instance` | [divInvMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/divinvmonoid--f0a86596edbc2a65f722a4da.md) | 112 | `declaration-track:f0a86596edbc2a65f722a4da737b01210bbc150d71d3d0490f4a035f41aca905` |
| 10 | `instance` | [divInvOneMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/divinvonemonoid--a04d972d67f9bd76ca24e421.md) | 125 | `declaration-track:a04d972d67f9bd76ca24e4215bc5fcf3e7ee6a755a6d9fc9113421661e94bf00` |
| 11 | `instance` | [involutiveInv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/involutiveinv--94b6d0b5d78bd39a585e0dfc.md) | 130 | `declaration-track:94b6d0b5d78bd39a585e0dfc12565c90ea604fd14d3f7bcb6040d165df0e8a2d` |
| 12 | `instance` | [divisionMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/divisionmonoid--0105720825272f9ad0ac4ba9.md) | 137 | `declaration-track:0105720825272f9ad0ac4ba9d5ae199fbd6997e10a52a949f903c48ca684186c` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/instance--1ed54447f13147c9e3fc8cbb.md) | 146 | `declaration-track:1ed54447f13147c9e3fc8cbbf2e6fa9260b15934164d4f0861de87a7f8871624` |
| 14 | `instance` | [group](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/group--2198e18562cb26b9a8d2cb22.md) | 150 | `declaration-track:2198e18562cb26b9a8d2cb22363a6e777c110a1f79dac4861555f901d43be725` |
| 15 | `instance` | [addGroupWithOne](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/addgroupwithone--f523fdfc11bad988994483c3.md) | 158 | `declaration-track:f523fdfc11bad988994483c37600914eabb5d21e33f3acbbc046efdf810a4f9d` |
| 16 | `instance` | [commGroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/commgroup--fe4c498ccd1413bcdb0e483e.md) | 166 | `declaration-track:fe4c498ccd1413bcdb0e483e66261c164fe637c7ce323737ba1f1343e2463009` |
| 17 | `instance` | [leftCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/leftcancelsemigroup--7268cb1bf41fd7dad1081a00.md) | 172 | `declaration-track:7268cb1bf41fd7dad1081a00b96905cceb30cfc772c50a300909b146ecfa7b13` |
| 18 | `instance` | [rightCancelSemigroup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/rightcancelsemigroup--f5b914a0fe78f3282a024c05.md) | 183 | `declaration-track:f5b914a0fe78f3282a024c05e28fddbca3895a4ad9a70ba10e8749b634a57311` |
| 19 | `instance` | [leftCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/leftcancelmonoid--ea8458b328b66e09716369dc.md) | 194 | `declaration-track:ea8458b328b66e09716369dc889d70098560f54f566741fd98a91ced9bd7c8ae` |
| 20 | `instance` | [rightCancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/rightcancelmonoid--b3a9a9dd912d8a55042e77d6.md) | 200 | `declaration-track:b3a9a9dd912d8a55042e77d6ddcb109e6cf6aa3d68c9b3c2ef60940aed8baa7b` |
| 21 | `instance` | [cancelMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/cancelmonoid--56c00a879c35d5e5c9a59fe3.md) | 206 | `declaration-track:56c00a879c35d5e5c9a59fe3ed2a3d0863f7def4b972a1eeae609d88a33dff0a` |
| 22 | `instance` | [cancelCommMonoid](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/cancelcommmonoid--a1d8fe94511bff4776b74c1a.md) | 212 | `declaration-track:a1d8fe94511bff4776b74c1a34656345fc1f38646318615d0b31f0f4d93fa46f` |
| 23 | `instance` | [mulZeroClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulzeroclass--a9ce94f7a5106b5849dd6fb4.md) | 217 | `declaration-track:a9ce94f7a5106b5849dd6fb4d2db61ba37039e83cbb10cc1300207b2ca342abb` |
| 24 | `instance` | [mulZeroOneClass](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulzerooneclass--23c9426262066f0f9726d1dd.md) | 226 | `declaration-track:23c9426262066f0f9726d1dd31eb63676cc14237a992c24c03e893b4653f6917` |
| 25 | `instance` | [monoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoidwithzero--51a2d6f8de6b75d4dc5c8ed5.md) | 230 | `declaration-track:51a2d6f8de6b75d4dc5c8ed516ef8197074f147566d34aa74fffe9c027500154` |
| 26 | `instance` | [commMonoidWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/commmonoidwithzero--9d3473e20d793f87e9b9a649.md) | 234 | `declaration-track:9d3473e20d793f87e9b9a64952107b52df21059b4c5eecb235a2d2c1c4602a15` |
| 27 | `instance` | [semigroupWithZero](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/semigroupwithzero--23408c90196e21369d724e1e.md) | 238 | `declaration-track:23408c90196e21369d724e1eabd521b31fbb4bc3bf10c6c6d5a196b707bd990f` |
| 28 | `theorem` | [coe_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/coe-mul--aa8b5cebb27ece7086eb67c3.md) | 247 | `result-track:aa8b5cebb27ece7086eb67c349e03e79c9c14b201d6476882e4ce117a8ec0e0a` |
| 29 | `def` | [Pi.mulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulhom--0925b45a2073dad2713e8580.md) | 261 | `declaration-track:0925b45a2073dad2713e8580ed98995eff6bc72ce4a3118db3c3105f981f92da` |
| 30 | `theorem` | [Pi.mulHom_injective](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulhom-injective--8bb9d52bc938ffbb79e46224.md) | 270 | `result-track:8bb9d52bc938ffbb79e462245c30c7c597b67db018ee759a167c444bacb9c26e` |
| 31 | `def` | [Pi.monoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-monoidhom--44cc5cd2a56fce85453ffafa.md) | 282 | `declaration-track:44cc5cd2a56fce85453ffafa91762345bb8bbee4988d9656e2df79732032627a` |
| 32 | `theorem` | [Pi.monoidHom_injective](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-monoidhom-injective--52d41c0d2c3b2fdbe0583d4f.md) | 293 | `result-track:52d41c0d2c3b2fdbe0583d4ff67225383cc3bdc3057612e54f059fa172ae0ee2` |
| 33 | `def` | [Pi.evalMulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-evalmulhom--bf6289ef9ab5e405ac180f86.md) | 308 | `declaration-track:bf6289ef9ab5e405ac180f8611a9a2ef5c40f4c788d59499ae1c98635faa3399` |
| 34 | `def` | [Pi.constMulHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-constmulhom--15ac12e62abd55c0c0b32202.md) | 318 | `declaration-track:15ac12e62abd55c0c0b32202647f6e54e735b050036b18990041855032cce88f` |
| 35 | `def` | [MulHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulhom-coefn--4edb460e97f1d98ad0263de5.md) | 333 | `declaration-track:4edb460e97f1d98ad0263de5b672d041a283f986a353ed27ea4c159e211e2ac1` |
| 36 | `def` | [MulHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulhom-compleft--c441a1ebc95c0b0a6c2d0f94.md) | 346 | `declaration-track:c441a1ebc95c0b0a6c2d0f9415597242403ba5e1527ed24ab752467f65660472` |
| 37 | `def` | [Pi.evalMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-evalmonoidhom--91d7d2e66e151cd690dad140.md) | 367 | `declaration-track:91d7d2e66e151cd690dad140c5033ce12df6e433884c09044a73ae5e0c10c877` |
| 38 | `def` | [Pi.constMonoidHom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-constmonoidhom--85f642c11a3f2c43bba4880e.md) | 378 | `declaration-track:85f642c11a3f2c43bba4880e2ff7a3b3343df6e806fff9a7591b276f20f50c0c` |
| 39 | `def` | [MonoidHom.coeFn](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoidhom-coefn--1988d448cbe6e4fc29702258.md) | 394 | `declaration-track:1988d448cbe6e4fc297022580bc4fb40e42b683aa358a61879e8ffee250fce6c` |
| 40 | `def` | [MonoidHom.compLeft](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoidhom-compleft--a39b25ff463c3777b37825c8.md) | 408 | `declaration-track:a39b25ff463c3777b37825c800cc741fa608c6bcb07454192954c5998c62425e` |
| 41 | `def` | [OneHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/onehom-single--d4cfdbb8cdfb875490a06426.md) | 437 | `declaration-track:d4cfdbb8cdfb875490a0642633afef8a647494375836b8a24cd996e1c28ad295` |
| 42 | `theorem` | [OneHom.single_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/onehom-single-apply--03b9c5f28e5f2dfcf61d1757.md) | 444 | `result-track:03b9c5f28e5f2dfcf61d175758052c371e7a878a1342b7a5c22d253767ca674b` |
| 43 | `def` | [MonoidHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoidhom-single--ea32e2362e1cae8542d908b6.md) | 459 | `declaration-track:ea32e2362e1cae8542d908b6d7acf7760b14a0108689190148b6258cd069e09a` |
| 44 | `theorem` | [MonoidHom.single_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/monoidhom-single-apply--8f320bae93fe20fcfbba6560.md) | 465 | `result-track:8f320bae93fe20fcfbba65607daf38b6206d0d8adde88a00c031088f9593f53f` |
| 45 | `def` | [MulHom.single](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulhom-single--e3c6aa4872fcd412b84ccaed.md) | 476 | `declaration-track:e3c6aa4872fcd412b84ccaed8f47c69efe8f32769fae1e628b9523094f946664` |
| 46 | `theorem` | [Pi.mulSingle_sup](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-sup--a75f8c41845fc488b4b2b624.md) | 485 | `result-track:a75f8c41845fc488b4b2b624b49d43b01d7b53dd3022bbd5a1a65ee0f44e18f1` |
| 47 | `theorem` | [Pi.mulSingle_inf](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-inf--77890d71ee3bce51855620d1.md) | 492 | `result-track:77890d71ee3bce51855620d1c4c441b8d61ab39ac6b82dd280ae5950f9a38b01` |
| 48 | `theorem` | [Pi.mulSingle_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-mul--a5b2b36291cf9aa936ac2209.md) | 499 | `result-track:a5b2b36291cf9aa936ac22099c40924cae1f4611ca3459ac4ee84efe4b0dd6d3` |
| 49 | `theorem` | [Pi.mulSingle_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-inv--2d2fdbdc2886c75bbf049fbb.md) | 506 | `result-track:2d2fdbdc2886c75bbf049fbbbce447a4011c649d81e80852c7c8aba543128838` |
| 50 | `theorem` | [Pi.single_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-div--9206b6af1a16c8740bb0bd7b.md) | 513 | `result-track:9206b6af1a16c8740bb0bd7bc189c8137098aa14e43ac3526e1043639a332722` |
| 51 | `theorem` | [Pi.single_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-mul--4ff104f9aebcc2f94e5a1c8f.md) | 519 | `result-track:4ff104f9aebcc2f94e5a1c8fd0313ea1440a97877f764a0fbcd084a05d5ed062` |
| 52 | `theorem` | [Pi.single_mul_left_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-mul-left-apply--f040781cb5e54d8fa71ce347.md) | 524 | `result-track:f040781cb5e54d8fa71ce347639920dbe432fc2851a11b73e5ed4fcc33a6b5e6` |
| 53 | `theorem` | [Pi.single_mul_right_apply](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-mul-right-apply--9fcaa862d4386ea5fca5f788.md) | 529 | `result-track:9fcaa862d4386ea5fca5f7889714097b38007b40a9deaad40304a5d4de7cb1f1` |
| 54 | `theorem` | [Pi.single_mul_left](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-mul-left--cfe74e320eb678e11e4b1dcb.md) | 534 | `result-track:cfe74e320eb678e11e4b1dcb37e58299a3269efb70843de7aa3e18a3a4b79960` |
| 55 | `theorem` | [Pi.single_mul_right](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-single-mul-right--a254897a23db67385f9d95b4.md) | 539 | `result-track:a254897a23db67385f9d95b42e8479f5c9c8408d77c8289a7eeecf120525dcfa` |
| 56 | `theorem` | [Pi.mulSingle_commute](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-commute--36a6ca20d295c2ee7d28a1e3.md) | 551 | `result-track:36a6ca20d295c2ee7d28a1e388563c24bc3db3ab37a2e715c2634d2369c31c79` |
| 57 | `theorem` | [Pi.mulSingle_apply_commute](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-apply-commute--96127c6349f49bfda5a9e3b2.md) | 566 | `result-track:96127c6349f49bfda5a9e3b236aa014f5ea65f167a9f7a939bc36ff8aaa06382` |
| 58 | `theorem` | [Pi.update_eq_div_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-update-eq-div-mul-mulsingle--8f4d24b1e6c51759012b8c32.md) | 575 | `result-track:8f4d24b1e6c51759012b8c322d79f185476cf6328ba1b8f4f26a548a68cfb924` |
| 59 | `theorem` | [Pi.mulSingle_mul_mulSingle_eq_mulSingle_mul_mulSingle](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/pi-mulsingle-mul-mulsingle-eq-mulsingle-mul-mulsingle--1b37111ef23ab8815dcdad45.md) | 585 | `result-track:1b37111ef23ab8815dcdad45c539237f8edce06a6cf192a5325ec8bb506dd88d` |
| 60 | `theorem` | [update_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/update-one--04fd9abcbb1a03070e279e07.md) | 624 | `result-track:04fd9abcbb1a03070e279e0712e9f2ee7b66a02e0aa1ff0c4cb09af7d8b4acdd` |
| 61 | `theorem` | [update_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/update-mul--df5067f93e1eaf5d11ab1691.md) | 630 | `result-track:df5067f93e1eaf5d11ab16915d7f1b4de9577152e4fbbf5715001c14b25ed618` |
| 62 | `theorem` | [update_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/update-inv--ff47b1db82d5ee6891c99fdd.md) | 637 | `result-track:ff47b1db82d5ee6891c99fdd4a63b9cfe4c8da79783fcc377251b11743fc3fad` |
| 63 | `theorem` | [update_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/update-div--540238b69a3e875b8d806092.md) | 644 | `result-track:540238b69a3e875b8d80609204db5df48d2a2b7ef315d28a210eb85145020106` |
| 64 | `theorem` | [const_eq_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/const-eq-one--c4621967d61d635dc1163e6d.md) | 653 | `result-track:c4621967d61d635dc1163e6d4452418216b37b447d6180eab95f0742626e2ea8` |
| 65 | `theorem` | [const_ne_one](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/const-ne-one--ce0a49551394a3479ed9fe61.md) | 659 | `result-track:ce0a49551394a3479ed9fe612d1df0740aa1194ae05cec3dc5ff33eaf6bdaf44` |
| 66 | `theorem` | [Set.piecewise_mul](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/set-piecewise-mul--c5d90527bd8a38cd4ac8254f.md) | 669 | `result-track:c5d90527bd8a38cd4ac8254f318ad2cc0c8f52224d960b0f357c376932c90636` |
| 67 | `theorem` | [Set.piecewise_inv](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/set-piecewise-inv--d5de6f922b138e0e2393e697.md) | 677 | `result-track:d5de6f922b138e0e2393e697c2cfc790fde21218c1387ca3626dbf8b460b7c10` |
| 68 | `theorem` | [Set.piecewise_div](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/set-piecewise-div--048204f8895ecd8ac60fb4f2.md) | 684 | `result-track:048204f8895ecd8ac60fb4f2d4ce0bf6e343c957b5aee9caa43defb00fa30e43` |
| 69 | `def` | [Function.ExtendByOne.hom](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/function-extendbyone-hom--13d2842704f6a1eeeaaec756.md) | 699 | `declaration-track:13d2842704f6a1eeeaaec7561853d28b6680cb8c7ccc86721bc971e56ae4c779` |
| 70 | `theorem` | [mulSingle_mono](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulsingle-mono--52ff52baf0ccd0b93658a05c.md) | 716 | `result-track:52ff52baf0ccd0b93658a05c82c16cde5726f73a179a6350e6f1f568197a6a83` |
| 71 | `theorem` | [mulSingle_strictMono](../../../../../mathematics/Algebra/GroupTheory/Pi/Variant4528ddfaf87df6a5a04e95c4689f8a9bf27d7dfe176294fc222f3383ae31f58b.lean/declarations/mulsingle-strictmono--a2480767699d4bff2dc3da39.md) | 722 | `result-track:a2480767699d4bff2dc3da3981f1159dee9983a4c516d57aaf0a7d84868b6b22` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
