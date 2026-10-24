# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Count.Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d302c24c564dbb596930e88167025dee698f981",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d302c24c564dbb596930e88167025dee698f981`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [countP_lt_length_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/countp-lt-length-iff--e0389a5e133da7fbcc5c4c49.md) | 31 | `result-track:e0389a5e133da7fbcc5c4c493a87cd4779b4318177409413bf54141ff4137f58` |
| 2 | `theorem` | [count_lt_length_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/count-lt-length-iff--d7272f272682b32ab2945ab8.md) | 38 | `result-track:d7272f272682b32ab2945ab8115f2adc6e9d314286e95af9ac7ffc2d713af285` |
| 3 | `lemma` | [countP_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/countp-erase--ff1b70653ca910bf22c5fbd0.md) | 40 | `result-track:ff1b70653ca910bf22c5fbd09a64efb230eea20293fa885659ce54eca98b3236` |
| 4 | `lemma` | [count_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/count-diff--758b6961b9e2b0ab8e8ddd28.md) | 44 | `result-track:758b6961b9e2b0ab8e8ddd287faa23cfb129c3cd15a8ec492f006f921d8764ca` |
| 5 | `lemma` | [countP_diff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/countp-diff--31e7c665a8b4b96b4119724e.md) | 51 | `result-track:31e7c665a8b4b96b4119724e025c267dab44d35465b9c061be44c39d1de15bd9` |
| 6 | `theorem` | [count_map_of_injective](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Count/Variantbf3cbd50105373e84007c296f339d379f7698d60e11c0533c70e62c93f445477.lean/declarations/count-map-of-injective--5d8f3aa5b98cd1a3817d451d.md) | 59 | `result-track:5d8f3aa5b98cd1a3817d451d7b60b23678e88dfefc41716bdf9c0d3691ed46b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
