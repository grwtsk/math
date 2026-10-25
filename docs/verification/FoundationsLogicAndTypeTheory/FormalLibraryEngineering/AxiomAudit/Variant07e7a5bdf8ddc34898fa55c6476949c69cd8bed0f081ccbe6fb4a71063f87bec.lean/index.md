# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2ac2f20138fd20f2ce6da51e4c7254b4784836b8",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2ac2f20138fd20f2ce6da51e4c7254b4784836b8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/statementpreservationevidence--34cfc74ded8829272e210b02.md) | 27 | `declaration-track:34cfc74ded8829272e210b02fc95545b814cf067bd2adf238fd27b0a64bcb042` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/statementpreservationevidence-valid--9375456d352da8eda2e80d2d.md) | 32 | `declaration-track:9375456d352da8eda2e80d2df97decc80ff21987e18da705d3f12111f7d0de7c` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/verifystatementpreservation--5f1ff4f3dc92481eccc19605.md) | 36 | `declaration-track:5f1ff4f3dc92481eccc19605d018890da471ccbc7c1ed2ac013d26643650c7f3` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/verifystatementpreservation-sound--ab270b7210f72a22f824b254.md) | 41 | `result-track:ab270b7210f72a22f824b254cba6fd8b3c40a8dcf64c026561183ee3bea88158` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/kernelreceipt-matchestask-preserves-statement--018b1eb28446978e74788410.md) | 51 | `result-track:018b1eb28446978e74788410dd10d24a48f39ec9c61377c914e7d375b6527bcf` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/checkedtrial-statement-preserved--b5ba0d291e033da5bdf53024.md) | 60 | `result-track:b5ba0d291e033da5bdf530242f69c0efde45d81f6b7546cb5a26263c8aec6e57` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant07e7a5bdf8ddc34898fa55c6476949c69cd8bed0f081ccbe6fb4a71063f87bec.lean/declarations/checkedtrial-kernel-proof--d2e04ad8ce2d04cd2061f1ef.md) | 66 | `result-track:d2e04ad8ce2d04cd2061f1efcc1021418fe5b51b7ceef567fa9af54964a9d1f9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
