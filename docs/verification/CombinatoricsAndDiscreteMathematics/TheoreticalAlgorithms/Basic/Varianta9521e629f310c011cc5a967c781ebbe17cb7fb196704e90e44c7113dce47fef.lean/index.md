# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4d450615a2c5203c2cb527b1977451ae05c63271",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4d450615a2c5203c2cb527b1977451ae05c63271`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Iterators.Lemmas.Consumers.Loop` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Order` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 21; external provider; requires a separately pinned dependency.
- `Init.Data.String.OrderInstances` — import line 22; external provider; requires a separately pinned dependency.
- `Init.Grind` — import line 23; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Pattern.Model.find?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-find-eq-some-iff--f87455813264e1a9ad56fa3d.md) | 34 | `result-track:f87455813264e1a9ad56fa3d4f407587046b9e4b68ffbecfb60b438f68029a73` |
| 2 | `theorem` | [Pattern.Model.find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-find-eq-none-iff--8300f8ff5a527d8258a9d688.md) | 51 | `result-track:8300f8ff5a527d8258a9d68808e2da9e44f3baa5d2e75d9ea918fc8dbe1c9343` |
| 3 | `theorem` | [isSome_find?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/issome-find--07248b6be7efe364f4d0fa8d.md) | 62 | `result-track:07248b6be7efe364f4d0fa8d4b700cc4ebed78c7d8f451c381ef82fe87c916a7` |
| 4 | `theorem` | [find?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/find-eq-none-iff--d09dc2641c9b2f144f314bfe.md) | 70 | `result-track:d09dc2641c9b2f144f314bfe00d68ab3a3441d14bb38c88d74d0c54f8ec9c438` |
| 5 | `theorem` | [Pattern.Model.contains_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-contains-eq-false-iff--df21a52443b1f5c691e8bd6a.md) | 76 | `result-track:df21a52443b1f5c691e8bd6a06b7674254a702ad5dd61b3b6ce7b3032bbe389b` |
| 6 | `theorem` | [Pattern.Model.contains_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-contains-eq-true-iff--0b7f34ddaee944c82199098a.md) | 83 | `result-track:0b7f34ddaee944c82199098a914b793c1239285f400aeeaf38bb578ca27016c2` |
| 7 | `theorem` | [Pos.find?_eq_find?_sliceFrom](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pos-find-eq-find-slicefrom--ae650d96b4e81136e7b20cb3.md) | 90 | `result-track:ae650d96b4e81136e7b20cb3b0015352c2fc623b5c5a0fa650de6f04015ec185` |
| 8 | `theorem` | [Pattern.Model.posFind?_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-posfind-eq-some-iff--a1269a50be456ff122a828ab.md) | 96 | `result-track:a1269a50be456ff122a828ab5e28fb979387a639fc47ff6f91b77f4be0d6b27f` |
| 9 | `theorem` | [Pattern.Model.posFind?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pattern-model-posfind-eq-none-iff--4845c478ada8840a0e717a15.md) | 111 | `result-track:4845c478ada8840a0e717a15cd8d20141dca4f8cbff8a94dea9ebf0bdb8f1d0b` |
| 10 | `theorem` | [Pos.find?_eq_find?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/pos-find-eq-find-toslice--6113cd2a9a868e85dd9af12b.md) | 122 | `result-track:6113cd2a9a868e85dd9af12b5344f796d97a29b32aa2527bfeb2ba6d3a2067cf` |
| 11 | `theorem` | [find?_eq_find?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/find-eq-find-toslice--aaff5da658553c270626fbc9.md) | 127 | `result-track:aaff5da658553c270626fbc99569f9d177efe750e4381b4ced83ce7cc647bc26` |
| 12 | `theorem` | [contains_eq_contains_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Varianta9521e629f310c011cc5a967c781ebbe17cb7fb196704e90e44c7113dce47fef.lean/declarations/contains-eq-contains-toslice--462c13a72706df0a4b812533.md) | 132 | `result-track:462c13a72706df0a4b81253307806bddec0d2e93285c81ed1d4ceaaafac170ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
