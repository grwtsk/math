# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Field.Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "533ffd0fea7755c69c198c4f4679425591c40778",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `533ffd0fea7755c69c198c4f4679425591c40778`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.SetTheory.Nimber.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Abel` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--f7be4cac7aa93d87fb4065a2.md) | 47 | `declaration-track:f7be4cac7aa93d87fb4065a2214306abbd58d8b5162bf8db61393f75f35318d4` |
| 2 | `theorem` | [two_zsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/two-zsmul--26cc51e1602dbe4d8459474d.md) | 51 | `result-track:26cc51e1602dbe4d8459474d947a120ddcad134870735b686e0151e60d23748c` |
| 3 | `theorem` | [add_eq_iff_eq_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/add-eq-iff-eq-add--0d115568f708ee21679de5bb.md) | 55 | `result-track:0d115568f708ee21679de5bb5e43b1e5bbb2e1a6bc7d0e9c3855533044c28ebb` |
| 4 | `def` | [mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul--fff266d0f3b1137f15cb96cd.md) | 61 | `declaration-track:fff266d0f3b1137f15cb96cdfd78f8d09a54a4866d58f2670d214dfe96780b6c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--615252e1706094d4b63b6204.md) | 66 | `declaration-track:615252e1706094d4b63b6204a14df8e98036f8a1c059cf4ec15f8d9829a3a4c7` |
| 6 | `theorem` | [mul_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-def--7e2dd772112e3c1eba48b243.md) | 69 | `result-track:7e2dd772112e3c1eba48b2435671fc70dc942fe9a27328c7833168041adf5fcf` |
| 7 | `theorem` | [mul_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-nonempty--080a815f9bb75a640516467f.md) | 77 | `result-track:080a815f9bb75a640516467fd40def3db0d0976e1ec3dcb977e857b96963e528` |
| 8 | `theorem` | [exists_of_lt_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/exists-of-lt-mul--e31e4a836021f04ead964421.md) | 85 | `result-track:e31e4a836021f04ead96442166d39175a269088b4750d7bfe84313cf6c081b6b` |
| 9 | `theorem` | [mul_le_of_forall_ne](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-le-of-forall-ne--8e5905f4bb20b108de5600bb.md) | 90 | `result-track:8e5905f4bb20b108de5600bbdba90175b01b0258c3dd2313f64bea1adddc8c73` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--ce6b9ca4b739f4454aad984b.md) | 96 | `declaration-track:ce6b9ca4b739f4454aad984b430dcb8dd594d674427858001f577e46b4f87933` |
| 11 | `theorem` | [mul_ne_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-ne-of-lt--2a1e41034fd6504461e98368.md) | 104 | `result-track:2a1e41034fd6504461e98368ef30340175927afb0f7beb19bf63ec458203f0b6` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--24633a27a99f861a88a71f46.md) | 109 | `declaration-track:24633a27a99f861a88a71f465a1f029ecf2a7737ff9ed32a752145bed19bdefc` |
| 13 | `theorem` | [mul_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-comm--e04431516cb3e499cb87d9b6.md) | 116 | `result-track:e04431516cb3e499cb87d9b61c6963e16e503e857f731cd6968610ab9ed30484` |
| 14 | `theorem` | [mul_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-add--bce3bfbf4ae0d7f452e7a28d.md) | 123 | `result-track:bce3bfbf4ae0d7f452e7a28dd385bb957a93430198435f032edbcbf4065e0958` |
| 15 | `theorem` | [add_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/add-mul--b9b448d3fab9bd1547f72387.md) | 168 | `result-track:b9b448d3fab9bd1547f72387792fbc550b5fee7109a9fa168969be5e74830310` |
| 16 | `theorem` | [add_ne_zero_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/add-ne-zero-of-lt--1940ce38a5fc160d1dc88d49.md) | 171 | `result-track:1940ce38a5fc160d1dc88d4967235f5e82ae204a394dd963cd44af3a64da453f` |
| 17 | `theorem` | [mul_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-assoc--ce9fa7f015687d0542d922ad.md) | 175 | `result-track:ce9fa7f015687d0542d922ad1b52fea88e4836a23f6874f71d40d1bb9e084b0d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--a7aa7ad2520a01a4d9cb12a1.md) | 197 | `declaration-track:a7aa7ad2520a01a4d9cb12a100a9254662572accf8be18b1e19d4ab474753683` |
| 19 | `theorem` | [one_mul](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/one-mul--588da645831a012572fa05a8.md) | 205 | `result-track:588da645831a012572fa05a885a1c49dfa762a6dbfacf0f661797a4c8f7a0654` |
| 20 | `theorem` | [mul_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-one--5ee1d335bd522ec94d3061dc.md) | 216 | `result-track:5ee1d335bd522ec94d3061dc5fb22cb7f20acd70b2a71323dd1f028df1614577` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--2defd450c879e152052ddc6b.md) | 219 | `declaration-track:2defd450c879e152052ddc6bd490b197ada6e356b2d41af5132108789f818a88` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--597f830543c9738bcfb04445.md) | 230 | `declaration-track:597f830543c9738bcfb044451eff11dc19e24725457166997e261ce41dd631b6` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--efc1f39b0b24766f12e67a53.md) | 231 | `declaration-track:efc1f39b0b24766f12e67a53e9f79b462c37c9301f2c75c51819ee6b9b48dc7b` |
| 24 | `def` | [invAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invaux--d464e7f5c13ad37f4435a26d.md) | 243 | `declaration-track:d464e7f5c13ad37f4435a26dcf97bc0d31b271a7d1ab7d7f25d90995961093d6` |
| 25 | `def` | [invSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invset--4670b2abf1c2a668ae6b3360.md) | 248 | `declaration-track:4670b2abf1c2a668ae6b3360fa740fde12951c13191a475b2f69f4e026e7044a` |
| 26 | `theorem` | [zero_mem_invSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/zero-mem-invset--c353b75e1ee6999739de4672.md) | 254 | `result-track:c353b75e1ee6999739de4672bf4e7bc7866ff599a7a4cec197de8691a63b5f29` |
| 27 | `theorem` | [cons_mem_invSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/cons-mem-invset--7dbc2ca59eaeaad4f021db2e.md) | 259 | `result-track:7dbc2ca59eaeaad4f021db2ea43153f6fea4314e0050bbb755a24951b1182858` |
| 28 | `theorem` | [invSet_recOn](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invset-recon--78ce7bf25afeed5769091dcc.md) | 266 | `result-track:78ce7bf25afeed5769091dccff9393a62893f992e4cec9ddc08b5e1f9df8a0cf` |
| 29 | `def` | [List.toNimber](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/list-tonimber--b2f227755418135c0f55f88f.md) | 274 | `declaration-track:b2f227755418135c0f55f88fccfffc124709007d474e89940afbc3256274532e` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--7dfb1d2cff459de5431516c9.md) | 280 | `declaration-track:7dfb1d2cff459de5431516c954a9bd2c9a3e7d645568c55a9f40baffe3ca0a99` |
| 31 | `theorem` | [invSet_nonempty](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invset-nonempty--b45cd473a45dd39f474f0b9f.md) | 289 | `result-track:b45cd473a45dd39f474f0b9f114df0dbe78d3d2d0edd9c48afe133f50a863b11` |
| 32 | `theorem` | [invAux_ne_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invaux-ne-zero--9746da918214b9e52f577285.md) | 293 | `result-track:9746da918214b9e52f5772859a128ff8a68a9a57358cc966c26dfd2c43ea2237` |
| 33 | `theorem` | [mem_invSet_of_lt_invAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mem-invset-of-lt-invaux--bf22f748907fffa267dc7139.md) | 297 | `result-track:bf22f748907fffa267dc713918175a8f67387b34c40ae79bf78c5e9e2ac8ad57` |
| 34 | `theorem` | [invAux_notMem_invSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invaux-notmem-invset--a8dee1cb4c268c73e9c6e023.md) | 302 | `result-track:a8dee1cb4c268c73e9c6e023e0c8b2663a59c8d22d1db4c59a73bd2f786e1e1b` |
| 35 | `theorem` | [invAux_mem_invSet_of_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/invaux-mem-invset-of-lt--fa841851e6ca8d444ac5baf6.md) | 308 | `result-track:fa841851e6ca8d444ac5baf679a3c816992d7ed3d60a781f507d6df5f77236fd` |
| 36 | `theorem` | [mul_inv_cancel_aux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-inv-cancel-aux--c3563d9c51e85102b0f58509.md) | 314 | `result-track:c3563d9c51e85102b0f58509a57411014211d482798e62d8fd2140fb162e75c9` |
| 37 | `theorem` | [mul_invAux_cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/mul-invaux-cancel--4ee89dc0718f7f5142a0fa88.md) | 340 | `result-track:4ee89dc0718f7f5142a0fa88f91ed275a06ac8338966287842ca9a6f5ee891f1` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--5965b9c0924c3be0eab609fe.md) | 343 | `declaration-track:5965b9c0924c3be0eab609fea1a964371117dab7b1dabafee9d28eaa9aa201c6` |
| 39 | `theorem` | [inv_eq_invAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/inv-eq-invaux--5011c5e5bbafe9e4d1334572.md) | 346 | `result-track:5011c5e5bbafe9e4d133457238fa676f446ef04260816794428336ea2518de20` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/SetTheory/Field/Variantd989404c4a619f9093f0fbec00a6868a31e32fe1da332b21c8442d7fbec47d80.lean/declarations/instance--7e1857081e489ad78bf08972.md) | 349 | `declaration-track:7e1857081e489ad78bf089724417dd16932e290f9f16a0a9784c64648865285a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
