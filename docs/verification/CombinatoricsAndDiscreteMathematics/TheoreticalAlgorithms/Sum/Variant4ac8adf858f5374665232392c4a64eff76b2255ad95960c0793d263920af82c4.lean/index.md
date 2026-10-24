# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Sum.Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "809791db291f3c61df4e54e0dc272f981fa57945",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `809791db291f3c61df4e54e0dc272f981fa57945`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.DivMod.Lemmas` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.MinMax` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-replicate-int--5e18b6d7dd03b280371d91ca.md) | 31 | `result-track:5e18b6d7dd03b280371d91ca6323d83b71f25465db670d483ba3333afe1ee6cb` |
| 2 | `theorem` | [sum_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-append-int--6f3d7d4bb7326fd75ce692be.md) | 34 | `result-track:6f3d7d4bb7326fd75ce692bec016142825db87f5194f821f4bf9369f0e428ccf` |
| 3 | `theorem` | [sum_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-reverse-int--d08509c1c555a6bc92e56dae.md) | 37 | `result-track:d08509c1c555a6bc92e56daeac15fb47f303823e71ce422e06032464f74bd9e8` |
| 4 | `theorem` | [min_mul_length_le_sum_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/min-mul-length-le-sum-int--489aee8379b4ec53e3cd8987.md) | 40 | `result-track:489aee8379b4ec53e3cd8987308c14631d0da3d09cc2240bf09546334dcfdb15` |
| 5 | `theorem` | [mul_length_le_sum_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/mul-length-le-sum-of-min-eq-some-int--a3c1215ae2fc22dcc5683047.md) | 57 | `result-track:a3c1215ae2fc22dcc5683047931899d159da828c0659df65f39a88b84a06597a` |
| 6 | `theorem` | [min_le_sum_div_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/min-le-sum-div-length-int--78dd435eb44d60713c1b9e8d.md) | 64 | `result-track:78dd435eb44d60713c1b9e8d15acfee597fa2f23e53dc5826df19726fce18900` |
| 7 | `theorem` | [le_sum_div_length_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/le-sum-div-length-of-min-eq-some-int--1f9da1887fdfdc0b896b26ea.md) | 70 | `result-track:1f9da1887fdfdc0b896b26eabd14cfb120c1d76e5cf81d38710c2aaa500dd21b` |
| 8 | `theorem` | [sum_le_max_mul_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-le-max-mul-length-int--e8562409fd55b0154b745391.md) | 77 | `result-track:e8562409fd55b0154b74539153dd7b0e00d8fed35498c29c4bae2a6ea84cf2e5` |
| 9 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-le-max-mul-length-of-max-eq-some-int--6bbb9189a73967f2f9570073.md) | 94 | `result-track:6bbb9189a73967f2f9570073ded1fab6bd6f2dd49a1ad51652a891342d434fd5` |
| 10 | `theorem` | [sum_div_length_le_max_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-div-length-le-max-int--c739250821128ef804796261.md) | 101 | `result-track:c739250821128ef804796261062d01342dc2a7d721c2e76152acabfe1644494e` |
| 11 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Sum/Variant4ac8adf858f5374665232392c4a64eff76b2255ad95960c0793d263920af82c4.lean/declarations/sum-div-length-le-max-of-max-eq-some-int--12878551513df5b053e8fbab.md) | 110 | `result-track:12878551513df5b053e8fbabc1d645f83d0e2c24b5e28b9ad75a458412d9aeb0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
