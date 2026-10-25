# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b853c852dfb96f5f7686703879ff7516c8eea632",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b853c852dfb96f5f7686703879ff7516c8eea632`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/statementpreservationevidence--c32b7311eb0448368d26406d.md) | 19 | `declaration-track:c32b7311eb0448368d26406d9cdfc819d7f025b6ff36a7517f7cfef685764a20` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/statementpreservationevidence-valid--e59a2a12f6a4ce0bf2c6bef8.md) | 24 | `declaration-track:e59a2a12f6a4ce0bf2c6bef8c9cfd0b73b3cae96ed0db6906625993afd06d17b` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/verifystatementpreservation--16ddeff0e7f76a43077aa7b1.md) | 28 | `declaration-track:16ddeff0e7f76a43077aa7b1fac3bf56c81d0cf898164f10e3e871d3def6b707` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/verifystatementpreservation-sound--23ec14a573e9faddd54d4105.md) | 33 | `result-track:23ec14a573e9faddd54d4105bd86f8ef21604e976c2e3e6fed14bfc0d829223c` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/kernelreceipt-matchestask-preserves-statement--6804997bbccf439209eac4f8.md) | 43 | `result-track:6804997bbccf439209eac4f8d4eb9478f1e4b184fd09cbe819bad4aea6d8c358` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/checkedtrial-statement-preserved--f3dcd4c9b0ac0c36148b2081.md) | 52 | `result-track:f3dcd4c9b0ac0c36148b20815fe2b038885ee3c77c0b0a009fa7d097ede17afb` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant49dd8957ee9282f869aa80befa1000391801655c8e6715ad7196515052048992.lean/declarations/checkedtrial-kernel-proof--a9ea3d6b9e8550dd44b69e79.md) | 58 | `result-track:a9ea3d6b9e8550dd44b69e7984c13527adbdde26a87b6f48783a69daddcf2267` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
