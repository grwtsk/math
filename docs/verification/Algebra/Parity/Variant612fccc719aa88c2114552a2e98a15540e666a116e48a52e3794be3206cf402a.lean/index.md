# Verification target: GRWTSK.Algebra.Parity.Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5671a86b61cf3682fd6e27a1cb70d7f8e7fb3ed6",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/index.md) · [Full source](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5671a86b61cf3682fd6e27a1cb70d7f8e7fb3ed6`.

Source path: `GRWTSK/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [odd_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-iff--90e006029a5c116edf1a315b.md) | 37 | `result-track:90e006029a5c116edf1a315b530b784ae1fd983e7b2f80ff278be5a60588ad52` |
| 2 | `lemma` | [not_odd_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/not-odd-iff--db43b48018a065928b760376.md) | 41 | `result-track:db43b48018a065928b760376ab8f0f43d8905dfc0c4122c2fa4a98022490d7e1` |
| 3 | `lemma` | [not_odd_zero](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/not-odd-zero--a27d793145376d2fc288cec0.md) | 43 | `result-track:a27d793145376d2fc288cec06cc3b46589eb61dfd0a66632c335f3ea96b7dad5` |
| 4 | `lemma` | [not_odd_iff_even](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/not-odd-iff-even--a0adfd04c739eb0d8a3fec55.md) | 45 | `result-track:a0adfd04c739eb0d8a3fec55e91c354c54eee59f26cb15f1f2ec70f391ecfaae` |
| 5 | `lemma` | [not_even_iff_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/not-even-iff-odd--9d44e68b547d1f0556abfcef.md) | 46 | `result-track:9d44e68b547d1f0556abfcef26b9bd5b9284dcc5144003d210899cf3100cb525` |
| 6 | `lemma` | [even_or_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-or-odd--a21e0ab9ed41d07729e45b15.md) | 48 | `result-track:a21e0ab9ed41d07729e45b15c079b6a1c80e6a0bb96dc2f5e786e6e43cb94ae2` |
| 7 | `lemma` | [even_or_odd'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-or-odd--25e20feb0d54e915b57c4e9d.md) | 50 | `result-track:25e20feb0d54e915b57c4e9d87f28fcd53a20465e6d7921ea71344da1861582f` |
| 8 | `lemma` | [even_xor_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-xor-odd--4dd5e80a9259ce0d1aa1c220.md) | 53 | `result-track:4dd5e80a9259ce0d1aa1c2208f693e8e8eb15836e0e9d8ac664b6da46fe40072` |
| 9 | `lemma` | [even_xor_odd'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-xor-odd--6caea37d9781f598c534ac39.md) | 58 | `result-track:6caea37d9781f598c534ac3913afd1c296113c1670a72a7dd543547bfe73aa8c` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/instance--814f686da2a4d7473dd032e7.md) | 65 | `declaration-track:814f686da2a4d7473dd032e75de42fbf2d842edcaf55da375ab9994ffe413ef1` |
| 11 | `lemma` | [even_add'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-add--866a272a20e59a2f4337cf4f.md) | 67 | `result-track:866a272a20e59a2f4337cf4f8f2eceed0966b1f459437820d9bdabeab7ee41c6` |
| 12 | `lemma` | [not_even_two_mul_add_one](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/not-even-two-mul-add-one--4f0229b81a8810ab54d03bad.md) | 69 | `result-track:4f0229b81a8810ab54d03badcb4b46cc51eb872b169fc2d7e4a4cc202f8a470d` |
| 13 | `lemma` | [even_sub'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-sub--e1cfa73daee3f452ad8dfd0e.md) | 71 | `result-track:e1cfa73daee3f452ad8dfd0ef6b5ab623a4fb0a00095eeafd7fd505986d66faf` |
| 14 | `lemma` | [odd_mul](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-mul--e8618fb99b2bf160f213ce2c.md) | 73 | `result-track:e8618fb99b2bf160f213ce2cf4cbba67158c3954ea0113095897be5763c88cda` |
| 15 | `lemma` | [Odd.of_mul_left](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-of-mul-left--35718929962c162570df7025.md) | 75 | `result-track:35718929962c162570df702526674058a6e1abdc9546b7bf01781eec2d7f521a` |
| 16 | `lemma` | [Odd.of_mul_right](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-of-mul-right--9b165ad99667eaf3e1a64430.md) | 77 | `result-track:9b165ad99667eaf3e1a644305afb7d0a39e8c2fc07f727eaea79d5eda944cc4b` |
| 17 | `lemma` | [odd_pow](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-pow--10a70847b8fe7947eadb416e.md) | 79 | `result-track:10a70847b8fe7947eadb416e111907ddf4f39c68d6dcd9ace1b94e252c1f7395` |
| 18 | `lemma` | [odd_pow'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-pow--48cad814f5fe82dd026f5885.md) | 81 | `result-track:48cad814f5fe82dd026f588576f1b8891484f80744883d67b7da2bfd6dda93b3` |
| 19 | `lemma` | [odd_add](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-add--8b525a43e12714cf777a7be4.md) | 83 | `result-track:8b525a43e12714cf777a7be450014e68043c4b6f2d111acf7022c13c7a5493dc` |
| 20 | `lemma` | [odd_add'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-add--25e4680dc77fa4253de08ac1.md) | 85 | `result-track:25e4680dc77fa4253de08ac1bdb2e69bcc290b073eac704062f16ac44b26ea04` |
| 21 | `lemma` | [ne_of_odd_add](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/ne-of-odd-add--f48d944fe462beb0cf4e6ac4.md) | 87 | `result-track:f48d944fe462beb0cf4e6ac42b3de9d5b4afa1ec6ec826223455ccd1e4bd6729` |
| 22 | `lemma` | [odd_sub](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-sub--7877ee57ad8931186ddc245d.md) | 89 | `result-track:7877ee57ad8931186ddc245d85b6c21220005c6f2abb61559ba5d6f7f1fdf8a5` |
| 23 | `lemma` | [odd_sub'](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-sub--57d1e67181c18edaab1e395b.md) | 91 | `result-track:57d1e67181c18edaab1e395b3e0b91b661dfbedcb4d07182a2a9731b57481a48` |
| 24 | `lemma` | [even_mul_succ_self](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-mul-succ-self--ad76d7ccd84b8dfe47a9dc52.md) | 93 | `result-track:ad76d7ccd84b8dfe47a9dc52df44d8d7d32ee7f6808674ac2312104ccaa90bab` |
| 25 | `lemma` | [even_mul_pred_self](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-mul-pred-self--08fe95b4db4d5da47ea15276.md) | 95 | `result-track:08fe95b4db4d5da47ea152766212886a6fc18c3ed35523c92d711015d1396cad` |
| 26 | `lemma` | [odd_coe_nat](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-coe-nat--1944a85e459fdbaeb9525fc1.md) | 97 | `result-track:1944a85e459fdbaeb9525fc1e4c7ae606f5c96294355b6f9a78947074a6f2d51` |
| 27 | `lemma` | [natAbs_even](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/natabs-even--bdd32e90bbe473e565969585.md) | 99 | `result-track:bdd32e90bbe473e565969585bc1ce0859a9e7bd74a92e8275188fd92fb7bbd66` |
| 28 | `lemma` | [natAbs_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/natabs-odd--198c5ac65d4cec1d918986ae.md) | 102 | `result-track:198c5ac65d4cec1d918986aee0dd5be2af862be650ddf9a2b52aae23b4a3057d` |
| 29 | `lemma` | [four_dvd_add_or_sub_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/four-dvd-add-or-sub-of-odd--583086e669c1b0b9c23b1f37.md) | 107 | `result-track:583086e669c1b0b9c23b1f37db349f7760031cafda06dc1f7f74e64814133937` |
| 30 | `lemma` | [two_dvd_mul_add_one](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/two-dvd-mul-add-one--81a62dd73e0dfaf3bdbffae8.md) | 110 | `result-track:81a62dd73e0dfaf3bdbffae86de882fa2205d8a43cdcd7e76c37ccb06b25e032` |
| 31 | `lemma` | [two_mul_ediv_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/two-mul-ediv-two-add-one-of-odd--681e707d8716a1398bfb9da6.md) | 113 | `result-track:681e707d8716a1398bfb9da6c0a4aa4fca263719411f7dca5e6f14041eaa4d4a` |
| 32 | `lemma` | [ediv_two_mul_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/ediv-two-mul-two-add-one-of-odd--23e65e02b00c6ad6d4dd0e02.md) | 115 | `result-track:23e65e02b00c6ad6d4dd0e0230c29489646c0b17cd6763d0e28246c81451e783` |
| 33 | `lemma` | [add_one_ediv_two_mul_two_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/add-one-ediv-two-mul-two-of-odd--153de8c7a93b91195ca2003f.md) | 117 | `result-track:153de8c7a93b91195ca2003fe7ad09c02113fd209c60e028bd6826a0d80674e2` |
| 34 | `lemma` | [two_mul_ediv_two_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/two-mul-ediv-two-of-odd--ee4cec84831e080379b45698.md) | 119 | `result-track:ee4cec84831e080379b456982646c974dec269c92ed07d7e831a5e8be9f0e68d` |
| 35 | `theorem` | [even_sign_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/even-sign-iff--f1f2b6aa1fb9de7814e7653d.md) | 122 | `result-track:f1f2b6aa1fb9de7814e7653d8deb8e977d786e41b9705fd3e997f6c89135e060` |
| 36 | `theorem` | [odd_sign_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-sign-iff--66f6d5b2a746c4b7fe81fb7d.md) | 125 | `result-track:66f6d5b2a746c4b7fe81fb7d31b3019192b196d0385c04a11892257537c2ca19` |
| 37 | `theorem` | [isSquare_natCast_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/issquare-natcast-iff--0557492ba6402693815aa4b4.md) | 128 | `result-track:0557492ba6402693815aa4b4ef370e372ec62cd8dd909ad053150f6f8fcb6d31` |
| 38 | `theorem` | [isSquare_ofNat_iff](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/issquare-ofnat-iff--0132e0c9eb9474c16db0e47c.md) | 134 | `result-track:0132e0c9eb9474c16db0e47c495cfa724fbe9370bfba5c7bc4f8312ac0905cc1` |
| 39 | `theorem` | [natCast_pow_pred](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/natcast-pow-pred--e23fb672fea3718bf29e4c80.md) | 139 | `result-track:e23fb672fea3718bf29e4c8024c4201db35214d0578e79900318182a70d82879` |
| 40 | `theorem` | [coe_nat_two_pow_pred](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/coe-nat-two-pow-pred--9f38e3c65661b7c734bb39be.md) | 143 | `result-track:9f38e3c65661b7c734bb39be834a551afb3cdac379e4411d8e2182a9fc70b0d5` |
| 41 | `lemma` | [sq_emod_four](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/sq-emod-four--8b04204413bb8e2e07756d6a.md) | 146 | `result-track:8b04204413bb8e2e07756d6a493e51d7e5597a777a8abd3cb15926ee8c39d135` |
| 42 | `theorem` | [sq_emod_four_eq_one_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/sq-emod-four-eq-one-of-odd--c3ba7eda2c765c60e7b03dce.md) | 149 | `result-track:c3ba7eda2c765c60e7b03dce84bdfccf725ff9f4ca92a93e15ab3f3f43a1cb00` |
| 43 | `lemma` | [eight_dvd_sq_sub_one_of_odd](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/eight-dvd-sq-sub-one-of-odd--2ec5dfe75ecd5b777ad4eac6.md) | 152 | `result-track:2ec5dfe75ecd5b777ad4eac6305973b6504ab9f16eaf4c405c5f653a68d96284` |
| 44 | `theorem` | [Odd.neg_zpow](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-neg-zpow--770d9a09209279e7d27ea043.md) | 163 | `result-track:770d9a09209279e7d27ea0439fb81f7778ca2bd7e64be73af5d84a343bf1dfbb` |
| 45 | `theorem` | [Odd.neg_one_zpow](../../../../mathematics/Algebra/Parity/Variant612fccc719aa88c2114552a2e98a15540e666a116e48a52e3794be3206cf402a.lean/declarations/odd-neg-one-zpow--0db9461c8bb7b48485afe18f.md) | 175 | `result-track:0db9461c8bb7b48485afe18fb482d565cb46f5a994c73ed39eba32872567ab34` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
