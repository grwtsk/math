# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InternalLemmas.Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fddab16387a41e48f232efffe4921e5991910f5e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fddab16387a41e48f232efffe4921e5991910f5e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Control` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Internal.iter_eq_toIteratorIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-iter-eq-toiteratoriter--d7dbfe87943f42914d46cba5.md) | 23 | `result-track:d7dbfe87943f42914d46cba5086f303f64008420a4c3f84c13a14787dc82f3c2` |
| 2 | `theorem` | [Internal.forIn_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-forin-iter--3e87377c5f4f9fc760f89f4a.md) | 28 | `result-track:3e87377c5f4f9fc760f89f4ad65e5d13371ece68f18bd45667ce413210b3de62` |
| 3 | `theorem` | [Internal.size_eq_length_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-size-eq-length-iter--bad93967ed01bab64fc32585.md) | 37 | `result-track:bad93967ed01bab64fc32585fe86e788f7b774eb7c99803bfa027ec71b36f82c` |
| 4 | `theorem` | [Internal.toArray_eq_toArray_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-toarray-eq-toarray-iter--7269cde83af409bcf337210e.md) | 44 | `result-track:7269cde83af409bcf337210e5c27297aae9b9235aefb00ee098254c77b6c5479` |
| 5 | `theorem` | [Internal.toList_eq_toList_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-tolist-eq-tolist-iter--114264d85340b10fd4ec69e6.md) | 50 | `result-track:114264d85340b10fd4ec69e6bb5fa1cd853a9a90eb64e5165d8811e1d7e65049` |
| 6 | `theorem` | [Internal.toListRev_eq_toListRev_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-tolistrev-eq-tolistrev-iter--dd3770783e50fbc61fb460bf.md) | 56 | `result-track:dd3770783e50fbc61fb460bf5534c671b528c19783b8ac132763a73fe3679e58` |
| 7 | `theorem` | [Internal.fold_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-fold-iter--d281c0519dfa034ef1fbb377.md) | 61 | `result-track:d281c0519dfa034ef1fbb3777406cef339aeae4796ab8ea05b23146849fd1224` |
| 8 | `theorem` | [Internal.foldM_iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/InternalLemmas/Variant680c306f305600e6e44b4c088738cf1fd2701c838f6bbaf66de3e0200665a21d.lean/declarations/internal-foldm-iter--4e3c6f03e91e837e50165299.md) | 66 | `result-track:4e3c6f03e91e837e501652992ee6bbbcd927b42afe09dbd7e28b7cba5844510a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
