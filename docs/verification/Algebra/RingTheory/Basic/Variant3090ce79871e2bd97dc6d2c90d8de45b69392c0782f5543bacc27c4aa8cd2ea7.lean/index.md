# Verification target: GRWTSK.Algebra.RingTheory.Basic.Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "488fc0f6a3d7d28c079a8a167aeffb3132f9fc05",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/index.md) · [Full source](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `488fc0f6a3d7d28c079a8a167aeffb3132f9fc05`.

Source path: `GRWTSK/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean.json)

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
| 1 | `theorem` | [IsNilpotent.neg](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-neg--3d61ad86212ca4903196e7a4.md) | 50 | `result-track:3d61ad86212ca4903196e7a48b9d2d50998514a5932c1b63b3a483a01ee56c2f` |
| 2 | `theorem` | [not_isNilpotent_neg_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/not-isnilpotent-neg-one--d58ffd7a21523a756de7bbd2.md) | 55 | `result-track:d58ffd7a21523a756de7bbd271100adeb1a80d1ecd1b0e29cde8735ca4bf1744` |
| 3 | `theorem` | [neg_one_pow_ne_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/neg-one-pow-ne-zero--b3c0e3bc4965bfe8ee3b5ed6.md) | 59 | `result-track:b3c0e3bc4965bfe8ee3b5ed6b6f0a9a807d44ad7d4a0ec0c7ddf2761bcda748a` |
| 4 | `theorem` | [isNilpotent_neg_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-neg-iff--2e0a3889a9ca326b73c1f7d1.md) | 64 | `result-track:2e0a3889a9ca326b73c1f7d1b61a1ccfe5088fa86e41273d45320e2b982da379` |
| 5 | `lemma` | [IsNilpotent.smul](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-smul--f4d0a4a1007bf254e72d1d4f.md) | 67 | `result-track:f4d0a4a1007bf254e72d1d4fd1c0f294c43216a271d82da0a10f427cadf5baff` |
| 6 | `theorem` | [IsNilpotent.isUnit_sub_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-sub-one--76e2d87e039047d3dc5df571.md) | 74 | `result-track:76e2d87e039047d3dc5df57190f4a5e45ddefde1f22c300a4fce96e65966bced` |
| 7 | `theorem` | [IsNilpotent.isUnit_one_sub](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-one-sub--0e47afd3adb3ee0167a08306.md) | 80 | `result-track:0e47afd3adb3ee0167a08306bc947821e27fa4125440d1f13de389bb6d12c17e` |
| 8 | `theorem` | [IsNilpotent.isUnit_add_one](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-add-one--b0ea9ad72f7bafa792c0ae04.md) | 84 | `result-track:b0ea9ad72f7bafa792c0ae0472dd9440b3352e01d853fc95aa483d5354a8399b` |
| 9 | `theorem` | [IsNilpotent.isUnit_one_add](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-one-add--ab4ff9dfdd441cac67d2fa20.md) | 88 | `result-track:ab4ff9dfdd441cac67d2fa202a9c2ebfce9b863923f6cd9131ae95e623b9340b` |
| 10 | `theorem` | [IsNilpotent.isUnit_add_left_of_commute](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-add-left-of-commute--e929053824f178a545f55085.md) | 91 | `result-track:e929053824f178a545f5508583b2776a06f31713352a4d22252b212281ec5539` |
| 11 | `theorem` | [IsNilpotent.isUnit_add_right_of_commute](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-isunit-add-right-of-commute--8ffa19fed1d2d8bb09c289e1.md) | 99 | `result-track:8ffa19fed1d2d8bb09c289e14f24fd0527d68a31f3e114d4185a65e29f6d2a07` |
| 12 | `lemma` | [IsUnit.not_isNilpotent](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isunit-not-isnilpotent--2338c96d7a9ca137e61ab1cd.md) | 104 | `result-track:2338c96d7a9ca137e61ab1cdb0e70073424fbc1c084c8509f81854710a02697f` |
| 13 | `lemma` | [IsNilpotent.not_isUnit](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-not-isunit--2973446185dd1d969df4ac11.md) | 109 | `result-track:2973446185dd1d969df4ac1170c29df7a1328af56188f547ad9c3db14ad1b5c7` |
| 14 | `lemma` | [IsIdempotentElem.eq_zero_of_isNilpotent](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isidempotentelem-eq-zero-of-isnilpotent--85c25532a20635b216c6bb6c.md) | 113 | `result-track:85c25532a20635b216c6bb6c7a11ebd684389701c4c5032abea8e74031aa394c` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/instance--63ab4825dbdbaf20dc5485a8.md) | 121 | `declaration-track:63ab4825dbdbaf20dc5485a85e80ec997fd38fd8bb39801d248c2501cc95d6af` |
| 16 | `theorem` | [Prime.isRadical](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/prime-isradical--6c4823676cb28b41dfd0baff.md) | 125 | `result-track:6c4823676cb28b41dfd0baffbf7fee3d704037f14f2954ac036d4541b493a4c3` |
| 17 | `theorem` | [zero_isRadical_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/zero-isradical-iff--6101360321a5388ca4284727.md) | 128 | `result-track:6101360321a5388ca42847273abf2779b931699cc0f89d1d241a8f7694c7509c` |
| 18 | `lemma` | [isRadical_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isradical-zero--e339b773a9ecbf4561041386.md) | 132 | `result-track:e339b773a9ecbf4561041386fcc2d0b4c50c58d8caa2039f46a2252692ff5493` |
| 19 | `theorem` | [isReduced_iff_pow_one_lt](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isreduced-iff-pow-one-lt--241e7264804d7c9019c79cc3.md) | 135 | `result-track:241e7264804d7c9019c79cc3b9d6271351e9baa50712468a67f57f304ed9c80c` |
| 20 | `theorem` | [IsRadical.of_dvd](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isradical-of-dvd--2867a8ca8b58cdc07c528eb2.md) | 139 | `result-track:2867a8ca8b58cdc07c528eb2c9a7e6436a7b91b25dbff30527c15b9a7217b4be` |
| 21 | `theorem` | [add_pow_eq_zero_of_add_le_succ_of_pow_eq_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/add-pow-eq-zero-of-add-le-succ-of-pow-eq-zero--dd9d0429663cc1098395bdf5.md) | 153 | `result-track:dd9d0429663cc1098395bdf5002b7be86853969978b72a228e2948449719286f` |
| 22 | `theorem` | [add_pow_add_eq_zero_of_pow_eq_zero](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/add-pow-add-eq-zero-of-pow-eq-zero--6ec133c8a20c2b0a37210ff9.md) | 165 | `result-track:6ec133c8a20c2b0a37210ff946d35a05314d7234fbd98140cdf393363ad5064e` |
| 23 | `theorem` | [isNilpotent_add](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-add--4f7de296c88b40188ca6cb14.md) | 170 | `result-track:4f7de296c88b40188ca6cb14545b96fde7d5cdaf543ea356e5719e60e59a2015` |
| 24 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-sum--5e9f741a3211bc4f2d48c715.md) | 176 | `result-track:5e9f741a3211bc4f2d48c7153b18d424d4472b9a7887b87862a19ee4d06256a5` |
| 25 | `theorem` | [isNilpotent_finsum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-finsum--0f43619f917f33593e773bba.md) | 190 | `result-track:0f43619f917f33593e773bbae32bc21a6374fee49affa67bc77e302b769e58cc` |
| 26 | `lemma` | [isNilpotent_mul_right_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-mul-right-iff--a5ccb0d912a47177a579f007.md) | 199 | `result-track:a5ccb0d912a47177a579f007fdb30ac910b9a3c0ba6f381483b39b525a457642` |
| 27 | `lemma` | [isNilpotent_mul_left_iff](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-mul-left-iff--72457762c02514e266a503e1.md) | 206 | `result-track:72457762c02514e266a503e153a82c337e1d41d901643db326084a188d460fba` |
| 28 | `theorem` | [isNilpotent_sub](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-sub--466aa382b77acd4bcdd17600.md) | 219 | `result-track:466aa382b77acd4bcdd17600ddf18294dc33a3913180a255bd9e568bbd8d1778` |
| 29 | `lemma` | [isNilpotent_sum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-sum--e60c5271085d6cec0ca4a294.md) | 234 | `result-track:e60c5271085d6cec0ca4a2944e0004df14b914c9f4c27fc6b64a26041c507fee` |
| 30 | `theorem` | [isNilpotent_finsum](../../../../../mathematics/Algebra/RingTheory/Basic/Variant3090ce79871e2bd97dc6d2c90d8de45b69392c0782f5543bacc27c4aa8cd2ea7.lean/declarations/isnilpotent-finsum--2e02625cb3cfcd136a1952d0.md) | 239 | `result-track:2e02625cb3cfcd136a1952d056d38e32ab5be5d54a9c7aaccabd4fdc176ba7d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
