# Verification target: GRWTSK.Algebra.UniversalAlgebra.Log.Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5955f26a9e263e8573d0e5f7369c358859367390",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5955f26a9e263e8573d0e5f7369c358859367390`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Floor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Power` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Log` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log--8ad1b5db438e7a9ed4ada37c.md) | 66 | `declaration-track:8ad1b5db438e7a9ed4ada37c6a33f2d15e4c84610e6928959a13a0636413bb36` |
| 2 | `theorem` | [log_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-of-one-le-right--fd1d6f3d546308d51f70ac2e.md) | 70 | `result-track:fd1d6f3d546308d51f70ac2ef87b23a84a6288728dacc33a2e7ef4558019b251` |
| 3 | `theorem` | [log_of_right_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-of-right-le-one--10858766089b7e46cb0d2765.md) | 74 | `result-track:10858766089b7e46cb0d2765dd8cfd260e223c0f510e57cfe883b027757f45d3` |
| 4 | `theorem` | [log_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-natcast--368bc78be53f5f7f6873a81e.md) | 82 | `result-track:368bc78be53f5f7f6873a81e3cca329937e67c9def427c931104d27c0f55bdd0` |
| 5 | `theorem` | [log_of_left_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-of-left-le-one--20778eca70d039184b648d27.md) | 89 | `result-track:20778eca70d039184b648d274f87a36fa0f89a7515af96a579f980625398a0fc` |
| 6 | `theorem` | [log_of_right_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-of-right-le-zero--322367591ecea75d4ba34aca.md) | 95 | `result-track:322367591ecea75d4ba34acaf44a5f9c3d061902a1d1fe4b3ed30ea182bbc474` |
| 7 | `theorem` | [zpow_log_le_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/zpow-log-le-self--a535f98f103aae1c3f33898e.md) | 101 | `result-track:a535f98f103aae1c3f33898e4df35d4633b145efad50a8865d639e483066c832` |
| 8 | `theorem` | [lt_zpow_succ_log_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/lt-zpow-succ-log-self--e89ea7ea87fe3c95c208e4f8.md) | 110 | `result-track:e89ea7ea87fe3c95c208e4f80d3e44d82f5c8a376ebc27ccb012f94c8d56fef8` |
| 9 | `theorem` | [log_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-zero-right--c85d1822972190d583447148.md) | 130 | `result-track:c85d1822972190d58344714895aaf345364511fea3a064e28cf9faf21d79bac5` |
| 10 | `theorem` | [log_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-one-right--38fdc27dfdbb684b928f94f3.md) | 135 | `result-track:38fdc27dfdbb684b928f94f3cbde7a9e015a1e2c5602bc54175c8306cc5b1c92` |
| 11 | `theorem` | [log_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-zpow--ada5f25265d10f2492c324ff.md) | 140 | `result-track:ada5f25265d10f2492c324ff2233af5e96b77ca00612d23302eacf274053a779` |
| 12 | `theorem` | [log_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-mono-right--8199a5ec2cd79b09544cb668.md) | 151 | `result-track:8199a5ec2cd79b09544cb668f91d4e8bbf8f0cf6f22fa72accba628e2d37991f` |
| 13 | `def` | [zpowLogGi](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/zpowloggi--f3b205b7212660cd8de41164.md) | 168 | `declaration-track:f3b205b7212660cd8de411644a895467feecc1725640a9c2e4b1f8a89bfac731` |
| 14 | `theorem` | [lt_zpow_iff_log_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/lt-zpow-iff-log-lt--559866568b470d723abfcdde.md) | 181 | `result-track:559866568b470d723abfcddedadbc264e18659fd75a1f3e0172d200824c03baa` |
| 15 | `theorem` | [zpow_le_iff_le_log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/zpow-le-iff-le-log--6ba7bbeb0697b87cb3a2e314.md) | 187 | `result-track:6ba7bbeb0697b87cb3a2e3146a4fb0b5a3a6dee32a288897f19d5fd5087fca2f` |
| 16 | `def` | [clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog--d8fd11f7b338c9603bc9beed.md) | 193 | `declaration-track:d8fd11f7b338c9603bc9beed5c1f61f995f9c3598614a781a7cca8072993811a` |
| 17 | `theorem` | [clog_of_one_le_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-of-one-le-right--412111a7ac94dd239a5edc4b.md) | 197 | `result-track:412111a7ac94dd239a5edc4b710d295ddbc1e6fc2219e1c62c4c91068e933bbc` |
| 18 | `theorem` | [clog_of_right_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-of-right-le-one--b5d43effd252727dc863da65.md) | 201 | `result-track:b5d43effd252727dc863da6501336c867bbe485d8f7896348d3d5279209d6fdb` |
| 19 | `theorem` | [clog_of_right_le_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-of-right-le-zero--fefe28f0ba026125592389f9.md) | 208 | `result-track:fefe28f0ba026125592389f98eed306d0bbd2392845b4e435a25c620c7801106` |
| 20 | `theorem` | [clog_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-inv--54dba844f3a1a6a78dce1946.md) | 218 | `result-track:54dba844f3a1a6a78dce19469dd31d6a620a95c7159e9a25005d5d45dc5b536e` |
| 21 | `theorem` | [log_inv](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/log-inv--495e36146006d2027ca3028a.md) | 227 | `result-track:495e36146006d2027ca3028a132ffaccba3ef5e9675d35f28846ed6dff118297` |
| 22 | `theorem` | [neg_log_inv_eq_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/neg-log-inv-eq-clog--e53ad5f9df3e1591ced19c6e.md) | 232 | `result-track:e53ad5f9df3e1591ced19c6e77805ce176c10923ff4777c1810d496eec5a2db6` |
| 23 | `theorem` | [neg_clog_inv_eq_log](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/neg-clog-inv-eq-log--c2520fcc448eecdab4277b3b.md) | 235 | `result-track:c2520fcc448eecdab4277b3b0b4ab7d20c24647e28d0540104a3fc4b591f7417` |
| 24 | `theorem` | [clog_natCast](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-natcast--771ca58dc90ff1d31a152aa5.md) | 239 | `result-track:771ca58dc90ff1d31a152aa53178359cc200e935d4da709dc65ce2cedd7966ae` |
| 25 | `theorem` | [clog_of_left_le_one](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-of-left-le-one--db70aec5ccb9498e7fed0d33.md) | 245 | `result-track:db70aec5ccb9498e7fed0d33bbb8bc2c4684a743fffeeafbda06428ce1188428` |
| 26 | `theorem` | [self_le_zpow_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/self-le-zpow-clog--840b1d093bc2f989ec2f2b32.md) | 249 | `result-track:840b1d093bc2f989ec2f2b32e1076169c449f31afbc53d29d6c537037916680d` |
| 27 | `theorem` | [zpow_pred_clog_lt_self](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/zpow-pred-clog-lt-self--7cb74f079670c2c014341be5.md) | 258 | `result-track:7cb74f079670c2c014341be5dbc8dfdfa295ba14b1a1fec45e59bc08a6d94bd1` |
| 28 | `theorem` | [clog_zero_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-zero-right--6387dd3954e78a08689b4e93.md) | 266 | `result-track:6387dd3954e78a08689b4e93b311011bb32f5d7feebb2976960d9fe5f8526a9c` |
| 29 | `theorem` | [clog_one_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-one-right--0caa18f3b700fc8dd6ddd2f2.md) | 271 | `result-track:0caa18f3b700fc8dd6ddd2f2f5b3403be0af0cfc398a2b4dec27bc74bfdf5b80` |
| 30 | `theorem` | [clog_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-zpow--a779a59a50a09144d5b84d16.md) | 276 | `result-track:a779a59a50a09144d5b84d1666f7b9ca672618d500da23a4ef30b1dfee0fcc99` |
| 31 | `theorem` | [clog_mono_right](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clog-mono-right--ef984662e9a896eea4de4da0.md) | 281 | `result-track:ef984662e9a896eea4de4da02a4bc2b44222d23029aeded0408b15a5a7756b47` |
| 32 | `def` | [clogZpowGi](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/clogzpowgi--513e678ce22f73f8982ca1e0.md) | 290 | `declaration-track:513e678ce22f73f8982ca1e0e1ce65b881fb11272447dee962b4f27d821b79ab` |
| 33 | `theorem` | [zpow_lt_iff_lt_clog](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/zpow-lt-iff-lt-clog--f692e33077d1952de3d92b95.md) | 302 | `result-track:f692e33077d1952de3d92b9516d34abc3eedd63cd615ccd2014d01b72d4f222f` |
| 34 | `theorem` | [le_zpow_iff_clog_le](../../../../../mathematics/Algebra/UniversalAlgebra/Log/Variant91f65a49e20e3ec4a6b1890388aeb5bf46876f0bd87b3884ec554dc7f319602b.lean/declarations/le-zpow-iff-clog-le--993002e67df1f8982bd0a2b5.md) | 308 | `result-track:993002e67df1f8982bd0a2b511abf3e68deaef4d456138478825eecce77c2fcf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
