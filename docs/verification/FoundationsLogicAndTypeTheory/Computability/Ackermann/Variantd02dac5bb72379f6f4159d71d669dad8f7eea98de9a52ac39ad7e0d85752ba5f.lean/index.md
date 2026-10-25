# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ackermann.Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0e9e50e6aed1cc245f6e1c040646457d5beb4a2d",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0e9e50e6aed1cc245f6e1c040646457d5beb4a2d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean.json)

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
| 1 | `def` | [ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack--e5998150c98232d13a8dc4a1.md) | 73 | `declaration-track:e5998150c98232d13a8dc4a145e4263e3601e809e8d1e59e2ee0fa35add274d7` |
| 2 | `theorem` | [ack_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-zero--6e6b13bb947be7db973f235e.md) | 79 | `result-track:6e6b13bb947be7db973f235ea994f03c4b9b4f786dbf4eb389545d4a9d22f9c3` |
| 3 | `theorem` | [ack_succ_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-succ-zero--f2fbcf56e84b953b81bb6f4b.md) | 82 | `result-track:f2fbcf56e84b953b81bb6f4b9a9b6bed646ddb112b6e0f5ba4b396060fc6849a` |
| 4 | `theorem` | [ack_succ_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-succ-succ--cd01da22933084ec317895a7.md) | 85 | `result-track:cd01da22933084ec317895a7335e8ac64e42cdfa6254395d83424e554401f0e7` |
| 5 | `theorem` | [ack_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-one--ab393dc6de9c75ce37a1c9fa.md) | 88 | `result-track:ab393dc6de9c75ce37a1c9fae57a54b8810c9f77eb3b66e59f9af74b1187e085` |
| 6 | `theorem` | [ack_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-two--157dd6c20e94d0486b80dfcf.md) | 94 | `result-track:157dd6c20e94d0486b80dfcf85e63b178a16f378d462d450c3e70092eeb036b8` |
| 7 | `theorem` | [ack_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-three--9ebe4227cea8b15368f1d424.md) | 100 | `result-track:9ebe4227cea8b15368f1d424101d27de403a109bcfd1a38298246eb24c804364` |
| 8 | `theorem` | [ack_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-pos--a00a2b0b761e79abe32b6d4c.md) | 110 | `result-track:a00a2b0b761e79abe32b6d4c86f007de3135cf0a2b90c202d5512bf241b668dd` |
| 9 | `theorem` | [one_lt_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/one-lt-ack-succ-left--fb81a8102df54945f35e23fe.md) | 119 | `result-track:fb81a8102df54945f35e23fe57d7b8113a618035892cfd8eeeb7bb7cb1ca159e` |
| 10 | `theorem` | [one_lt_ack_succ_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/one-lt-ack-succ-right--efc0ede66dab80c446a38f6a.md) | 128 | `result-track:efc0ede66dab80c446a38f6a17e2838ad15209c3b5501df74a4095d1808de657` |
| 11 | `theorem` | [ack_strictMono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-strictmono-right--585f3825f1ba5084d97ca89d.md) | 132 | `result-track:585f3825f1ba5084d97ca89d24b330e4852e72e88bd193e851406c1de83ea408` |
| 12 | `theorem` | [ack_mono_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-mono-right--ea6308de41193c5734c9ccd1.md) | 142 | `result-track:ea6308de41193c5734c9ccd19e274fd6a94cc2e862cabe76af79fcd7a14c87dd` |
| 13 | `theorem` | [ack_injective_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-injective-right--3ef7d799589591f680937cff.md) | 145 | `result-track:3ef7d799589591f680937cff8e78ad89676be7b20adf9f147447416265f8f0a6` |
| 14 | `theorem` | [ack_lt_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-lt-iff-right--0d026a5c520cf2c97497ba3b.md) | 149 | `result-track:0d026a5c520cf2c97497ba3b0f572dc4206bcdc4194bbb825bf5ec2731154636` |
| 15 | `theorem` | [ack_le_iff_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-le-iff-right--49469c26ff802d0320380e80.md) | 153 | `result-track:49469c26ff802d0320380e80ec9cb2363f1076cd737f4035665eb2fa6836a00b` |
| 16 | `theorem` | [ack_inj_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-inj-right--983b94b8860dc2277435a3cb.md) | 157 | `result-track:983b94b8860dc2277435a3cb1facc3a8b2f4dc3f4ac080b09904e2b55591293d` |
| 17 | `theorem` | [max_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/max-ack-right--9a8765f2a22ac5ed097e4931.md) | 160 | `result-track:9a8765f2a22ac5ed097e49319da97f20b53af697b510cac5e7fad4a54a7bc61c` |
| 18 | `theorem` | [add_lt_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/add-lt-ack--b95147aaf965f332eed183ac.md) | 163 | `result-track:b95147aaf965f332eed183ac825dbc7558c988fec8ea57b0e846f115724d96b9` |
| 19 | `theorem` | [add_add_one_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/add-add-one-le-ack--8d79f261e2cafb0918d35945.md) | 175 | `result-track:8d79f261e2cafb0918d35945ff6460d4a2fafdfa7d066cbf762d51942896244c` |
| 20 | `theorem` | [lt_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/lt-ack-left--e89fd7dad555f223b6813230.md) | 178 | `result-track:e89fd7dad555f223b6813230228fcc426ec8f17425cf28195becff88ffcaf8d3` |
| 21 | `theorem` | [lt_ack_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/lt-ack-right--9bc75dff6532457ba878b513.md) | 181 | `result-track:9bc75dff6532457ba878b5130d524f147c8a07517e14c473c42758dbed7ee7e7` |
| 22 | `theorem` | [ack_strict_mono_left'](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-strict-mono-left--ecbfefc04844492da5ecb0fa.md) | 185 | `result-track:ecbfefc04844492da5ecb0fa4dded867b9316aea56c5c8c7b195bb29dbf71a33` |
| 23 | `theorem` | [ack_strictMono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-strictmono-left--a01042d8a29c2bb7d914390d.md) | 202 | `result-track:a01042d8a29c2bb7d914390d53292feade81dd98c6ab5342105a0ec038d26d70` |
| 24 | `theorem` | [ack_mono_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-mono-left--b2de26be3d4dfbed4703e7d9.md) | 205 | `result-track:b2de26be3d4dfbed4703e7d9ece2156a5253ab4f4598dfff9f78c6225eaded76` |
| 25 | `theorem` | [ack_injective_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-injective-left--98a8295006159207c42766cc.md) | 208 | `result-track:98a8295006159207c42766cce432acb8893f42ee66582be9b2cf3dab4a6f28d0` |
| 26 | `theorem` | [ack_lt_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-lt-iff-left--03a1b90eb4ed1877fce3f4ce.md) | 212 | `result-track:03a1b90eb4ed1877fce3f4ce74546393107cae749231c1383c9697954ec12f88` |
| 27 | `theorem` | [ack_le_iff_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-le-iff-left--dee5a4a7fc8c1a9facddd9e0.md) | 216 | `result-track:dee5a4a7fc8c1a9facddd9e073df05cc4c099e2fae6afa49f52dddac5d03d839` |
| 28 | `theorem` | [ack_inj_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-inj-left--6091ca060544aa04e2be8eec.md) | 220 | `result-track:6091ca060544aa04e2be8eeced219a2ea328dc1721e912164fb1a7953cfba606` |
| 29 | `theorem` | [max_ack_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/max-ack-left--373b4ff3d53ffb98c15dfc8f.md) | 223 | `result-track:373b4ff3d53ffb98c15dfc8f7aa341cea00e1621f5cb6d40708cbeec7cea0b97` |
| 30 | `theorem` | [ack_le_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-le-ack--727786076e1e3171d0f92e6e.md) | 227 | `result-track:727786076e1e3171d0f92e6ed23bad41690780c6525cc8b0ed9e77427033b4fc` |
| 31 | `theorem` | [ack_succ_right_le_ack_succ_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-succ-right-le-ack-succ-left--e0b8893bfcac5d103bbbc460.md) | 230 | `result-track:e0b8893bfcac5d103bbbc460578e359588571ade4bc838da1b28af1c1e1096b2` |
| 32 | `theorem` | [sq_le_two_pow_add_one_minus_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/sq-le-two-pow-add-one-minus-three--a02dd74f70196454033259a6.md) | 238 | `result-track:a02dd74f70196454033259a601cc7466725bc1d5c34c281bc4109df40fe676b8` |
| 33 | `theorem` | [ack_add_one_sq_lt_ack_add_three](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-add-one-sq-lt-ack-add-three--3a36b6a0f8eaeb5996fe6d52.md) | 243 | `result-track:3a36b6a0f8eaeb5996fe6d52c5f243193077ea831a43720cb5fd824f940e6028` |
| 34 | `theorem` | [ack_ack_lt_ack_max_add_two](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-ack-lt-ack-max-add-two--91f85bef3fc5b2df6040bbc7.md) | 253 | `result-track:91f85bef3fc5b2df6040bbc7170184ab2a947feaaa0a6c2419275e4e92c056fa` |
| 35 | `theorem` | [ack_add_one_sq_lt_ack_add_four](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-add-one-sq-lt-ack-add-four--009f5323d3fbaac73d27a461.md) | 261 | `result-track:009f5323d3fbaac73d27a461bf941ac03e89741b6a86ce07f202fad09a86e42c` |
| 36 | `theorem` | [ack_pair_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/ack-pair-lt--1b4c93164c13d34e06a2cf02.md) | 270 | `result-track:1b4c93164c13d34e06a2cf02a4c41a1d3fff8b42846b5d28c78a18ed66a8accc` |
| 37 | `theorem` | [exists_lt_ack_of_nat_primrec](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/exists-lt-ack-of-nat-primrec--dba1cc0a296451afc520b19b.md) | 275 | `result-track:dba1cc0a296451afc520b19b92f44716f11c40e5ae587ea1098827e6f48ad564` |
| 38 | `theorem` | [not_nat_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/not-nat-primrec-ack-self--d56aa1a6d63afc024f556b24.md) | 340 | `result-track:d56aa1a6d63afc024f556b24a148e427b329ffdc61df3db2c9449a66f2476ce2` |
| 39 | `theorem` | [not_primrec_ack_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/not-primrec-ack-self--1f089726e017383320e7a279.md) | 344 | `result-track:1f089726e017383320e7a279b722fb624d6c925650d5e96fba15c7614926f68c` |
| 40 | `theorem` | [not_primrec₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/not-primrec-ack--f74ff4bf84afcb52deda24de.md) | 349 | `result-track:f74ff4bf84afcb52deda24dea3c00798ba28a404ea74560dbe2f957ffb096a14` |
| 41 | `def` | [pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/pappack--c4f37273c7edb6a3a2aefbbc.md) | 356 | `declaration-track:c4f37273c7edb6a3a2aefbbc1fd60c60935606c8cb548e9beda3b2cb5bb888e5` |
| 42 | `lemma` | [primrec_pappAck_step](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/primrec-pappack-step--e968f2f49e2a6c41c68666b4.md) | 364 | `result-track:e968f2f49e2a6c41c68666b4ed37f778c6f8bc309625e8996976d29370dfec82` |
| 43 | `lemma` | [eval_pappAck_step_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/eval-pappack-step-zero--c264f64a704066562e362153.md) | 371 | `result-track:c264f64a704066562e36215396070e301fdc68b51ebc841b286764f611439b29` |
| 44 | `lemma` | [eval_pappAck_step_succ](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/eval-pappack-step-succ--6c661358ca1a0d41732b912b.md) | 376 | `result-track:6c661358ca1a0d41732b912b90418f8ec01ca24a1c078af0f80df0fce932b452` |
| 45 | `lemma` | [primrec_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/primrec-pappack--8a94c3ad549a946ac6d82c8a.md) | 380 | `result-track:8a94c3ad549a946ac6d82c8a968dc53b7bef041f1728b1b2428f5b5534079fc7` |
| 46 | `lemma` | [eval_pappAck](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/eval-pappack--d15f439267b962ba29f7822f.md) | 387 | `result-track:d15f439267b962ba29f7822f64b8e62c1cb615213fc5eb9ea6f76bcb03f995c5` |
| 47 | `theorem` | [_root_.GRWTSK.FoundationsLogicAndTypeTheory.Computability.Ack.Variant45f424e52791fafecce6375b65c12034ee932a80eb048624a29bcc5f4a77cd53.computable₂_ack](../../../../../mathematics/FoundationsLogicAndTypeTheory/Computability/Ackermann/Variantd02dac5bb72379f6f4159d71d669dad8f7eea98de9a52ac39ad7e0d85752ba5f.lean/declarations/root-grwtsk-foundationslogicandtypetheory-computability-ack-variant45f42--53cc77c1d8c2110876041717.md) | 394 | `result-track:53cc77c1d8c21108760417175eef8f6bf4da0aa49285e23557938673381c8508` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
