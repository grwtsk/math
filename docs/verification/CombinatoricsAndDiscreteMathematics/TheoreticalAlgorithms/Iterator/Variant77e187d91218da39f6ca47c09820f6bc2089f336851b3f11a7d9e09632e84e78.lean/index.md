# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Iterator.Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb5f534b6e1b288230fa8dce54089b9943155455",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb5f534b6e1b288230fa8dce54089b9943155455`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Combinators.FilterMap` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/iter--ca31da003d7a9f1fde912f01.md) | 38 | `declaration-track:ca31da003d7a9f1fde912f01d771e73ad4dc3274adc2360d9329a977a8242524` |
| 2 | `def` | [keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/keysiter--13b07d85ac403188fb2fc7a7.md) | 53 | `declaration-track:13b07d85ac403188fb2fc7a7ca40fc5698c3d4ddee67910260defd3e1c82756a` |
| 3 | `def` | [valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/valuesiter--9444969afed1df16fcd99e6b.md) | 68 | `declaration-track:9444969afed1df16fcd99e6b35e191c79c354f2ca65b80a5867c0445e2b030b7` |
| 4 | `def` | [iter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/iter--d6d2885a590e72808f047f8f.md) | 76 | `declaration-track:d6d2885a590e72808f047f8f0887aab8b61d9ad68892ec7abaf99dc9fffe127a` |
| 5 | `def` | [keysIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/keysiter--88064eb7193482433dda2cfb.md) | 80 | `declaration-track:88064eb7193482433dda2cfbdffa5b5ea7b1812bcf5941c2344a95bea820f42c` |
| 6 | `def` | [valuesIter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Iterator/Variant77e187d91218da39f6ca47c09820f6bc2089f336851b3f11a7d9e09632e84e78.lean/declarations/valuesiter--17927afd9452c581b13e61bb.md) | 84 | `declaration-track:17927afd9452c581b13e61bbf5c6043b1719912325fc8bdffade4f05920984c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
