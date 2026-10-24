# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3279cfa58f65c4dbaf40bb3f5c2d783c8f2f1826",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3279cfa58f65c4dbaf40bb3f5c2d783c8f2f1826`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Parity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Chain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-not-add-count--2789b79dc996629e41842d49.md) | 32 | `result-track:2789b79dc996629e41842d492f5160dc017d583bf58fb6a5f7d9d33641bd063c` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-add-count-not--c1369ad81d362019bf22c0b8.md) | 41 | `result-track:c1369ad81d362019bf22c0b897b0713a721023c26ef814534a0b736beca24838` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-false-add-count-true--a88466ab057d51bfeac8d003.md) | 46 | `result-track:a88466ab057d51bfeac8d003d091b9fd104e8cbde9930d268872cb3ebc27f155` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-true-add-count-false--be73d320f95cebb1835e177c.md) | 51 | `result-track:be73d320f95cebb1835e177ca3710f624916026bc839740be60aa44fb25ecaad` |
| 5 | `theorem` | [Chain.count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/chain-count-not--1c73c4b234fe97c781d534c9.md) | 55 | `result-track:1c73c4b234fe97c781d534c98713641ce4888d79213fd95070fa557fa5488956` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-not-eq-count--5e215ec30983ed5f3ca44c03.md) | 68 | `result-track:5e215ec30983ed5f3ca44c03a53d68a99bd6660bac3a8de08eca2cb2bb764877` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-false-eq-count-true--4a498fe10a07a1f5f5347782.md) | 82 | `result-track:4a498fe10a07a1f5f53477828db198ad779c5c06586ea21e107984bbea6929dd` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-not-le-count-add-one--0d52d36ff4245d1e8c7a6dcf.md) | 87 | `result-track:0d52d36ff4245d1e8c7a6dcf5e429329f51e6d3bb360a5e0f28ff7cb193e62d9` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-false-le-count-true-add-one--48eca0145121b8bd99152781.md) | 98 | `result-track:48eca0145121b8bd99152781d806334a4e0609ee2d7d33ca02e7786b6ffbca57` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/count-true-le-count-false-add-one--0a7cd6a040462098a52e141d.md) | 103 | `result-track:0a7cd6a040462098a52e141ddca4b7ad3c908e8c21d46129a4f11a3acd2c005d` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/two-mul-count-bool-of-even--7ee720f334e5cabffb9a819c.md) | 108 | `result-track:7ee720f334e5cabffb9a819cb62b35111bea464fb936ec60494219535bac1040` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/two-mul-count-bool-eq-ite--9bb7d37e17d0d5a7c4f1ff66.md) | 113 | `result-track:9bb7d37e17d0d5a7c4f1ff665ded9d697ecee8ed3d7b9a6db73594a6281019a6` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/length-sub-one-le-two-mul-count-bool--bd7e2b7054a703cfb7df3cd3.md) | 128 | `result-track:bd7e2b7054a703cfb7df3cd33ff778f24e4b17de79e22c6b7407a386e2561ae5` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/length-div-two-le-count-bool--3c783baca12059605f1c54aa.md) | 134 | `result-track:3c783baca12059605f1c54aa63a92cd4c1b1d9a29bcb72320596fc2420c56ae9` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant4777a642d25ccbc7866f1fd875b4e15086f8e30132361233166c2184e0358a6b.lean/declarations/two-mul-count-bool-le-length-add-one--e7e9a777ff069bf84cab7672.md) | 140 | `result-track:e7e9a777ff069bf84cab76724800f5b2aeaeefe09040697627dc89b0848e042c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
