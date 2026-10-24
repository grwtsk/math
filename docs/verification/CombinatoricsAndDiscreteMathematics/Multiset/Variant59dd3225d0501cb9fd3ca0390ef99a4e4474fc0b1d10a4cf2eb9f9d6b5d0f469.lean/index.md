# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Multiset.Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5798e2b04b0ea77c82431861e4c0b9cdd9ac9ef8",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5798e2b04b0ea77c82431861e4c0b9cdd9ac9ef8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.DFinsupp.Order` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [addZeroClass'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/addzeroclass--5339b848664bf09ac236ddbe.md) | 32 | `declaration-track:5339b848664bf09ac236ddbe3f9a167e84c74d0c09ea0a72e3fc690cf5bca05d` |
| 2 | `def` | [toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset--af192ce7fee3bb3d7f61013a.md) | 39 | `declaration-track:af192ce7fee3bb3d7f61013abd1abcecefce19f0e6bc606a3f9cfbb94e090f9c` |
| 3 | `theorem` | [toMultiset_single](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-single--bb4859644e09b7dc60fdeb21.md) | 44 | `result-track:bb4859644e09b7dc60fdeb216ad93256f66fddd3543b3a502b944aaa9a8ab4f3` |
| 4 | `def` | [toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp--da87425b53ea7a872ffb290e.md) | 56 | `declaration-track:da87425b53ea7a872ffb290e2d7a0832d60e3701840aa952739b15d967e1dbe5` |
| 5 | `theorem` | [toDFinsupp_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-apply--63f20570705f75fd57d903eb.md) | 65 | `result-track:63f20570705f75fd57d903ebfd42178fc0b8cf36aa77b8c07466c95d95a73ee5` |
| 6 | `theorem` | [toDFinsupp_support](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-support--f742f62211df5a23e8bd4bdb.md) | 70 | `result-track:f742f62211df5a23e8bd4bdb877ed7e55d8e959bcefe0e09a688a96de0a497e2` |
| 7 | `theorem` | [toDFinsupp_replicate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-replicate--9200b087518c58387998d75b.md) | 75 | `result-track:9200b087518c58387998d75b28916d852dd4df09c74aad3b19db73db8134311d` |
| 8 | `theorem` | [toDFinsupp_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-singleton--889cbc871eda5c69b3285cd6.md) | 83 | `result-track:889cbc871eda5c69b3285cd68fce29e5025ecde4c62814cc4de4443ebaa98fbb` |
| 9 | `def` | [equivDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/equivdfinsupp--b3635961d56b540b815483e5.md) | 89 | `declaration-track:b3635961d56b540b815483e577a5425818a04b45db4d0ceda95ceb78857fec74` |
| 10 | `theorem` | [toDFinsupp_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-tomultiset--474aa288d0dc64a9d6594df8.md) | 94 | `result-track:474aa288d0dc64a9d6594df8b1b0968ed379a7c216532e74763ff031d70d57b0` |
| 11 | `theorem` | [toDFinsupp_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-injective--a4d0255816d9850bdfd1669b.md) | 98 | `result-track:a4d0255816d9850bdfd1669b92dd9864d46eb5d48ba0987d5e44a810e382978a` |
| 12 | `theorem` | [toDFinsupp_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-inj--db8e27a066ec871efa273bbc.md) | 103 | `result-track:db8e27a066ec871efa273bbc402e8c044b865a3e00b052d079e9af302649baa8` |
| 13 | `theorem` | [toDFinsupp_le_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-le-todfinsupp--463336687e0218d35c252fb9.md) | 108 | `result-track:463336687e0218d35c252fb92dc48b3c558a9ce04ebd8f16d196c23d74096517` |
| 14 | `theorem` | [toDFinsupp_lt_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-lt-todfinsupp--ccb910cf2224e8693157817f.md) | 113 | `result-track:ccb910cf2224e8693157817f0f3ecfb1a3043ab71a6bb458403d82dd2def2b2d` |
| 15 | `theorem` | [toDFinsupp_inter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-inter--b9be7ab43d94786237ce908d.md) | 118 | `result-track:b9be7ab43d94786237ce908dbfd85eadd21477fbe25d3d82c8b50b22246f108f` |
| 16 | `theorem` | [toDFinsupp_union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/todfinsupp-union--4602bcc71936bbb7f431eb46.md) | 123 | `result-track:4602bcc71936bbb7f431eb46e7cde02dbead10a0e4a4df81417255a5145a669b` |
| 17 | `theorem` | [toMultiset_toDFinsupp](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-todfinsupp--ddb0a639bd4544369bc6fb48.md) | 135 | `result-track:ddb0a639bd4544369bc6fb48bc0e3c6c4b731878d80c21927ee4d9d2ca72dc1d` |
| 18 | `theorem` | [toMultiset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-injective--17a29e4fdde9578ce07ef437.md) | 140 | `result-track:17a29e4fdde9578ce07ef437cb764ead2090a216e2b864fd03a5163ea4ba4d67` |
| 19 | `theorem` | [toMultiset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-inj--4850af324cee54637efaa8cd.md) | 145 | `result-track:4850af324cee54637efaa8cd1d8d493dbb654f2386db41d48a5a53adb0e98534` |
| 20 | `theorem` | [toMultiset_le_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-le-tomultiset--4d79b32da30c790e5b546466.md) | 150 | `result-track:4d79b32da30c790e5b546466a7710d1da6ad0d7cfe854940237bffe305793476` |
| 21 | `theorem` | [toMultiset_lt_toMultiset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-lt-tomultiset--27c9e2b5f0fac3848aba70a2.md) | 155 | `result-track:27c9e2b5f0fac3848aba70a24c76f7156e8d73a2c2c7604c1a6a7b7ea4260a5b` |
| 22 | `theorem` | [toMultiset_inf](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-inf--c76b1ff98006e550e368f449.md) | 162 | `result-track:c76b1ff98006e550e368f4495c00a3ed14909fc155eb2ed1ed72bf4d5da5d88e` |
| 23 | `theorem` | [toMultiset_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Multiset/Variant59dd3225d0501cb9fd3ca0390ef99a4e4474fc0b1d10a4cf2eb9f9d6b5d0f469.lean/declarations/tomultiset-sup--5b7b94cc8d2d2f1eeeb7dd1e.md) | 167 | `result-track:5b7b94cc8d2d2f1eeeb7dd1eb5377671ed5801250684459df72fd720479f021a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
