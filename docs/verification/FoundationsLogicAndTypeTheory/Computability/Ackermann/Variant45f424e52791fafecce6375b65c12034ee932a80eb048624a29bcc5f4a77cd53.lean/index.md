# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17e3bf1d25b21e93794193e040fa9a8787988474",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17e3bf1d25b21e93794193e040fa9a8787988474`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean.json)

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
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack--8ec0edeec5dc5985116e5c93.md) | 65 | `declaration-track:8ec0edeec5dc5985116e5c9360585d49bc6c49ebd2532f37a91eaa58c1bcba03` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-zero--1d5be6726963207b79760869.md) | 71 | `result-track:1d5be6726963207b797608691441a55a8f8dd073bb8c539278d89a2c52d0d061` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-succ-zero--d03bf904f152859d4a31e48e.md) | 74 | `result-track:d03bf904f152859d4a31e48e0a824a1e1f8f1357e0f8df07b2ae3fcc46c3a142` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-succ-succ--dcf72be662e8f898ae060fd0.md) | 77 | `result-track:dcf72be662e8f898ae060fd087fec099aef0cab892ece29ecf5e798aa1dc85f0` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-one--66994d999de0cfa4d9f920ff.md) | 80 | `result-track:66994d999de0cfa4d9f920ffa967b6667cb148800671a07fc04e7da6d833440c` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-two--38ad51e1c86d64df0268cbe7.md) | 86 | `result-track:38ad51e1c86d64df0268cbe795a46119c11ddaccd5ccaf426160fae0b1cfe105` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-three--1cdbfc066bc40f97ddf2ced7.md) | 92 | `result-track:1cdbfc066bc40f97ddf2ced7b669970fefc7debd2b57dbf6da8414943b9b5115` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-pos--f7712acf3b89ac03d6d6a450.md) | 102 | `result-track:f7712acf3b89ac03d6d6a45011f90e6ce133de25abb2f92a176c87f04449d653` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/one-lt-ack-succ-left--11c6f628bcc5fb7eb6d1c6bd.md) | 111 | `result-track:11c6f628bcc5fb7eb6d1c6bdb11059d50cd1f6b9d5f9f1944acf58cffbadae4b` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/one-lt-ack-succ-right--10a5c26a3e2468acbdcb7597.md) | 120 | `result-track:10a5c26a3e2468acbdcb7597e5b3525695de59f5d75248b45c730a6af1ce5ead` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-strictmono-right--6f9ecf583e0dea57e5970c8f.md) | 124 | `result-track:6f9ecf583e0dea57e5970c8f2762b842d070860669da51da4956159348dcb8d6` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-mono-right--7e423215809371eabb1e4d1b.md) | 134 | `result-track:7e423215809371eabb1e4d1b6ce95ecc3d84f6f1fdcb46b798c1eb98d0ee8bcd` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-injective-right--661a9c9c0875382f02321446.md) | 137 | `result-track:661a9c9c0875382f023214468f7801b18a6be8c9e20700c2b6b43e0e86dd19f4` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-lt-iff-right--1688da708fddca1d825b6399.md) | 141 | `result-track:1688da708fddca1d825b63993b50c1931024328abd94ce02ba6a34f259ebb6a4` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-le-iff-right--8536d7eff6d947feb2df028a.md) | 145 | `result-track:8536d7eff6d947feb2df028a02f58ebc126bc2a1826252385102b11eee2f87bc` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-inj-right--dac54a2dbcf18c80bcca4ecb.md) | 149 | `result-track:dac54a2dbcf18c80bcca4ecb911d30545be7686b9013a1329c278122e4ef48de` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/max-ack-right--e5997b3c6569eecfac85a780.md) | 152 | `result-track:e5997b3c6569eecfac85a780c59c8048217420dd248f98f50f4db77bbd6bfddb` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/add-lt-ack--6be2d94f1c81bbbf44202915.md) | 155 | `result-track:6be2d94f1c81bbbf4420291545d421fdbd8595b9d07ba08eb04f31d691fde8fe` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/add-add-one-le-ack--94379bf71f637c0cab9ccedd.md) | 167 | `result-track:94379bf71f637c0cab9cceddaa49019b9c12e92c2d45c30b0657e95e73e3afd0` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/lt-ack-left--4954cef68b0f8435a842894c.md) | 170 | `result-track:4954cef68b0f8435a842894c8eebcee0e0d5f0b87351b2e4e06e105fd4165750` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/lt-ack-right--d13e95e54e965d857e9935aa.md) | 173 | `result-track:d13e95e54e965d857e9935aa9b3c766dea677d91643e28ac877bb36507120977` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-strict-mono-left--ef62a9cb7b4fce186166339f.md) | 177 | `result-track:ef62a9cb7b4fce186166339fb6f14b5f7499036e1b0ffa42df9e7e30f63a5699` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-strictmono-left--cd817ca9c02a92cbfa40c9d2.md) | 194 | `result-track:cd817ca9c02a92cbfa40c9d2e4674ba729a8ef7191eefd8d9db280f9ff636eec` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-mono-left--3e29713c545188641018d7cc.md) | 197 | `result-track:3e29713c545188641018d7cc2983b95ca1cf65c0e9c5650f663f3401ca16ad01` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-injective-left--a7d0cfb3d6f35587c26c01a5.md) | 200 | `result-track:a7d0cfb3d6f35587c26c01a5fe25fee7535da12ffeda2900331e66a38756f79e` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-lt-iff-left--8552a0d8c6b07cc8b85c4f36.md) | 204 | `result-track:8552a0d8c6b07cc8b85c4f360a8b60fc3e329494d3c7f8e2c3421f549ed25743` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-le-iff-left--fd46b9b34f7b51458531ae26.md) | 208 | `result-track:fd46b9b34f7b51458531ae26f413570ae5f195c4700b3999b9cf948a9cbc59a1` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-inj-left--7479f5e0e1f797b9246bcd7d.md) | 212 | `result-track:7479f5e0e1f797b9246bcd7d2433cec2454c926b919539e5de38e456d9ef1304` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/max-ack-left--192a373cbb79a72efb68a169.md) | 215 | `result-track:192a373cbb79a72efb68a16963cfb1f208d0141883e39c8219adb44e8b31c3e9` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-le-ack--4d9e1478f40d9d2fd4225856.md) | 219 | `result-track:4d9e1478f40d9d2fd422585619b91e72a8fc23b9c148c7cd8d6873be5ec5e720` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-succ-right-le-ack-succ-left--a9adf4843d69c45c4c025601.md) | 222 | `result-track:a9adf4843d69c45c4c025601785df104c11e806ac6eb5563038a88a1ad2618dc` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/sq-le-two-pow-add-one-minus-three--d7fb5e721b8f3f5b67638dd6.md) | 230 | `result-track:d7fb5e721b8f3f5b67638dd67fee4136cc1ba901d8af6a5d211f05a60c32faf6` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-add-one-sq-lt-ack-add-three--959da2618fb982a62f787996.md) | 235 | `result-track:959da2618fb982a62f787996fb53ef310fb1294043bbb7132c5e76b350d678b3` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-ack-lt-ack-max-add-two--b677ac21bdc82414515c446b.md) | 245 | `result-track:b677ac21bdc82414515c446b6bc2b8d89066eebdee71d45a6d379a36e612f8a6` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-add-one-sq-lt-ack-add-four--237b859efdd34bfa724b79c1.md) | 253 | `result-track:237b859efdd34bfa724b79c1ee9950fc2d370bdb66d8999c42be3ae9cfb16879` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/ack-pair-lt--bc3d7dde75aa4bb219348e50.md) | 262 | `result-track:bc3d7dde75aa4bb219348e5083ea904ceec2dc9a64f51e1703fb7580704507c5` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/exists-lt-ack-of-nat-primrec--e2ff85b9113567de5fa1bcc9.md) | 267 | `result-track:e2ff85b9113567de5fa1bcc9a201bc49fa8e34168305ddb218cbb64a287c66ef` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/not-nat-primrec-ack-self--23da1dd9be0d4ebefde435d8.md) | 332 | `result-track:23da1dd9be0d4ebefde435d84d16195510f658fb988e5f32864c449769beffdc` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/not-primrec-ack-self--28cf59b5fe55f2e7ca3983f6.md) | 336 | `result-track:28cf59b5fe55f2e7ca3983f6bfe6cc4b37305847fce03cce362db3990e9f0653` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/not-primrec-ack--df69ae09edaea971cdedec47.md) | 341 | `result-track:df69ae09edaea971cdedec47bd8a9ce7b167e9a43b29fe60f4d606a1aaf17c8e` |
| 41 | `def` | [pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/pappack--8203862eb067fc1b84af48ad.md) | 348 | `declaration-track:8203862eb067fc1b84af48ad4a33ff58081093a6fdfa66a4fce1b7b2bcffe11b` |
| 42 | `lemma` | [primrec_pappAck_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/primrec-pappack-step--2d0e53935b02098403b5205e.md) | 356 | `result-track:2d0e53935b02098403b5205ee4c2d9d2c7e945ed658456750b68535791629417` |
| 43 | `lemma` | [eval_pappAck_step_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/eval-pappack-step-zero--9ea93851fa77714bb4e15b1f.md) | 363 | `result-track:9ea93851fa77714bb4e15b1f9398acd09d42faed9daa80ee3e240277bd16e18a` |
| 44 | `lemma` | [eval_pappAck_step_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/eval-pappack-step-succ--fa6be8d399193fb51dd6869a.md) | 368 | `result-track:fa6be8d399193fb51dd6869aff13f3ef88f0a1999d2db3d9e8f2e6bfb473584f` |
| 45 | `lemma` | [primrec_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/primrec-pappack--fcf822e090c32ed0c6067a2a.md) | 372 | `result-track:fcf822e090c32ed0c6067a2aa37648624c9d18169773bd0dce4372d975cb45be` |
| 46 | `lemma` | [eval_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/eval-pappack--57845147524d133b8c412654.md) | 379 | `result-track:57845147524d133b8c4126547c6617fe10e77248363577130dc8e390a95c5db6` |
| 47 | `theorem` | [_root_.computable₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.lean/declarations/root-computable-ack--437005c75ac708c0fb45608e.md) | 386 | `result-track:437005c75ac708c0fb45608e3febbdd8033bf4747ac1b9a0d7ce9691993ff5fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
