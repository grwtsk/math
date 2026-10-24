# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.Log.Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4adf270d7fd5555a4d10730e5ab4d31ca9985607",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4adf270d7fd5555a4d10730e5ab4d31ca9985607`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor.Semiring` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log--78f2e9ed0e3c436c7f23c027.md) | 64 | `declaration-track:78f2e9ed0e3c436c7f23c02700835fde6d91383206309cd6e6aa70861f02beec` |
| 2 | `theorem` | [log_of_one_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-of-one-le-right--38bc016eb1fed208611f68b2.md) | 68 | `result-track:38bc016eb1fed208611f68b2da0bd9a35933a8a373ca09f57a891149d35c9d38` |
| 3 | `theorem` | [log_of_right_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-of-right-le-one--ad3ea8b1152c6d9ac515e5d2.md) | 71 | `result-track:ad3ea8b1152c6d9ac515e5d2225e68c3c2f736ec07c3e6bb3ddd10ef4d4c1052` |
| 4 | `theorem` | [log_natCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-natcast--9bef75f81e45494e39e9424e.md) | 78 | `result-track:9bef75f81e45494e39e9424e2c83e1b94358d9be3ad1778a7249d36d7b7d4bb8` |
| 5 | `theorem` | [log_ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-ofnat--084c427e75febf60cdaf67a7.md) | 85 | `result-track:084c427e75febf60cdaf67a7b5ad604ec9a823008cc4e087d061016bad2b627d` |
| 6 | `theorem` | [log_of_left_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-of-left-le-one--1ab3369d55e8c23419a232d6.md) | 89 | `result-track:1ab3369d55e8c23419a232d642ff3a2770399af36cef8b9f55c89d68554fd233` |
| 7 | `theorem` | [log_of_right_le_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-of-right-le-zero--0f3184bad8d4e34fe219a14a.md) | 94 | `result-track:0f3184bad8d4e34fe219a14a8c19e0e5e453720432e76b9d609b748c0d5b62b1` |
| 8 | `theorem` | [zpow_log_le_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/zpow-log-le-self--dd56176294e21b44fd26a713.md) | 99 | `result-track:dd56176294e21b44fd26a71353303c9c0574d43e9712cd0353a721c76ca0dfa3` |
| 9 | `theorem` | [lt_zpow_succ_log_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/lt-zpow-succ-log-self--aa46ab7b12190a02dbb6e504.md) | 107 | `result-track:aa46ab7b12190a02dbb6e504bdb6b1ece06383a6495a38f58acd4f7bef14c9e2` |
| 10 | `theorem` | [log_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-zero-right--bf7b4d4817af24d7cbd8abd7.md) | 126 | `result-track:bf7b4d4817af24d7cbd8abd79aa492b17031b56905fefce972e13946f59dcd11` |
| 11 | `theorem` | [log_one_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-one-right--a57dca2fc38254ead59cfe8f.md) | 130 | `result-track:a57dca2fc38254ead59cfe8fdaf0da17130e592881d96d5682d5e159d902ef69` |
| 12 | `theorem` | [log_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-zero-left--29867d1f9c484ee0cd89fd13.md) | 135 | `result-track:29867d1f9c484ee0cd89fd13108f84ee4ad6fc4610985da9176403f6191b7460` |
| 13 | `theorem` | [log_one_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-one-left--3172ef35362a62c56b489cf0.md) | 140 | `result-track:3172ef35362a62c56b489cf0f40734dde6460e2901b29d4016ff3da8be728d7a` |
| 14 | `theorem` | [log_zpow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-zpow--e7d702256025c77b9ba6d53f.md) | 145 | `result-track:e7d702256025c77b9ba6d53fe5d627cd318400a8eaf9040d0b49588d921fce06` |
| 15 | `theorem` | [log_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-mono-right--65daa22e8837f5429a8fbcff.md) | 154 | `result-track:65daa22e8837f5429a8fbcffa38992bfb0b03b46eac64d6108ede2b976d34bd6` |
| 16 | `def` | [zpowLogGi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/zpowloggi--044117c046ad7b016bb2a825.md) | 167 | `declaration-track:044117c046ad7b016bb2a8257fa66ce63deb28fae063aa71d0c8c19e938f6326` |
| 17 | `theorem` | [lt_zpow_iff_log_lt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/lt-zpow-iff-log-lt--b2ea0964155f7d173c15ad41.md) | 177 | `result-track:b2ea0964155f7d173c15ad41bf745fd65a07514d200338bdce8b9960ebbf9f59` |
| 18 | `theorem` | [zpow_le_iff_le_log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/zpow-le-iff-le-log--fbe30357eddf66ee991776d8.md) | 182 | `result-track:fbe30357eddf66ee991776d827fa32d9bbddf6d4d3317383a525c536030fefff` |
| 19 | `def` | [clog](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog--7f97b7e2353edaf5af70ae3a.md) | 187 | `declaration-track:7f97b7e2353edaf5af70ae3acac06864f10f43c0a054f884fedc3403c80f61cd` |
| 20 | `theorem` | [clog_of_one_le_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-of-one-le-right--0134a4839ebbc5fa29c1b2de.md) | 191 | `result-track:0134a4839ebbc5fa29c1b2def93e51abda6e5fb17ac67b0e8a0935d8f965bf8d` |
| 21 | `theorem` | [clog_of_right_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-of-right-le-one--cae06818c433c63018f0cc4b.md) | 194 | `result-track:cae06818c433c63018f0cc4b862d958a7daea439685254f07f47f8aa4d93ba94` |
| 22 | `theorem` | [clog_of_right_le_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-of-right-le-zero--14f45f1ee263d5dd96e06f98.md) | 200 | `result-track:14f45f1ee263d5dd96e06f985512db1903f7d988f2bb0c92026a3daef1961bd6` |
| 23 | `theorem` | [clog_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-inv--c1f3428cf9c3b4c7b3e8ddb4.md) | 209 | `result-track:c1f3428cf9c3b4c7b3e8ddb45526ba393a04c406acc06d5683c488b7b211f338` |
| 24 | `theorem` | [log_inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/log-inv--107fd6d9b5bac577e4d1e73a.md) | 217 | `result-track:107fd6d9b5bac577e4d1e73a322d423ccc080d73b03d4a0a75601c988a3a3fad` |
| 25 | `theorem` | [neg_log_inv_eq_clog](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/neg-log-inv-eq-clog--5369257672e784dd4d9e9d91.md) | 221 | `result-track:5369257672e784dd4d9e9d918b2af98a1651de022607dcab4d76b624a25704a1` |
| 26 | `theorem` | [neg_clog_inv_eq_log](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/neg-clog-inv-eq-log--f5af2e7afaeaac1805c55a40.md) | 223 | `result-track:f5af2e7afaeaac1805c55a40a0a395cbcdf89319684fa87ec1c1691a0a0f53ca` |
| 27 | `theorem` | [clog_natCast](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-natcast--ccdcc6fe9592a9a0e7029ac8.md) | 226 | `result-track:ccdcc6fe9592a9a0e7029ac84ce6e0ee5eb15214b65b574f28f5bbbe1a869e8a` |
| 28 | `theorem` | [clog_ofNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-ofnat--c56d998eeb1150918daba3e5.md) | 232 | `result-track:c56d998eeb1150918daba3e54090751a625760e7d175697de52c95c63eb1e869` |
| 29 | `theorem` | [clog_of_left_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-of-left-le-one--29c088fc465adf38e01ab736.md) | 236 | `result-track:29c088fc465adf38e01ab7364ed2e41b975ffc45feb5042ef7611942ca5e21c6` |
| 30 | `theorem` | [self_le_zpow_clog](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/self-le-zpow-clog--7b0e45f09f62187977c8e3b8.md) | 239 | `result-track:7b0e45f09f62187977c8e3b8a1e8881c6db8cec6063ede958e96c32c907d01c9` |
| 31 | `theorem` | [zpow_pred_clog_lt_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/zpow-pred-clog-lt-self--b645ef4261e7ed11351bfe84.md) | 247 | `result-track:b645ef4261e7ed11351bfe84f66ae8afc90de024ecfd4b6cf26c54c93292c1aa` |
| 32 | `theorem` | [clog_zero_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-zero-right--6ce0e3a8f5145fe810f9e50a.md) | 254 | `result-track:6ce0e3a8f5145fe810f9e50a2888e1180752b71a547ed1b58f82de3432b6b08a` |
| 33 | `theorem` | [clog_one_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-one-right--85e9468d6e93c47de516a268.md) | 258 | `result-track:85e9468d6e93c47de516a268df3ad9c08528319e0ae3e1b36ba300fca3d675f4` |
| 34 | `theorem` | [clog_zero_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-zero-left--cd42baaab0ed3b3081f9e4d7.md) | 263 | `result-track:cd42baaab0ed3b3081f9e4d74e6d247f69f5162f4c2944293820608b96c14e43` |
| 35 | `theorem` | [clog_one_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-one-left--c6dabe0286550961161a149c.md) | 270 | `result-track:c6dabe0286550961161a149cccd4bb56a50fc3f0010c18980e49ebb4bfd9bf39` |
| 36 | `theorem` | [clog_zpow](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-zpow--8f579c7db4a3c38c45e14f42.md) | 273 | `result-track:8f579c7db4a3c38c45e14f42abe9d79023711ab65e6db18ac2309cbbcc606d36` |
| 37 | `theorem` | [clog_mono_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clog-mono-right--9a1c8a58904e665feed871b8.md) | 277 | `result-track:9a1c8a58904e665feed871b83375a045df76ebbbe9f1e2d25d545a9ca4aabe8a` |
| 38 | `def` | [clogZPowGi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/clogzpowgi--dac7c8fcc882b927b5999f75.md) | 284 | `declaration-track:dac7c8fcc882b927b5999f755fd7e492879b412e0db6685279f0ecf95683266d` |
| 39 | `theorem` | [zpow_lt_iff_lt_clog](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/zpow-lt-iff-lt-clog--6f276f45afad46c87c075ec5.md) | 293 | `result-track:6f276f45afad46c87c075ec5e7b38460eb1e29256d7f10d16be2cf084068dbb6` |
| 40 | `theorem` | [le_zpow_iff_clog_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/Log/Variantd7c3be5a0a06ed049e972170f87dc0bee6e7cbb88be384290b93dec5cf0106cd.lean/declarations/le-zpow-iff-clog-le--d6297a758cb88b90cb4698bc.md) | 298 | `result-track:d6297a758cb88b90cb4698bc64da9f3f0375477cbb46e2dee90c264d6dffc665` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
