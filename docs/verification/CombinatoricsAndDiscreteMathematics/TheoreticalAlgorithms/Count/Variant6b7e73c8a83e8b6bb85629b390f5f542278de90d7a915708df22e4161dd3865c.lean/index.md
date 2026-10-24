# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "82b97f4460ebe7df803cb23b1d2179a1ffa5e5b8",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `82b97f4460ebe7df803cb23b1d2179a1ffa5e5b8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Bool` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Count` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.List.Lemmas` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Lemmas` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.MinMax` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 22; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/countp-set--8ccdf93ff5502572593d351a.md) | 38 | `result-track:8ccdf93ff5502572593d351a62fec0969d26b9f38c80155a29af11aa6c7a7b38` |
| 2 | `theorem` | [count_set](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/count-set--f16e07b40c38bbe9bf0aafb3.md) | 52 | `result-track:f16e07b40c38bbe9bf0aafb33571b7e8c62a6fef43706f622d537da09af0f61a` |
| 3 | `theorem` | [countP_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/countp-replace--6013e285c609eea6f6dccf00.md) | 57 | `result-track:6013e285c609eea6f6dccf0083bb01a945675faced787589607a160602eb543d` |
| 4 | `theorem` | [count_replace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/count-replace--c6be8cca8e348db2bdb05fdf.md) | 80 | `result-track:c6be8cca8e348db2bdb05fdfbfa4b7228ac078b0210e60524f5d0827c2418e78` |
| 5 | `theorem` | [count_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/count-insert--92a7a7a3dd5b7c6ef79c77b7.md) | 85 | `result-track:92a7a7a3dd5b7c6ef79c77b7192a0fda4758004e66bf2df1969f897c9f47fe24` |
| 6 | `theorem` | [Sublist.le_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/sublist-le-countp--27705705aa33a796ef6be0f8.md) | 108 | `result-track:27705705aa33a796ef6be0f8af7941e568bf14467b8ee3845dea24f4ca1e4254` |
| 7 | `theorem` | [IsPrefix.le_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/isprefix-le-countp--7bc2c6408993135271abd2d9.md) | 124 | `result-track:7bc2c6408993135271abd2d9211aef8ade576db446e69f7d22e724b6d3877df4` |
| 8 | `theorem` | [IsSuffix.le_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/issuffix-le-countp--0e24b031f40f269f989d8f7d.md) | 127 | `result-track:0e24b031f40f269f989d8f7dce83a254bbaa7a473b421ef21cac8b262d30c1cc` |
| 9 | `theorem` | [IsInfix.le_countP](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/isinfix-le-countp--6931a3fefc9ad332f34e3e6e.md) | 130 | `result-track:6931a3fefc9ad332f34e3e6ecd4411b648ce32b982b56a80d996ddd486f6396b` |
| 10 | `theorem` | [le_countP_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/le-countp-tail--3a33fccb7a7921953c4ca84b.md) | 137 | `result-track:3a33fccb7a7921953c4ca84bba9025b72461223445a2e5c6672e2261d1a75717` |
| 11 | `theorem` | [Sublist.le_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/sublist-le-count--448fd9e8a3a6548aed92953d.md) | 146 | `result-track:448fd9e8a3a6548aed92953da7a86481d2f651d1a7255c073dd14c9f92fca50c` |
| 12 | `theorem` | [IsPrefix.le_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/isprefix-le-count--2edd03f6cd06c0afe112a325.md) | 149 | `result-track:2edd03f6cd06c0afe112a325905690a49a7054a85e003f70b0808ba5f54252f6` |
| 13 | `theorem` | [IsSuffix.le_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/issuffix-le-count--3dae0e7db3ecd51952366b0c.md) | 152 | `result-track:3dae0e7db3ecd51952366b0cea5576d4a63b86a413c6c1b31229460f2d1088cb` |
| 14 | `theorem` | [IsInfix.le_count](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/isinfix-le-count--eca067190dda1c86efd90ae9.md) | 155 | `result-track:eca067190dda1c86efd90ae9298fde1402f7e6826e7c4fd4df70d7cb90489033` |
| 15 | `theorem` | [le_count_tail](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variant6b7e73c8a83e8b6bb85629b390f5f542278de90d7a915708df22e4161dd3865c.lean/declarations/le-count-tail--a5f26dc26467757e0e08eaf2.md) | 158 | `result-track:a5f26dc26467757e0e08eaf2e06176be73daf2203aa790905d6c35a090eef310` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
