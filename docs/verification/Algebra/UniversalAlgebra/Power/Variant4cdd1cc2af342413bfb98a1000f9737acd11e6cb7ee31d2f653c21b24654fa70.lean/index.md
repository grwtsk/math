# Verification target: GRWTSK.Algebra.UniversalAlgebra.Power.Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c2f4d3c4435d89e7e9c536036e9b0c168c1d02ac",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c2f4d3c4435d89e7e9c536036e9b0c168c1d02ac`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.CharZero.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Power` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zpow_le_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-le-of-le--bf25baf42f1a53303003f58f.md) | 29 | `result-track:bf25baf42f1a53303003f58f88b9275e26c3ee34b3f295e241218cc1e0829082` |
| 2 | `theorem` | [zpow_le_one_of_nonpos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-le-one-of-nonpos--fcd4884dbcf084f97ba12b97.md) | 39 | `result-track:fcd4884dbcf084f97ba12b9720096baa86418c3ea40ef7c44a315eef0adb34ea` |
| 3 | `theorem` | [one_le_zpow_of_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/one-le-zpow-of-nonneg--dfe2fa8ee1c1369860d61a07.md) | 43 | `result-track:dfe2fa8ee1c1369860d61a070e9d4187abb510bd9abfa4e8303af1b00aec7ee0` |
| 4 | `theorem` | [Nat.zpow_pos_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/nat-zpow-pos-of-pos--561a4a18175930a74924e072.md) | 47 | `result-track:561a4a18175930a74924e0721bc4efb65f97301334177208abc48b6e30fe590b` |
| 5 | `theorem` | [Nat.zpow_ne_zero_of_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/nat-zpow-ne-zero-of-pos--42ad6d9c9980302ea50fc128.md) | 52 | `result-track:42ad6d9c9980302ea50fc128a5e560eea549d3f78d29831efea75eeae4c5b14b` |
| 6 | `theorem` | [one_lt_zpow](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/one-lt-zpow--7f5989452f5cbd24d702e7ff.md) | 56 | `result-track:7f5989452f5cbd24d702e7ff0f4cbee2154e1cd90b22c4da1124c7bc4ae58409` |
| 7 | `theorem` | [zpow_strictMono](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-strictmono--636367a61d1522062f46f7b4.md) | 61 | `result-track:636367a61d1522062f46f7b40171cfa26abab352f19d8d2c8b9ba54dfc5cd484` |
| 8 | `theorem` | [zpow_strictAnti](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-strictanti--546237a1d9f5f60bc8ffeed2.md) | 69 | `result-track:546237a1d9f5f60bc8ffeed26848d432526f8b711361acefe8ad316d185a1465` |
| 9 | `theorem` | [zpow_lt_iff_lt](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-lt-iff-lt--28a054a502c72a2cd96b0185.md) | 78 | `result-track:28a054a502c72a2cd96b0185c36ebee1ce0206cfa489432c3d7ff322942c57a5` |
| 10 | `theorem` | [zpow_le_iff_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-le-iff-le--8dd773407bf9ffe8dd70f870.md) | 83 | `result-track:8dd773407bf9ffe8dd70f870854cf53bf984276edef5fc1959b7002fcce10c58` |
| 11 | `theorem` | [div_pow_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/div-pow-le--4d692703ae38e052ead7429b.md) | 88 | `result-track:4d692703ae38e052ead7429b9e6144b9f9105d2999afaf6303a5d8bc8d43b1cf` |
| 12 | `theorem` | [zpow_injective](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-injective--c344fab9988e4a96af6531ec.md) | 92 | `result-track:c344fab9988e4a96af6531ec40585679b78dec5963ad4c42bc32adf785cf5d11` |
| 13 | `theorem` | [zpow_inj](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-inj--d1793a2f73d22e9398049fd0.md) | 99 | `result-track:d1793a2f73d22e9398049fd08861941c9fc846bcbc30a03bcde5815b689bcd3f` |
| 14 | `theorem` | [zpow_le_max_of_min_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-le-max-of-min-le--dc5c5974a2e99caa6a4212b6.md) | 103 | `result-track:dc5c5974a2e99caa6a4212b6ae47220b7c8bfae6261f36de42bd890757b0be8a` |
| 15 | `theorem` | [zpow_le_max_iff_min_le](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-le-max-iff-min-le--ed62d9556a9ae2da446cf8d7.md) | 109 | `result-track:ed62d9556a9ae2da446cf8d7ef18691cb2ac0946b5c1a297b7bc54bbf5fd4cb6` |
| 16 | `theorem` | [zpow_bit0_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit0-nonneg--e305b849705bb5f67dc548ee.md) | 126 | `result-track:e305b849705bb5f67dc548eefd4bfd5e601d5c969aa9431609a39128395eb5c1` |
| 17 | `theorem` | [zpow_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-two-nonneg--0af6c12395815905edf3838b.md) | 130 | `result-track:0af6c12395815905edf3838b3fca6603b98dccab5cbbed4327293ac33e75f6a4` |
| 18 | `theorem` | [zpow_neg_two_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-neg-two-nonneg--236fc7f5619f33b98350e108.md) | 134 | `result-track:236fc7f5619f33b98350e10811a6f0704abc217e3bcba4a334c905f6fb52f60e` |
| 19 | `theorem` | [zpow_bit0_pos](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit0-pos--083f165e38148a6972d6fd9d.md) | 138 | `result-track:083f165e38148a6972d6fd9d7eca7b2091cfe5fe9edd04cb44ead2cd7c002e51` |
| 20 | `theorem` | [zpow_two_pos_of_ne_zero](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-two-pos-of-ne-zero--36a7ed8e8ef70abb43402c9b.md) | 142 | `result-track:36a7ed8e8ef70abb43402c9b660213ce138cae4634b62f1a7afd2eadd652d9b0` |
| 21 | `theorem` | [zpow_bit0_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit0-pos-iff--7d1650720d51ee1bf08d6b08.md) | 147 | `result-track:7d1650720d51ee1bf08d6b08e32455a08936f859ac88828f27b6c6d2c95da0d5` |
| 22 | `theorem` | [zpow_bit1_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit1-neg-iff--eda2ee02168c1cace15744b8.md) | 156 | `result-track:eda2ee02168c1cace15744b870e529aaab6d68b599623e8208c5f7d7f09a9198` |
| 23 | `theorem` | [zpow_bit1_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit1-nonneg-iff--fe7603daba64ccd3e1eed7d4.md) | 162 | `result-track:fe7603daba64ccd3e1eed7d40958fba507b0170f8cef222ea56737ad757e50cf` |
| 24 | `theorem` | [zpow_bit1_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit1-nonpos-iff--2f1962afc81e609b69dc0b2a.md) | 167 | `result-track:2f1962afc81e609b69dc0b2a96056d4beb6bafe5396e1bdc465f8bfcbc980d51` |
| 25 | `theorem` | [zpow_bit1_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit1-pos-iff--ec650a6b7728280ff79afe44.md) | 172 | `result-track:ec650a6b7728280ff79afe447822f34f7ff45ff3e8c0c16a002bca742a17095a` |
| 26 | `theorem` | [Even.zpow_nonneg](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/even-zpow-nonneg--d8d1c33d91fe87681303e13d.md) | 178 | `result-track:d8d1c33d91fe87681303e13d83b9155209a1fe38451050fa098a4bcd9db41052` |
| 27 | `theorem` | [Even.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/even-zpow-pos-iff--167e6a96b970962fb2af5eb0.md) | 182 | `result-track:167e6a96b970962fb2af5eb08dc09d7a65d2b3520dce5ece2c73ce6b500c1331` |
| 28 | `theorem` | [Odd.zpow_neg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/odd-zpow-neg-iff--d3e52e77ea04e0d9212d528e.md) | 186 | `result-track:d3e52e77ea04e0d9212d528e6819c4dd69a8745e153b13d2dd1524848e5102ba` |
| 29 | `theorem` | [Odd.zpow_nonneg_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/odd-zpow-nonneg-iff--206a374679dac04cf47d2a94.md) | 190 | `result-track:206a374679dac04cf47d2a949b7f7d057bc5918a1cf7a22abccdf97ecc212ea9` |
| 30 | `theorem` | [Odd.zpow_nonpos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/odd-zpow-nonpos-iff--36df19d1833758d58d7a062e.md) | 194 | `result-track:36df19d1833758d58d7a062e2260c7af098c55a9c62e9ab1338e038395c7e164` |
| 31 | `theorem` | [Odd.zpow_pos_iff](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/odd-zpow-pos-iff--562efe333c9955adaed79f2a.md) | 198 | `result-track:562efe333c9955adaed79f2a9993bcbc32da4c3106b872cc6878c31ccec3ac0f` |
| 32 | `theorem` | [Even.zpow_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/even-zpow-abs--9dbc3768cc11292743d3f59a.md) | 211 | `result-track:9dbc3768cc11292743d3f59ab3bcc367f527c4aba94a5c0f145cf39ed6114123` |
| 33 | `theorem` | [zpow_bit0_abs](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/zpow-bit0-abs--74c7f56c939b82cbc313f2b7.md) | 217 | `result-track:74c7f56c939b82cbc313f2b7b9720fb3c1427ad89b46e5c66db16b14cec3308c` |
| 34 | `theorem` | [Nat.cast_le_pow_sub_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/nat-cast-le-pow-sub-div-sub--b2a1d64b39f5040b0df64e8c.md) | 225 | `result-track:b2a1d64b39f5040b0df64e8c438ae9704484bcbbf47d1db2692ca6e8db7cd42e` |
| 35 | `theorem` | [Nat.cast_le_pow_div_sub](../../../../../mathematics/Algebra/UniversalAlgebra/Power/Variant4cdd1cc2af342413bfb98a1000f9737acd11e6cb7ee31d2f653c21b24654fa70.lean/declarations/nat-cast-le-pow-div-sub--40e95c956c74f6cb2de11d96.md) | 232 | `result-track:40e95c956c74f6cb2de11d96efbf783109ae53f62d0e8f48aec32d777c9355ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
