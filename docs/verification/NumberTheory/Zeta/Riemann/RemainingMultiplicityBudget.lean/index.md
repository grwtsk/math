# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.RemainingMultiplicityBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91d2756444801a53d388a63014cc4ac2f4a12ad2",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91d2756444801a53d388a63014cc4ac2f4a12ad2`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.WeightedSubsetBudget`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/WeightedSubsetBudget.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.ReflectedMultiplicitySupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ReflectedMultiplicitySupplier.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [remainingCount](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/remainingcount--82a3360e7b2f2564d38bb309.md) | 36 | `declaration-track:82a3360e7b2f2564d38bb3097c596a456f046e0e9947ac71b091c79fcb7535a3` |
| 2 | `theorem` | [remaining_add_known](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/remaining-add-known--0e97d9919f3e0a3aa5feb005.md) | 41 | `result-track:0e97d9919f3e0a3aa5feb0058f8d6f72ec9bf327b2b616d6da3c6e4000db9563` |
| 3 | `theorem` | [remaining_eq_sub](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/remaining-eq-sub--d84537e7bcb8ab3e858e24c1.md) | 48 | `result-track:d84537e7bcb8ab3e858e24c1a1c3c8b72e97d25d5569589df2601344b0156bc2` |
| 4 | `theorem` | [reflected_off_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/reflected-off-line--f0afaddfda5e35a696e7407f.md) | 55 | `result-track:f0afaddfda5e35a696e7407fde42b19902dbb96f088f98ba9fed1f21e983e17e` |
| 5 | `theorem` | [known_add_twice_le_count_of_off_line](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/known-add-twice-le-count-of-off-line--ba7957900af83d5c953b3fb6.md) | 64 | `result-track:ba7957900af83d5c953b3fb6b2ad340e4cd3303e7f957f6e4f1cc9a4ebba14e8` |
| 6 | `theorem` | [critical_line_of_known_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/critical-line-of-known-budget--b3347224d764663f3311b1c4.md) | 81 | `result-track:b3347224d764663f3311b1c4b37d22c37e45d665c3c190cc84ec2b96b8bbc451` |
| 7 | `theorem` | [all_on_line_of_known_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/all-on-line-of-known-budget--5391b27fa9b0692ebce3b1c9.md) | 97 | `result-track:5391b27fa9b0692ebce3b1c9e58b46180429dd05c9d3b60b533f57f7699aed0d` |
| 8 | `theorem` | [all_on_line_of_sub_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/all-on-line-of-sub-budget--ec48dc39cc11d816eae41dfb.md) | 110 | `result-track:ec48dc39cc11d816eae41dfb2b2120778f93b29d14508011ee0841ff27f909ea` |
| 9 | `theorem` | [all_on_line_of_remaining_lt_two](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/all-on-line-of-remaining-lt-two--074a6ad646e5ccb1763237c0.md) | 124 | `result-track:074a6ad646e5ccb1763237c0ce82f8ded2c34e0c09b08643de72186994420663` |
| 10 | `theorem` | [known_eq_regionHead_of_remaining_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/known-eq-regionhead-of-remaining-zero--12f82a59f7a5d4f54c569acb.md) | 135 | `result-track:12f82a59f7a5d4f54c569acbedd5c7ca8a68a6f00d553ab0f037421050f48dc5` |
| 11 | `theorem` | [rhThrough_of_height_known_budget](../../../../../mathematics/NumberTheory/Zeta/Riemann/RemainingMultiplicityBudget.lean/declarations/rhthrough-of-height-known-budget--8cc66cf63e086cef22d43bb6.md) | 147 | `result-track:8cc66cf63e086cef22d43bb652bd686141d67ca28c79e04f62d46ae068e250fe` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
