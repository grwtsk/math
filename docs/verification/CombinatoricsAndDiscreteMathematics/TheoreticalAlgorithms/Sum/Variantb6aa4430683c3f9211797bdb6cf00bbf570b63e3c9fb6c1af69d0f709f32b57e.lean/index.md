# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sum.Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "de7e70f6289f2e5cd1179b9435f5f6358a8c7c23",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `de7e70f6289f2e5cd1179b9435f5f6358a8c7c23`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.DivMod.Lemmas` — import line 9; external provider; requires a separately pinned dependency.
- `Init.Data.List.MinMax` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-replicate-int--9fe8c140b79146ea98d3aa14.md) | 23 | `result-track:9fe8c140b79146ea98d3aa14b754526ed0b7b68abf28623b54dec03f34a36537` |
| 2 | `theorem` | [sum_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-append-int--bc2f97a727b16c5cc55d1d22.md) | 26 | `result-track:bc2f97a727b16c5cc55d1d22e60344a50246c81d5064583d15fbc1b5be2e2803` |
| 3 | `theorem` | [sum_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-reverse-int--385bb4b217898fb603d6698f.md) | 29 | `result-track:385bb4b217898fb603d6698f92fd62acb9b6bda3ebdda9296b5e9b031edb7977` |
| 4 | `theorem` | [min_mul_length_le_sum_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/min-mul-length-le-sum-int--ff2b773485215f561c8ce200.md) | 32 | `result-track:ff2b773485215f561c8ce200313b97089a201fe44e37907237d257ac85b73b73` |
| 5 | `theorem` | [mul_length_le_sum_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/mul-length-le-sum-of-min-eq-some-int--f154c13ff2df79bca4027c9f.md) | 49 | `result-track:f154c13ff2df79bca4027c9f14c29326ae6185af539cceee31289af06e97e6d9` |
| 6 | `theorem` | [min_le_sum_div_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/min-le-sum-div-length-int--7e64db8fdd757bce4cfd28f7.md) | 56 | `result-track:7e64db8fdd757bce4cfd28f76bbc7371cce67e1bccd537dee6c9991ff69799fb` |
| 7 | `theorem` | [le_sum_div_length_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/le-sum-div-length-of-min-eq-some-int--e50e9a6da9b851b7dbedf560.md) | 62 | `result-track:e50e9a6da9b851b7dbedf560b5bef423e53f734583a9556302365598cb4d084c` |
| 8 | `theorem` | [sum_le_max_mul_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-le-max-mul-length-int--1cac5722454303887c91994e.md) | 69 | `result-track:1cac5722454303887c91994ed88f69343eafec810d1adcca25c2687dc464916c` |
| 9 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-le-max-mul-length-of-max-eq-some-int--f5ca8109725034164ede278c.md) | 86 | `result-track:f5ca8109725034164ede278c6371a5efe5aa1e7de0e99968a518971af0b44f8e` |
| 10 | `theorem` | [sum_div_length_le_max_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-div-length-le-max-int--a8ba4a643752b6b10aee286c.md) | 93 | `result-track:a8ba4a643752b6b10aee286c83199beb3a27ca74d4c9ca00b2496a2774563a96` |
| 11 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variantb6aa4430683c3f9211797bdb6cf00bbf570b63e3c9fb6c1af69d0f709f32b57e.lean/declarations/sum-div-length-le-max-of-max-eq-some-int--3919da4f3e53d898f223ab75.md) | 102 | `result-track:3919da4f3e53d898f223ab7512d0c0e87c3aff46f491aa658c40dbc4d2935230` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
