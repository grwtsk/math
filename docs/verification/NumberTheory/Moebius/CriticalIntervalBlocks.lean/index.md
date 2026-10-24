# Verification target: GRWTSK.NumberTheory.Moebius.CriticalIntervalBlocks

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80cbd19c8972c36004ddb69fc831db1ba086aeb0",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80cbd19c8972c36004ddb69fc831db1ba086aeb0`.

Source path: `GRWTSK/NumberTheory/Moebius/CriticalIntervalBlocks.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/CriticalIntervalBlocks.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.VerticalLineMonotonicity`](../../../../mathematics/NumberTheory/Moebius/VerticalLineMonotonicity.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceTransform`](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceTransform.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Integration.ExponentialInterval`](../../../../mathematics/Analysis/RealAnalysis/Integration/ExponentialInterval.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.SpecialFunctions.PowerIntervalDrop`](../../../../mathematics/Analysis/SpecialFunctions/PowerIntervalDrop.lean/index.md) — import line 7; pinned internal source present.
- [`GRWTSK.Analysis.AsymptoticAnalysis.PowerWeightedSquareSummability`](../../../../mathematics/Analysis/AsymptoticAnalysis/PowerWeightedSquareSummability__SourceOccurrencea0927f76e0271daad050314e.lean/index.md) — import line 8; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupWeightedPrefix_eq_mertens_add_wholePickup](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/pickupweightedprefix-eq-mertens-add-wholepickup--b38a332ae215522143f34f8d.md) | 40 | `result-track:b38a332ae215522143f34f8d0d84aff3c4cbacea1d8f84d62a5280c8f4f95659` |
| 2 | `theorem` | [pickupWeightedPrefix_eq_mertens_add_integral](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/pickupweightedprefix-eq-mertens-add-integral--de4c0760d7ee87fee7af68c5.md) | 60 | `result-track:de4c0760d7ee87fee7af68c5ea0f5b48ac172aa960cf32f020456e519eace33e` |
| 3 | `theorem` | [mertensPrefix_exp_le_of_powerBound](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/mertensprefix-exp-le-of-powerbound--9e266e84121837dba0d19768.md) | 71 | `result-track:9e266e84121837dba0d19768fccc7f6749188110ecf0c24f18d1eaede9f73573` |
| 4 | `theorem` | [abelIntegral_abs_le_of_mertensPowerBound](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/abelintegral-abs-le-of-mertenspowerbound--12384fba8a4d0ec03fd7a9c6.md) | 97 | `result-track:12384fba8a4d0ec03fd7a9c688c3d16a9867cf2c2518579e0c879cb880766f1b` |
| 5 | `theorem` | [pickupWeightedPrefix_le_of_mertensPowerBound](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/pickupweightedprefix-le-of-mertenspowerbound--bb1136e0e319c90587cb6529.md) | 154 | `result-track:bb1136e0e319c90587cb6529a3d99c84002cb30f88275ae5c17f791747d104c1` |
| 6 | `theorem` | [wholePickup_eq_prefix_flux_on_log_cell](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/wholepickup-eq-prefix-flux-on-log-cell--0423e24aeb342b62bc7357af.md) | 218 | `result-track:0423e24aeb342b62bc7357af54f030e9ff888e1bd4f4570231d3a3b0d2a69fb7` |
| 7 | `def` | [criticalIntervalBlock](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblock--fe6b04f87ae3dba1a897766c.md) | 248 | `declaration-track:fe6b04f87ae3dba1a897766cda19950e79f2909eb44386bd83a411d1b23f49ad` |
| 8 | `theorem` | [criticalIntervalBlock_eq_pickup](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblock-eq-pickup--1195f64af7124d670a65c2e8.md) | 255 | `result-track:1195f64af7124d670a65c2e8bb8d5fa324ba0738ad17896719ed1bf8d80142d9` |
| 9 | `theorem` | [criticalIntervalBlock_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblock-nonneg--db1fac3a7c1924e94c3b5c6f.md) | 272 | `result-track:db1fac3a7c1924e94c3b5c6f5de107290466314ec2219bda97b1bc8dc2b10aaa` |
| 10 | `def` | [exponentialLogDrop](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/exponentiallogdrop--fde69b104f7266f349cf8848.md) | 283 | `declaration-track:fde69b104f7266f349cf8848829c348fd54e150dba3642a3a7630103c1b9c604` |
| 11 | `theorem` | [criticalIntervalBlock_closedForm](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblock-closedform--9094d01293f587cb01a9a902.md) | 290 | `result-track:9094d01293f587cb01a9a9023bd174d7098a87c81cd9de8d743122792b563a3d` |
| 12 | `theorem` | [exponentialLogDrop_eq_rpow](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/exponentiallogdrop-eq-rpow--a636ab30d81cd69f36cc6c17.md) | 335 | `result-track:a636ab30d81cd69f36cc6c171ea54ea0335c28ca32f86421a77663f01ab8199c` |
| 13 | `theorem` | [exponentialLogDrop_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/exponentiallogdrop-nonneg--386411562b98700652c60fba.md) | 345 | `result-track:386411562b98700652c60fba2e6a9a6f4892134bacfd8f2fe98e13fe93bb7a43` |
| 14 | `def` | [criticalIntervalMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalmajorant--1537f3e41227db5e14a2a5b4.md) | 361 | `declaration-track:1537f3e41227db5e14a2a5b420cbddc4da85948b9e95e220eb1f1348f384cf1d` |
| 15 | `theorem` | [criticalIntervalMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalmajorant-nonneg--b6db66c5c8cb0b018c6bd617.md) | 367 | `result-track:b6db66c5c8cb0b018c6bd61747418a3e79bcbeea25764e73f5f0af814f42ad4d` |
| 16 | `theorem` | [criticalIntervalBlock_le_majorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblock-le-majorant--6ec9992e3df97618c24074f4.md) | 375 | `result-track:6ec9992e3df97618c24074f4f14d51de2ab14b82689c645618349e967c4cae5a` |
| 17 | `def` | [CriticalIntervalMajorantSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalmajorantsummable--b56f278a8fad8e49fd8b614a.md) | 397 | `declaration-track:b56f278a8fad8e49fd8b614a279a1ed233dd166177b3a830dffaa2ba0f9e32ed` |
| 18 | `def` | [criticalPrefixPowerMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixpowermajorant--3955807ade6ca748cbbf20c7.md) | 402 | `declaration-track:3955807ade6ca748cbbf20c763233afc0fed7199a0bf82c885f41f035b884a90` |
| 19 | `theorem` | [criticalPrefixPowerMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixpowermajorant-nonneg--fd34ca57b3697f466624346f.md) | 408 | `result-track:fd34ca57b3697f466624346fa9c414b6101ea1668d9bbfe66927037078d45de2` |
| 20 | `theorem` | [exponentialLogDrop_le_rpow](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/exponentiallogdrop-le-rpow--d89f1c490a3ddef93c84647d.md) | 413 | `result-track:d89f1c490a3ddef93c84647d68d7cc34e9c90182f9b4faf7b2a3d222bfcc0410` |
| 21 | `theorem` | [criticalIntervalMajorant_le_prefixPowerMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalmajorant-le-prefixpowermajorant--f992e2ee7d22aca983ba6fec.md) | 421 | `result-track:f992e2ee7d22aca983ba6fec7a3afb8c926fd5373d7013c1e28afad4f7af8091` |
| 22 | `def` | [CriticalPrefixPowerSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixpowersummable--4dc35d633b2d1d605f7c3233.md) | 458 | `declaration-track:4dc35d633b2d1d605f7c3233a1e466705155fb1fdb52e55099afc4f86828a53f` |
| 23 | `def` | [criticalPrefixSquareMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixsquaremajorant--662b2e49938966fe73a14cf1.md) | 463 | `declaration-track:662b2e49938966fe73a14cf18b464f4fca540864119b364e6e1bdc850f23007b` |
| 24 | `theorem` | [criticalPrefixSquareMajorant_nonneg](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixsquaremajorant-nonneg--6a35fba820ce59f7076b9e84.md) | 467 | `result-track:6a35fba820ce59f7076b9e842b12c4b28bf5616422f5f71bf587e2b609456864` |
| 25 | `theorem` | [criticalPrefixPowerMajorant_le_squareMajorant](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixpowermajorant-le-squaremajorant--7c9eacd577c4279b0db51ef1.md) | 472 | `result-track:7c9eacd577c4279b0db51ef1397b93ed391e6fb2c6900d6a52bcf38b270f81ac` |
| 26 | `def` | [CriticalPrefixSquareSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixsquaresummable--4863a9be0dd2f8740b21ba9a.md) | 509 | `declaration-track:4863a9be0dd2f8740b21ba9a40835bb0480d1da4bb6f3eed351d7e8affcdd488` |
| 27 | `def` | [CriticalWeightedPrefixSquareSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalweightedprefixsquaresummable--2d81adb5391b21765b9d25dd.md) | 513 | `declaration-track:2d81adb5391b21765b9d25dd0a0e3a80f4710397486922701c1b231efc9158e6` |
| 28 | `def` | [CriticalMertensPrefixSquareSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalmertensprefixsquaresummable--43233484914294b21f9fc9e2.md) | 518 | `declaration-track:43233484914294b21f9fc9e25f3fd57eb2e4a55ddad568ce18ed5765d41bfa7e` |
| 29 | `theorem` | [criticalPrefixSquareSummable_of_components](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixsquaresummable-of-components--3a8bf8a0985acce0817357f3.md) | 522 | `result-track:3a8bf8a0985acce0817357f311a5f3a8ef1fd06fefb5e8c09881b0c68e20e3fb` |
| 30 | `theorem` | [criticalPrefixPowerSummable_of_squareSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalprefixpowersummable-of-squaresummable--c43496e555e6a0019b8cecf6.md) | 531 | `result-track:c43496e555e6a0019b8cecf6ac9b2b07da92faa845be9c08d24ebcf4369c6034` |
| 31 | `theorem` | [criticalIntervalMajorantSummable_of_prefixPowerSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalmajorantsummable-of-prefixpowersummable--f7c0b7efc690a13518a37d2e.md) | 541 | `result-track:f7c0b7efc690a13518a37d2e42cb47966572c518f314692435109198f0c823ad` |
| 32 | `def` | [criticalIntervalBlockSum](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblocksum--9b17e27461dbd383186edc3d.md) | 553 | `declaration-track:9b17e27461dbd383186edc3d9ae24b478bb0a4bbf32ca25ed25d6166635d4c4e` |
| 33 | `theorem` | [criticalIntervalBlockSum_eq_integral](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblocksum-eq-integral--40916bfafa6028f85806958a.md) | 558 | `result-track:40916bfafa6028f85806958a9d6a52c96576e7ddcc78f0c1726f25384fb02d7b` |
| 34 | `theorem` | [criticalIntervalBlockSum_eq_verticalLineMass](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblocksum-eq-verticallinemass--f30a59409d8c7675ff430467.md) | 579 | `result-track:f30a59409d8c7675ff430467478ad0d105d4e67b89f3e05874056d1a487e6fa5` |
| 35 | `theorem` | [verticalLineMass_mono_horizon](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/verticallinemass-mono-horizon--90ad4b6f3f9847009d383dec.md) | 596 | `result-track:90ad4b6f3f9847009d383dec583794c649c5c23a3e6387ff48476f9ce7e03ac8` |
| 36 | `def` | [CriticalBoundaryVerticalLineUniform](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundaryverticallineuniform--5c2508821a72f8eaa789b8f8.md) | 610 | `declaration-track:5c2508821a72f8eaa789b8f82148ae72679ef82505d17e7fb0079df018baa66d` |
| 37 | `def` | [CriticalIntervalBlockUniform](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblockuniform--363f1f9d9088e9a3278faffc.md) | 614 | `declaration-track:363f1f9d9088e9a3278faffce0eda00380f51636bbe64c0163b690c9adad67fd` |
| 38 | `theorem` | [criticalIntervalBlockUniform_of_majorantSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblockuniform-of-majorantsummable--a34e17a22cbcc65a629d8649.md) | 617 | `result-track:a34e17a22cbcc65a629d86496ba921ec77185b9f14d6f4a57b0371c8da2cec12` |
| 39 | `theorem` | [criticalIntervalBlockUniform_of_boundary](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalintervalblockuniform-of-boundary--833280e9e7dc404addb04429.md) | 632 | `result-track:833280e9e7dc404addb04429b060d30f3cc428c9f11b2196952d373dc78fff65` |
| 40 | `theorem` | [criticalBoundary_of_intervalBlockUniform](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-intervalblockuniform--792fb38d1a711fb3ddb28a79.md) | 641 | `result-track:792fb38d1a711fb3ddb28a791fb751688de357f999b4e2c3e623366df52d60b9` |
| 41 | `theorem` | [criticalBoundary_iff_intervalBlockUniform](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-iff-intervalblockuniform--686f26fa71404968071241c2.md) | 661 | `result-track:686f26fa71404968071241c2aad9f600adb3a9046a2e89831707e26dd1a61593` |
| 42 | `theorem` | [criticalBoundary_of_majorantSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-majorantsummable--ed9cff7a5dfc1da8235f5bde.md) | 666 | `result-track:ed9cff7a5dfc1da8235f5bde9b372e63a8d07b4fbcb8326d0e8c4ab5417e0006` |
| 43 | `theorem` | [criticalBoundary_of_prefixPowerSummable](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-prefixpowersummable--182d97894fa1f9b5b259f0f3.md) | 672 | `result-track:182d97894fa1f9b5b259f0f38469f72a089f73e31cd0281f78d4b34fa6258280` |
| 44 | `theorem` | [criticalBoundary_of_prefixSquareComponents](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-prefixsquarecomponents--66957af248c3b1d4e0fd0ddf.md) | 678 | `result-track:66957af248c3b1d4e0fd0ddfb875d8aa24f4baec07958d9dac31e9b4cb7dbb95` |
| 45 | `theorem` | [criticalBoundary_of_prefixPowerBounds](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-prefixpowerbounds--c358d85ced42892c7d85b830.md) | 689 | `result-track:c358d85ced42892c7d85b83061d700d6a9dab5d2396624319cbf55dba8e0fdc9` |
| 46 | `theorem` | [criticalBoundary_of_mertensPowerSaving](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-mertenspowersaving--e2955d6a8d49eb92eba4100a.md) | 713 | `result-track:e2955d6a8d49eb92eba4100a03e22063c2fede4ef0e8d5071f318f6a883cbc11` |
| 47 | `theorem` | [criticalBoundary_of_nonnegative_mertensPowerSaving](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-nonnegative-mertenspowersaving--2f4f241ea5f79827b23986f4.md) | 729 | `result-track:2f4f241ea5f79827b23986f4b4f52cf38146536aa46ec28b67fcfb15d59e1365` |
| 48 | `theorem` | [criticalBoundary_of_criticalReciprocal](../../../../mathematics/NumberTheory/Moebius/CriticalIntervalBlocks.lean/declarations/criticalboundary-of-criticalreciprocal--e111a00f8829e29d0ae865a3.md) | 748 | `result-track:e111a00f8829e29d0ae865a378fc531df44bcc915dd3d55de46ba704ef145087` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
