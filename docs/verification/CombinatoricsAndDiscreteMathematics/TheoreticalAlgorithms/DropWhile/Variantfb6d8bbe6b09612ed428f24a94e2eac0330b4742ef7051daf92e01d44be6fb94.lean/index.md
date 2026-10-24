# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DropWhile.Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "35a8cf0582c98860e489bc2b3b0be9b5eb0d0f3d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `35a8cf0582c98860e489bc2b3b0be9b5eb0d0f3d`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Bool` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.List.TakeDrop` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.dropWhile_eq_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-dropwhile-eq-intermediatedropwhile--c2df17b868c2f7c093014be2.md) | 29 | `result-track:c2df17b868c2f7c093014be22ff1daad5f8e3729288a6d7dd773801c20ae6fad` |
| 2 | `theorem` | [Iter.Intermediate.dropWhile_eq_dropWhile_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-intermediate-dropwhile-eq-dropwhile-toiterm--ce2a6591a83043c08b74484a.md) | 34 | `result-track:ce2a6591a83043c08b74484a75d11ff3b152659ae60be35a2c5f99f6a2553e80` |
| 3 | `theorem` | [Iter.dropWhile_eq_dropWhile_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-dropwhile-eq-dropwhile-toiterm--864ddecf2b773209ab587a76.md) | 40 | `result-track:864ddecf2b773209ab587a76fc425d7cd42b4eb2b13620094558080d1e1d63c3` |
| 4 | `theorem` | [Iter.step_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-step-intermediatedropwhile--4d72bc65e764d24905a77ab1.md) | 45 | `result-track:4d72bc65e764d24905a77ab1d155c1fd4bf46d4d2bfd92397f31d25026f67d43` |
| 5 | `theorem` | [Iter.val_step_intermediateDropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-val-step-intermediatedropwhile--2e528639072fcbb7a44b48f8.md) | 77 | `result-track:2e528639072fcbb7a44b48f81a07bd5fab4420595a2599e1962b8273697f6503` |
| 6 | `theorem` | [Iter.step_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-step-dropwhile--b580631936638215e1fb5a96.md) | 98 | `result-track:b580631936638215e1fb5a96294419b15b0077db8f63d94a15736e24e0c4a77a` |
| 7 | `theorem` | [Iter.val_step_dropWhile](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-val-step-dropwhile--50d194b1b061c7ae92383480.md) | 113 | `result-track:50d194b1b061c7ae92383480ebe29b5948509b55bf6bb1ad3f2b725372b63f5d` |
| 8 | `theorem` | [Iter.toList_intermediateDropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-tolist-intermediatedropwhile-of-finite--854a324fc4bae07d9969cfad.md) | 131 | `result-track:854a324fc4bae07d9969cfadeca1dd4e3e5705cdc651d5a1cb02ecbfbd849dfa` |
| 9 | `theorem` | [Iter.toList_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-tolist-dropwhile-of-finite--22547db0a62e082e62e547e5.md) | 148 | `result-track:22547db0a62e082e62e547e57d8ab36dff21fbb65fd38fc80c8baf54f85967da` |
| 10 | `theorem` | [Iter.toArray_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-toarray-dropwhile-of-finite--5414f240d83304c814f1cc26.md) | 155 | `result-track:5414f240d83304c814f1cc2611ca233052dbd1d2bbf3d32d98cb909be49c045d` |
| 11 | `theorem` | [Iter.toListRev_dropWhile_of_finite](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DropWhile/Variantfb6d8bbe6b09612ed428f24a94e2eac0330b4742ef7051daf92e01d44be6fb94.lean/declarations/iter-tolistrev-dropwhile-of-finite--a74fd9e5c5219dca4a94d7b7.md) | 162 | `result-track:a74fd9e5c5219dca4a94d7b7556acfddaf93dae749c007a4e08eca62118316ed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
