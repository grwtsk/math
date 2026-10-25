# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "29b380560740f744b3cb3675105e0b5cd95bfaa9",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `29b380560740f744b3cb3675105e0b5cd95bfaa9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/statementpreservationevidence--ef1e8cfa33f436017b73c58a.md) | 27 | `declaration-track:ef1e8cfa33f436017b73c58a82d2bbb7478c4ac2ee0edb24b66d078455c0b6a9` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/statementpreservationevidence-valid--0f6e007d21390dde65accb7d.md) | 32 | `declaration-track:0f6e007d21390dde65accb7dd0ec111709a41f4ed0d0eaf7c2d5ca59bb669a35` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/verifystatementpreservation--8bb984cc8559497d651f362a.md) | 36 | `declaration-track:8bb984cc8559497d651f362afa14043a2bcf88d18ba3d83b5cc84eb6d3d59d79` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/verifystatementpreservation-sound--4f50041fcfb81bb7cbd7c25b.md) | 41 | `result-track:4f50041fcfb81bb7cbd7c25bec3e3f0a4fbc159e0d3ce071a220c6e5fa8c632d` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/kernelreceipt-matchestask-preserves-statement--6e58a452d83841ad5a673e1c.md) | 48 | `result-track:6e58a452d83841ad5a673e1c3e7ecf30635ea384b051af0e573be6f1d9458ee6` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/checkedtrial-statement-preserved--4f39d54ead13f9f351921dfc.md) | 57 | `result-track:4f39d54ead13f9f351921dfcf01fe10fb46ac0d4ab9b3b8a51a8b1522f7be321` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variantbb971fbb37f06431d39f714d42e0e78f9549e8c5fce97d45b8fa45d853fbf218.lean/declarations/checkedtrial-kernel-proof--1022745c4846db842f09ecee.md) | 63 | `result-track:1022745c4846db842f09eceec5b22013ed23b26d9c5a2bd999f44617852f1c99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
