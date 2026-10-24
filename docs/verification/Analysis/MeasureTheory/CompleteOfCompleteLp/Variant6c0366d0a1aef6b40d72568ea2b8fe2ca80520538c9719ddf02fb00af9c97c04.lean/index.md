# Verification target: GRWTSK.Analysis.MeasureTheory.CompleteOfCompleteLp.Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "978d665facfd56ec69700c9d56c1d95c2ab03c86",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `978d665facfd56ec69700c9d56c1d95c2ab03c86`.

Source path: `GRWTSK/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean.json)

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
| 1 | `lemma` | [FinStronglyMeasurable.exists_measurableSet_measure_pos_lt_top](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/declarations/finstronglymeasurable-exists-measurableset-measure-pos-lt-top--80b761126fadae958e09c7ed.md) | 23 | `result-track:80b761126fadae958e09c7edc41378a39c44e06ab79b12f9ecb6752c9af86a6f` |
| 2 | `lemma` | [AEFinStronglyMeasurable.exists_measurableSet_measure_pos_lt_top](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/declarations/aefinstronglymeasurable-exists-measurableset-measure-pos-lt-top--c4d5c749078aaa50e54f683f.md) | 37 | `result-track:c4d5c749078aaa50e54f683fd38e3faa3f273e91b8cbe5e6bfe21c300b97cf06` |
| 3 | `lemma` | [nontrivial_Lp_real_of_nontrivial_Lp](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/declarations/nontrivial-lp-real-of-nontrivial-lp--2f64174fd4827d39b1b0f435.md) | 45 | `result-track:2f64174fd4827d39b1b0f435a910bba99f4f11e9defa92ff27cc1d138149f60d` |
| 4 | `lemma` | [completeSpace_of_completeSpace_Lp](../../../../../mathematics/Analysis/MeasureTheory/CompleteOfCompleteLp/Variant6c0366d0a1aef6b40d72568ea2b8fe2ca80520538c9719ddf02fb00af9c97c04.lean/declarations/completespace-of-completespace-lp--f589dd2ac8e1a70288d27b29.md) | 80 | `result-track:f589dd2ac8e1a70288d27b29322a427835150259ad2615a811b67e8c8a010886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
