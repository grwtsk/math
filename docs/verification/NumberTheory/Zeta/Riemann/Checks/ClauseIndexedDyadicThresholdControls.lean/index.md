# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.ClauseIndexedDyadicThresholdControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "573384889dc093092349d5f62773323d3c91a943",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `573384889dc093092349d5f62773323d3c91a943`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedDyadicThreshold`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedDyadicThreshold.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveClausePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/positiveclausepolarity--bc729d071ab31c9b5c067ac6.md) | 16 | `declaration-track:bc729d071ab31c9b5c067ac69faf79b3e4c7289697a1f19d45985de45ead48e3` |
| 2 | `theorem` | [positive_three_clause_satisfying_card](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/positive-three-clause-satisfying-card--8795eef99061d8adc146d5fd.md) | 20 | `result-track:8795eef99061d8adc146d5fd181f1082e810693f2e7f136e293a0d22c00eabf8` |
| 3 | `theorem` | [positive_three_clause_falsifying_card](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/positive-three-clause-falsifying-card--29cfc267288d9e329d2f43ee.md) | 30 | `result-track:29cfc267288d9e329d2f43eea6b374077c954edf51768462e171bd90d39c8f02` |
| 4 | `theorem` | [concrete_clause_thresholds](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/concrete-clause-thresholds--128d37143c31443155539dc9.md) | 37 | `result-track:128d37143c31443155539dc9ca1120374a780502ac0c8c6e05fa9203a07a877b` |
| 5 | `theorem` | [concrete_clause_reverse_ladder](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/concrete-clause-reverse-ladder--030a50f6f5a119bf692163cb.md) | 44 | `result-track:030a50f6f5a119bf692163cb4c5ec5e3257806cb8218498268ff69e85e7704c8` |
| 6 | `def` | [requiredAnalyticPremises](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/requiredanalyticpremises--7968e7e36e89f1b187bf1618.md) | 55 | `declaration-track:7968e7e36e89f1b187bf161847812c51096fc5f1acab6984524460fd7233b55d` |
| 7 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/ClauseIndexedDyadicThresholdControls.lean/declarations/prohibitedpromotions--02920510ab20c711aff402d5.md) | 62 | `declaration-track:02920510ab20c711aff402d5f0cf98e2afe82d9d97a13942e64c877a3bf99a6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
