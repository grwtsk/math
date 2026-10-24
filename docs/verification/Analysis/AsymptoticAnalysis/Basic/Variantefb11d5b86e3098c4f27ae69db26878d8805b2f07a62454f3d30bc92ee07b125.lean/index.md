# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Basic.Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fb7e38b81e71ee37764dc87843139daa509c4e7",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fb7e38b81e71ee37764dc87843139daa509c4e7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean.json)

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
| 1 | `structure` | [Monomial](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/monomial--5c2e98723d1d4dff06191a32.md) | 52 | `declaration-track:5c2e98723d1d4dff06191a320c5bc453e622ebe71f66be2f4907e96ea9e7fd16` |
| 2 | `def` | [toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun--f9fbf6acecaa987a23d60a36.md) | 61 | `declaration-track:f9fbf6acecaa987a23d60a36a59582b6e1042bfbd95c5365a2d7d30210851a96` |
| 3 | `def` | [toLogFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tologfun--d8da08747d0a463e21245e48.md) | 66 | `declaration-track:d8da08747d0a463e21245e48c1024dc3a26166990f535ccb0f67900c640d416d` |
| 4 | `theorem` | [toFun_nil](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-nil--ff747acfa2175054e2c65822.md) | 70 | `result-track:ff747acfa2175054e2c65822bafa5448ae15bd4f4de52ad9449914cff3d45c61` |
| 5 | `theorem` | [toFun_nil_basis](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-nil-basis--df163bc81fb691efa1d888d0.md) | 75 | `result-track:df163bc81fb691efa1d888d013b97a1edb51cc89a683e880875a7cfc40767499` |
| 6 | `theorem` | [toFun_cons](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-cons--6f687a3a1404d87a6b3f396b.md) | 80 | `result-track:6f687a3a1404d87a6b3f396bdb88084a1a77e95d6195252f11a09a7b1552c220` |
| 7 | `theorem` | [toLogFun_nil](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tologfun-nil--b5f1fc41ac66f722cd996649.md) | 87 | `result-track:b5f1fc41ac66f722cd996649e21f314304056f4268170b84beadf6e310ef7a4c` |
| 8 | `theorem` | [toLogFun_nil_basis](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tologfun-nil-basis--b78508619302beeb231e25ec.md) | 92 | `result-track:b78508619302beeb231e25ec07696ca4f7897136018b3ac8da716a9749146fbf` |
| 9 | `theorem` | [toLogFun_cons](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tologfun-cons--0d62550a6f41af63ccf6f7f6.md) | 97 | `result-track:0d62550a6f41af63ccf6f7f62e189639a9210b293b5b7411d385a4b3c9ddca24` |
| 10 | `def` | [mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/mul--d15cbdb407ccb6adc346e38b.md) | 104 | `declaration-track:d15cbdb407ccb6adc346e38be0ec34e92cb677a8c8b9fb44cc8605cc2f7f318e` |
| 11 | `def` | [inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv--90aa2eb2a5c7160a0b0bcd96.md) | 108 | `declaration-track:90aa2eb2a5c7160a0b0bcd96e7b2bdcabc38552bcf9bf5ac79441b1c7e883fa0` |
| 12 | `theorem` | [mul_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/mul-length--1e057214e80cc3651357ee33.md) | 111 | `result-track:1e057214e80cc3651357ee339df554471b8c70eca2ced39cdb4ba1cffcc390ea` |
| 13 | `theorem` | [inv_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv-length--a0ba66489e654e56b5feaa13.md) | 116 | `result-track:a0ba66489e654e56b5feaa137601f084b1c19dd574367b9e12cd0c055ac7bb30` |
| 14 | `theorem` | [mul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/mul-tofun--b396737f242ab4c10c231758.md) | 120 | `result-track:b396737f242ab4c10c23175894780024069fa0214b33ccd02392d3738fff3b46` |
| 15 | `theorem` | [inv_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv-tofun--173f4d621bb928bde18b764e.md) | 144 | `result-track:173f4d621bb928bde18b764ed72f1e94dce6e4f06a4d6aca4b3fdf5599650e9e` |
| 16 | `theorem` | [majorized_tail_toFun_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/majorized-tail-tofun-head--b1f84808f2f27a6b9d6d0087.md) | 159 | `result-track:b1f84808f2f27a6b9d6d0087750f7cc38413641cbd46e5711ff846e856c0fe1c` |
| 17 | `theorem` | [toFun_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-pos--4560bc1c3dc631091e55aed2.md) | 179 | `result-track:4560bc1c3dc631091e55aed2169cf01755bb9b6cb5c54924c98a5e0a4938b026` |
| 18 | `theorem` | [toFun_ne_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-ne-zero--bf41e1aa7a2da071e0b2e1f7.md) | 194 | `result-track:bf41e1aa7a2da071e0b2e1f792427df05e014dff68bee113856dfa632b634b11` |
| 19 | `theorem` | [zeros_append_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/zeros-append-tofun--c23813ee23b8c61bdd4a7091.md) | 198 | `result-track:c23813ee23b8c61bdd4a709113af1394d217515be8d822fd48525b0f09c7b129` |
| 20 | `theorem` | [log_toFun_eq_toLogFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/log-tofun-eq-tologfun--245c08faeb20170bdbf46efc.md) | 204 | `result-track:245c08faeb20170bdbf46efcba56275d957a6b7d50488c81a803780be364ca75` |
| 21 | `theorem` | [toLogFun_isEquivalent_of_nonzero_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tologfun-isequivalent-of-nonzero-head--27c2e318e86893930b4eded1.md) | 223 | `result-track:27c2e318e86893930b4eded159d1c2c8cff50a54f1e71b5ce6d75afaa3ac635c` |
| 22 | `theorem` | [toFun_tendsto_top_of_head_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-top-of-head-pos--06e804fa20d0f92871ddb7b5.md) | 246 | `result-track:06e804fa20d0f92871ddb7b5dd339fbf836574744e39663060d6b80542e806d0` |
| 23 | `theorem` | [toFun_tendsto_zero_of_head_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-zero-of-head-neg--9cb4131461699bd5b0aed376.md) | 267 | `result-track:9cb4131461699bd5b0aed37645fe2a82be18f8d861b523945c44cdd4af7a92a4` |
| 24 | `theorem` | [toFun_tendsto_top_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-top-of-firstnonzeroispos--0ad0a19ff9e9a0696dbad20b.md) | 289 | `result-track:0ad0a19ff9e9a0696dbad20bf8b58623310023310adc20a4d0e39d7f7003e906` |
| 25 | `theorem` | [toFun_tendsto_zero_of_firstNonzeroIsNeg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-zero-of-firstnonzeroisneg--f2a31f60008eb6f4f9368ffd.md) | 308 | `result-track:f2a31f60008eb6f4f9368ffd9c8f529ad50593626cc84c6ee10092bb2b66392f` |
| 26 | `theorem` | [toFun_tendsto_one_of_allZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-one-of-allzero--295649af7207e68204e9a672.md) | 327 | `result-track:295649af7207e68204e9a6721107243ef5a18e3056ea0d479256ec7b766baa16` |
| 27 | `lemma` | [isLittleO_of_lt](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/islittleo-of-lt--0790e891e645be0628a2e264.md) | 346 | `result-track:0790e891e645be0628a2e2647a6390ca275b21d5f250058bbebf065b707b2ab0` |
| 28 | `def` | [toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun--3e438a6d336e7061635cf17d.md) | 387 | `declaration-track:3e438a6d336e7061635cf17d8bf3034c2f4495f11911de9eda2a36c9c34eed08` |
| 29 | `theorem` | [nil_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/nil-tofun--6bb32a7fbe45edc96e6a1009.md) | 391 | `result-track:6bb32a7fbe45edc96e6a10096156ca793e29718f950be588a17e933c5f582855` |
| 30 | `theorem` | [cons_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/cons-tofun--0f7b6ab2a4095403733d5d9f.md) | 397 | `result-track:0f7b6ab2a4095403733d5d9f735def7b79ad43273479c4f2e64c0b78199f3e70` |
| 31 | `theorem` | [zero_coef_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/zero-coef-tofun--2348814333c55dd6f6083c31.md) | 405 | `result-track:2348814333c55dd6f6083c3179e1b4a354e93fb4ebf843098c4687ad4aeeec03` |
| 32 | `theorem` | [zero_coef_toFun'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/zero-coef-tofun--4d2ea456d5e4f24fd46a1b17.md) | 410 | `result-track:4d2ea456d5e4f24fd46a1b179bfb5fe8bc61d17a54a955fb0592db9c678d21e7` |
| 33 | `def` | [neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/neg--2b0a0a1b73eb22f463326f91.md) | 414 | `declaration-track:2b0a0a1b73eb22f463326f91f95e995be73d8ec9dccfda90a839d2ff8a5fcc1c` |
| 34 | `def` | [mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/mul--9cfc5a783e90afef97bb5745.md) | 418 | `declaration-track:9cfc5a783e90afef97bb5745c9f0855aa9841837c94bbcf483cb7b7a689669b3` |
| 35 | `def` | [smul](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/smul--e743ee1a6732b177b7e3b950.md) | 422 | `declaration-track:e743ee1a6732b177b7e3b950caffc250d7feb7828d1fdb4d6ef5e2c31af72e27` |
| 36 | `def` | [inv](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv--7668148f1c69ea7263ae47cf.md) | 426 | `declaration-track:7668148f1c69ea7263ae47cf4ea1518e4f66eb0c4c489952fa8941449687047a` |
| 37 | `theorem` | [neg_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/neg-tofun--b12b2b39804f5744e0739b26.md) | 432 | `result-track:b12b2b39804f5744e0739b26b6aa3da8bd65fad329e97892faa6fcf7fd45f1d6` |
| 38 | `theorem` | [mul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/mul-tofun--b186d7dbb81018d5fe13263b.md) | 437 | `result-track:b186d7dbb81018d5fe13263b4d5b713405a8768c0572a5dbe1ba56a95a5407e9` |
| 39 | `theorem` | [smul_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/smul-tofun--c820925fb015e197a2df0c4a.md) | 446 | `result-track:c820925fb015e197a2df0c4ac7bfd734ff2c0b8a2bf9a6b954b0851a14890c48` |
| 40 | `theorem` | [inv_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv-tofun--8ae3c9095e5dbdd418c34c45.md) | 452 | `result-track:8ae3c9095e5dbdd418c34c45fc5d68591e4ae14631f63a23e6b46efcd2b12712` |
| 41 | `theorem` | [inv_length](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/inv-length--dbb20e7d7bbfcfa3b112d7ea.md) | 461 | `result-track:dbb20e7d7bbfcfa3b112d7ea3ea8b3cd82a453c6cb1a4061a0a0b88a606cb593` |
| 42 | `theorem` | [toFun_pos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-pos--de3eeccc52532df81c714808.md) | 466 | `result-track:de3eeccc52532df81c714808a7462eaa5eb62049586032701109d927508ef31a` |
| 43 | `theorem` | [zeros_append_toFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/zeros-append-tofun--494cc8393ce00ef3575d07cc.md) | 475 | `result-track:494cc8393ce00ef3575d07cc773c03be906cabd3843737cda67cb544c3c514cf` |
| 44 | `theorem` | [tendsto_zero_of_coef_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tendsto-zero-of-coef-zero--f214ea4566084cf89048e221.md) | 481 | `result-track:f214ea4566084cf89048e22149b58f9a860b8bdb94ab16227738d6d02ce9c2a4` |
| 45 | `theorem` | [toFun_tendsto_zero_of_firstNonzeroIsNeg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-zero-of-firstnonzeroisneg--708e1281db1c9f7a6362cf06.md) | 489 | `result-track:708e1281db1c9f7a6362cf061a822ad0a7348af89be670adc9cf8364cffb4d02` |
| 46 | `theorem` | [toFun_tendsto_top_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-top-of-firstnonzeroispos--88b7c702c59ad1d68d0de63b.md) | 502 | `result-track:88b7c702c59ad1d68d0de63beb5c8daddd33b20b4ae34c2d344dc8cb14174ab2` |
| 47 | `theorem` | [toFun_tendsto_bot_of_firstNonzeroIsPos](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-bot-of-firstnonzeroispos--832c361dbf8a0d3b6fdd717b.md) | 515 | `result-track:832c361dbf8a0d3b6fdd717b17c1e16c40403c809c55c02b28569246c7627997` |
| 48 | `theorem` | [toFun_tendsto_const_of_allZero](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/tofun-tendsto-const-of-allzero--9de8b1205574934a968f0248.md) | 528 | `result-track:9de8b1205574934a968f0248b0109bc104df4e6ca221ae7a3dc57b351fed9e2e` |
| 49 | `theorem` | [majorized_tail_toFun_head](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/majorized-tail-tofun-head--ca28e74918019405044bb8ff.md) | 538 | `result-track:ca28e74918019405044bb8ffe1e434972fdf33881d29e73131be67237ef89318` |
| 50 | `lemma` | [isLittleO_of_lt_exps](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/islittleo-of-lt-exps--6ea131b61afb3b90538c1242.md) | 544 | `result-track:6ea131b61afb3b90538c1242e171c96e3c0df035c24c3fbfcb2df459602e2f4e` |
| 51 | `theorem` | [isLittleO_of_lt_exps_left](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/islittleo-of-lt-exps-left--c1c861b593f58b41839c7c68.md) | 559 | `result-track:c1c861b593f58b41839c7c685830402dc7b88cebc5670d33c501625a7ceb7eb3` |
| 52 | `theorem` | [isLittleO_of_lt_exps_right](../../../../../mathematics/Analysis/AsymptoticAnalysis/Basic/Variantefb11d5b86e3098c4f27ae69db26878d8805b2f07a62454f3d30bc92ee07b125.lean/declarations/islittleo-of-lt-exps-right--203c2780210bfc6f675c84b7.md) | 573 | `result-track:203c2780210bfc6f675c84b709beefb9da6f9e274c3b24f0a02741a521d9e1b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
