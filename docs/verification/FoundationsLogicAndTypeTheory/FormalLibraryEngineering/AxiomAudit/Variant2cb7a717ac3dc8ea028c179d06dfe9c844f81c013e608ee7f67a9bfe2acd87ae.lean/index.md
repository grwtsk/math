# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "80318b506369c4e53e738d248d4c27ca472f5e3f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `80318b506369c4e53e738d248d4c27ca472f5e3f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/statementpreservationevidence--23ad3a088a3413a14fe39b05.md) | 19 | `declaration-track:23ad3a088a3413a14fe39b056a2a0c0fe8a5707a6ab368ce85bf2ed413725cde` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/statementpreservationevidence-valid--ca82ea081f38c8389cbf1caf.md) | 24 | `declaration-track:ca82ea081f38c8389cbf1cafbd3302eb67e17bbca8f864f18459622cda447c13` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/verifystatementpreservation--c7d26f0067cf0e8ee25fbd92.md) | 28 | `declaration-track:c7d26f0067cf0e8ee25fbd92e2cb900feedee98a8774d93a51e6db0efb63f787` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/verifystatementpreservation-sound--26787acddb2cc1f824d348a3.md) | 33 | `result-track:26787acddb2cc1f824d348a3a1c2b1aa7993bb89e46d855f673a7ff209e7e45d` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/kernelreceipt-matchestask-preserves-statement--2d6b76958e6617dbeef06591.md) | 40 | `result-track:2d6b76958e6617dbeef06591412ec11238dcaf3d53dc4edcc63f8bd63afae062` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/checkedtrial-statement-preserved--2f65530593fcaeeb2db5c5d6.md) | 49 | `result-track:2f65530593fcaeeb2db5c5d6066a8e96d247c9ec9a287b3f5ddae338e7f7152e` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2cb7a717ac3dc8ea028c179d06dfe9c844f81c013e608ee7f67a9bfe2acd87ae.lean/declarations/checkedtrial-kernel-proof--ce5b8e6a691ff5b580d5b902.md) | 55 | `result-track:ce5b8e6a691ff5b580d5b90243d78e3e04478cf5821cfe6b4a7827d51f49b9ca` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
