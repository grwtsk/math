# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Lemmas.Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "820d6854e5c390e1492e231fec800ab9be2a19c1",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `820d6854e5c390e1492e231fec800ab9be2a19c1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Slice.InternalLemmas` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [forIn_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/forin-tolist--b6f2ac0fc66516e1daa60887.md) | 33 | `result-track:b6f2ac0fc66516e1daa608872cdf0d171a223723e2c19226620aaf89f56a0e43` |
| 2 | `theorem` | [forIn_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/forin-toarray--779c47247a75c1c894689d40.md) | 45 | `result-track:779c47247a75c1c894689d40eecb51127caa377af559931a034ff5e09acf3b43` |
| 3 | `theorem` | [Internal.foldlM_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/internal-foldlm-iter--5f642a56907c385c1e7fd085.md) | 56 | `result-track:5f642a56907c385c1e7fd08522c1dd53eaf958310c65eefa6cf5fa4adab17b6a` |
| 4 | `theorem` | [foldlM_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/foldlm-tolist--a6cc9de45a460833ad364402.md) | 62 | `result-track:a6cc9de45a460833ad3644024d401bcf01790d4627737740699def6e0f739b89` |
| 5 | `theorem` | [foldlM_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/foldlm-toarray--1946c0c1342aff480486b715.md) | 68 | `result-track:1946c0c1342aff480486b7151f69c4b6a183a8d77f4d4b4f493969bc507ee0d5` |
| 6 | `theorem` | [Internal.foldl_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/internal-foldl-iter--db2749f9b44c9d94eb71087e.md) | 74 | `result-track:db2749f9b44c9d94eb71087e48ede45161cdb1207a3e458acffbb13378e4b26f` |
| 7 | `theorem` | [foldl_toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/foldl-tolist--4aa96626e74ea65e0a8b3db7.md) | 80 | `result-track:4aa96626e74ea65e0a8b3db70496c764b59ae4b5708a87066357f8731d17e773` |
| 8 | `theorem` | [foldl_toArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/foldl-toarray--2e823559a6e6703054832805.md) | 86 | `result-track:2e823559a6e670305483280543993de0db36d05b84749ad564441f78f27906c4` |
| 9 | `theorem` | [size_toArray_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/size-toarray-eq-size--f854c604a9ea0e60e8a948c7.md) | 93 | `result-track:f854c604a9ea0e60e8a948c7508141a9653096701b662fb9181ad29bea640ebb` |
| 10 | `theorem` | [length_toList_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/length-tolist-eq-size--0aab66a11e3a8ca15790cb81.md) | 102 | `result-track:0aab66a11e3a8ca15790cb81d11b69f00f596ee5a07787cf8758bf3f6d05cf7a` |
| 11 | `theorem` | [length_toListRev_eq_size](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Variantdd14b171ddac5f3c41b1b838a9aeca67ffceb9015d74e43e35c906b2f985e077.lean/declarations/length-tolistrev-eq-size--8fb52efa65322b843bac28a2.md) | 111 | `result-track:8fb52efa65322b843bac28a255d5bc554134f7684644d4cb01805edf34c22ca0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
