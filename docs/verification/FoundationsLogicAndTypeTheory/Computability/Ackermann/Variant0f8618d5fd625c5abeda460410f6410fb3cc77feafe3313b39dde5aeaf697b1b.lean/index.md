# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a8c91e09409d9db4f15b4f40b15464d165f702c",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a8c91e09409d9db4f15b4f40b15464d165f702c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Primrec` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack--b99500dcc5c2719d4cea7714.md) | 69 | `declaration-track:b99500dcc5c2719d4cea7714168eb909bc7151670dffcb3f58ee4c9bc7c5e038` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-zero--6afe9ed95b607feff33286fe.md) | 77 | `result-track:6afe9ed95b607feff33286fea7b1aec74640e9ae97838f0652744c3bffacc040` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-succ-zero--7778c4512bff13d5660ade88.md) | 81 | `result-track:7778c4512bff13d5660ade88985183f57d5f8f7f8c6162861efc892722aeda48` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-succ-succ--524f0798d4f14366209c5ab9.md) | 85 | `result-track:524f0798d4f14366209c5ab9de90c0edba2a789d7cc3d46a842671734327c2ce` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-one--de4223e3bfdb7ac16417323c.md) | 89 | `result-track:de4223e3bfdb7ac16417323c63d4025d3fb3f0ab9c8ed04c97f637fdda8c97f7` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-two--da4e71e9f24873b31b652599.md) | 96 | `result-track:da4e71e9f24873b31b65259992568ab48fb6bfac0eaee248416e7ec11ed68a0d` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-three--b7e0f058b29f6c912a6e0061.md) | 104 | `result-track:b7e0f058b29f6c912a6e006157c9bf0f5eb2522aefdff4f5cbd35ba322d11817` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-pos--bc7876bcfb1cc95ae1740b8a.md) | 114 | `result-track:bc7876bcfb1cc95ae1740b8a233c429c23447ac051f349cb8068b6426191835f` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/one-lt-ack-succ-left--47d4b9e8d246c13a228ae36b.md) | 124 | `result-track:47d4b9e8d246c13a228ae36bb8754df4602ef1177457107908d2d1437f4a35a6` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/one-lt-ack-succ-right--00e7beadf60154a2f29cb76b.md) | 134 | `result-track:00e7beadf60154a2f29cb76bd5f80149e9b05504e772bd0838e5b179590cb4b5` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-strictmono-right--66638e3866a9e2c38ccca8d3.md) | 143 | `result-track:66638e3866a9e2c38ccca8d3b4522bd10466326b2284908d489bf642a964a9fb` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-mono-right--9a7a4bb9e8a579d487fce481.md) | 155 | `result-track:9a7a4bb9e8a579d487fce4812d7cdddaac63db6be478ca78143c693dae94455a` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-injective-right--95cfdb6ec618bd4b814e8513.md) | 159 | `result-track:95cfdb6ec618bd4b814e8513f377622865923c92915e178a7fc37b5b31869759` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-lt-iff-right--0efda1fdebbbc7a587f6fc5e.md) | 164 | `result-track:0efda1fdebbbc7a587f6fc5e6ce3639ff8ea17888bb518f5da92621fc6ee8dcd` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-le-iff-right--fb71bd737a026ab8f2e97b0b.md) | 169 | `result-track:fb71bd737a026ab8f2e97b0ba6fec12edb85fe8906b7628f49b7292db25b21d4` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-inj-right--c36acd9c8badb1f4765f7e77.md) | 174 | `result-track:c36acd9c8badb1f4765f7e777d38ae0933a65b17702d43613238c72bc28f488a` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/max-ack-right--2318447cdffff5b4c7c5e90a.md) | 178 | `result-track:2318447cdffff5b4c7c5e90a81f16718ebcc6097c7980b4f915b4b029bbcca3d` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/add-lt-ack--56784c1a6bc2a2e9c307a217.md) | 182 | `result-track:56784c1a6bc2a2e9c307a217c72cd001915673658b6f97696873b0ecc311ab82` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/add-add-one-le-ack--83343ab23e9d90967b0c1400.md) | 196 | `result-track:83343ab23e9d90967b0c1400ef9dfaffc8aed982c53f66d974a609a0a4c7de8c` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/lt-ack-left--0cfdd16f04b30e962b2f496a.md) | 200 | `result-track:0cfdd16f04b30e962b2f496aa2729ecb7a10ab465ce43878f7a91f406f50de6a` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/lt-ack-right--fba303642ee5644485dc1b96.md) | 204 | `result-track:fba303642ee5644485dc1b96c0da93248fe931fe7bc61fddbf2671170d278bb4` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-strict-mono-left--6d44435ef83597bf68057d03.md) | 209 | `result-track:6d44435ef83597bf68057d03c3e733a32e56c0342338133afa363a1d9149c86e` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-strictmono-left--ca05930289e7c3e0ff8173d8.md) | 225 | `result-track:ca05930289e7c3e0ff8173d86b7e88e77454e8ff7f3d650dca2e88b0c9ab91f8` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-mono-left--fe6115c210a2c4b692c93c28.md) | 229 | `result-track:fe6115c210a2c4b692c93c280d8df77c0a7340786b51913bfc43b57d322e78a5` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-injective-left--b3bb3979f58d5d7279c8dc6d.md) | 233 | `result-track:b3bb3979f58d5d7279c8dc6d1a2ea31e7e2af36f35b3ca01fecfc3c2ff9335bf` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-lt-iff-left--f7a19cf28df4aebb113c080b.md) | 238 | `result-track:f7a19cf28df4aebb113c080b42cde3e4512135d2dbf28239ac3f82be5f0bee7f` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-le-iff-left--6dc38f2b717f35af7a7965d2.md) | 243 | `result-track:6dc38f2b717f35af7a7965d20d8ea078c8ef6af370c74a60790bf2be8c285a8d` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-inj-left--8ac3ba2b8943c95608023227.md) | 248 | `result-track:8ac3ba2b8943c95608023227a9d00d92cb6de5a882a320da506c0f8f040f8840` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/max-ack-left--e6387db3303a4e317fca943b.md) | 252 | `result-track:e6387db3303a4e317fca943b929ffc4850b8f6a3d8a3ec13c57c9a13a4fe3a96` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-le-ack--0f95a2c89a62933188a6d341.md) | 256 | `result-track:0f95a2c89a62933188a6d3413b9515added2ef5eb88f52b2230027fce0f445f9` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-succ-right-le-ack-succ-left--8c3762982570269d2a164ea6.md) | 260 | `result-track:8c3762982570269d2a164ea627dd3ae15e63c8df7a6c1ce7f68981e681f23a28` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/sq-le-two-pow-add-one-minus-three--d0d512ce9c10580ecf62cc65.md) | 269 | `result-track:d0d512ce9c10580ecf62cc65aa425f78561e87d6823c071a6c68ac34747719b4` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-add-one-sq-lt-ack-add-three--d772e28871dd746bb3ac75c2.md) | 284 | `result-track:d772e28871dd746bb3ac75c270f89eb6c3466e59b7a8d627aa9802d83496e4c9` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-ack-lt-ack-max-add-two--91573107ef3192e38d7bff1a.md) | 295 | `result-track:91573107ef3192e38d7bff1a69bb73673e13ef55aff91ffff18f92b326b292e3` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-add-one-sq-lt-ack-add-four--a1a983c81cc75ae426d1fbf8.md) | 304 | `result-track:a1a983c81cc75ae426d1fbf8308c7500e4b9e58851dbf3a9c5a06d5d6f9202a1` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/ack-pair-lt--f7490fb98d450f3c9803156c.md) | 314 | `result-track:f7490fb98d450f3c9803156c7555be8872367e71b50e5b5abd371802e34163dd` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/exists-lt-ack-of-nat-primrec--a17901b02c246f2f126b1d11.md) | 320 | `result-track:a17901b02c246f2f126b1d11edf725c3293fbbf0e2d9d52d83b3c001dee874d0` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/not-nat-primrec-ack-self--3d4d6b444865e1beb3bb63a2.md) | 388 | `result-track:3d4d6b444865e1beb3bb63a29281def4a72b725a669ab95c41b190d3835c51f6` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/not-primrec-ack-self--c9c7d5a788a51e3dab9f4be1.md) | 393 | `result-track:c9c7d5a788a51e3dab9f4be1fc87fe0641ec83e97163a2e1d30c7becaf74cbe5` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant0f8618d5fd625c5abeda460410f6410fb3cc77feafe3313b39dde5aeaf697b1b.lean/declarations/not-primrec-ack--b80558cb39edb0fc5a0587b8.md) | 399 | `result-track:b80558cb39edb0fc5a0587b84e658beb893df7bc1c54f1ef25c938d75973d32d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
