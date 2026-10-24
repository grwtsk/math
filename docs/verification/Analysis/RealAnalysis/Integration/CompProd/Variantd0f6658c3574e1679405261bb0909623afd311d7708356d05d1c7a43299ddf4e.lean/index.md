# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompProd.Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a43c2990d0c5f8048bcc84378d0cf0bee56c7c5d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.Composition.MapComap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Kernel.MeasurableLIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun--b0895c300505f3f50809fc53.md) | 67 | `declaration-track:b0895c300505f3f50809fc53d625bc1975b81de3667b95263586296d0e09e574` |
| 2 | `theorem` | [compProdFun_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun-empty--1e86ad043ed1da39ee9430bb.md) | 71 | `result-track:1e86ad043ed1da39ee9430bb1bc7392e22341a39384f3e157d1db0810f8220e3` |
| 3 | `theorem` | [compProdFun_iUnion](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun-iunion--333160424f1315476b123cd6.md) | 76 | `result-track:333160424f1315476b123cd629a38bfac66c3fd65aa32afe0f6c36705a317e64` |
| 4 | `theorem` | [compProdFun_tsum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun-tsum-right--eaca4a794f2d09fb29e34777.md) | 103 | `result-track:eaca4a794f2d09fb29e3477785bd95bce08dec58987d8edc6fa4d2f2f95fde06` |
| 5 | `theorem` | [compProdFun_tsum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun-tsum-left--744aab2d5b16946648e040be.md) | 115 | `result-track:744aab2d5b16946648e040beaa724c1dfa55d8f464a3e03993da15ea69fa635f` |
| 6 | `theorem` | [compProdFun_eq_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprodfun-eq-tsum--e289857e3c7269e6891c06cb.md) | 119 | `result-track:e289857e3c7269e6891c06cb9cda0a3ca59da4d51a8f6104c9e9016d3ed7dc9a` |
| 7 | `theorem` | [measurable_compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/measurable-compprodfun--fddb98ef740fc56b5970a769.md) | 124 | `result-track:fddb98ef740fc56b5970a769fe049a2f45a5e02df2fbb0d555cf701891d1bf5a` |
| 8 | `def` | [compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod--9cb3272f86c37b6ec61f0a31.md) | 142 | `declaration-track:9cb3272f86c37b6ec61f0a316868b0379385f37d51627cae29a0479f979e469d` |
| 9 | `theorem` | [compProd_apply_eq_compProdFun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-apply-eq-compprodfun--0d316e7724a39c80c553e8cb.md) | 163 | `result-track:0d316e7724a39c80c553e8cb42b85fb58eeb8c8a2ce641c86f2cb383166b6fd9` |
| 10 | `theorem` | [compProd_of_not_isSFiniteKernel_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-of-not-issfinitekernel-left--0e94af6bd21b5572265d1f31.md) | 177 | `result-track:0e94af6bd21b5572265d1f31423a2ff5219a5b0c3c8fa2a6ae83c912d7fecdb1` |
| 11 | `theorem` | [compProd_of_not_isSFiniteKernel_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-of-not-issfinitekernel-right--dab4d72297cf2d8370070391.md) | 184 | `result-track:dab4d72297cf2d8370070391bacaa8cf2f6c9e9ddc30b21be3bdd8ca66c0fbc0` |
| 12 | `theorem` | [compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-apply--89985310b422f0a51e289649.md) | 190 | `result-track:89985310b422f0a51e2896495175bcf7796f9729cc67dedca64faab971a546b0` |
| 13 | `theorem` | [le_compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/le-compprod-apply--38913efb45c07b89f4c2440c.md) | 195 | `result-track:38913efb45c07b89f4c2440c0b03883be75886c5d87ad0125f5157b2f914bb65` |
| 14 | `lemma` | [compProd_apply_univ](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-apply-univ--fc8828e64543f0ae6e3d788e.md) | 207 | `result-track:fc8828e64543f0ae6e3d788eb11aa5c3ac48602bc5690bd7129d34ae4cc4114f` |
| 15 | `lemma` | [compProd_apply_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-apply-prod--030e58111559cdeac9870046.md) | 213 | `result-track:030e58111559cdeac98700460f054d4a801b114811aecd5c8970725e54de8e97` |
| 16 | `lemma` | [compProd_congr](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-congr--f0805fc5ffccb883c7a57d75.md) | 221 | `result-track:f0805fc5ffccb883c7a57d750235837864f69e1ffb42e1ab01f2932d892a180f` |
| 17 | `lemma` | [compProd_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-zero-left--3b958a3db2d24c3c67c4efdf.md) | 232 | `result-track:3b958a3db2d24c3c67c4efdfd429747226220a21ddeb39e2772e53b6645b8582` |
| 18 | `lemma` | [compProd_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-zero-right--990e7b8a5aa0fd01166a8233.md) | 241 | `result-track:990e7b8a5aa0fd01166a823363bcdff22f19faebd6772242015b8773abb51226` |
| 19 | `lemma` | [compProd_eq_zero_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-eq-zero-iff--94d46c2b0561432cbc2b21b6.md) | 249 | `result-track:94d46c2b0561432cbc2b21b6d91eb98a8403c48488f5791b5b8cdada36ec6831` |
| 20 | `lemma` | [compProd_preimage_fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-preimage-fst--33b8b2e8ee810e2367907d0b.md) | 261 | `result-track:33b8b2e8ee810e2367907d0b4f3043818755ba96edcc83c3645a80a1dd8622a6` |
| 21 | `lemma` | [compProd_deterministic_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-deterministic-apply--e0f37a20effe8989c6f854a1.md) | 273 | `result-track:e0f37a20effe8989c6f854a15bd3a17568c414fd8e7f71b5df8f389210517539` |
| 22 | `theorem` | [ae_kernel_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ae-kernel-lt-top--ceae6e20b5d77bb823af85cb.md) | 301 | `result-track:ceae6e20b5d77bb823af85cbfdbd50b6a303d8282ace193643a6a799b2eb481d` |
| 23 | `theorem` | [compProd_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-null--71e0f3d0f0a90514a5972778.md) | 314 | `result-track:71e0f3d0f0a90514a5972778a6e52c0dc2b545c8adbfc54d5302369ad15a6ec6` |
| 24 | `theorem` | [ae_null_of_compProd_null](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ae-null-of-compprod-null--5e01028fc9ed9236ae26f4d4.md) | 319 | `result-track:5e01028fc9ed9236ae26f4d41956e9def04d305e81969e093ef05b39b2d45999` |
| 25 | `theorem` | [ae_ae_of_ae_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ae-ae-of-ae-compprod--8c882ca9c1beb39515128a4b.md) | 329 | `result-track:8c882ca9c1beb39515128a4be47f4b83e8e5df96919cb64426cb77dfab08ea10` |
| 26 | `lemma` | [ae_compProd_of_ae_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ae-compprod-of-ae-ae--20ad55b55348e585c124ca8d.md) | 333 | `result-track:20ad55b55348e585c124ca8d9b41a7deed889730811f610f82b5723bd1b43340` |
| 27 | `lemma` | [ae_compProd_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ae-compprod-iff--dbc25d7070e62f193251e265.md) | 346 | `result-track:dbc25d7070e62f193251e265580a1fd62daf4a6804c34857950ebb80a10bc4e9` |
| 28 | `theorem` | [compProd_restrict](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-restrict--551d1f9ea8bd3546d805740b.md) | 356 | `result-track:551d1f9ea8bd3546d805740ba361974b7952d4c3c2ef6ffcbf1cbd136b340893` |
| 29 | `theorem` | [compProd_restrict_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-restrict-left--63e13026ee14c5e42ddd5b35.md) | 372 | `result-track:63e13026ee14c5e42ddd5b351ff1193ac0627db3c2ab97ac2458e2f2bbfe3cca` |
| 30 | `theorem` | [compProd_restrict_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-restrict-right--683b846c4064d66cc8ad4bc9.md) | 377 | `result-track:683b846c4064d66cc8ad4bc9bc27e88a4703f6e28ff54bf79765c2a6deeea0d0` |
| 31 | `theorem` | [lintegral_compProd'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/lintegral-compprod--5dddc0a30ceb5fd49277f25e.md) | 390 | `result-track:5dddc0a30ceb5fd49277f25ea47f9b14177ca66ae1f7dedb84395b2083c25ab6` |
| 32 | `theorem` | [lintegral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/lintegral-compprod--b6721d2f701c8d790769db7f.md) | 447 | `result-track:b6721d2f701c8d790769db7f5502bfab1fd20aa13f7f7929e954f2d9790e845a` |
| 33 | `theorem` | [lintegral_compProd₀](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/lintegral-compprod--6f5a0345407900929c183121.md) | 457 | `result-track:6f5a0345407900929c18312155ca9c257ea8adcaa80476673268cd097b28ea7d` |
| 34 | `theorem` | [setLIntegral_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/setlintegral-compprod--934519c56890400e10d0d45b.md) | 467 | `result-track:934519c56890400e10d0d45be3801dc29c4160519010193976f2431b17a40324` |
| 35 | `theorem` | [setLIntegral_compProd_univ_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/setlintegral-compprod-univ-right--ead8b62729a7ab7288d7c595.md) | 474 | `result-track:ead8b62729a7ab7288d7c595ece032b44aa61a68b8e11e553a4f92705a04b60b` |
| 36 | `theorem` | [setLIntegral_compProd_univ_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/setlintegral-compprod-univ-left--48e39ab7d525171db8f272d8.md) | 480 | `result-track:48e39ab7d525171db8f272d814cb286e1c5f3719c1c0af8fad3da4c246f6b7d7` |
| 37 | `theorem` | [compProd_eq_tsum_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-eq-tsum-compprod--f493679f3b8fcbad4d5d2ff6.md) | 488 | `result-track:f493679f3b8fcbad4d5d2ff63068cae07a1d419512f36781753f985bd0adf1ea` |
| 38 | `theorem` | [compProd_eq_sum_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-eq-sum-compprod--b8718d3b45ea659f1dc0d9cc.md) | 493 | `result-track:b8718d3b45ea659f1dc0d9cc5ca4821f72faaf66886aa0c21f700eb1cc75d7c9` |
| 39 | `theorem` | [compProd_eq_sum_compProd_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-eq-sum-compprod-left--3daf9bdf47c1a4932a88be8f.md) | 497 | `result-track:3daf9bdf47c1a4932a88be8f0d97b93de072d7009fb5925cd1cf8092491a1e46` |
| 40 | `theorem` | [compProd_eq_sum_compProd_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-eq-sum-compprod-right--a74d2768f9dff2c8c4762162.md) | 508 | `result-track:a74d2768f9dff2c8c47621626578654dea9e085e76acbec8c0eb4751cddd2ba9` |
| 41 | `instance` | [IsMarkovKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/ismarkovkernel-compprod--20374568f76c1c5ee5af3f90.md) | 518 | `declaration-track:20374568f76c1c5ee5af3f90e92b5e58a0638718b6a1d209d3d89e1037b40607` |
| 42 | `instance` | [IsZeroOrMarkovKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/iszeroormarkovkernel-compprod--ef40acdd482101f5acfb865c.md) | 522 | `declaration-track:ef40acdd482101f5acfb865c1139389ecc3388bbbdfb4a7957f0dec9b8dde5e0` |
| 43 | `theorem` | [compProd_apply_univ_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-apply-univ-le--079cf7fc6e24e35838b4ae6f.md) | 527 | `result-track:079cf7fc6e24e35838b4ae6f38ca788297a13e3610769349cfaf811a0b678cb8` |
| 44 | `instance` | [IsFiniteKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/isfinitekernel-compprod--873f11ecb2c91270395646f4.md) | 541 | `declaration-track:873f11ecb2c91270395646f4c0f758881d1eb8ea1f23920b70dd510d48651092` |
| 45 | `instance` | [IsSFiniteKernel.compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/issfinitekernel-compprod--9c62acf408f568ba1aa381e0.md) | 550 | `declaration-track:9c62acf408f568ba1aa381e0f8c490dc6aa3fe459876f69e2b282c76c40af652` |
| 46 | `lemma` | [compProd_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-add-left--e6c724906bedaa8433f17d64.md) | 563 | `result-track:e6c724906bedaa8433f17d64cfafa326b45462518bc2aa876015a9103996da63` |
| 47 | `lemma` | [compProd_add_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-add-right--3e1126dea057e5c68e7b9bcb.md) | 571 | `result-track:3e1126dea057e5c68e7b9bcb7cf0c07e33c97d030516a033dc06b5d82c184cb6` |
| 48 | `lemma` | [compProd_sum_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-sum-left--af0eadaa1cbe094fb8540b51.md) | 581 | `result-track:af0eadaa1cbe094fb8540b51fa183170b67b302bfb63947544c37bd5bbb8aa7b` |
| 49 | `lemma` | [compProd_sum_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/compprod-sum-right--b8434d7eec1e29bb9b792e13.md) | 590 | `result-track:b8434d7eec1e29bb9b792e130e5d50900ed2381928cd6650891141ff5a97506e` |
| 50 | `lemma` | [comapRight_compProd_id_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/comapright-compprod-id-prod--213ebdc36b9d74600488c73f.md) | 603 | `result-track:213ebdc36b9d74600488c73ff0237a34abf915eff84656f2093326a484074f65` |
| 51 | `lemma` | [fst_compProd_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/fst-compprod-apply--6c08394eeeca44e5e9973f8a.md) | 625 | `result-track:6c08394eeeca44e5e9973f8a20ab54059af0cc348cf159019cf87c555e4cedbe` |
| 52 | `lemma` | [fst_compProd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompProd/Variantd0f6658c3574e1679405261bb0909623afd311d7708356d05d1c7a43299ddf4e.lean/declarations/fst-compprod--984066bfd9ee887a814b268c.md) | 635 | `result-track:984066bfd9ee887a814b268c8bf9040abeb6e23511d6cf1fca47376742ddb97c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
