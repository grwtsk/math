# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8bbfd1c0cf78bdc41abe12053d5cbf3ce459cfa3",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8bbfd1c0cf78bdc41abe12053d5cbf3ce459cfa3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/statementpreservationevidence--1996b220bbf63b2fe1709499.md) | 19 | `declaration-track:1996b220bbf63b2fe1709499812761086ed5cf0693b907ad946823bb66154411` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/statementpreservationevidence-valid--96e002adf366fd1184b1c162.md) | 24 | `declaration-track:96e002adf366fd1184b1c162e9d666ed2b2d06f2d578a3f9e64b3755ebde5677` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/verifystatementpreservation--c860bab488fcbc36337bc683.md) | 28 | `declaration-track:c860bab488fcbc36337bc683789773096fc5d0e636602519083408f7a0321830` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/verifystatementpreservation-sound--2119948f933cd593dc8b7b64.md) | 33 | `result-track:2119948f933cd593dc8b7b64c99a9d93c4630179babe5f817c090f9c17677af0` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/kernelreceipt-matchestask-preserves-statement--7759794905a67d85c450be6e.md) | 43 | `result-track:7759794905a67d85c450be6ed025d3b102557d2bfb102c2f25b41f65a7096110` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/checkedtrial-statement-preserved--9a4ecce378a2563f1176777c.md) | 52 | `result-track:9a4ecce378a2563f1176777c130ce1834f90d617a8b7993c6da5f7c9499bd57f` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant5f845322d0ce5fb2a15c8fea07123f7473e253252c93702d8df5228b9868ec6b.lean/declarations/checkedtrial-kernel-proof--acdf8ce51cbcc41c860e944f.md) | 58 | `result-track:acdf8ce51cbcc41c860e944f73367ca000efed4e83ad1ef32ca0ad9e722802a3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
