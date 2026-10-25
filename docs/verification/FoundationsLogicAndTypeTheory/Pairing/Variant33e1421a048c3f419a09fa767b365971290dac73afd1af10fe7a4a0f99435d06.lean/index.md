# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.Pairing.Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a92df5edcefb82f1f747814fd7bbb712e86d6a62",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/index.md) · [Full source](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a92df5edcefb82f1f747814fd7bbb712e86d6a62`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Sqrt` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Prod` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.MinMax` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair--2e5f0442dfbd2873782cf138.md) | 37 | `declaration-track:2e5f0442dfbd2873782cf1386e30aade6caf7c891a72e387ea33b1d71457bd62` |
| 2 | `def` | [unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair--db765b7c036e2baab13f8bee.md) | 44 | `declaration-track:db765b7c036e2baab13f8bee2d4cca23c53b879f23d677842a17df74366b3ad1` |
| 3 | `theorem` | [pair_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-unpair--1ab1f1c465f69c4518a5d8d5.md) | 50 | `result-track:1ab1f1c465f69c4518a5d8d51ae326fb74995f39b50987c625b40d89ab9a950d` |
| 4 | `theorem` | [pair_unpair'](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-unpair--99a2647569fe931a462578cf.md) | 60 | `result-track:99a2647569fe931a462578cf773b6ebec474b8fa2ca17b0cf5b9eae791e0b0ac` |
| 5 | `theorem` | [unpair_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-pair--ac77690f1a0eebe33ef47c42.md) | 65 | `result-track:ac77690f1a0eebe33ef47c42e298115694f90b39aab12ad3a7d33b0d2879e2a0` |
| 6 | `def` | [pairEquiv](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pairequiv--0270dd23b9e10da3d5ddce96.md) | 79 | `declaration-track:0270dd23b9e10da3d5ddce968adc60e21cb4a62a9cefa82ff6fbe240d1137aa7` |
| 7 | `theorem` | [surjective_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/surjective-unpair--3cc63142bc5e48094869740d.md) | 85 | `result-track:3cc63142bc5e48094869740de2c351aaae3a66b4b9663a40c204d213b8c819a6` |
| 8 | `theorem` | [pair_eq_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-eq-pair--81e13e8d093393b8cf84464d.md) | 90 | `result-track:81e13e8d093393b8cf84464d240b8c0e49a49c9ad9e6a3cb89b8257c8405ae50` |
| 9 | `theorem` | [unpair_lt](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-lt--9d95ca8e97803d7356beae55.md) | 94 | `result-track:9d95ca8e97803d7356beae5530aa743474fba902fdf358085f8af6091e7fec80` |
| 10 | `theorem` | [unpair_zero](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-zero--1d9d9ae29d6b2aedc902a425.md) | 105 | `result-track:1d9d9ae29d6b2aedc902a425e45fcaa3c0ea5658e8be9128d3ab222df7c95601` |
| 11 | `theorem` | [unpair_left_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-left-le--a1847e2d3b105dba12a73774.md) | 110 | `result-track:a1847e2d3b105dba12a73774c047a91f4e31650b636ead85e0da208b2048f888` |
| 12 | `theorem` | [left_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/left-le-pair--4a5d8d0cb5acb7240b3b9bbf.md) | 115 | `result-track:4a5d8d0cb5acb7240b3b9bbfc5bb023b3b29b2c5a9bf1fa079a1784ceff28835` |
| 13 | `theorem` | [right_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/right-le-pair--2e4658aae9e8abd052a4ab71.md) | 118 | `result-track:2e4658aae9e8abd052a4ab713822f214450f380bd485c9adacd144ef4f52fed7` |
| 14 | `theorem` | [unpair_right_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-right-le--da31b914360f5c8bdde9e48a.md) | 123 | `result-track:da31b914360f5c8bdde9e48a6991da2582e3686e7acac00b901a6660ea8915ac` |
| 15 | `theorem` | [pair_lt_pair_left](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-lt-pair-left--4578a43cb6cd58dc2c647376.md) | 127 | `result-track:4578a43cb6cd58dc2c6473768aa3290256dc69726ad52718c907ff8dac94c14b` |
| 16 | `theorem` | [pair_lt_pair_right](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-lt-pair-right--5ba71af443835b263bf30180.md) | 141 | `result-track:5ba71af443835b263bf3018006621fc978a654608cd1f3f97650759d74b3ab61` |
| 17 | `theorem` | [pair_lt_max_add_one_sq](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/pair-lt-max-add-one-sq--5a55eeaa20c2fe0634daf6db.md) | 152 | `result-track:5a55eeaa20c2fe0634daf6db55c05b9686086b6de7baa22a979450ed5629422a` |
| 18 | `theorem` | [max_sq_add_min_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/max-sq-add-min-le-pair--4d30c90281b23196b06497d9.md) | 161 | `result-track:4d30c90281b23196b06497d9ab2a6bdd5d5e6346174c6d3491b63a26c0a6faec` |
| 19 | `theorem` | [add_le_pair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/add-le-pair--faa7fe3bb258fb03a9b73195.md) | 169 | `result-track:faa7fe3bb258fb03a9b7319551855d5fdbee49cf1d0834cb89880dd3d3c8254f` |
| 20 | `theorem` | [unpair_add_le](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/unpair-add-le--27dd35aba8a0b46486dcaf64.md) | 175 | `result-track:27dd35aba8a0b46486dcaf64be8e8b36797811e8b0387efd70cd4ffcc54867de` |
| 21 | `theorem` | [iSup_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/isup-unpair--f15553c31e4d1a964b394ec9.md) | 186 | `result-track:f15553c31e4d1a964b394ec90ff5df33132eb0b11f0bcdd2475fbd1a06bb06a2` |
| 22 | `theorem` | [iInf_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/iinf-unpair--63bbcac4603e0a8c1e29956f.md) | 192 | `result-track:63bbcac4603e0a8c1e29956fe830b2ae7a9729be155096057c8f15ef7e0c7992` |
| 23 | `theorem` | [iUnion_unpair_prod](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/iunion-unpair-prod--8e7b59a1cdeae49a3b7ac3fc.md) | 203 | `result-track:8e7b59a1cdeae49a3b7ac3fc5dfdfbe6e786c66d21f05a03196fe96570da85e6` |
| 24 | `theorem` | [iUnion_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/iunion-unpair--ff93fe0fe2eded2bb79b78b1.md) | 210 | `result-track:ff93fe0fe2eded2bb79b78b185fc40a641365981391e956b981f58fdc3198e0d` |
| 25 | `theorem` | [iInter_unpair](../../../../mathematics/FoundationsLogicAndTypeTheory/Pairing/Variant33e1421a048c3f419a09fa767b365971290dac73afd1af10fe7a4a0f99435d06.lean/declarations/iinter-unpair--0b6631d9720edd5460f53e1a.md) | 216 | `result-track:0b6631d9720edd5460f53e1a56e47e466cca4f5f0daa494d8aa6ca65172987e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
