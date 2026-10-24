# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Interval.Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4db37234636e66384f33e27a4f264a345703775c",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4db37234636e66384f33e27a4f264a345703775c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.BigOperators` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLocallyFiniteOrder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/instlocallyfiniteorder--a5fc1764088ff7ccb0e1e75c.md) | 28 | `declaration-track:a5fc1764088ff7ccb0e1e75c5aa19c7fbd56ad7acd072eacd4e8683665da7a25` |
| 2 | `theorem` | [Icc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/icc-eq--389ff0f272ae96d35a11e226.md) | 34 | `result-track:389ff0f272ae96d35a11e2265bf7072485e644266debb652373c641a84e4bd19` |
| 3 | `theorem` | [card_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-icc--8d16e8bb05cfce7d79f24760.md) | 37 | `result-track:8d16e8bb05cfce7d79f24760260f58f175f3ca4e02857be6b6c6ff0e43e1f0dd` |
| 4 | `theorem` | [card_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-ico--9dbdd2f1d0ec1bf3989bc31c.md) | 40 | `result-track:9dbdd2f1d0ec1bf3989bc31c19bfa2fcfc6fd16f2924ddc601b66a0dfa88029c` |
| 5 | `theorem` | [card_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-ioc--cdac39b3d97b2cdba3f18592.md) | 43 | `result-track:cdac39b3d97b2cdba3f18592250b1cf27334a1acc617b972a517d38ab66f34b8` |
| 6 | `theorem` | [card_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-ioo--59bfdaeccdfcd069a326daf0.md) | 46 | `result-track:59bfdaeccdfcd069a326daf05f1d2d26879e2478842e992365e8d63cdc1bdcb5` |
| 7 | `instance` | [instLocallyFiniteOrderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/instlocallyfiniteorderbot--eaba1ce611a7c4ff9a9bf5eb.md) | 54 | `declaration-track:eaba1ce611a7c4ff9a9bf5eb9f5ce9bf73d08e82aa692034e226f18f0e3671e7` |
| 8 | `lemma` | [card_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-iic--83ab8185d9a41ed479b18f71.md) | 58 | `result-track:83ab8185d9a41ed479b18f71ba43e26e0b61560fbd4f83d230a9ba3a63d7ccf2` |
| 9 | `lemma` | [card_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-iio--27203e9137f1742fd7046495.md) | 59 | `result-track:27203e9137f1742fd7046495a55549774ca5d654fdb7e5d77cb9a8b140c26a3d` |
| 10 | `instance` | [instLocallyFiniteOrderTop](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/instlocallyfiniteordertop--84fb6882892c99050d8324a8.md) | 66 | `declaration-track:84fb6882892c99050d8324a87d001b5be85668f6f8986a784eb97c1157b52d53` |
| 11 | `lemma` | [card_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-ici--62b1dfaa866d5f976a2eebc9.md) | 70 | `result-track:62b1dfaa866d5f976a2eebc90c8501a50b98527fd9cedf0e19803e5561ffd0b3` |
| 12 | `lemma` | [card_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-ioi--76d2a50f53050bbc763c56fe.md) | 71 | `result-track:76d2a50f53050bbc763c56feec6d2cf2e1bba46144ef4531fe5ef07e471ac106` |
| 13 | `theorem` | [uIcc_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/uicc-eq--45a50e0f46ddc7778a154b03.md) | 79 | `result-track:45a50e0f46ddc7778a154b0354db00e294163d16eff6d5d2c10e00c66769dce9` |
| 14 | `theorem` | [card_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant19b41d573fee8bdd6ddef10f4a4c78c83dd103a83ad64be25fead8a0d0d4e290.lean/declarations/card-uicc--1a0c5c25add92aa8f494cdb0.md) | 81 | `result-track:1a0c5c25add92aa8f494cdb0de19d0e05669c9766e144e06674059ff51b243f8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
