# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "22310a0ed205dad74517cf69c15d661d4ccef31b",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `22310a0ed205dad74517cf69c15d661d4ccef31b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.BigOperators.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/countp-join--98363ccad0e9f4bdac18b816.md) | 47 | `result-track:98363ccad0e9f4bdac18b8163878a5559395a10608419e655540f3ddd34a0868` |
| 2 | `theorem` | [length_filter_lt_length_iff_exists](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/length-filter-lt-length-iff-exists--889c9fbc3420b471f040da9a.md) | 58 | `result-track:889c9fbc3420b471f040da9a8880eb1458ab6dc07ea2ff82c3551381268d515c` |
| 3 | `theorem` | [count_cons'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/count-cons--135e4b9f5d8c703b394260b7.md) | 88 | `result-track:135e4b9f5d8c703b394260b7ac0f2194fa4eb8d91ab37e903aff21fadfb06942` |
| 4 | `theorem` | [count_join](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/count-join--9f626dee1dc4c4d181b9bb81.md) | 115 | `result-track:9f626dee1dc4c4d181b9bb81b1499b3124a1b7d3901e56d46f38477da315e8bc` |
| 5 | `theorem` | [count_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/count-bind--2843df85ca33a724dfd3f923.md) | 147 | `result-track:2843df85ca33a724dfd3f9233482db1a294553d286ee0e1d1df52e6472b0ca23` |
| 6 | `theorem` | [count_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/count-map-of-injective--0e85537a834eec4c4c80fb57.md) | 152 | `result-track:0e85537a834eec4c4c80fb57a257b1dc885a601c97fd8b1eeb8c468d1141ac6e` |
| 7 | `theorem` | [prod_map_eq_pow_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/prod-map-eq-pow-single--c7c1891ec1c659197cd367ff.md) | 166 | `result-track:c7c1891ec1c659197cd367ff55b5d7d3de69a2ed0df01b8adf5f2f94fa99e58b` |
| 8 | `theorem` | [prod_eq_pow_single](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantf9917f84878013ddcc6c069ad7094983f63b3e7cff1dbd4c11df117e15d4f001.lean/declarations/prod-eq-pow-single--22f396690e4549a83798e939.md) | 179 | `result-track:22f396690e4549a83798e9390b9636445189205a83818324e7aa378f469c61ef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
