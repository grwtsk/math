# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d05e674c2c0e9300df0915a6ffd29450ae656f6e",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d05e674c2c0e9300df0915a6ffd29450ae656f6e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Chain` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-not-add-count--f054eba23b2c95c30306fffb.md) | 24 | `result-track:f054eba23b2c95c30306fffb7d4d78b6b731177db6baef44d84fea4b37c59aa9` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-add-count-not--038bd7fd6895527a784ad87a.md) | 33 | `result-track:038bd7fd6895527a784ad87a322965a0dbee81393d9ad42a995553c732316312` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-false-add-count-true--e919123431d75305a127d8eb.md) | 38 | `result-track:e919123431d75305a127d8eb1813d3651e8f378f06d77d131eed6ad870360ed1` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-true-add-count-false--67e6cb12b401b7c7b062208b.md) | 43 | `result-track:67e6cb12b401b7c7b062208bb62a9c99b10c9d0406aade2acd97e51a9867d670` |
| 5 | `theorem` | [Chain.count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/chain-count-not--53bad575e926ff811eb1252f.md) | 47 | `result-track:53bad575e926ff811eb1252f78aaa2cbb7a6e946c964534fc82c9f6001731117` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-not-eq-count--5516acf6c743ca662b4287ef.md) | 60 | `result-track:5516acf6c743ca662b4287ef9da7f718c14994f5e3b86b1acd00fdea6b7c0d45` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-false-eq-count-true--d84d90b45988d80c4f03532c.md) | 74 | `result-track:d84d90b45988d80c4f03532cf2775406d53b114e3d1beea97f6f319c3e645556` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-not-le-count-add-one--6e8236c6fa870b83e25f1cc1.md) | 79 | `result-track:6e8236c6fa870b83e25f1cc13ec8a068ccb1d25f80871c5a4eadc02c7c3bcd9c` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-false-le-count-true-add-one--312112622da94c9ad8b10b1b.md) | 90 | `result-track:312112622da94c9ad8b10b1b2c254a50d2f24a24de9a5cb0989559732e0f977f` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/count-true-le-count-false-add-one--25a998ac9614bb13b1ab644f.md) | 95 | `result-track:25a998ac9614bb13b1ab644f32e68d095d965675e8a293ec8704e33a83004f73` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/two-mul-count-bool-of-even--67b22c916632c43fbabb9fd3.md) | 100 | `result-track:67b22c916632c43fbabb9fd30abeb31a75f13c216046393bde96fbf3dca64046` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/two-mul-count-bool-eq-ite--f85be352fced76bdd8aa28e9.md) | 105 | `result-track:f85be352fced76bdd8aa28e956947c17b2e5041319814b4a43e09a61697015cb` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/length-sub-one-le-two-mul-count-bool--311f9134ccd7eb0a62733cd1.md) | 120 | `result-track:311f9134ccd7eb0a62733cd13d279aa1b9ab2299e961d8b18d69f954dbc31421` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/length-div-two-le-count-bool--24b79f3144a268981dd0844d.md) | 126 | `result-track:24b79f3144a268981dd0844d2a0cbab8ab1f9afbe8efc6dc23a8c6311701067e` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant2f2040c6aa8e7f02273502102666dce77483d14b14ab2d944cd706971f036e1a.lean/declarations/two-mul-count-bool-le-length-add-one--7835f60ce77b7c20f28d0dd0.md) | 132 | `result-track:7835f60ce77b7c20f28d0dd02bd7d736993bdce1d8738b5514a30d2fd3f08ae4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
