# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Int.Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "059ad596e6007c920c2fb07fe0040311500adcbb",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `059ad596e6007c920c2fb07fe0040311500adcbb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.Lemmas` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-replicate-int--19f8f1da88729609309a2b86.md) | 29 | `result-track:19f8f1da88729609309a2b86fc26b6e5e66e1868e70e9e06800584b744c62780` |
| 2 | `theorem` | [sum_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-append-int--0d216f539b24dfe378763c6e.md) | 33 | `result-track:0d216f539b24dfe378763c6eff89970f9f7f5e1f0302456711012c4e7c771b44` |
| 3 | `theorem` | [sum_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-reverse-int--9f6798eef08c921d9b1850b1.md) | 36 | `result-track:9f6798eef08c921d9b1850b1c23b2ad5eaa9cf2182b0d4ec1095364cb6251f2c` |
| 4 | `theorem` | [sum_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-eq-foldl-int--93de1a0a7469d7d2f9403efd.md) | 39 | `result-track:93de1a0a7469d7d2f9403efdb1a567ded716ff2186f820a94bb8077af9cba175` |
| 5 | `theorem` | [min_mul_length_le_sum_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/min-mul-length-le-sum-int--d752812c60253ccb62b0f3a2.md) | 42 | `result-track:d752812c60253ccb62b0f3a288dbb3dc9e806ebe346e8a5c2d6f70c583feec79` |
| 6 | `theorem` | [mul_length_le_sum_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/mul-length-le-sum-of-min-eq-some-int--ca9ec82450c2d7766e5ba8b7.md) | 47 | `result-track:ca9ec82450c2d7766e5ba8b7b6a6f76fc41db5c86d12bc81eacfa2c47808191e` |
| 7 | `theorem` | [min_le_sum_div_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/min-le-sum-div-length-int--d6ceaec00dcb5cf7301e3c03.md) | 53 | `result-track:d6ceaec00dcb5cf7301e3c03ba5fff620c061aed22a1a1e57b3e1b9fc36d1ae9` |
| 8 | `theorem` | [le_sum_div_length_of_min?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/le-sum-div-length-of-min-eq-some-int--89a87430c41454cfdb43641a.md) | 58 | `result-track:89a87430c41454cfdb43641ad1fe053ae07dfa5e183f16123de43f5afa1404c7` |
| 9 | `theorem` | [sum_le_max_mul_length_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-le-max-mul-length-int--f78fe4d64c460c6c97d793ed.md) | 64 | `result-track:f78fe4d64c460c6c97d793edf64a2483aae3083594d5186062337ca6f340b39e` |
| 10 | `theorem` | [sum_le_max_mul_length_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-le-max-mul-length-of-max-eq-some-int--51e56b00c1fd924fa1680269.md) | 69 | `result-track:51e56b00c1fd924fa1680269df0b284092715a475228b97e5d2b7c3af883fff2` |
| 11 | `theorem` | [sum_div_length_le_max_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-div-length-le-max-int--934d9ca9bb25262465cca9bf.md) | 75 | `result-track:934d9ca9bb25262465cca9bfe1ade2dfe56d14acd4f6337b95c483ba7c988f8b` |
| 12 | `theorem` | [sum_div_length_le_max_of_max?_eq_some_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/sum-div-length-le-max-of-max-eq-some-int--aba3af53c93999f403535283.md) | 80 | `result-track:aba3af53c93999f403535283096566ff6651f3d3cce95aebce685a89c1616cef` |
| 13 | `theorem` | [prod_replicate_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/prod-replicate-int--c861b1da5ee6fafae8ca20be.md) | 86 | `result-track:c861b1da5ee6fafae8ca20beaca089081aca02ab4a32970b4c2e65986da04849` |
| 14 | `theorem` | [prod_append_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/prod-append-int--74b4fabebd6b27214c3e9288.md) | 90 | `result-track:74b4fabebd6b27214c3e92882268471a3bddef82aff599aeb1d216780a23d9c8` |
| 15 | `theorem` | [prod_reverse_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/prod-reverse-int--4f36ef79c9bb9194fd67df36.md) | 93 | `result-track:4f36ef79c9bb9194fd67df367edf9ec1481d06661e24e26a3e7eed3454f1594e` |
| 16 | `theorem` | [prod_eq_foldl_int](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Int/Variantc41f739e770b82634b889a950537fbf3b0b5f17a2affbb8edfec10a86a520491.lean/declarations/prod-eq-foldl-int--56b8842a6ce78deaed38438a.md) | 96 | `result-track:56b8842a6ce78deaed38438a9b421085a8ee3ee31130f42f909908b992c0e94b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
