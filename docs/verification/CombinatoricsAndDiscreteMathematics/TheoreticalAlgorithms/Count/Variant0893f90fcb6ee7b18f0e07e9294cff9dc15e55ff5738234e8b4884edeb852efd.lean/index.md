# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8dbc61badd1e456facc5ddd69132b4c1a7c57a24",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8dbc61badd1e456facc5ddd69132b4c1a7c57a24`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Ring.Nat` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.Chain` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [count_not_add_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-not-add-count--2171d9d401947cd6c7a74f98.md) | 30 | `result-track:2171d9d401947cd6c7a74f98f0fdfc640d415f19e738d4177a5e2ed778e42a91` |
| 2 | `theorem` | [count_add_count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-add-count-not--ef6055101e1c2c6e1c49d6e6.md) | 35 | `result-track:ef6055101e1c2c6e1c49d6e631bc0777fa9d89a4bba987c11c8b1b01631d5d9b` |
| 3 | `theorem` | [count_false_add_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-false-add-count-true--3484c0ebc64a404dc1f7e9f9.md) | 39 | `result-track:3484c0ebc64a404dc1f7e9f9fe43cb79b293495cfd15d64fe8a0087f141f8a78` |
| 4 | `theorem` | [count_true_add_count_false](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-true-add-count-false--b6f0f4df99cbc8d768b4c024.md) | 43 | `result-track:b6f0f4df99cbc8d768b4c024e2a06ecf3df060aa00c2b240047a535501227464` |
| 5 | `theorem` | [Chain.count_not](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/chain-count-not--f7c262c5e6ab1face931c8fc.md) | 46 | `result-track:f7c262c5e6ab1face931c8fca20fbcfd742822179ffd00b3e45e63d3179c8d19` |
| 6 | `theorem` | [count_not_eq_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-not-eq-count--fa46bf4ef844055a8c509049.md) | 58 | `result-track:fa46bf4ef844055a8c5090499bd9990d168f2228ea2eb1a8e84353daa83e74cb` |
| 7 | `theorem` | [count_false_eq_count_true](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-false-eq-count-true--9a00ec54237216ca0613a6de.md) | 67 | `result-track:9a00ec54237216ca0613a6de2c176da87f33db0d833451e61ab7e6a4b9b3464b` |
| 8 | `theorem` | [count_not_le_count_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-not-le-count-add-one--fcda9432bdb72837efee440d.md) | 71 | `result-track:fcda9432bdb72837efee440d7ed26c119ec61a7fa00bed46ed1d124989fe60e8` |
| 9 | `theorem` | [count_false_le_count_true_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-false-le-count-true-add-one--e791ec49b7277978c1cf1500.md) | 81 | `result-track:e791ec49b7277978c1cf15005c9bf0f3adce3b1954412186918dfa56213c6987` |
| 10 | `theorem` | [count_true_le_count_false_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/count-true-le-count-false-add-one--b4ae8b0c5c7483db45604eb9.md) | 85 | `result-track:b4ae8b0c5c7483db45604eb935ea778d18b9561fb5598559020f1af2153f31a3` |
| 11 | `theorem` | [two_mul_count_bool_of_even](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/two-mul-count-bool-of-even--f336f8e67c9fb5b8745de874.md) | 89 | `result-track:f336f8e67c9fb5b8745de874ccbfc1b90ff0089be17bc84144950f9953a64ba8` |
| 12 | `theorem` | [two_mul_count_bool_eq_ite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/two-mul-count-bool-eq-ite--76ad6d8903adaa35a02e4b41.md) | 93 | `result-track:76ad6d8903adaa35a02e4b41499b52d29f293cdb1298f17414f62716f40f0b81` |
| 13 | `theorem` | [length_sub_one_le_two_mul_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/length-sub-one-le-two-mul-count-bool--cb356d8557f9b10cdd3136d1.md) | 107 | `result-track:cb356d8557f9b10cdd3136d17d97dcd307048b052268085ea2967c6bb025863a` |
| 14 | `theorem` | [length_div_two_le_count_bool](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/length-div-two-le-count-bool--95437d5733f129ab3f05d1f4.md) | 112 | `result-track:95437d5733f129ab3f05d1f450893d64345b4f8a5e2c7a02d7925a49f8de647e` |
| 15 | `theorem` | [two_mul_count_bool_le_length_add_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant0893f90fcb6ee7b18f0e07e9294cff9dc15e55ff5738234e8b4884edeb852efd.lean/declarations/two-mul-count-bool-le-length-add-one--335839f1906cb8bfe7921afe.md) | 117 | `result-track:335839f1906cb8bfe7921afef4fc0314d4d8c45f5f6a2afdf7b8cb6ec5e0a6fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
