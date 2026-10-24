# Verification target: GRWTSK.Algebra.LinearAlgebra.Internal.Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "03f640e82c1320e0e994e21efb704bc0571f1d3c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `03f640e82c1320e0e994e21efb704bc0571f1d3c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean.json)

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
| 1 | `def` | [GradedTensorProduct](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/gradedtensorproduct--da29646f279af9364f86375e.md) | 73 | `declaration-track:da29646f279af9364f86375efd078c2206500af3c7ca4771379fd5265bd15ba4` |
| 2 | `def` | [of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/of--471cd67db4f427f248c721ae.md) | 89 | `declaration-track:471cd67db4f427f248c721ae3ecebd8ad156e05f00978e12619eff7d971ee421` |
| 3 | `theorem` | [of_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/of-one--72252aa8714e8d43fbf855a3.md) | 92 | `result-track:72252aa8714e8d43fbf855a38445d2e508efd70d48620a55bba88381532f8438` |
| 4 | `theorem` | [of_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/of-symm-one--dcc00267c034ed3d96014a5a.md) | 95 | `result-track:dcc00267c034ed3d96014a5a0ba6d7092ec403f862bffba5ec9542941306e0be` |
| 5 | `theorem` | [of_symm_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/of-symm-of--2500aface6027cc0231c02fd.md) | 98 | `result-track:2500aface6027cc0231c02fd37315523173baf5854feb9a87f4b7a870043ecc8` |
| 6 | `theorem` | [symm_of_of](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/symm-of-of--f46d993cd7733a4ba881716b.md) | 101 | `result-track:f46d993cd7733a4ba881716b0f91d31dda47d160249c853e2bb7b78c92f9fd2e` |
| 7 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/hom-ext--57cba3e32ee99e48126c36e3.md) | 106 | `result-track:57cba3e32ee99e48126c36e39411df61f6939dcbe539473db017fd38a057f347` |
| 8 | `abbrev` | [tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul--1f56589973e8eccfaa27a2c5.md) | 113 | `declaration-track:1f56589973e8eccfaa27a2c51ddaabb00162653fec5164713c6c877ce9815108` |
| 9 | `def` | [auxEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv--c8a2df42d9e7a4c9a5120b60.md) | 124 | `declaration-track:c8a2df42d9e7a4c9a5120b603ec9bc81e19ea3bc44117cc3b5ae4d8f217f146c` |
| 10 | `theorem` | [auxEquiv_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv-tmul--1a483fbe82c1a6b8bbddb9a3.md) | 129 | `result-track:1a483fbe82c1a6b8bbddb9a3ac15896bdc7e52ec1e1bdd9553de2858489c3c70` |
| 11 | `theorem` | [auxEquiv_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv-one--f06b3f1528b6e7c825fed607.md) | 132 | `result-track:f06b3f1528b6e7c825fed6079d414692f05c336f07b019bdb5ed71518dce47bc` |
| 12 | `theorem` | [auxEquiv_symm_one](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv-symm-one--eefb2aa976f0c40dc9dd3cc3.md) | 136 | `result-track:eefb2aa976f0c40dc9dd3cc32401448d6d02e49502693db1b745ed0b6c33be09` |
| 13 | `def` | [mulHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/mulhom--322170e778d510f8879246a8.md) | 143 | `declaration-track:322170e778d510f8879246a8ae2c5123085d215c8d5637ab2e31a16624e5aa00` |
| 14 | `theorem` | [mulHom_apply](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/mulhom-apply--ef9aeb3e18a1e8588e7d8bcc.md) | 149 | `result-track:ef9aeb3e18a1e8588e7d8bccd100947abadba6301d6a8bd60b55f1bc8decf245` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/instance--95eb18206ebd8f94940d72a8.md) | 157 | `declaration-track:95eb18206ebd8f94940d72a8d02b53b5fe5c41eaac723a71e07ec0719634e77c` |
| 16 | `theorem` | [mul_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/mul-def--0e17d3ba8059719978d274a0.md) | 159 | `result-track:0e17d3ba8059719978d274a0b1b9ac1f79c13c2416b8e4f82a7797d6134b569f` |
| 17 | `theorem` | [auxEquiv_mul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv-mul--953f1969ae488167597bd631.md) | 162 | `result-track:953f1969ae488167597bd6316faf4081080df4b3c33e51943a248f515684b4b5` |
| 18 | `instance` | [instMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/instmonoid--d7c58316b15df0f4dda19dea.md) | 166 | `declaration-track:d7c58316b15df0f4dda19dea896dcde0c0231661af6f24ec2370b8b7d51e9414` |
| 19 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/instring--17ac566d9dd96734839a1938.md) | 175 | `declaration-track:17ac566d9dd96734839a193826988ad92f89a9ca656a953521f3b90e0c5e9266` |
| 20 | `theorem` | [tmul_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-coe-mul-coe-tmul--33b4f53ee6ad632380213232.md) | 182 | `result-track:33b4f53ee6ad63238021323258ec7c129c005577ed1fd5800a49a9acdc02a5a7` |
| 21 | `theorem` | [tmul_zero_coe_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-zero-coe-mul-coe-tmul--982813744123672394dc2b64.md) | 197 | `result-track:982813744123672394dc2b644376c98f1fa3481acca2bc18d3c8618aaab9cf22` |
| 22 | `theorem` | [tmul_coe_mul_zero_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-coe-mul-zero-coe-tmul--ae2f5d50c0714aeab34d386d.md) | 203 | `result-track:ae2f5d50c0714aeab34d386d0ed09ed77a4caea1776ed2bd6f0bdaa6b5907875` |
| 23 | `theorem` | [tmul_one_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-one-mul-coe-tmul--3e8b398009b5a06d7fe2197d.md) | 208 | `result-track:3e8b398009b5a06d7fe2197d608dec32fd42b9b7a17641f4af6f03de90911e1f` |
| 24 | `theorem` | [tmul_coe_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-coe-mul-one-tmul--088ee78f7ff17df880ad5ebe.md) | 213 | `result-track:088ee78f7ff17df880ad5ebe8d7040e2cfb6e55ac2c9ccac710f9a884adb09e8` |
| 25 | `theorem` | [tmul_one_mul_one_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-one-mul-one-tmul--cedc020b21ea9184a7ae2170.md) | 218 | `result-track:cedc020b21ea9184a7ae21709f7c6f2552515f32d20d96a3375264d0c6357885` |
| 26 | `def` | [includeLeftRingHom](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/includeleftringhom--fe1d932098c6dc35ae8c1b63.md) | 228 | `declaration-track:fe1d932098c6dc35ae8c1b632523a557437e754a9b58122ef43c7d60625df639` |
| 27 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/instalgebra--eb8dd5c53e6ed79e8b8b52f0.md) | 243 | `declaration-track:eb8dd5c53e6ed79e8b8b52f0874d3a9c49e4d593024587d66fa4aea464d775eb` |
| 28 | `lemma` | [algebraMap_def](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/algebramap-def--17271c12c5039e09a93a38e5.md) | 256 | `result-track:17271c12c5039e09a93a38e5cf3c3bd5ad1e434d3434734e7e2efc1f921440c7` |
| 29 | `theorem` | [tmul_algebraMap_mul_coe_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-algebramap-mul-coe-tmul--ff92e5011d06fab4c18c2313.md) | 258 | `result-track:ff92e5011d06fab4c18c23131ba86235d93b3c0e8f96bb7d8f4c70eae9a57664` |
| 30 | `theorem` | [tmul_coe_mul_algebraMap_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/tmul-coe-mul-algebramap-tmul--92c4525b38205838a085d0a4.md) | 263 | `result-track:92c4525b38205838a085d0a46fc0e0a35b5eafc87597d8f803c47de3cb7712e8` |
| 31 | `def` | [includeLeft](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/includeleft--fe7d859b399dbd4d560b2ca1.md) | 270 | `declaration-track:fe7d859b399dbd4d560b2ca1b34c5791d179918acaaaac05517f29a719518245` |
| 32 | `def` | [includeRight](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/includeright--3b3182e17b83e6d1d41c8a74.md) | 276 | `declaration-track:3b3182e17b83e6d1d41c8a743ef85b924c67669690f0c147b50d2bc25ff0f6c3` |
| 33 | `lemma` | [algebraMap_def'](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/algebramap-def--552eab416a1245953bb566af.md) | 290 | `result-track:552eab416a1245953bb566affb7d7c83025b7484bff3dc0eecf0299d0ae50b23` |
| 34 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/lift--a1b778fdb70fa3a34b3c7080.md) | 299 | `declaration-track:a1b778fdb70fa3a34b3c708079ed80680920a56c020ea5c0af9b3f25c731f52b` |
| 35 | `theorem` | [lift_tmul](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/lift-tmul--d7b588543e114aeb6ff69ef2.md) | 326 | `result-track:d7b588543e114aeb6ff69ef261013d33e9fb017a678db9abfd1779d8bb35ba08` |
| 36 | `def` | [liftEquiv](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/liftequiv--c30e43a3ac7be5245f6a79d6.md) | 335 | `declaration-track:c30e43a3ac7be5245f6a79d67af3db39f9ebd83081afd02b808b23b202fe30c5` |
| 37 | `lemma` | [algHom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/alghom-ext--431da29b9366fd836def722f.md) | 354 | `result-track:431da29b9366fd836def722f4da041a8c9d61a5c9949876c310e13bb5d724e1c` |
| 38 | `def` | [comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/comm--f7629f7c8e5e8d7d8a247601.md) | 361 | `declaration-track:f7629f7c8e5e8d7d8a2476012b740f0dc6250a1bb574fd1f9f31a4dae3cdb131` |
| 39 | `lemma` | [auxEquiv_comm](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/auxequiv-comm--25efe0ce7694dea3396f4185.md) | 372 | `result-track:25efe0ce7694dea3396f41851c5f9a4edfd5b25c0b3250488b6b42e95da86b32` |
| 40 | `lemma` | [comm_coe_tmul_coe](../../../../../mathematics/Algebra/LinearAlgebra/Internal/Variantdd30d103533f49d50241107a901e7b90440d5447861afbb513e2e99a0843193a.lean/declarations/comm-coe-tmul-coe--657fa4c69ecfd683c8c268e6.md) | 376 | `result-track:657fa4c69ecfd683c8c268e6a026a02b0e8e0d5dba41eb57e1ae41f226e12fa6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
