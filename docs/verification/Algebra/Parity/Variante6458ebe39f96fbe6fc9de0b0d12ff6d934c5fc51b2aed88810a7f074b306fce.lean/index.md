# Verification target: GRWTSK.Algebra.Parity.Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a9bcf197f5cd674cd7635fa1b4894a76c1d320c",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/index.md) · [Full source](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a9bcf197f5cd674cd7635fa1b4894a76c1d320c`.

Source path: `GRWTSK/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Ring.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Int.Defs` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.Even` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [odd_iff](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-iff--363b75154291e5bdb4e2cd6f.md) | 32 | `result-track:363b75154291e5bdb4e2cd6f1c4f8a0d95c1396a0922db67444aeb802dda8a85` |
| 2 | `lemma` | [not_odd_iff](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/not-odd-iff--3cf02123e1a3c99c933c04f9.md) | 36 | `result-track:3cf02123e1a3c99c933c04f94d4b4c98b8a66e18a6e57cbea57ab60b239e9abe` |
| 3 | `lemma` | [not_odd_zero](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/not-odd-zero--20f52f1c8bea7489f43b38b3.md) | 38 | `result-track:20f52f1c8bea7489f43b38b3dacd2df977a6321f507cf35ed65bdf0e8d075c19` |
| 4 | `lemma` | [not_odd_iff_even](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/not-odd-iff-even--5462f75d0a99274a1340447a.md) | 40 | `result-track:5462f75d0a99274a1340447ab94e46e5d4f65f5fc4da80ab4a038ba6439b7ff7` |
| 5 | `lemma` | [not_even_iff_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/not-even-iff-odd--4d262aaf2cfbb2803df93c62.md) | 41 | `result-track:4d262aaf2cfbb2803df93c62b554dc75c01257ba6f4ce8ed4c1e34868b0890aa` |
| 6 | `lemma` | [even_or_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-or-odd--ded33bd5bf5a9c93123e9e2a.md) | 43 | `result-track:ded33bd5bf5a9c93123e9e2a43f098da20864ef410c13f198fcf29b57f2bf732` |
| 7 | `lemma` | [even_or_odd'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-or-odd--a275a2315f4add9f6f66d017.md) | 45 | `result-track:a275a2315f4add9f6f66d017953a783e0380b3b46f744fb2584155eb86e298c1` |
| 8 | `lemma` | [even_xor'_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-xor-odd--50710ea0b0b2530fb46dabf0.md) | 48 | `result-track:50710ea0b0b2530fb46dabf0be1b1362078f7eff84a4cd57b6257f89419bf02c` |
| 9 | `lemma` | [even_xor'_odd'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-xor-odd--725aa618e14b86004261e3dd.md) | 53 | `result-track:725aa618e14b86004261e3dda607ebccc2113f972d2061a4cf7ba7fc867421c3` |
| 10 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/instance--2b95c0e66266347b98a768ba.md) | 60 | `declaration-track:2b95c0e66266347b98a768ba26cb6caece29e4e697fb67de25f4d9669b6a411b` |
| 11 | `lemma` | [even_add'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-add--55c09ed686abef94e5b8eef2.md) | 62 | `result-track:55c09ed686abef94e5b8eef250b417f50c707431f98451a435f0e3b93f595b07` |
| 12 | `lemma` | [not_even_two_mul_add_one](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/not-even-two-mul-add-one--26dba875e2c44236a2db6fe0.md) | 65 | `result-track:26dba875e2c44236a2db6fe032f7d67d2100a8cf6a13cf902ea362de0e429bb3` |
| 13 | `lemma` | [even_sub'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-sub--003955730aa748a309088628.md) | 68 | `result-track:003955730aa748a309088628237707a029247eeb93da3512ab993d09482db8f0` |
| 14 | `lemma` | [odd_mul](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-mul--07419bf2e0f9b30db1b656a3.md) | 71 | `result-track:07419bf2e0f9b30db1b656a334401c7a40635d6bc7c19b50ce69ce82c5f60d1f` |
| 15 | `lemma` | [Odd.of_mul_left](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-of-mul-left--c04d939040e5d4aebe711d24.md) | 73 | `result-track:c04d939040e5d4aebe711d240e63de558f5aa760748642bb690c8315ccb0da0a` |
| 16 | `lemma` | [Odd.of_mul_right](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-of-mul-right--01455d092561f9299f9a03c3.md) | 75 | `result-track:01455d092561f9299f9a03c3b3ec6542443d8b52e474637d7776e6c214e1dd0a` |
| 17 | `lemma` | [odd_pow](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-pow--823796b01e3a6821c7d7d819.md) | 77 | `result-track:823796b01e3a6821c7d7d81968f13f7c046431392eb64508935cf7c4bc3b52c5` |
| 18 | `lemma` | [odd_pow'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-pow--e043a506e906509861c77a25.md) | 80 | `result-track:e043a506e906509861c77a25bf8b15c98dc194cef139d3053960db207293cae4` |
| 19 | `lemma` | [odd_add](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-add--abdc8c567e371d2c986f28c5.md) | 82 | `result-track:abdc8c567e371d2c986f28c5e8b8c285487e0c78986690d48501da06410b7a99` |
| 20 | `lemma` | [odd_add'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-add--83361c3ba02d950584b6977c.md) | 85 | `result-track:83361c3ba02d950584b6977ccb47a244586cedfb80bbcdf68be9059901d111ad` |
| 21 | `lemma` | [ne_of_odd_add](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/ne-of-odd-add--427f19ae3b2006503a2a2b29.md) | 87 | `result-track:427f19ae3b2006503a2a2b29add7ba7c5cb5d5fbbb7cc9821618071c9a06b158` |
| 22 | `lemma` | [odd_sub](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-sub--720b13ca8918cde4578f8c1e.md) | 89 | `result-track:720b13ca8918cde4578f8c1e4e810df9379731fcd109fa07284728fcdd950e10` |
| 23 | `lemma` | [odd_sub'](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-sub--3d16943368cffcd0b44b9b38.md) | 92 | `result-track:3d16943368cffcd0b44b9b38ab36d37498390b0f175f5cf62da3df6f0221dfb1` |
| 24 | `lemma` | [even_mul_succ_self](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-mul-succ-self--1d642006ed441c19fa3c7c6c.md) | 95 | `result-track:1d642006ed441c19fa3c7c6cc0ad8656eb79110eca0534f07a48710e6bccd0a2` |
| 25 | `lemma` | [even_mul_pred_self](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/even-mul-pred-self--6f50ea5c60e4ae9a8af7b373.md) | 98 | `result-track:6f50ea5c60e4ae9a8af7b373d0e015d25282922bd5fb7672e2f651266292345e` |
| 26 | `lemma` | [odd_coe_nat](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/odd-coe-nat--83ac601903e42b34c922d978.md) | 101 | `result-track:83ac601903e42b34c922d97874892e0e9c17cc7daa9701acbfc061a67ad0c558` |
| 27 | `lemma` | [natAbs_even](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/natabs-even--99e054709bc2801d92094423.md) | 104 | `result-track:99e054709bc2801d92094423f4022f608b378b0146d0eeaaec8dcd1c54e0d3dd` |
| 28 | `lemma` | [natAbs_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/natabs-odd--02d4fd6d1107747eb3eb5ce7.md) | 108 | `result-track:02d4fd6d1107747eb3eb5ce7f3befa8dc773303fb7a189815d3343bbd3e6969d` |
| 29 | `lemma` | [four_dvd_add_or_sub_of_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/four-dvd-add-or-sub-of-odd--f73da89483a566e5fda1de60.md) | 114 | `result-track:f73da89483a566e5fda1de60e206389fa42725341592ab8f47fdc53dee7547e6` |
| 30 | `lemma` | [two_mul_ediv_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/two-mul-ediv-two-add-one-of-odd--4eb8145e8d9f1a392c18b5c6.md) | 120 | `result-track:4eb8145e8d9f1a392c18b5c6944d0c971f7decd9d2ca9a501086663bffe11f4f` |
| 31 | `lemma` | [ediv_two_mul_two_add_one_of_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/ediv-two-mul-two-add-one-of-odd--48fc38e116cac51e060da597.md) | 126 | `result-track:48fc38e116cac51e060da597db00d331ba975e16fcbb74461aaaf1ce6ae4ea07` |
| 32 | `lemma` | [add_one_ediv_two_mul_two_of_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/add-one-ediv-two-mul-two-of-odd--db02c85527104f1cfa7305a2.md) | 131 | `result-track:db02c85527104f1cfa7305a26e046a0b4e8c144d1b2672ef088ae07b6d78d3f6` |
| 33 | `lemma` | [two_mul_ediv_two_of_odd](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/two-mul-ediv-two-of-odd--8bf019edad2a858487ba8836.md) | 137 | `result-track:8bf019edad2a858487ba88366ebaeea311db382b7789b77a1f3f4265760e2297` |
| 34 | `theorem` | [isSquare_natCast_iff](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/issquare-natcast-iff--1387fc6fb75fd0cd5293ff28.md) | 141 | `result-track:1387fc6fb75fd0cd5293ff2894d5d3da0d3f7fd30e1d2cb9d938c178938d9694` |
| 35 | `theorem` | [isSquare_ofNat_iff](../../../../mathematics/Algebra/Parity/Variante6458ebe39f96fbe6fc9de0b0d12ff6d934c5fc51b2aed88810a7f074b306fce.lean/declarations/issquare-ofnat-iff--0f0351725fb4cebeafd44fa8.md) | 147 | `result-track:0f0351725fb4cebeafd44fa8fe191968f2b48029109711f73579915e96eedd56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
