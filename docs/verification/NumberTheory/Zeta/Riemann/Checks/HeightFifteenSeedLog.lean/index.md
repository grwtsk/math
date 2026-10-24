# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSeedLog

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c16c0369179c4e19899dd324cb6e74bbfa5750",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c16c0369179c4e19899dd324cb6e74bbfa5750`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.ErrorBounds.IntegerSeedWindows`](../../../../../../mathematics/Analysis/ErrorBounds/IntegerSeedWindows.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSquareWitness`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSquareWitness.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rawLog](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/rawlog--7e109a6c54aa81a5018684d6.md) | 23 | `declaration-track:7e109a6c54aa81a5018684d621731366f8aff5a23c17438b1361c913a13690c3` |
| 2 | `def` | [logState](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/logstate--411180fcc64827848b03851d.md) | 25 | `declaration-track:411180fcc64827848b03851d9ccb36ab4a5c7587b4bab1f5b0d0ad370d90c6b3` |
| 3 | `def` | [logValue](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/logvalue--990c5302eb621e6c53677270.md) | 27 | `declaration-track:990c5302eb621e6c53677270071c1a5dc87f131572a85b0059f67a9dced6e8a7` |
| 4 | `theorem` | [raw_log_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/raw-log-value--c2f91352c593b5a27059ec7f.md) | 30 | `result-track:c2f91352c593b5a27059ec7fa2de4741199137dea2752c037d397104cecf6187` |
| 5 | `theorem` | [log_real_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/log-real-window--a4290b8103da952814a7427d.md) | 37 | `result-track:a4290b8103da952814a7427d03b9042e8edffce6f17d52c140f18003dc7b0b3d` |
| 6 | `theorem` | [log_imag_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/log-imag-window--7167a6a053afe36300449b20.md) | 40 | `result-track:7167a6a053afe36300449b200b875af49135123e747e78bb6d57f266011badc3` |
| 7 | `theorem` | [log_radius_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/log-radius-window--a76e2ff74769a351d916ce6e.md) | 43 | `result-track:a76e2ff74769a351d916ce6eae60e77fa38d3e522d74ccc2a26f81f8edcc71e5` |
| 8 | `theorem` | [logBall_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/logball-value--2254b70929acdfd466d3f081.md) | 48 | `result-track:2254b70929acdfd466d3f081445b102eb03d7de4151907625a69c000aaee155d` |
| 9 | `def` | [exponentValue](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/exponentvalue--7bb340b05e1b4f860bb1a880.md) | 55 | `declaration-track:7bb340b05e1b4f860bb1a88059249b52b777b64c5ba0c3a4a927be5a3435fc8f` |
| 10 | `theorem` | [exponent_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/exponent-value--5cba620d88aaa39e651df2f9.md) | 57 | `result-track:5cba620d88aaa39e651df2f967248498496396dc250ec4506b8a07800e3e1920` |
| 11 | `theorem` | [scale_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/scale-checked--fe935eaf383153f22ae8e46b.md) | 63 | `result-track:fe935eaf383153f22ae8e46bb875cbb19d7b372b0e6c8e66f4db72ec637f21e2` |
| 12 | `theorem` | [source_guard](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/source-guard--e50c7bf0a04398cf3575dbc1.md) | 66 | `result-track:e50c7bf0a04398cf3575dbc1794bbdac42b10ea95eb3ce694930acbf59dad71e` |
| 13 | `theorem` | [actual_log_enclosure](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/actual-log-enclosure--03e07f00c86e8f9afdb57da3.md) | 75 | `result-track:03e07f00c86e8f9afdb57da36cfe31f9ab5260dfc25473fb65d40c3408bd93fe` |
| 14 | `theorem` | [log_radius_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/declarations/log-radius-positive--911713134355d7212a28d050.md) | 80 | `result-track:911713134355d7212a28d050e3e36d205a67dc20de4698e7cd04bb35d386e11e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
