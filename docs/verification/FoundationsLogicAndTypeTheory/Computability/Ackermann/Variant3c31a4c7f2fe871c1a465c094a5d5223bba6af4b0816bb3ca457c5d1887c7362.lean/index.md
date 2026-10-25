# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ecc1838c44e85d8778030b873fa1a37cb5473800",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ecc1838c44e85d8778030b873fa1a37cb5473800`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Computability.Primrec` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack--08096d703147dbd5ff5cfa08.md) | 61 | `declaration-track:08096d703147dbd5ff5cfa089f6c2c3332c4fa17af87938e3128318664dfe80f` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-zero--ba0ce12e2b10720e093ac0fd.md) | 69 | `result-track:ba0ce12e2b10720e093ac0fdb398b36e9115f957216e0c775198198ab732f263` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-succ-zero--58aa275aff72666202089a89.md) | 73 | `result-track:58aa275aff72666202089a8919c13a1c03e82591e28720ec8805298f20e750d4` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-succ-succ--dba8ed11bf987169d2a193a4.md) | 77 | `result-track:dba8ed11bf987169d2a193a40f8ed87f914e2e08e818ed4fcd5f56a83d7436bf` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-one--7a0d61e299f54e833db91a16.md) | 81 | `result-track:7a0d61e299f54e833db91a1609e4f779add3d06beefbb3cfca821eb2a93c3086` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-two--c8989d91645406761c249344.md) | 88 | `result-track:c8989d91645406761c24934492b64b07f1d4ccd095fa075c53d7af5d81cbca27` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-three--d01f8553ef344bdbbd30de96.md) | 96 | `result-track:d01f8553ef344bdbbd30de9684732985dbb313daa86a7c9670d00bc05c992c24` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-pos--21d1bd5e03095ef09d1c4652.md) | 106 | `result-track:21d1bd5e03095ef09d1c4652087f975fe2147891b41060c886afff375b4159ee` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/one-lt-ack-succ-left--26bbfcd0141bfc54df602ac2.md) | 116 | `result-track:26bbfcd0141bfc54df602ac2d6d1e34889c0225e283ff87125e91ba3b1b709f8` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/one-lt-ack-succ-right--768a547f18b4ced9948ba812.md) | 126 | `result-track:768a547f18b4ced9948ba812c740f59ad8064905c1a6ebaffc16c696284316e0` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-strictmono-right--223d0e653dac29bc9fcfc4e9.md) | 135 | `result-track:223d0e653dac29bc9fcfc4e95115c596f8448ec1e6d2a10b95c585c775ef9fd6` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-mono-right--85c64dd5022bbf89fdb23274.md) | 147 | `result-track:85c64dd5022bbf89fdb23274768fbcc4894205c0488202112cd5ebac65aeb250` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-injective-right--39a37cc51e52272653dbd891.md) | 151 | `result-track:39a37cc51e52272653dbd891ef6362e5c7fca323ec0042902b94c31eeacd7b37` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-lt-iff-right--d998dfc6440ceba6c53df9fc.md) | 156 | `result-track:d998dfc6440ceba6c53df9fc7e4eb14e4444282da07c3a57218738cb56cfe633` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-le-iff-right--91899c0a19109b691093950a.md) | 161 | `result-track:91899c0a19109b691093950a2241c59c1679f78aa93ff3ab2893c585bc0b86e5` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-inj-right--7e1b9c771831800955bfc56e.md) | 166 | `result-track:7e1b9c771831800955bfc56e1002bbfaba78bbd07b72ed472eebe4b1c2bd80ae` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/max-ack-right--8e135eb070fbd46e0ca90611.md) | 170 | `result-track:8e135eb070fbd46e0ca906112e99959f62d0250c7651eb5db0084202d44f4617` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/add-lt-ack--8f6a8da27a26d83cd6de9584.md) | 174 | `result-track:8f6a8da27a26d83cd6de9584c8d9e30964462d916edf8ec97cbb149624329517` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/add-add-one-le-ack--398fc7e53e8e13611d5d5fb8.md) | 188 | `result-track:398fc7e53e8e13611d5d5fb8b674c97eb8beb0d994b18349389d916dc5b07f75` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/lt-ack-left--b0fda894868c4d3fce14323d.md) | 192 | `result-track:b0fda894868c4d3fce14323d92182c9a36fa21c9ca265ff3bc23e5ec3b071df3` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/lt-ack-right--aa59a4876b5010201bc917c5.md) | 196 | `result-track:aa59a4876b5010201bc917c50af55e2945ecee9f34c0e5927670bfc54a508ea1` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-strict-mono-left--0d68a356a67b1d76301e8194.md) | 201 | `result-track:0d68a356a67b1d76301e819402bf65e059634680e57ea60e576cd1df1f473027` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-strictmono-left--2a0817f10db784e2c52f93f6.md) | 217 | `result-track:2a0817f10db784e2c52f93f691186769c874cf6c1481e28dfaa12c9209e38649` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-mono-left--c9f78e9a63ce9eb22815fee3.md) | 221 | `result-track:c9f78e9a63ce9eb22815fee3d1545a0a4bc2104374e110641ff1dfa8422831eb` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-injective-left--feed9c0ed8fae4c927ceafab.md) | 225 | `result-track:feed9c0ed8fae4c927ceafab859160a0c626b1fb165b9d92a63eedbb652fa06f` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-lt-iff-left--d5ea4864eb44353727a57d34.md) | 230 | `result-track:d5ea4864eb44353727a57d34f8755ed29e2375d0d88204124f4a325fc99fa647` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-le-iff-left--999102931d1cbb5c0b9bf6c9.md) | 235 | `result-track:999102931d1cbb5c0b9bf6c9b2a1e2700fc4eb9a4cfbae4cfbd77adf13f4cce7` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-inj-left--b8f14fde8de6bca8930c7217.md) | 240 | `result-track:b8f14fde8de6bca8930c7217a31089380b2cb93ecaebdc24f0371a169d3a2700` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/max-ack-left--c51a3e8aece95fa4c6bb7cef.md) | 244 | `result-track:c51a3e8aece95fa4c6bb7cef373e394ada5693aad52bec96501b630628f5abb5` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-le-ack--cc88da4ffab08e249430118a.md) | 248 | `result-track:cc88da4ffab08e249430118aa7157e849e25808ef22d9427c8162545bc5e16ff` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-succ-right-le-ack-succ-left--051baa5ee73db694fcfaed80.md) | 252 | `result-track:051baa5ee73db694fcfaed8089d4e4afa97f171b8907620d5054137f8cbddcf5` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/sq-le-two-pow-add-one-minus-three--dd33d64e4226653a903d3f6b.md) | 261 | `result-track:dd33d64e4226653a903d3f6b9bfbedac70551ef2cdefc3e8eba74c66f63adc11` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-add-one-sq-lt-ack-add-three--241e995f93c0023fce3b11c9.md) | 276 | `result-track:241e995f93c0023fce3b11c9acbf973474fbbb2eb248a6230741330eff0cfe0d` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-ack-lt-ack-max-add-two--0af81d47114f2e630fd545bc.md) | 287 | `result-track:0af81d47114f2e630fd545bce35637b04c7088bea1799ac95b24be2b55e9bba0` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-add-one-sq-lt-ack-add-four--22abc08ed2c5a9c090498137.md) | 296 | `result-track:22abc08ed2c5a9c090498137cdbc4c90d74d713eeca1b3e103937d8069fd874b` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/ack-pair-lt--b7f11b55fa8066380802edb2.md) | 306 | `result-track:b7f11b55fa8066380802edb2da2d3928153f5894f78b4af28b6e9271a82b45f8` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/exists-lt-ack-of-nat-primrec--6e18b68751b15f99d0b906f2.md) | 312 | `result-track:6e18b68751b15f99d0b906f28b3a8320c7fbecfcd00562b821cbde635b22b07c` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/not-nat-primrec-ack-self--428d9dc9fae3f7a7887458cb.md) | 380 | `result-track:428d9dc9fae3f7a7887458cb9633461b56e3037256f9a7d54b0f813154ed6105` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/not-primrec-ack-self--4d02973755bd2657c2305081.md) | 385 | `result-track:4d02973755bd2657c23050819fd83cb6605a39ead0d38ac23c68cfeae4bf724d` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant3c31a4c7f2fe871c1a465c094a5d5223bba6af4b0816bb3ca457c5d1887c7362.lean/declarations/not-primrec-ack--9718f8076725cae6bc95263e.md) | 391 | `result-track:9718f8076725cae6bc95263ea33e7cc69e3d84208b869442301cb257c7e7ad7b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
