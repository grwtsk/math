# Verification target: GRWTSK.Algebra.LinearAlgebra.Chain.Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ce53fd59fa576f87b40d863df4a94ea81f0d2926",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ce53fd59fa576f87b40d863df4a94ea81f0d2926`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.DirectSum.LinearMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Lie.Weights.Cartan` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Finiteness.Nilpotent` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [eventually_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/eventually-genweightspace-smul-add-eq-bot--ad13420fa4dde74598c97dea.md) | 69 | `result-track:ad13420fa4dde74598c97deab9d82614c9fb4e838b1678e26e9d0c3eee789793` |
| 2 | `lemma` | [exists_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/exists-genweightspace-smul-add-eq-bot--6600532803a1423cf1fa82f5.md) | 81 | `result-track:6600532803a1423cf1fa82f5d1dfa804215bb10a708af514c29c3954108dcb6b` |
| 3 | `lemma` | [exists₂_genWeightSpace_smul_add_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/exists-genweightspace-smul-add-eq-bot--3c89ef6ce76c081bad81d1f6.md) | 85 | `result-track:3c89ef6ce76c081bad81d1f648e144ecb803aa7ae2bda7c944f70c78af9c52bc` |
| 4 | `def` | [genWeightSpaceChain](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspacechain--b06dd82c4aaa4a635ce2b59f.md) | 102 | `declaration-track:b06dd82c4aaa4a635ce2b59f4377cc76b9b69c4d88b2926daf5566e4f9ff6428` |
| 5 | `lemma` | [genWeightSpaceChain_def](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspacechain-def--c1ebf03bed8fc8eb7977770d.md) | 105 | `result-track:c1ebf03bed8fc8eb7977770db0c3a843cd19d416544495b4f21cc4dfb795a05b` |
| 6 | `lemma` | [genWeightSpaceChain_def'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspacechain-def--0cf59e6ff4c045c2fbea90fb.md) | 109 | `result-track:0cf59e6ff4c045c2fbea90fbb26b44d7cd9b5b398df626dead78773e0d6f0e63` |
| 7 | `lemma` | [genWeightSpaceChain_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspacechain-neg--9df66789f3cfcdad4017bfd5.md) | 115 | `result-track:9df66789f3cfcdad4017bfd518730f9d4e79099f783e6897eedb1b3898c2b450` |
| 8 | `lemma` | [genWeightSpace_le_genWeightSpaceChain](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-le-genweightspacechain--a58d8a43c4fef36fed95d326.md) | 121 | `result-track:a58d8a43c4fef36fed95d326bd17d6996b446bca184a1432b603d4a16d374417` |
| 9 | `lemma` | [lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_right](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/lie-mem-genweightspacechain-of-genweightspace-eq-bot-right--6dd13272ee69274be9adeeb0.md) | 133 | `result-track:6dd13272ee69274be9adeeb0f6b5d411a8f7eab9ad978cb340245350dfd03991` |
| 10 | `lemma` | [lie_mem_genWeightSpaceChain_of_genWeightSpace_eq_bot_left](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/lie-mem-genweightspacechain-of-genweightspace-eq-bot-left--12fe254c6dba00774dc99cdb.md) | 156 | `result-track:12fe254c6dba00774dc99cdb70a2f28e7ef7f3f48ac4de687ac64f06d424000e` |
| 11 | `lemma` | [trace_toEnd_genWeightSpaceChain_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/trace-toend-genweightspacechain-eq-zero--6e169b5fe1b687a6cdf908c3.md) | 169 | `result-track:6e169b5fe1b687a6cdf908c30eed2c374534fbd210fb434324d81aa4ad538e45` |
| 12 | `lemma` | [exists_forall_mem_corootSpace_smul_add_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/exists-forall-mem-corootspace-smul-add-eq-zero--a7ae3030554844da7f5aef36.md) | 205 | `result-track:a7ae3030554844da7f5aef36eed88f2e45304d67e0dcd2213f2cd22494c80ce2` |
| 13 | `def` | [chainTopCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintopcoeff--696780acc386cd07cdb99c6c.md) | 252 | `declaration-track:696780acc386cd07cdb99c6c722b92db573f54f20198281abff97f59c8f23a47` |
| 14 | `def` | [chainBotCoeff](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbotcoeff--4f36efefcd5fae9915f39f99.md) | 260 | `declaration-track:4f36efefcd5fae9915f39f99635d4e842da12ce554aa02fd49d24b19f94a1fa0` |
| 15 | `lemma` | [chainTopCoeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintopcoeff-neg--ddc3adfeb061d560376537aa.md) | 262 | `result-track:ddc3adfeb061d560376537aa6fbd4ee036ac37d0a351c633922a56e58867b037` |
| 16 | `lemma` | [chainBotCoeff_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbotcoeff-neg--058aec5d06ae8648a827048d.md) | 263 | `result-track:058aec5d06ae8648a827048d2126c9d1d742f49d5d6df63a346b2be58978084d` |
| 17 | `lemma` | [chainTopCoeff_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintopcoeff-zero--1d4936eebf7760f74af1c0d9.md) | 266 | `result-track:1d4936eebf7760f74af1c0d93f1546d4f7aa1e43c2e31f141d5e66ca73e6243a` |
| 18 | `lemma` | [chainBotCoeff_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbotcoeff-zero--a68d55a003d6b6c54175126a.md) | 267 | `result-track:a68d55a003d6b6c54175126a1fa1f7ea4914c7fcd36c1fbe4f9f8a07e98eef66` |
| 19 | `lemma` | [chainTopCoeff_add_one](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintopcoeff-add-one--096f1325864ef8c7d9158b11.md) | 273 | `result-track:096f1325864ef8c7d9158b1148f3b99e801a0a05d393f6cbb760acddf6b0b5f6` |
| 20 | `lemma` | [genWeightSpace_chainTopCoeff_add_one_nsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-chaintopcoeff-add-one-nsmul-add--1dfaab676b1f26a8dbfb5065.md) | 287 | `result-track:1dfaab676b1f26a8dbfb506583682f88b65ee3b7277154360433130fe3d371f7` |
| 21 | `lemma` | [genWeightSpace_chainTopCoeff_add_one_zsmul_add](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-chaintopcoeff-add-one-zsmul-add--abc62ebe4e4f09ac4183a361.md) | 293 | `result-track:abc62ebe4e4f09ac4183a361780477c5450134254369c1ac44e5794d971fc63b` |
| 22 | `lemma` | [genWeightSpace_chainBotCoeff_sub_one_zsmul_sub](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-chainbotcoeff-sub-one-zsmul-sub--b795e1effab259a55a53da7a.md) | 298 | `result-track:b795e1effab259a55a53da7af957ccf202c327b266983a717ebfee940b48f1f6` |
| 23 | `lemma` | [genWeightSpace_nsmul_add_ne_bot_of_le](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-nsmul-add-ne-bot-of-le--9ea773351292da23bff3f36d.md) | 305 | `result-track:9ea773351292da23bff3f36d2ba3c824854d6bd2b41695e5b91f14e1f9bac00f` |
| 24 | `lemma` | [genWeightSpace_zsmul_add_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-zsmul-add-ne-bot--3efb7775f91b54f4f05b4dc4.md) | 313 | `result-track:3efb7775f91b54f4f05b4dc42eb1ff358d7f60ea53a46493f63f0a0fdb027650` |
| 25 | `lemma` | [genWeightSpace_neg_zsmul_add_ne_bot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-neg-zsmul-add-ne-bot--f0efa0bc3e4481330e3da6c9.md) | 323 | `result-track:f0efa0bc3e4481330e3da6c90dfb7046db1038326f527fe1dbbb481218e581c6` |
| 26 | `def` | [chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintop--179a843c1655a37ef3f1b3fc.md) | 329 | `declaration-track:179a843c1655a37ef3f1b3fc371731fbe04e545c1820456b369a46cfcf14ef69` |
| 27 | `def` | [chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbot--43e2d5e6a06236765ee382f3.md) | 334 | `declaration-track:43e2d5e6a06236765ee382f353eba3b10586b921afcb8f064cac866027cf7ce1` |
| 28 | `lemma` | [coe_chainTop'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/coe-chaintop--d4f9cf7c0de8bea94d4f4511.md) | 337 | `result-track:d4f9cf7c0de8bea94d4f4511b64b7b6d030fba5214e9f1df59569a9d7f0d84c5` |
| 29 | `lemma` | [coe_chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/coe-chaintop--23f8482e3fa03e54af4bca87.md) | 339 | `result-track:23f8482e3fa03e54af4bca87f4a1d973e6256d43f3ac0d4f13d00669d2373908` |
| 30 | `lemma` | [coe_chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/coe-chainbot--e2322a80fa64ed772396dda7.md) | 341 | `result-track:e2322a80fa64ed772396dda7ba48e7a668204bc049c13825a43db6af716c7a83` |
| 31 | `lemma` | [chainTop_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintop-neg--4429fb0be13ed858de1b7c54.md) | 343 | `result-track:4429fb0be13ed858de1b7c547feab2ba73568d4be035c2727ccb7bd7ae0132d4` |
| 32 | `lemma` | [chainBot_neg](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbot-neg--df15771b7fd75abb0374330a.md) | 344 | `result-track:df15771b7fd75abb0374330a0106bb1b5b4495b83ac7f89070a0ab0f868b597f` |
| 33 | `lemma` | [chainTop_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintop-zero--5694f1f1ed4f59f914fc58d2.md) | 346 | `result-track:5694f1f1ed4f59f914fc58d281903832f69515f27cbd24b67aae4657f0fbd446` |
| 34 | `lemma` | [chainBot_zero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chainbot-zero--76219cd6b10fe87411f90760.md) | 347 | `result-track:76219cd6b10fe87411f90760e2d82a8e873d647d9b80e3c50dc9bcb54604eea7` |
| 35 | `lemma` | [genWeightSpace_add_chainTop](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-add-chaintop--3360678466166f977bf678b9.md) | 353 | `result-track:3360678466166f977bf678b9ffd26bed90f5a944e0a245699ac81f1b1a3bbd76` |
| 36 | `lemma` | [genWeightSpace_neg_add_chainBot](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/genweightspace-neg-add-chainbot--7a906c61513fbb1668575300.md) | 358 | `result-track:7a906c61513fbb166857530055f5bfaf70291daad9581aa8488ac162deaa44e8` |
| 37 | `lemma` | [chainTop_isNonZero'](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintop-isnonzero--d16f45ab91d67351c1844100.md) | 362 | `result-track:d16f45ab91d67351c1844100b6cbe7e9ec9fdbfd696f5f84d6c4ce6041d5bec2` |
| 38 | `lemma` | [chainTop_isNonZero](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/chaintop-isnonzero--0a13996c313be3089ff322fe.md) | 370 | `result-track:0a13996c313be3089ff322fe6b328e71687c67a9ebfc11dd38b501b6e71f7761` |
| 39 | `lemma` | [LieModule.isNilpotent_toEnd_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/liemodule-isnilpotent-toend-of-mem-rootspace--6526e64859a8cbb76c2a33de.md) | 387 | `result-track:6526e64859a8cbb76c2a33deb95eeaaa001ed43c75a00b6d4e36187a4e9c5fa8` |
| 40 | `lemma` | [LieAlgebra.isNilpotent_ad_of_mem_rootSpace](../../../../../mathematics/Algebra/LinearAlgebra/Chain/Variantbfb780cf065871d20b024a52e2994139e4ac951c28b0cd0b9ac1328d985b781b.lean/declarations/liealgebra-isnilpotent-ad-of-mem-rootspace--a30eb5b46ab4ad7301005b61.md) | 407 | `result-track:a30eb5b46ab4ad7301005b613ee5ddd2c45ce35f19f0ca627aa07d6a8103df3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
