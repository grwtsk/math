# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripChannelChoice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2564a62cd4dc91a81e5a0e46016c59338bd1af15",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2564a62cd4dc91a81e5a0e46016c59338bd1af15`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.SymmetricPairChannelChoice`](../../../../../mathematics/Analysis/ComplexAnalysis/SymmetricPairChannelChoice.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripUniformPairRegion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripUniformPairRegion.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ChoiceGuard](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/choiceguard--447d16a41355f7d41f0c78c0.md) | 28 | `declaration-track:447d16a41355f7d41f0c78c0fd7d667048329d25e564e9481b74c097e3cca322` |
| 2 | `def` | [choiceCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/choicecheck--20f11b5195d8311e58148e0a.md) | 35 | `declaration-track:20f11b5195d8311e58148e0acdb29e2ed8e0d239eafcd139b894ff0998bf40bd` |
| 3 | `lemma` | [choiceCheck_iff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/choicecheck-iff--79e99dd9647ec03d4b80e129.md) | 37 | `result-track:79e99dd9647ec03d4b80e129feeab2f6b5e1534e913f673128bdef267971296c` |
| 4 | `theorem` | [old_check_implies_choiceCheck](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/old-check-implies-choicecheck--d2b70c79f80a4236f2af9a78.md) | 41 | `result-track:d2b70c79f80a4236f2af9a781b52150433bfdfd839dfa08d203694ac20606080` |
| 5 | `theorem` | [choice_rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/choice-rhon--c0fec7fed0045a5e74c3b3f2.md) | 62 | `result-track:c0fec7fed0045a5e74c3b3f210c8c7891b8e4cd546ab94d556e16965293da4c9` |
| 6 | `def` | [fifteenOdd](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteenodd--94d38aaf23b13a06e679195a.md) | 109 | `declaration-track:94d38aaf23b13a06e679195a55db375d450326d831154278323226687d2e7c56` |
| 7 | `lemma` | [fifteenOdd_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteenodd-check--e094dfad09265715a1b26fc1.md) | 111 | `result-track:e094dfad09265715a1b26fc1ee8597f9c4020e42ed7973d85ccaad6473e9623d` |
| 8 | `lemma` | [fifteenOdd_center](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteenodd-center--3ffde997f595571667bd3e3b.md) | 114 | `result-track:3ffde997f595571667bd3e3bd9f6cf814628e41d912da309f1e7afe5fcb20acc` |
| 9 | `theorem` | [fifteenOdd_valid](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteenodd-valid--682219a7887599ce978495e6.md) | 118 | `result-track:682219a7887599ce978495e67536c0ebebb5504a44dc6ef33a19bf6039a05083` |
| 10 | `theorem` | [fifteenOdd_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteenodd-lower--31fd788a86dbae632e108ef4.md) | 127 | `result-track:31fd788a86dbae632e108ef4cd22ed7c628d4a03328e530fc313bf93913f8320` |
| 11 | `theorem` | [fifteen_rhOn](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteen-rhon--48a422de2a35b2e84bfe2287.md) | 137 | `result-track:48a422de2a35b2e84bfe22875991dc793ce288ec8552d27d34bc19a852cb46ea` |
| 12 | `theorem` | [fifteen_fiber_capacity](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/fifteen-fiber-capacity--e89854d7c6dda0a57d56b2b7.md) | 148 | `result-track:e89854d7c6dda0a57d56b2b7f5139dbb35fe14d09ca8556ec9d57de5b57e913e` |
| 13 | `theorem` | [window_successor_of_choice_regions](../../../../../mathematics/NumberTheory/Zeta/Riemann/CriticalStripChannelChoice.lean/declarations/window-successor-of-choice-regions--3a796e4ecbc30835e6921f4e.md) | 153 | `result-track:3a796e4ecbc30835e6921f4e112118e6170e0aab9ffb99d8a70567800d2d8c55` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
