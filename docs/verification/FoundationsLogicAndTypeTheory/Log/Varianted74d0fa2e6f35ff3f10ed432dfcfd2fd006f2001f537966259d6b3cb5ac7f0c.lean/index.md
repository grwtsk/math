# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Log.Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
  "lexical_observation_count": 53,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d55ac8d3c91640e64ac966fb9abb0439412c8eff`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Pow` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log--4092d9b02ae8f8aacb2a6a86.md) | 30 | `declaration-track:4092d9b02ae8f8aacb2a6a8685daa4a39dece5ecf6c54b3482b764049a786769` |
| 2 | `theorem` | [log_eq_zero_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-eq-zero-iff--329406787e7b80af9bed8e1e.md) | 39 | `result-track:329406787e7b80af9bed8e1ef2e17c0b9ff75cf47fc7f009570f16f14d0c74be` |
| 3 | `theorem` | [log_of_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-of-lt--ebb01ca2c76ea5ccf275b242.md) | 44 | `result-track:ebb01ca2c76ea5ccf275b242edc14d28fce575389770e641ea0861db968a3942` |
| 4 | `theorem` | [log_of_left_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-of-left-le-one--f6d8eadb44c63891174867a0.md) | 48 | `result-track:f6d8eadb44c63891174867a03a8cd5d6a19681a17d0da33dd72658f02077a207` |
| 5 | `theorem` | [log_pos_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-pos-iff--8a13e5ab75528649d55e2eef.md) | 53 | `result-track:8a13e5ab75528649d55e2eef67b289a1db4f568ab1d3da1a71ab519f5da30c80` |
| 6 | `theorem` | [log_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-pos--620c12c39bfff3bb5f954f49.md) | 57 | `result-track:620c12c39bfff3bb5f954f49098186dac3aa81e8d91b6a96264fb1849ea65ba9` |
| 7 | `theorem` | [log_of_one_lt_of_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-of-one-lt-of-le--0ff99d946ca7dc0fe5645886.md) | 61 | `result-track:0ff99d946ca7dc0fe56458863aab2b6529162a5c0345789f49d05ebe249958fa` |
| 8 | `theorem` | [log_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-zero-left--ad5a1706f45259239ab545c3.md) | 67 | `result-track:ad5a1706f45259239ab545c3df14e56f1b739f07a8af8aebb66f5ee3598d2f79` |
| 9 | `theorem` | [log_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-zero-right--663347cb94e608c3d7170159.md) | 72 | `result-track:663347cb94e608c3d71701598c188b2efc8efb2d08d043384520e685baf3f737` |
| 10 | `theorem` | [log_one_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-one-left--4f7c2218579657c6d107081c.md) | 77 | `result-track:4f7c2218579657c6d107081ce2befa0a9373a806591e205919d3b54d4e5c1d37` |
| 11 | `theorem` | [log_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-one-right--4e4797e85c3ab8e8faacf3c1.md) | 82 | `result-track:4e4797e85c3ab8e8faacf3c17333b438d5c57591198175c161b1e1a583e0aba1` |
| 12 | `theorem` | [pow_le_iff_le_log](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-le-iff-le-log--0aa89b2f96791d7b5cade87f.md) | 88 | `result-track:0aa89b2f96791d7b5cade87fe488cbf5a30123ae1ff11a1d667da8886062004c` |
| 13 | `theorem` | [lt_pow_iff_log_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/lt-pow-iff-log-lt--c5acb3a7d252c1a7bd658520.md) | 103 | `result-track:c5acb3a7d252c1a7bd658520222ec620fdac17d3ad447265d8cfbcc63567056f` |
| 14 | `theorem` | [pow_le_of_le_log](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-le-of-le-log--88b49e87c39e76cda31cce1e.md) | 107 | `result-track:88b49e87c39e76cda31cce1ec4783f19a19cf9940cd9f795caff03f62cd06d1b` |
| 15 | `theorem` | [le_log_of_pow_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/le-log-of-pow-le--4d33f547b3743216baba5f84.md) | 113 | `result-track:4d33f547b3743216baba5f846931bcc53fa86bc5377633cbd1ea8552ddc58f56` |
| 16 | `theorem` | [pow_log_le_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-log-le-self--00fc40ab009ee8d6e9867f6d.md) | 118 | `result-track:00fc40ab009ee8d6e9867f6da7b2d606252d7fc28b313f9dd3d86ef0477cf83e` |
| 17 | `theorem` | [log_lt_of_lt_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-lt-of-lt-pow--3dd6837aef46ef3e05affc11.md) | 122 | `result-track:3dd6837aef46ef3e05affc1191a2cb9bb5ba0f86b88ea394da1340aa8f48b0a8` |
| 18 | `theorem` | [lt_pow_of_log_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/lt-pow-of-log-lt--5295a5f033b31003398a020d.md) | 126 | `result-track:5295a5f033b31003398a020d59950fab431282d0a61daa0a3fc832b88c63da34` |
| 19 | `theorem` | [lt_pow_succ_log_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/lt-pow-succ-log-self--942193ea63dd9d38b1127f1f.md) | 130 | `result-track:942193ea63dd9d38b1127f1fde19759d736d0f9fb3d59056a80d322a63872512` |
| 20 | `theorem` | [log_eq_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-eq-iff--df02f8b6e259935c0524d8c8.md) | 134 | `result-track:df02f8b6e259935c0524d8c8a5cc3e66ca987f637cba384fa99dc3adfd049578` |
| 21 | `theorem` | [log_eq_of_pow_le_of_lt_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-eq-of-pow-le-of-lt-pow--ab1b9cbda307376f76bc90f4.md) | 148 | `result-track:ab1b9cbda307376f76bc90f4808f87fd500f5815460d2e7cd3ca5c368a9ab99c` |
| 22 | `theorem` | [log_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-pow--d60ab2d82b71dc4994fef357.md) | 156 | `result-track:d60ab2d82b71dc4994fef357200f06aac8c114d09b8cfafcda86b72c545f6b4f` |
| 23 | `theorem` | [log_eq_one_iff'](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-eq-one-iff--2a081477435ebafac9c70990.md) | 160 | `result-track:2a081477435ebafac9c7099067af47b6f129ed3e2826933afdabb9944d395754` |
| 24 | `theorem` | [log_eq_one_iff](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-eq-one-iff--1d0525cc323acd82a74aed47.md) | 164 | `result-track:1d0525cc323acd82a74aed470cc960dbca46f77e764e0fc6a11a3686911f6c75` |
| 25 | `theorem` | [log_mul_base](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-mul-base--d2ad7d7803aae0df783da961.md) | 169 | `result-track:d2ad7d7803aae0df783da961c006a9048902a728e1546cd572b2cf610ed1e8f7` |
| 26 | `theorem` | [pow_log_le_add_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-log-le-add-one--e16e6a469b3743a3a2dbaa85.md) | 175 | `result-track:e16e6a469b3743a3a2dbaa857314d27bf4346b658e238ba80140118f317ab40a` |
| 27 | `theorem` | [log_monotone](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-monotone--66af4c484791955e4e636862.md) | 180 | `result-track:66af4c484791955e4e636862e188e6e4f664c45e3db75d1331c2fdc46a55da63` |
| 28 | `theorem` | [log_mono_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-mono-right--41dcd50cbfa146023e3c7266.md) | 189 | `result-track:41dcd50cbfa146023e3c7266f2e2134b42e820f637e2ce26d24ab4b4d7746af8` |
| 29 | `theorem` | [log_anti_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-anti-left--de10f11fcfb32ae6f9166031.md) | 194 | `result-track:de10f11fcfb32ae6f9166031a2495faf9effe2380ed0c6908607920d316abb35` |
| 30 | `theorem` | [log_antitone_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-antitone-left--e3c6d328d53cb9ccee4476ec.md) | 202 | `result-track:e3c6d328d53cb9ccee4476ecfbbd61a7cc087bced0fe392cfa7d45be397b682f` |
| 31 | `theorem` | [log_div_base](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-div-base--3ff6eb0423871c0d8a068457.md) | 207 | `result-track:3ff6eb0423871c0d8a0684576e9871961540537ccb0733d6c4b3b9c95af20d25` |
| 32 | `theorem` | [log_div_mul_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-div-mul-self--f7f563ec1e246377040387e0.md) | 216 | `result-track:f7f563ec1e246377040387e0a7a1e557c76af90e3d757c53a339604c16252aa1` |
| 33 | `theorem` | [add_pred_div_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/add-pred-div-lt--673c151eae6799fd36e44502.md) | 225 | `result-track:673c151eae6799fd36e44502664a38cea5c4779535edc61e14361557cbb64ba8` |
| 34 | `def` | [clog](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog--c0bfafea37c7e1dd37a99d2a.md) | 238 | `declaration-track:c0bfafea37c7e1dd37a99d2ae3068259ecce89554eb66ffd7cc242d29c2caeb5` |
| 35 | `theorem` | [clog_of_left_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-of-left-le-one--abdcce25d23495a1f8e37dbc.md) | 246 | `result-track:abdcce25d23495a1f8e37dbc0dc0e1f40301ad6e9ccf816088bb73526e7c8255` |
| 36 | `theorem` | [clog_of_right_le_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-of-right-le-one--44964e1d5d64a81a30616082.md) | 250 | `result-track:44964e1d5d64a81a30616082ac84cecc1db44a2530b0892660ed0822c18a2a26` |
| 37 | `theorem` | [clog_zero_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-zero-left--6a5eadf6e7b240bf7ce9fc7d.md) | 255 | `result-track:6a5eadf6e7b240bf7ce9fc7d22d5dea6c120bc4386729612aa190ef1590cfc63` |
| 38 | `theorem` | [clog_zero_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-zero-right--bd1feb65cc1acdba83243c36.md) | 260 | `result-track:bd1feb65cc1acdba83243c363cef675ed4cd4e8fbfa81e7d3e39cc0aa1357a35` |
| 39 | `theorem` | [clog_one_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-one-left--57c76635ea88d5fc1373245b.md) | 265 | `result-track:57c76635ea88d5fc1373245b31edc8871c72e60e72592bcd89c56d5783adac9b` |
| 40 | `theorem` | [clog_one_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-one-right--ff84a0f50d742ab193d160f3.md) | 270 | `result-track:ff84a0f50d742ab193d160f3a17ca24c3ab217deedc73ec7bd9c5400d9f88636` |
| 41 | `theorem` | [clog_of_two_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-of-two-le--4037275e0bab871a2f720c3d.md) | 274 | `result-track:4037275e0bab871a2f720c3d6e238f48d61e6586b8ed7a5c97759a98d741d151` |
| 42 | `theorem` | [clog_pos](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-pos--31af0487a8e5f1bcab44ba47.md) | 278 | `result-track:31af0487a8e5f1bcab44ba473d892e3b731ba1f1949dbb7637201c517652b031` |
| 43 | `theorem` | [clog_eq_one](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-eq-one--3f7239c2d142537ca6992fe2.md) | 283 | `result-track:3f7239c2d142537ca6992fe2ee2ff4a83a9be69ba9dcec85050a8a1a393164cf` |
| 44 | `theorem` | [le_pow_iff_clog_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/le-pow-iff-clog-le--a32c9014221e459e08463bce.md) | 292 | `result-track:a32c9014221e459e08463bce09aa357055f536676e8b6ace0f76be9b3e36b3cf` |
| 45 | `theorem` | [pow_lt_iff_lt_clog](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-lt-iff-lt-clog--a62a0aa5ca73249dc6b31530.md) | 309 | `result-track:a62a0aa5ca73249dc6b31530948ae72efaf241a50e6815fa04234c8f7375f006` |
| 46 | `theorem` | [clog_pow](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-pow--5d7de96e6d40789f898fd227.md) | 313 | `result-track:5d7de96e6d40789f898fd227e523b7c382bcb7922fc9080de44640bb9ef91e73` |
| 47 | `theorem` | [pow_pred_clog_lt_self](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/pow-pred-clog-lt-self--3e94406cc65462c0ea5d908a.md) | 319 | `result-track:3e94406cc65462c0ea5d908a92aa51e74212a7fca8e939aee61754c0340fbb38` |
| 48 | `theorem` | [le_pow_clog](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/le-pow-clog--64ea46cb253500b781ae6013.md) | 325 | `result-track:64ea46cb253500b781ae60130287e78f30883df2f099f910eec2c1635e323d5c` |
| 49 | `theorem` | [clog_mono_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-mono-right--f5f8dec440c4fa5a2f3c1506.md) | 330 | `result-track:f5f8dec440c4fa5a2f3c1506a00da65a5715f7acfdd2071602673aaef277c9ec` |
| 50 | `theorem` | [clog_anti_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-anti-left--41b24ba136ca777c64e9be02.md) | 339 | `result-track:41b24ba136ca777c64e9be0208af2ede371728ad74e0a11889bc4c50584aafa4` |
| 51 | `theorem` | [clog_monotone](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-monotone--1861c03e6a931b09de41ba9b.md) | 346 | `result-track:1861c03e6a931b09de41ba9b072f8c9ec9bc9a8f87fe06f3f710e242971e5d9c` |
| 52 | `theorem` | [clog_antitone_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/clog-antitone-left--71b1ed5a367b0faaf6eec5e7.md) | 349 | `result-track:71b1ed5a367b0faaf6eec5e738238f17387092b10cc9c1666002aac508d22ea8` |
| 53 | `theorem` | [log_le_clog](../../../../mathematics/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/declarations/log-le-clog--f56a7918544edd2b69911dd6.md) | 353 | `result-track:f56a7918544edd2b69911dd6f1ce8d864953b85c65c1e5f824ac1cf6c37cc416` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
