# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1588dec020e06745574c5e41dc94ab1151b7e57c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1588dec020e06745574c5e41dc94ab1151b7e57c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Int` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.Int.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Vector.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/sum-replicate-int--150e612a56fda6d3d7d4379a.md) | 21 | `result-track:150e612a56fda6d3d7d4379aeded5c6faa9ba5182292787a7538aeb4ccbe6e65` |
| 2 | `theorem` | [sum_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/sum-append-int--c0c5fc2e25017cc02729f20e.md) | 24 | `result-track:c0c5fc2e25017cc02729f20e5680b8726daede108d97e3cb28009cc43c836457` |
| 3 | `theorem` | [sum_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/sum-reverse-int--90281e37af225fb7719846e2.md) | 28 | `result-track:90281e37af225fb7719846e299840159fce8ba74e456f9633ade22a774f271eb` |
| 4 | `theorem` | [sum_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/sum-eq-foldl-int--a60a172bff230322746d5b13.md) | 31 | `result-track:a60a172bff230322746d5b1373431d2a6d4acc86331cf90b9aeff0ae38d84879` |
| 5 | `theorem` | [prod_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/prod-replicate-int--c2dac0555df62f4b73512ed0.md) | 34 | `result-track:c2dac0555df62f4b73512ed0a44d93393036e84becb328cac6abcc0a6c84979d` |
| 6 | `theorem` | [prod_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/prod-append-int--8eda2fd0661ec97beb5fbfde.md) | 37 | `result-track:8eda2fd0661ec97beb5fbfde092432761f30619d419eb18ff5d5a119d9bc5775` |
| 7 | `theorem` | [prod_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/prod-reverse-int--81535b540f15c59960959afb.md) | 41 | `result-track:81535b540f15c59960959afbf761c79c5bdf2a56fe56e2151bc7f1f8c3a3f892` |
| 8 | `theorem` | [prod_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variant2185fc4ee97e2943b03233de9735a8b46a327d145aa43604dcce7baff0605db4.lean/declarations/prod-eq-foldl-int--e87101d40b08edb39e4924de.md) | 44 | `result-track:e87101d40b08edb39e4924de65749b39c8ad869e7da10657cf4cbef24c9f1902` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
