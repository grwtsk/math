# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Imo2024Q2.Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1046bbe92403ce032e261e4148cbb8acb87e5d53",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1046bbe92403ce032e261e4148cbb8acb87e5d53`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Finite.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Condition](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/condition--2df48a3c70b5fe7277d8ca37.md) | 35 | `declaration-track:2df48a3c70b5fe7277d8ca37dc0274a57d13cf72b5cf282512f41339d8108fd8` |
| 2 | `lemma` | [dvd_pow_iff_of_dvd_sub](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/dvd-pow-iff-of-dvd-sub--399ae94fa742af93541ab4ca.md) | 38 | `result-track:399ae94fa742af93541ab4ca416d0fd3ea12da5da5b6976d7f315cae23028c7b` |
| 3 | `lemma` | [a_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/a-pos--a7b65d565b8e277eee0dd37b.md) | 61 | `result-track:a7b65d565b8e277eee0dd37bdf6093093a810016f4d59ab6c93d0f9541259953` |
| 4 | `lemma` | [b_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/b-pos--8b118bbc8e3df5dac2cb7edd.md) | 63 | `result-track:8b118bbc8e3df5dac2cb7edd54896abd9778dbd44d18ba431a8e247e30342468` |
| 5 | `def` | [g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/g--bba62d105415219870ea3571.md) | 66 | `declaration-track:bba62d105415219870ea357110954d50a5f04f3456b1681fd05220ee4eabc527` |
| 6 | `lemma` | [g_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/g-spec--cc27ca957e00f4c870208838.md) | 68 | `result-track:cc27ca957e00f4c87020883802eb1a0dfff4709af6d6f1ff9aa1a7d82d3c2571` |
| 7 | `def` | [N](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/n--65d31ae90b9de7245b02bb17.md) | 72 | `declaration-track:65d31ae90b9de7245b02bb17fdb718e4ccbf68d9b8fd8f96957b0af24c47093b` |
| 8 | `lemma` | [N_spec](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/n-spec--8c34a70499ea1b8b265a69b5.md) | 74 | `result-track:8c34a70499ea1b8b265a69b50f5bfb600c91c58a552ca5f0b4da6e8b45dc1f56` |
| 9 | `lemma` | [g_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/g-pos--3e246faea1a11dcc6f6ddf59.md) | 77 | `result-track:3e246faea1a11dcc6f6ddf59a5e79e95783fda4f9b9420061711cc030f561f55` |
| 10 | `lemma` | [N_pos](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/n-pos--eba2b81e384c25d396cc7bb0.md) | 79 | `result-track:eba2b81e384c25d396cc7bb001adc1b06f1923b5d73050eb59a90c76e90326cc` |
| 11 | `lemma` | [gcd_eq_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/gcd-eq-g--27c1e3a92f53cf98bace95ec.md) | 81 | `result-track:27c1e3a92f53cf98bace95ec835492a5ece0443bbe1076f9cdc5f5d6347b4a30` |
| 12 | `lemma` | [symm](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/symm--a957b9a12500d7149d22a92b.md) | 83 | `result-track:a957b9a12500d7149d22a92b7511c69327ce4afafba97181d01cc481a79cc32c` |
| 13 | `lemma` | [dvd_g_of_le_N_of_dvd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/dvd-g-of-le-n-of-dvd--ffb15ff832b07553ad9ad649.md) | 88 | `result-track:ffb15ff832b07553ad9ad649e803e990db82fc4dc7a1145e05bbea121ba4171d` |
| 14 | `lemma` | [a_coprime_ab_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/a-coprime-ab-add-one--70ea8ed0416a9e25ced99544.md) | 95 | `result-track:70ea8ed0416a9e25ced99544846ecf8f9c6a5b4a7544fc2538d546e430298a41` |
| 15 | `def` | [large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/large-n--9316e15e7a477dac3346eb1e.md) | 99 | `declaration-track:9316e15e7a477dac3346eb1e245b5cd5aecd86f0b5d8cad062e77b193813f007` |
| 16 | `lemma` | [symm_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/symm-large-n--1cf869a2602ac9c7eda5ffb7.md) | 101 | `result-track:1cf869a2602ac9c7eda5ffb7914e89b00a7b3bb1c2b328560c8a5b020dcf9658` |
| 17 | `lemma` | [N_le_large_n](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/n-le-large-n--b7f58773a7b49b8084ae16cb.md) | 107 | `result-track:b7f58773a7b49b8084ae16cbb862ad7497d529dd6b4c4cb6955913f1d2e24c8f` |
| 18 | `lemma` | [dvd_large_n_sub_neg_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/dvd-large-n-sub-neg-one--ae13cf3eedb11c9ae977d0dd.md) | 116 | `result-track:ae13cf3eedb11c9ae977d0dd556f12a7da3c2915bd44077e4b4ba2abca679763` |
| 19 | `def` | [large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/large-n-0--811ae7580113f87c8ca58394.md) | 120 | `declaration-track:811ae7580113f87c8ca583941c2c5b17fa784c48f08e8dd43944ab89fc13843a` |
| 20 | `lemma` | [symm_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/symm-large-n-0--59b34bd1385cbe6874ffa1c4.md) | 122 | `result-track:59b34bd1385cbe6874ffa1c4829354fafef0f2d04feecd882161dcac26569ba1` |
| 21 | `lemma` | [N_le_large_n_0](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/n-le-large-n-0--2f36a07ca36038f923c1e930.md) | 128 | `result-track:2f36a07ca36038f923c1e9309c11a9af537973b70949cf632b3c1a72e8b7c11f` |
| 22 | `lemma` | [dvd_large_n_0_sub_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/dvd-large-n-0-sub-zero--d8f6a53731b325b5559f2733.md) | 137 | `result-track:d8f6a53731b325b5559f2733dfb86963f79793e79ba70fa27573590dbe042a35` |
| 23 | `lemma` | [ab_add_one_dvd_a_pow_large_n_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/ab-add-one-dvd-a-pow-large-n-add-b--39d1aaf8db465bbcc800145c.md) | 140 | `result-track:39d1aaf8db465bbcc800145c73d8d1cfd6f744bd36e32fae883576483a8e0d68` |
| 24 | `lemma` | [ab_add_one_dvd_b_pow_large_n_add_a](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/ab-add-one-dvd-b-pow-large-n-add-a--925f3605f58084a0d65f6d0f.md) | 153 | `result-track:925f3605f58084a0d65f6d0f43fbc0eb7a4b9a2e840a82b6a4562d3da69656b8` |
| 25 | `lemma` | [ab_add_one_dvd_g](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/ab-add-one-dvd-g--17ebebfe1a83c1f0700820ca.md) | 158 | `result-track:17ebebfe1a83c1f0700820ca1990cf270cb4aeac61d8759134fe4046000a195a` |
| 26 | `lemma` | [ab_add_one_dvd_a_pow_large_n_0_add_b](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/ab-add-one-dvd-a-pow-large-n-0-add-b--5ea337fc1d347e6edf750c5c.md) | 162 | `result-track:5ea337fc1d347e6edf750c5c2c9e4f850032c2382a4410a01c085791f5267fc9` |
| 27 | `lemma` | [ab_add_one_dvd_b_add_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/ab-add-one-dvd-b-add-one--2d2a3120a110e3dbd065dcc9.md) | 169 | `result-track:2d2a3120a110e3dbd065dcc9cf6c44a780f6234244f2bbbdaf95ee1890180a37` |
| 28 | `lemma` | [a_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/a-eq-one--87b94418ca2d36d538efa7ba.md) | 178 | `result-track:87b94418ca2d36d538efa7ba9e5c60349c8ce3a6ab18df128105afb23bb00a71` |
| 29 | `lemma` | [b_eq_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/b-eq-one--9f87910b11fdb7ddfc5fa9a9.md) | 188 | `result-track:9f87910b11fdb7ddfc5fa9a9f483d50352f9cb001f9f3390409da45147260038` |
| 30 | `def` | [solutionSet](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/solutionset--a700271e9d39c3408d5a1720.md) | 193 | `declaration-track:a700271e9d39c3408d5a17207c1fb411526ee17eb0e88734f6cf1b249c78030e` |
| 31 | `theorem` | [result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Imo2024Q2/Variant879e383f2259ec08d517db1512ee5719fdff8ef8f233b68040deeaa318b71758.lean/declarations/result--0e689a48f82704826c799160.md) | 195 | `result-track:0e689a48f82704826c799160e74f3c3137307986cabc33cb039ad6944e69b693` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
