# Verification target: GRWTSK.NumberTheory.ContinuedFractions.Checks.SequenceRealizationAudit

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b0515b9357b5d7b14796604d0520334fd66b6a9",
  "lexical_observation_count": 1,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b0515b9357b5d7b14796604d0520334fd66b6a9`.

Source path: `GRWTSK/NumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ContinuedFractions.FrequencyRealization`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/FrequencyRealization.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 2; pinned internal source present.
- [`GRWTSK.DynamicalSystems.Sequences.ApproximationReturn`](../../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/index.md) — import line 3; pinned internal source present.
- `Lean` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `elab` | [(anonymous)](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/Checks/SequenceRealizationAudit.lean/declarations/elab--053df19ce530636b4d7ac293.md) | 8 | `declaration-track:053df19ce530636b4d7ac2939f10678ea8fd81759883456395ca0119b7d3a531` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
