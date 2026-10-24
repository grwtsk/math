# Verification target: GRWTSK.Algebra.Order.Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bfb6febf3d3aa1a674e8009a53e69d0bf785279",
  "lexical_observation_count": 54,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/index.md) · [Full source](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bfb6febf3d3aa1a674e8009a53e69d0bf785279`.

Source path: `GRWTSK/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.LemmasAux` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Ext` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Grind.Ordered.Order` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [eq_mp](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-mp--a0235eb4e3ad23c3d0e81a5b.md) | 29 | `result-track:a0235eb4e3ad23c3d0e81a5b6d67f0ab318c698258cb37b9484a15d4b5c517fb` |
| 2 | `theorem` | [eq_mp_not](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-mp-not--a478edb64f3d89c88d4d2fae.md) | 32 | `result-track:a478edb64f3d89c88d4d2fae79f06bb63204e8d3a2da30cd517dff2216f72ee1` |
| 3 | `theorem` | [eq_trans_true](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-trans-true--d69a0c65eb756fade691a024.md) | 35 | `result-track:d69a0c65eb756fade691a024582ee5dc2079ffb5bd1bfc5b531381bb2de7ee7f` |
| 4 | `theorem` | [eq_trans_false](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-trans-false--9d6504707307264d0364ea4d.md) | 38 | `result-track:9d6504707307264d0364ea4ddb36a1ac0208b99cb2093a81e436c75daf5f5905` |
| 5 | `theorem` | [eq_trans_true'](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-trans-true--6a6fc0d594765c98fffeb20d.md) | 41 | `result-track:6a6fc0d594765c98fffeb20d6ac101587ad71ff32b1704f2da109cb4ef6d30ca` |
| 6 | `theorem` | [eq_trans_false'](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-trans-false--443938623d9004d19b6afe0d.md) | 44 | `result-track:443938623d9004d19b6afe0dfc926d35801f2a21a7f9b676c7de351108729144` |
| 7 | `theorem` | [le_of_eq_1](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-eq-1--b0bab2f82426a48cbfb900ca.md) | 47 | `result-track:b0bab2f82426a48cbfb900cac66b7f6feb5fbb937e86b9009712187f01de52a1` |
| 8 | `theorem` | [le_of_eq_2](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-eq-2--ec4623bf1b761edff97f7e53.md) | 51 | `result-track:ec4623bf1b761edff97f7e53879bbff23a61837cbc2063be119a159c7e1dcbc6` |
| 9 | `theorem` | [le_of_eq_1_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-eq-1-k--c97671e2f9a37d22a818f093.md) | 59 | `result-track:c97671e2f9a37d22a818f093b1f4fa09b9de224c56acbcb72a9b924830811bb9` |
| 10 | `theorem` | [le_of_eq_2_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-eq-2-k--065f06a74731339ced907a17.md) | 64 | `result-track:065f06a74731339ced907a17fc101e2a52d56c2a9a176429537ca896005e9dba` |
| 11 | `theorem` | [le_of_offset_eq_1_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-offset-eq-1-k--3c17f2da7183c803ef751f32.md) | 69 | `result-track:3c17f2da7183c803ef751f325e705bf684a3416280baa9b791404e2d327b9c7a` |
| 12 | `theorem` | [le_of_offset_eq_2_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-offset-eq-2-k--0b0784c865211900501e5d58.md) | 73 | `result-track:0b0784c865211900501e5d58257a06684957da8ff7c0f7a4059c864fa6d502d9` |
| 13 | `theorem` | [nat_eq](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/nat-eq--2fbaab3435498e6f3630a789.md) | 79 | `result-track:2fbaab3435498e6f3630a7893e0cde9c931ae0c52eafd6eaeccaaf31cc5d696e` |
| 14 | `theorem` | [of_nat_eq](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/of-nat-eq--61beecbd553d06bfc0dc61d1.md) | 83 | `result-track:61beecbd553d06bfc0dc61d16f4678f169bcd018f2c507cf50beb6d195627b97` |
| 15 | `theorem` | [of_natCast_eq](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/of-natcast-eq--ec7a518d16dbd13dcec76251.md) | 86 | `result-track:ec7a518d16dbd13dcec76251583651050118dbb158708d98cc16203194501d40` |
| 16 | `theorem` | [le_of_not_le](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-not-le--d924f0d5ef7c67c1fb03ddbb.md) | 89 | `result-track:d924f0d5ef7c67c1fb03ddbb17640712f93e6e0ee24ecf6c191f5ccca41e1cb5` |
| 17 | `theorem` | [lt_of_not_le](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-of-not-le--d1b5ae696728eb6191311a8e.md) | 95 | `result-track:d1b5ae696728eb6191311a8ed9bbe2fab04ebc0e183498cf512730a9058a2ca1` |
| 18 | `theorem` | [le_of_not_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-not-lt--a89523165ea42348f6994f24.md) | 102 | `result-track:a89523165ea42348f6994f24554b0add369c7b61b232fcfac77293cca6e474b4` |
| 19 | `theorem` | [le_of_not_lt_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-of-not-lt-k--d6096206a475aeadda2537ab.md) | 113 | `result-track:d6096206a475aeadda2537ab6aedf3009d9a61714939d766fb7cd8804fe946a0` |
| 20 | `theorem` | [lt_of_not_le_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-of-not-le-k--69005e1c7fbccd9d1837e3fd.md) | 122 | `result-track:69005e1c7fbccd9d1837e3fd0987872bac67c112c90908cf6b0914c450250f58` |
| 21 | `theorem` | [int_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/int-lt--ae714b47ec9f91dc082c5376.md) | 131 | `result-track:ae714b47ec9f91dc082c5376a7063c0df79b7f3bc7453238d6fd3c8f3f378fc4` |
| 22 | `theorem` | [eq_of_le_of_le](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-of-le-of-le--591adf8d29efaee07cf5e7bd.md) | 138 | `result-track:591adf8d29efaee07cf5e7bd6c1a6740d016daa7f560bb7bb2dac8a798f9223a` |
| 23 | `theorem` | [eq_of_le_of_le_0](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/eq-of-le-of-le-0--840433112230a9fceae37985.md) | 141 | `result-track:840433112230a9fceae379853cb66d6a2dbe15d004846d1e519f1338b853a22a` |
| 24 | `theorem` | [le_trans](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-trans--09259418a49ac8dc35260f18.md) | 150 | `result-track:09259418a49ac8dc35260f18562bf3977700b12f1ef94b9d604aee40365adc39` |
| 25 | `theorem` | [lt_trans](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-trans--92dc226569ee86a2b47fa334.md) | 153 | `result-track:92dc226569ee86a2b47fa3341203b26df044f8d9498999aaf38045af3e3646da` |
| 26 | `theorem` | [le_lt_trans](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-lt-trans--9999a66a0946b5a73dd2c7f1.md) | 156 | `result-track:9999a66a0946b5a73dd2c7f1edde35f7bfc63033a881f74c6748fec8c283d36a` |
| 27 | `theorem` | [lt_le_trans](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-le-trans--c76bf0f7ba767ce63b4b613d.md) | 159 | `result-track:c76bf0f7ba767ce63b4b613d562a9c9f6243e48c1be00f71662e0c9b54180ace` |
| 28 | `theorem` | [lt_unsat](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-unsat--bc7f8005d5b5f37277207c3e.md) | 162 | `result-track:bc7f8005d5b5f37277207c3e9cedb26f95a2fa0e50dfedd1c9709ac96142718c` |
| 29 | `theorem` | [le_trans_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-trans-k--b29d85dfcf05350131d88c8b.md) | 169 | `result-track:b29d85dfcf05350131d88c8b68a728ee913aac2cb6e5898fa15a89db8252708a` |
| 30 | `theorem` | [lt_trans_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-trans-k--9536ae7f0de8fb252b902e24.md) | 176 | `result-track:9536ae7f0de8fb252b902e2428fd7f012312d7f1f57a7fe60a823a5407f39c60` |
| 31 | `theorem` | [le_lt_trans_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-lt-trans-k--ffa490800a2c0e758a18a203.md) | 183 | `result-track:ffa490800a2c0e758a18a203ab948d160424c54556468483bc6b21c0fb6fb117` |
| 32 | `theorem` | [lt_le_trans_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-le-trans-k--837b4f5c2066bae26b240ad4.md) | 190 | `result-track:837b4f5c2066bae26b240ad4b0ead5a3083818375e71b4f7443dd4914f86337f` |
| 33 | `theorem` | [le_unsat_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-unsat-k--7f1c5dc09d6e5cef46116cbd.md) | 201 | `result-track:7f1c5dc09d6e5cef46116cbd111ebe2781006be1cecf82fd24e5f4819ee466fa` |
| 34 | `theorem` | [lt_unsat_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-unsat-k--b83ee50ef4bb42e23bfdc39a.md) | 211 | `result-track:b83ee50ef4bb42e23bfdc39a6b6e9d0bc58ff5251ddb77f0dc6cc3f8f67bc648` |
| 35 | `theorem` | [add_lt_add_of_le_of_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/add-lt-add-of-le-of-lt--4b05f14cb79e9c6452a4110f.md) | 225 | `result-track:4b05f14cb79e9c6452a4110f1b61e08f40b0d72d74e4149b357c9ccdec1bffe1` |
| 36 | `theorem` | [add_lt_add_of_lt_of_le](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/add-lt-add-of-lt-of-le--74ac57a52f141dcf14d731f6.md) | 229 | `result-track:74ac57a52f141dcf14d731f6e496e9373cf8e440dd7c22ca1f73feeb106fe424` |
| 37 | `theorem` | [le_eq_true_of_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-true-of-lt--78b988a7dd0570c3bebc6690.md) | 235 | `result-track:78b988a7dd0570c3bebc6690414a7a6f0cd40286aab67706d87d0f8dc9417995` |
| 38 | `theorem` | [le_eq_true](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-true--501836befb3737f17f0cba56.md) | 240 | `result-track:501836befb3737f17f0cba56dd1aa7e1ebbb76f809a521b1bceac21f9cbe813d` |
| 39 | `theorem` | [le_eq_true_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-true-k--d98bf48f2c6af659f66ef002.md) | 244 | `result-track:d98bf48f2c6af659f66ef0020967202702557286ae3d4c6f8478bfd1eda999d7` |
| 40 | `theorem` | [lt_eq_true_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-true-k--beb7099f20723dcd937076bf.md) | 254 | `result-track:beb7099f20723dcd937076bf4c4682847db783e0200b03a58a6381081efd4780` |
| 41 | `theorem` | [le_eq_true_of_le_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-true-of-le-k--c8f8bcd04b65105e3432f577.md) | 264 | `result-track:c8f8bcd04b65105e3432f5775a9952b35e9738b31c4721ef4590ca487377106d` |
| 42 | `theorem` | [le_eq_true_of_lt_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-true-of-lt-k--81c23ebce6ced8809fc7174e.md) | 275 | `result-track:81c23ebce6ced8809fc7174e898463ad440347710909f9dab09372f94dccb672` |
| 43 | `theorem` | [lt_eq_true_of_lt_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-true-of-lt-k--02f8885802e67e9122b11a84.md) | 281 | `result-track:02f8885802e67e9122b11a84f245fcd76abc2abb64fed908ee9d734bfe353889` |
| 44 | `theorem` | [lt_eq_true_of_le_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-true-of-le-k--bc087beaca9fbbfb13850585.md) | 292 | `result-track:bc087beaca9fbbfb13850585458bbe85c9b7025ae0877eee0af38cff7fb7e634` |
| 45 | `theorem` | [lt_eq_false](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false--10d7ac4c851b625cbf75c8a9.md) | 305 | `result-track:10d7ac4c851b625cbf75c8a99135e0393f6f8065bfd66504ef6cbb21d8ec799d` |
| 46 | `theorem` | [le_eq_false_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-false-k--14f15f8d42647bc4edb4b85d.md) | 311 | `result-track:14f15f8d42647bc4edb4b85de0bf4e6963c1131bb92dd91ea9d40a377d94daa6` |
| 47 | `theorem` | [lt_eq_false_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false-k--ca320d783bae77d6e5a084bb.md) | 324 | `result-track:ca320d783bae77d6e5a084bbcc9c3ae31b6af3fa4a2241ceed87740860e970ba` |
| 48 | `theorem` | [le_eq_false_of_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-false-of-lt--e4fbe4fda981f4a794e72a9d.md) | 337 | `result-track:e4fbe4fda981f4a794e72a9dd86cacd724d71a7bb8b2faee4c74cd38d24c593e` |
| 49 | `theorem` | [lt_eq_false_of_lt](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false-of-lt--8ea2c0028a55cf0c0219e65b.md) | 344 | `result-track:8ea2c0028a55cf0c0219e65b995a799fedf48977f8c89fa36608d8861e735e43` |
| 50 | `theorem` | [lt_eq_false_of_le](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false-of-le--fa3c6b080149dbdc06b250d0.md) | 351 | `result-track:fa3c6b080149dbdc06b250d0dc086454f2bdc50750a630713fafcc4ba2ced88c` |
| 51 | `theorem` | [le_eq_false_of_le_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-false-of-le-k--56292446ebec18504efb9f3f.md) | 358 | `result-track:56292446ebec18504efb9f3fdef3edd9a52f55f4c0e8f89738b4587e12922c84` |
| 52 | `theorem` | [lt_eq_false_of_le_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false-of-le-k--1eb79b2e2f5315552102c23c.md) | 365 | `result-track:1eb79b2e2f5315552102c23c5e86d166546bd715138b6070db48123f1d7410ee` |
| 53 | `theorem` | [lt_eq_false_of_lt_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/lt-eq-false-of-lt-k--7bedb35bc8e768c812bb9ba6.md) | 372 | `result-track:7bedb35bc8e768c812bb9ba6482fdfa22d7864daf7f73f4dd28560af213ba71b` |
| 54 | `theorem` | [le_eq_false_of_lt_k](../../../../mathematics/Algebra/Order/Variant5214472e67905cb9a1c82eea72c7b8b2da2f43c36254a001e9e095664e5b30e5.lean/declarations/le-eq-false-of-lt-k--15b7ee37da9ef8654bcbdaf6.md) | 379 | `result-track:15b7ee37da9ef8654bcbdaf627fbb2646e753b2efebc7d9e4aac30c589b38290` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
