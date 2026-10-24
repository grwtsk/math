# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ULift.Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca0816a9482535a865553cae9c154a5c70527d73",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca0816a9482535a865553cae9c154a5c70527d73`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Array.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Combinators.Monadic.ULift` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Collect` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Iter.uLift_eq_toIter_uLift_toIterM](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-ulift-eq-toiter-ulift-toiterm--67317af043744b2373b41e47.md) | 25 | `result-track:67317af043744b2373b41e47ebad365388dd7bfc15539f6d5f0b6319e6284323` |
| 2 | `theorem` | [Iter.step_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-step-ulift--e5d96d9754dc3b735d87b971.md) | 29 | `result-track:e5d96d9754dc3b735d87b97104f1df304abf8eec779d2349fa6e959abd3ef6b7` |
| 3 | `theorem` | [Iter.toList_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-tolist-ulift--6e08a4d0a7ffcf3a42fe719e.md) | 42 | `result-track:6e08a4d0a7ffcf3a42fe719e455f268aa3695de7393cb8cc0bd8f647096e8881` |
| 4 | `theorem` | [Iter.toListRev_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-tolistrev-ulift--993884578ff0ff9f4a38771b.md) | 50 | `result-track:993884578ff0ff9f4a38771b6abf1cd0804f9e06fad34dca482d853f2c0309b2` |
| 5 | `theorem` | [Iter.toArray_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-toarray-ulift--6436deaeec605162b4c70e90.md) | 56 | `result-track:6436deaeec605162b4c70e901612edb453f4afc338e1bc829ae87e8fbce228bd` |
| 6 | `theorem` | [Iter.length_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-length-ulift--b423553d1b7ecc355019ecb0.md) | 63 | `result-track:b423553d1b7ecc355019ecb0630a2274d2dfccb4cd8a48e72b41fc07f37dd6b9` |
| 7 | `def` | [Iter.count_uLift](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ULift/Variantf9c7cf1dc0ede41866f1fd3be0adefab226c9b4d5b52708b22720d5a05982fc3.lean/declarations/iter-count-ulift--fc988fb656576c88091a3bb3.md) | 72 | `declaration-track:fc988fb656576c88091a3bb3574cb44b3e9ca272c1e71c5cc6695de93f64c46b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
