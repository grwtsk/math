# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5defce6e3668c6778efcc8dc9b09aaf377b9c98e",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5defce6e3668c6778efcc8dc9b09aaf377b9c98e`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/statementpreservationevidence--1c5fd341a6ce36d8f39478ee.md) | 27 | `declaration-track:1c5fd341a6ce36d8f39478eec5f60f984ae69003c1bf37fe710a53bda53dc07f` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/statementpreservationevidence-valid--e7649d580ccdf8dd7ca56f30.md) | 32 | `declaration-track:e7649d580ccdf8dd7ca56f30f5bf0d7708a1f388dcf70c84a03e848b3c1d5a80` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/verifystatementpreservation--ae83e471a6096c029caabb1f.md) | 36 | `declaration-track:ae83e471a6096c029caabb1f26c15a1c237ef5df6bcf185afccfe1176d274514` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/verifystatementpreservation-sound--3a083b5f31bf1c47eeec649f.md) | 41 | `result-track:3a083b5f31bf1c47eeec649f21e591d9d2435d07f791b3bcae5db3ad0195d47b` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/kernelreceipt-matchestask-preserves-statement--3eb6228ece82de9803a91219.md) | 51 | `result-track:3eb6228ece82de9803a91219c5b4a6f45d9bf6dc4b897c75f21a01410d83c63e` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/checkedtrial-statement-preserved--53ddf25f5d9b965094875eb1.md) | 60 | `result-track:53ddf25f5d9b965094875eb141db2179f904f8c82c165447f794d2cbeb80241e` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variantabe45023f861208bd3b19d6cd22152fa908df8d0125cda421318f04f05dd0f74.lean/declarations/checkedtrial-kernel-proof--1af0cf3efc487cd5d1c09082.md) | 66 | `result-track:1af0cf3efc487cd5d1c090829ad418946a8311566d0ef6bfe22108f7db416ed3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
