# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1f01f07a33403fbed808c022b2533567331e0ab",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1f01f07a33403fbed808c022b2533567331e0ab`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/instlocallyfiniteorder--d543c12eb7d648442d492704.md) | 36 | `declaration-track:d543c12eb7d648442d49270497a82433df6c98d99cb847e1d3bfe0b0732fe20f` |
| 2 | `theorem` | [Icc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/icc-eq--f484434e39852eb37bb00b09.md) | 42 | `result-track:f484434e39852eb37bb00b091015e937ec6f47e7998a0b4bdb9f8ed8caf2bf2b` |
| 3 | `theorem` | [card_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-icc--41c79f0a4e97c16dd52be261.md) | 45 | `result-track:41c79f0a4e97c16dd52be2618246d49b6d84597a2c3650c10d782191582deb86` |
| 4 | `theorem` | [card_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-ico--3eb63ebd8798cb04ef79342d.md) | 48 | `result-track:3eb63ebd8798cb04ef79342dadea17e5a8d7fd48f830369d2b6a3f1962542c8c` |
| 5 | `theorem` | [card_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-ioc--535ee52f239d22a9833dbe15.md) | 51 | `result-track:535ee52f239d22a9833dbe15aa1f6089862393310086ba89756a3cce73943990` |
| 6 | `theorem` | [card_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-ioo--71e450bf01cb8286a971c574.md) | 54 | `result-track:71e450bf01cb8286a971c574103b175392cd64c43f830ca271cb3205578c18f1` |
| 7 | `instance` | [instLocallyFiniteOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/instlocallyfiniteorderbot--6342e57fb2481079cd49b879.md) | 62 | `declaration-track:6342e57fb2481079cd49b8797f9ac0f449ce3977161713a2c31763adc2cbd28f` |
| 8 | `lemma` | [card_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-iic--b27b9a86e39bacb2e0fdf517.md) | 66 | `result-track:b27b9a86e39bacb2e0fdf51799f8841c049f0092fba4a86fc284796608d884ff` |
| 9 | `lemma` | [card_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-iio--3117d9c86aeb513b71334cd5.md) | 67 | `result-track:3117d9c86aeb513b71334cd55ccdc1d2669bf7dece01e741310aef4296f54388` |
| 10 | `instance` | [instLocallyFiniteOrderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/instlocallyfiniteordertop--2d1ddbd170b24f3a59193408.md) | 74 | `declaration-track:2d1ddbd170b24f3a59193408a15102b8111b6dd56cbcdb9d091cd9c1dc2d4157` |
| 11 | `lemma` | [card_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-ici--2d649304d59278d41e0f8cec.md) | 78 | `result-track:2d649304d59278d41e0f8cece9b7d725f7a329dbc9be7b77cff0014299eba239` |
| 12 | `lemma` | [card_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-ioi--e990ac28cd5864f218046b77.md) | 79 | `result-track:e990ac28cd5864f218046b77e63c0a5df2fb40bbd252d59a81d9058fee4d10da` |
| 13 | `theorem` | [uIcc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/uicc-eq--35ba4ed72e780edd7b042802.md) | 87 | `result-track:35ba4ed72e780edd7b042802611beb3011cc21490325a36d1c5b71e184aa38e6` |
| 14 | `theorem` | [card_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variantc8db036b1bba5db0b1f5c66c4f94c87eb66119c75c6e8802b833188bec02c780.lean/declarations/card-uicc--538080c28dd029f7ec6e7059.md) | 89 | `result-track:538080c28dd029f7ec6e7059ac0c3da18fee420a59f2c44beac0c5a86cd1a2ae` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
