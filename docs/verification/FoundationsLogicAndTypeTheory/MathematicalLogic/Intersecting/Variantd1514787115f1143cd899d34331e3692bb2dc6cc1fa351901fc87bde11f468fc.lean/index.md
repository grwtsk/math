# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Intersecting.Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9018c50a48691ffdfbde9368f9ff788cd54c8ef7",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9018c50a48691ffdfbde9368f9ff788cd54c8ef7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Fintype.Card` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Intersecting](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting--d101bbb4d1176678a876e5c6.md) | 40 | `declaration-track:d101bbb4d1176678a876e5c6eb06ac376a4382137af5582e58a2319c34b4562d` |
| 2 | `theorem` | [Intersecting.mono](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-mono--5be04546b667e9ce7939f08a.md) | 44 | `result-track:5be04546b667e9ce7939f08af908c1551433b6a18d0103bb22cb336adb403ceb` |
| 3 | `theorem` | [Intersecting.bot_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-bot-notmem--57b3342793f59384ac44c3a6.md) | 47 | `result-track:57b3342793f59384ac44c3a697acf73775866b5fb5055787025ff36b8dbf849e` |
| 4 | `theorem` | [Intersecting.ne_bot](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-ne-bot--3c8486e6867c21e5aa42a965.md) | 52 | `result-track:3c8486e6867c21e5aa42a965508b9c97d8a3a0941c4f73aba5152a3f6f38dd32` |
| 5 | `theorem` | [intersecting_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-empty--031e631efa1d5662aada9e46.md) | 55 | `result-track:031e631efa1d5662aada9e4633c100aae45a5fdce693537443992c9ad3fd2bd7` |
| 6 | `theorem` | [intersecting_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-singleton--2aaf6cb002b0f3b7ec0dca30.md) | 58 | `result-track:2aaf6cb002b0f3b7ec0dca30dcb7b8560e562a57e448af86fbb4bdeae374d761` |
| 7 | `theorem` | [Intersecting.insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-insert--099a3c77ce20f05e0123194d.md) | 60 | `result-track:099a3c77ce20f05e0123194d8a2bb98c3c2296b923f2bf4edfd9a86962b38d3d` |
| 8 | `theorem` | [intersecting_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-insert--35146cad98c9f0062472f9fe.md) | 68 | `result-track:35146cad98c9f0062472f9fe5c46f45d718c7954b797849897e2eab73e3c050f` |
| 9 | `theorem` | [intersecting_iff_pairwise_not_disjoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-iff-pairwise-not-disjoint--03cea3df960a46bb904bb543.md) | 75 | `result-track:03cea3df960a46bb904bb54335d2e843fc23c3777b0354efe205557a52563569` |
| 10 | `theorem` | [Subsingleton.intersecting](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/subsingleton-intersecting--771988d023193c00ba0f8760.md) | 88 | `result-track:771988d023193c00ba0f8760643b19014113c3dd2d102d4fb8592d4d186c9b88` |
| 11 | `theorem` | [intersecting_iff_eq_empty_of_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-iff-eq-empty-of-subsingleton--c34c1ceb772164b4bc934818.md) | 91 | `result-track:c34c1ceb772164b4bc9348189759b240a80bcfa49f5e3e7ad5390494465cad01` |
| 12 | `theorem` | [Intersecting.isUpperSet](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-isupperset--ddf7752461c0fa4daf7c46da.md) | 102 | `result-track:ddf7752461c0fa4daf7c46da510c560422f8499e99a4b6f9b855b81427c77fb4` |
| 13 | `theorem` | [Intersecting.isUpperSet'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-isupperset--86a6c72b035421d0959e8bca.md) | 112 | `result-track:86a6c72b035421d0959e8bca3a7f01412e925a9d982510ca064cf43d63a24669` |
| 14 | `theorem` | [Intersecting.exists_mem_set](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-exists-mem-set--55ca4ce146a09c5821b70442.md) | 124 | `result-track:55ca4ce146a09c5821b7044245d9a71f688ac485292c422c4ba944f3e2b4b998` |
| 15 | `theorem` | [Intersecting.exists_mem_finset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-exists-mem-finset--bf75d71dabeaad2a045c7b9a.md) | 128 | `result-track:bf75d71dabeaad2a045c7b9a24f09326d8a639454f73e6359f39ba8ae71ffb86` |
| 16 | `theorem` | [Intersecting.compl_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-compl-notmem--f5400fcd3cbc48417aadb546.md) | 134 | `result-track:f5400fcd3cbc48417aadb54675a09540ead3b6b452a6d1f4108f27e6fa8e3744` |
| 17 | `theorem` | [Intersecting.notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-notmem--5f430fe6ed000a22c6d3dac9.md) | 140 | `result-track:5f430fe6ed000a22c6d3dac9d5d63399e67f6427e0f6bcf34337d1f7ee8e41e6` |
| 18 | `theorem` | [Intersecting.disjoint_map_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-disjoint-map-compl--32b376852ea21c90901114ce.md) | 145 | `result-track:32b376852ea21c90901114ce8de3c5d74847ee84a34d36fc19bc8c787f2cc2af` |
| 19 | `theorem` | [Intersecting.card_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-card-le--d801e7053fccc6cc8f06a4f8.md) | 152 | `result-track:d801e7053fccc6cc8f06a4f832039e1f0e043b253c65d4fce5ba84b3596796ef` |
| 20 | `theorem` | [Intersecting.is_max_iff_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-is-max-iff-card-eq--de9c9f72361ae9d7c096648b.md) | 161 | `result-track:de9c9f72361ae9d7c096648b091dfc5ff914565507cac2ef7b578094e2a1a1ed` |
| 21 | `theorem` | [Intersecting.exists_card_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Intersecting/Variantd1514787115f1143cd899d34331e3692bb2dc6cc1fa351901fc87bde11f468fc.lean/declarations/intersecting-exists-card-eq--4973e06bf08009c16a86b5ab.md) | 182 | `result-track:4973e06bf08009c16a86b5ab57561ccc0c2b1ddb39bbf76e9342bae2aeabbc20` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
