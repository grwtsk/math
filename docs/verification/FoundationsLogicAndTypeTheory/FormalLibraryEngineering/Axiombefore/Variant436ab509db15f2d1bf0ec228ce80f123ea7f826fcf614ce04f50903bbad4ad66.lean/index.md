# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Axiombefore.Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b2afe12d5ba51ba0b80f55db4bcb9daea0def91",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b2afe12d5ba51ba0b80f55db4bcb9daea0def91`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/statementpreservationevidence--96a36a94c4294f2a196015a3.md) | 27 | `declaration-track:96a36a94c4294f2a196015a38d0b297313dcbee45440b5cf45b13f6e0cbf244a` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/statementpreservationevidence-valid--a6747b32892a7a07a4f5ff5b.md) | 32 | `declaration-track:a6747b32892a7a07a4f5ff5b6e3b22cc4f58434cc9dceaacf7f45eef2fbe52ed` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/verifystatementpreservation--57f41ff8785bfae4ccf66835.md) | 36 | `declaration-track:57f41ff8785bfae4ccf668355d0b216b19d9e6c037eb4de5dfa91496eb3ba7b1` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/verifystatementpreservation-sound--0547a81506dead81fca5a71e.md) | 41 | `result-track:0547a81506dead81fca5a71eb58348869a846e4135545dec06054463251799dc` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/kernelreceipt-matchestask-preserves-statement--95b8dbe572eede532c8e7a7e.md) | 51 | `result-track:95b8dbe572eede532c8e7a7edbf9cfa61efaff540c923040760bdd3c25cbb45d` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/checkedtrial-statement-preserved--0b286ac664995d9aac3846a3.md) | 60 | `result-track:0b286ac664995d9aac3846a37235d8d9fb768e016b0a5cb8647f588514e9924b` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Axiombefore/Variant436ab509db15f2d1bf0ec228ce80f123ea7f826fcf614ce04f50903bbad4ad66.lean/declarations/checkedtrial-kernel-proof--88b828a4c4cb85d719c9794d.md) | 66 | `result-track:88b828a4c4cb85d719c9794dc57f72783b20c7353c752ae941b64157dcfc63e0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
