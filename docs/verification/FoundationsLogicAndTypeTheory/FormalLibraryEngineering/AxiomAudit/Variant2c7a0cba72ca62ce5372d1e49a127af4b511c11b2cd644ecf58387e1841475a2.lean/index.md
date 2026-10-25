# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AxiomAudit.Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "759681ce1d3fe0776338ae6afa309b374dee452e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `759681ce1d3fe0776338ae6afa309b374dee452e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/statementpreservationevidence--7ce85fe86623901db0c855b4.md) | 27 | `declaration-track:7ce85fe86623901db0c855b49f20da21c87d191d2f3ad39614115cef3f199e3b` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/statementpreservationevidence-valid--2f611077f25c81c5c12a1d63.md) | 32 | `declaration-track:2f611077f25c81c5c12a1d63b9b73f8be3b0093991bc2da37d622c9d6a500a18` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/verifystatementpreservation--49a8854e0af8f6a04a953a19.md) | 36 | `declaration-track:49a8854e0af8f6a04a953a1968340696d322cd1c53868141ef6206ba836f2669` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/verifystatementpreservation-sound--64cc221297916dea62a5ff67.md) | 41 | `result-track:64cc221297916dea62a5ff675584081ad1f9a9095d03c97961f76cde59f6d449` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/kernelreceipt-matchestask-preserves-statement--f5b356f9814a947d4f84b31d.md) | 51 | `result-track:f5b356f9814a947d4f84b31dbe91ea648871849777b0ee4fd91094b5b4ad90b3` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/checkedtrial-statement-preserved--216804c3b07066ad4799d23c.md) | 60 | `result-track:216804c3b07066ad4799d23cf18bfefff1ac935894fcb739c4064a1a77e2bc88` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AxiomAudit/Variant2c7a0cba72ca62ce5372d1e49a127af4b511c11b2cd644ecf58387e1841475a2.lean/declarations/checkedtrial-kernel-proof--42139157b6bbd3c3e5c20d44.md) | 66 | `result-track:42139157b6bbd3c3e5c20d441ae699f713bca5503ded065467679ba4d80421ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
