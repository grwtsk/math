# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Hydra.Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ad6a3dd7d5381455f9ea9a4bd0eba61cf9541563",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ad6a3dd7d5381455f9ea9a4bd0eba61cf9541563`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Lex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finsupp.Multiset` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.GameAdd` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [CutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand--ff547aecff66efd0bbabb002.md) | 54 | `declaration-track:ff547aecff66efd0bbabb0023cb57618b3e8bb6d3fe4c32124a90cb55803a625` |
| 2 | `theorem` | [cutExpand_le_invImage_lex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-le-invimage-lex--99cc2442159a0403446389a8.md) | 59 | `result-track:99cc2442159a0403446389a81678b8def3825486f3e4e5d1019111632ef49cde` |
| 3 | `theorem` | [cutExpand_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-singleton--4b808573249287223a63a5b7.md) | 73 | `result-track:4b808573249287223a63a5b73a043f517528675c73fb606e0f98a9d4b263344b` |
| 4 | `theorem` | [cutExpand_singleton_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-singleton-singleton--68f60f13f8e70cff3545878a.md) | 76 | `result-track:68f60f13f8e70cff3545878a1e9e294a59c9646621a929c51ff0f4a8ce8bac3a` |
| 5 | `theorem` | [cutExpand_add_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-add-left--0d50aac7b7ac6ca5ae86e808.md) | 79 | `result-track:0d50aac7b7ac6ca5ae86e808b0a93ce8e62d187f34fcc40b1dcd048954e5eb19` |
| 6 | `lemma` | [cutExpand_add_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-add-right--ad9a9f029f8e7605c7e99d75.md) | 82 | `result-track:ad9a9f029f8e7605c7e99d75b15fe00b156fe3d77d47123b2aa7dd4979a54aa9` |
| 7 | `theorem` | [cutExpand_add_single](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-add-single--0d1b50457e7c181e1ef67062.md) | 85 | `result-track:0d1b50457e7c181e1ef67062b3d3b57f9517a5fe87fc3d29614faa55f0fc512c` |
| 8 | `theorem` | [cutExpand_single_add](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-single-add--b03829f11f33863158d06c23.md) | 89 | `result-track:b03829f11f33863158d06c23a06dced98024d1918dc945961d11bc3c7095352b` |
| 9 | `theorem` | [cutExpand_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-iff--05d96cc99bc395b52e18cc20.md) | 93 | `result-track:05d96cc99bc395b52e18cc20302dc12c6bb1d5ad69acf3894fdded4703ea0a4d` |
| 10 | `theorem` | [not_cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/not-cutexpand-zero--4680f17be131d6d5ed3976fc.md) | 104 | `result-track:4680f17be131d6d5ed3976fc4259062b025a4d53cf62ce51be7a62c5f747d62d` |
| 11 | `lemma` | [cutExpand_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-zero--24c9e6fdf2bf1a4f8050dd1b.md) | 109 | `result-track:24c9e6fdf2bf1a4f8050dd1b6bce95458d5f75f790d7825289f202714cec58d2` |
| 12 | `theorem` | [cutExpand_fibration](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-fibration--33bda063eabf0765a43584a1.md) | 113 | `result-track:33bda063eabf0765a43584a1fa9225a6a34208c19027872332ed624d4de58c12` |
| 13 | `lemma` | [cutExpand_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-closed--033ad6f10e35b07c6960b214.md) | 128 | `result-track:033ad6f10e35b07c6960b2143a3fa788d0a9928a6bb8ca403784ddd4ec1f5a06` |
| 14 | `lemma` | [cutExpand_double](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-double--74a0da59edd7d08a097e66c9.md) | 137 | `result-track:74a0da59edd7d08a097e66c9285e18545526dcbe346e03bc4577bfebf12dfb6b` |
| 15 | `lemma` | [cutExpand_pair_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-pair-left--539bf85003b0454ead617530.md) | 142 | `result-track:539bf85003b0454ead617530369b93af86271837d38f6dfc3fdf1e7add474c98` |
| 16 | `lemma` | [cutExpand_pair_right](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-pair-right--5486cffa48de0243b746c427.md) | 145 | `result-track:5486cffa48de0243b746c4273bc437910ebab0b0199ea252cf450694a805143e` |
| 17 | `lemma` | [cutExpand_double_left](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/cutexpand-double-left--b4a891836e016bd6c8b30701.md) | 148 | `result-track:b4a891836e016bd6c8b30701411bfa1655f493afe3fd59f098aa2947971fe136` |
| 18 | `theorem` | [acc_of_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/acc-of-singleton--ae3ba869fc942720aeeda0fd.md) | 154 | `result-track:ae3ba869fc942720aeeda0fd8906843ee8d263eae911c40beb1b0c2642f501b3` |
| 19 | `theorem` | [_root_.Acc.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/root-acc-cutexpand--7921f7f95a04077d8295e3ac.md) | 165 | `result-track:7921f7f95a04077d8295e3ac2795469193d48cbafc5c0e2412db6ef8d6f52c70` |
| 20 | `theorem` | [_root_.WellFounded.cutExpand](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/root-wellfounded-cutexpand--f93ca3ff060440eea2d7facb.md) | 176 | `result-track:f93ca3ff060440eea2d7facb3273318e3e018c8d9339a00766a4ec786ba75ee6` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Hydra/Variantd33b96874f3125201b3b555b453975b5eae65971f1d7bbb88e7c6446eda096dd.lean/declarations/instance--2bf11a0637be869ef729ba8b.md) | 179 | `declaration-track:2bf11a0637be869ef729ba8b809f40d92f4db38906be3899be79c8ab4dd59a67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
