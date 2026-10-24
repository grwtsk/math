# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DegreeSum.Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "79459bc2cb9efd52d7cf08f5d69a3edfcf7e7c1a",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `79459bc2cb9efd52d7cf08f5d69a3edfcf7e7c1a`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Dart` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.SimpleGraph.Finite` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dart_fst_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-fst-fiber--02b8f29cdc177b261203b974.md) | 60 | `result-track:02b8f29cdc177b261203b9749d87bc3f60dce8f009b5b5d87440c5475182040d` |
| 2 | `theorem` | [dart_fst_fiber_card_eq_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-fst-fiber-card-eq-degree--7832b7114e14f5b8d853c5df.md) | 70 | `result-track:7832b7114e14f5b8d853c5df2674ab80a8be4e7f35530a5e07c75ae8c64c7fbd` |
| 3 | `theorem` | [dart_card_eq_sum_degrees](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-card-eq-sum-degrees--736fd1e38aa5633da2c9b264.md) | 75 | `result-track:736fd1e38aa5633da2c9b264cae75eb1ec05dad9eda84d526a0c9f402b185972` |
| 4 | `theorem` | [Dart.edge_fiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-edge-fiber--56e074fe45d21415e2e8633f.md) | 81 | `result-track:56e074fe45d21415e2e8633f11a3a596cff63fa75e1cdd393ce508cbb99ad85c` |
| 5 | `theorem` | [dart_edge_fiber_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-edge-fiber-card--8a3b0e7f913468b3670d1679.md) | 85 | `result-track:8a3b0e7f913468b3670d16794f0d58ed8236df2df333356443e09f78d583f1a8` |
| 6 | `theorem` | [dart_card_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/dart-card-eq-twice-card-edges--00066d83997aaa6bc2452fca.md) | 94 | `result-track:00066d83997aaa6bc2452fca18696af9c6bdd4ac6f23597d24f6657b0950131c` |
| 7 | `theorem` | [sum_degrees_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/sum-degrees-eq-twice-card-edges--50c584f1b82c38333ec5ec55.md) | 106 | `result-track:50c584f1b82c38333ec5ec554dcd726b6f2da982548f004997f0c0c8ff8c738d` |
| 8 | `lemma` | [two_mul_card_edgeFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/two-mul-card-edgefinset--a13d8db56a47f9f7144aaae5.md) | 109 | `result-track:a13d8db56a47f9f7144aaae5c9dc478b6621a52c5c7b918d1538829679a393db` |
| 9 | `theorem` | [sum_degrees_support_eq_twice_card_edges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/sum-degrees-support-eq-twice-card-edges--61b22e3df116ecb100b43f82.md) | 117 | `result-track:61b22e3df116ecb100b43f82010bb16abc7e776f81a2b84028193facb82d1a45` |
| 10 | `theorem` | [even_card_odd_degree_vertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/even-card-odd-degree-vertices--1fdca0abfdc3321fa779580b.md) | 130 | `result-track:1fdca0abfdc3321fa779580bff03ff96885b7b911aaea046b9b671102ca857c8` |
| 11 | `theorem` | [odd_card_odd_degree_vertices_ne](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/odd-card-odd-degree-vertices-ne--4112c01ffe116b5486f03273.md) | 146 | `result-track:4112c01ffe116b5486f03273d1d467ffa2d731f57bd948d9116a3a4a096656a6` |
| 12 | `theorem` | [exists_ne_odd_degree_of_exists_odd_degree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/DegreeSum/Variant1d559b80718c9aa9aab9f3e326dd3e4fe962549cccc0cf0995f0f61df7498177.lean/declarations/exists-ne-odd-degree-of-exists-odd-degree--9eeb3a74eac46871926e2dd9.md) | 167 | `result-track:9eeb3a74eac46871926e2dd991b30109b9b62c37af588df07fee2a6958509a78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
