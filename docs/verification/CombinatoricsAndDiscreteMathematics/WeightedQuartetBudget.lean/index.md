# Verification target: GRWTSK.Combinatorics.WeightedQuartetBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ced2bf6220cb4d9eda65eeff47b49704b27e11c",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/WeightedQuartetBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/index.md) · [Full source](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ced2bf6220cb4d9eda65eeff47b49704b27e11c`.

Source path: `GRWTSK/Combinatorics/WeightedQuartetBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/WeightedQuartetBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedSubsetBudget`](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [four_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/four-le-mass--57ea04a21fdff0d9d0297c44.md) | 27 | `result-track:57ea04a21fdff0d9d0297c445eda3ce10ed9e2b1789c04b6a707032e27477aeb` |
| 2 | `theorem` | [known_add_four_le_mass](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/known-add-four-le-mass--4c5c6f8424327fcfd5083ee8.md) | 44 | `result-track:4c5c6f8424327fcfd5083ee8d3a97c44fc6645e1a43a2ff05657262c2893a80e` |
| 3 | `theorem` | [eq_of_remaining_lt_two_of_involution](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/eq-of-remaining-lt-two-of-involution--e0701d348b3c100b4ce6630c.md) | 62 | `result-track:e0701d348b3c100b4ce6630cfed68ec8ae9c3e55e2f4dc093a59fae7d3649fbc` |
| 4 | `theorem` | [strict_four_threshold_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/strict-four-threshold-fixture--a8a70648a4995cd6b009d677.md) | 85 | `result-track:a8a70648a4995cd6b009d677c7a37c480fa1fb333a406039df83464b86a7ff3a` |
| 5 | `theorem` | [collapsed_occurrences_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/collapsed-occurrences-fixture--c3fedfda9591b044a001220b.md) | 90 | `result-track:c3fedfda9591b044a001220bc75cb499907742c9917fdb457ce7ec26effe892f` |
| 6 | `theorem` | [missing_pair_below_four_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/missing-pair-below-four-fixture--4cd983d524d651fb37ff2662.md) | 94 | `result-track:4cd983d524d651fb37ff266219b4d4820c66360f851426a157cfa406cc5006f9` |
| 7 | `theorem` | [unpaired_known_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/unpaired-known-fixture--f46828ca87ba0d6cd018957c.md) | 100 | `result-track:f46828ca87ba0d6cd018957c73b7892ea4fd1c75c1391969a9300220469a3538` |
| 8 | `theorem` | [zero_weight_pair_fixture](../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedQuartetBudget.lean/declarations/zero-weight-pair-fixture--0aeca191fd841543794d3091.md) | 111 | `result-track:0aeca191fd841543794d3091eb1f44df7eff40ec474210484be97dfe0a690091` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
