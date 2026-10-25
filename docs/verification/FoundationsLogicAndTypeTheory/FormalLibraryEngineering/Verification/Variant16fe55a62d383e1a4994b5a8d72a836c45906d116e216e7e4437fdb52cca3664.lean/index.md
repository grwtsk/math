# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Verification.Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43a56f2752eae8c4474af3fc5a31ce6a37af54d1",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43a56f2752eae8c4474af3fc5a31ce6a37af54d1`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean.json)

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
| 1 | `structure` | [StatementPreservationEvidence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/statementpreservationevidence--59f5a267d1c7fd01e7d8a091.md) | 19 | `declaration-track:59f5a267d1c7fd01e7d8a091db3c06853b12b090af3508d6364cd4ad9c5fe1bb` |
| 2 | `def` | [StatementPreservationEvidence.Valid](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/statementpreservationevidence-valid--db856b1e7f3adaed8194074f.md) | 24 | `declaration-track:db856b1e7f3adaed8194074facac62372996b5e0bbd76e8ec232d51b62bf51a9` |
| 3 | `def` | [verifyStatementPreservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/verifystatementpreservation--3280cf3cb2f58fcde8525381.md) | 28 | `declaration-track:3280cf3cb2f58fcde85253817218689556f259d2778ddbaabeafb816b4826abb` |
| 4 | `theorem` | [verifyStatementPreservation_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/verifystatementpreservation-sound--229892654ab83cafb0d0b60f.md) | 33 | `result-track:229892654ab83cafb0d0b60f5a54b7f76f022ad1ac70cfde4e88e2e125911107` |
| 5 | `theorem` | [KernelReceipt.matchesTask_preserves_statement](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/kernelreceipt-matchestask-preserves-statement--5c9b3b70f695615d97ad67d5.md) | 40 | `result-track:5c9b3b70f695615d97ad67d5c3c3493cf292651a6a8e09e3fb39ddff0c3e4fa2` |
| 6 | `theorem` | [CheckedTrial.statement_preserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/checkedtrial-statement-preserved--a02e79d6429587d335615c83.md) | 49 | `result-track:a02e79d6429587d335615c83ae3a798c826e922d095e1b64635ba378d01ad620` |
| 7 | `theorem` | [CheckedTrial.kernel_proof](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant16fe55a62d383e1a4994b5a8d72a836c45906d116e216e7e4437fdb52cca3664.lean/declarations/checkedtrial-kernel-proof--90f8bd9c6ecfaaf1cf49e44a.md) | 55 | `result-track:90f8bd9c6ecfaaf1cf49e44af7cd32eecba01204c1601d0f457a79a7efb02dd4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
