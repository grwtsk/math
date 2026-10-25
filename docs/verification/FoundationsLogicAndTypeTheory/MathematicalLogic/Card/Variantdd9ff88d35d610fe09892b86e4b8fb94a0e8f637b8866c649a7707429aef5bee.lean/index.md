# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Card.Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd16ff4fd9099651c4d940d4387f16b51b86395f",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd16ff4fd9099651c4d940d4387f16b51b86395f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [inj_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/inj-on--a1b40e090998a8b6b3576e7c.md) | 16 | `declaration-track:a1b40e090998a8b6b3576e7c7fbf7e5afcd6b538c000753ca2a1f7dc65abe16b` |
| 2 | `theorem` | [inj_on_of_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/inj-on-of-subset--d47ea385955a048747c090a2.md) | 18 | `result-track:d47ea385955a048747c090a24ed97d1e010f9e191f54c8c12fc5a521db67bea4` |
| 3 | `def` | [equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/equiv--35b91c5cb99bd01748091f6f.md) | 21 | `declaration-track:35b91c5cb99bd01748091f6fa8539002a05b94ef728978b4c8cc5b395ba9b5dc` |
| 4 | `theorem` | [equiv_iff_subset_and_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/equiv-iff-subset-and-subset--bfd9ccc7977144eda7a74966.md) | 23 | `result-track:bfd9ccc7977144eda7a74966d4d820a05f137a469167ccd903091d0ccf507a41` |
| 5 | `theorem` | [insert_equiv_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/insert-equiv-cons--87ed89cdbbfa8101df696cb8.md) | 28 | `result-track:87ed89cdbbfa8101df696cb8d44a35fc89a637104afbb9ad8756562299c439eb` |
| 6 | `theorem` | [union_equiv_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/union-equiv-append--2b2d8b7ba0a4ebb2395167a3.md) | 31 | `result-track:2b2d8b7ba0a4ebb2395167a3265f017ead8659252b1426ae52f491bf73b1ec97` |
| 7 | `def` | [remove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/remove--5d6a2c5e7bf7cb8d7762afde.md) | 39 | `declaration-track:5d6a2c5e7bf7cb8d7762afdeb12ad0b5de686239835b5f522ddab3ef00f3a1cd` |
| 8 | `theorem` | [mem_remove_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/mem-remove-iff--fa83efb379ab321285399db4.md) | 43 | `result-track:fa83efb379ab321285399db43c4e447a0cf7ab26fe8c339d20307ced78a1cd87` |
| 9 | `theorem` | [remove_eq_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/remove-eq-of-not-mem--be2c6a33739cb0ecdfa2ef05.md) | 65 | `result-track:be2c6a33739cb0ecdfa2ef052c1d3c00d8610b9b6c9319602ee529a46423c536` |
| 10 | `theorem` | [mem_of_mem_remove](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/mem-of-mem-remove--023509b9a3c82606ab9f2b80.md) | 72 | `result-track:023509b9a3c82606ab9f2b80bed0fdfc52849aaedbb69b95114df2f6bdc4eed0` |
| 11 | `def` | [card](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card--8faac6634dbcc99d3c412a48.md) | 77 | `declaration-track:8faac6634dbcc99d3c412a4832d05fb80ec20843c116274c4b11fe97efcf2a30` |
| 12 | `theorem` | [card_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-nil--fa5a65571ac8c74d2618fd54.md) | 81 | `result-track:fa5a65571ac8c74d2618fd5407cb99106050a479e54da6f7437fca71c06d0ca3` |
| 13 | `theorem` | [card_cons_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-cons-of-mem--46f3b0b0a5ddf5558a458186.md) | 83 | `result-track:46f3b0b0a5ddf5558a458186118dae2ab6d080e91f17a5cb6e302d0d303b5a92` |
| 14 | `theorem` | [card_cons_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-cons-of-not-mem--f7b1602d31124af1c151b842.md) | 86 | `result-track:f7b1602d31124af1c151b842eb6b552b4cbd0404cb71779e26dce83d1307e081` |
| 15 | `theorem` | [card_le_card_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-le-card-cons--62b40d88b27cc6069a304135.md) | 89 | `result-track:62b40d88b27cc6069a3041358cd21c73d1d64fcbe692c52f7cd144c4b4d3d0cc` |
| 16 | `theorem` | [card_insert_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-insert-of-mem--72affd4e1847edd71234fdce.md) | 94 | `result-track:72affd4e1847edd71234fdce30ef5a761afbe8cbda327d2dcc8f11025e88b7f3` |
| 17 | `theorem` | [card_insert_of_not_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-insert-of-not-mem--21372174bc0ad09d146013be.md) | 97 | `result-track:21372174bc0ad09d146013be00f21ff64f778bc7b7e5122a675dc3e4a6cf3cd7` |
| 18 | `theorem` | [card_remove_of_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-remove-of-mem--68a6a5cb080b82160d9a4f5c.md) | 100 | `result-track:68a6a5cb080b82160d9a4f5cd0d0cbdb40bad12b806a5a7ca25ff30b5ca529e8` |
| 19 | `theorem` | [card_subset_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-subset-le--71dfdcb992dbf67963f0af60.md) | 124 | `result-track:71dfdcb992dbf67963f0af60d82dba098747227684c0d90fc977d8ee2f919300` |
| 20 | `theorem` | [card_map_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-map-le--7c59c468c296f601eaa676dd.md) | 140 | `result-track:7c59c468c296f601eaa676dda9684b2eb30338f61a8792c87da3279bc06acbd8` |
| 21 | `theorem` | [card_map_eq_of_inj_on](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-map-eq-of-inj-on--b36ed46d084853e90ed6b984.md) | 153 | `result-track:b36ed46d084853e90ed6b9843b783f33fb9c764dd27c57478311d8af619e26ed` |
| 22 | `theorem` | [card_eq_of_equiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-eq-of-equiv--c10593278f32777dfdc64e15.md) | 173 | `result-track:c10593278f32777dfdc64e15391b40b6a5f5e0e5084d5ca5036dfef010e40b8e` |
| 23 | `theorem` | [card_append_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-append-disjoint--1745d2949cd398cb4888cc19.md) | 177 | `result-track:1745d2949cd398cb4888cc19a88ea569e52a641fe1120778d629ba5867daba0a` |
| 24 | `theorem` | [card_union_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Card/Variantdd9ff88d35d610fe09892b86e4b8fb94a0e8f637b8866c649a7707429aef5bee.lean/declarations/card-union-disjoint--bd27c8ddaf8660fa6a6f6671.md) | 190 | `result-track:bd27c8ddaf8660fa6a6f6671a61994e3e626dc5503a346c1a0390143e6e34529` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
