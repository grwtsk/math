# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Register.Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca805da3595728082cf5d4884c30d71825456d0d",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca805da3595728082cf5d4884c30d71825456d0d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean.json)

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
| 1 | `structure` | [CommitAdapter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/commitadapter--bac37c52dc81c5db027ee7b6.md) | 21 | `declaration-track:bac37c52dc81c5db027ee7b6d21a11df1b4204ec2b623a9a9689f3d6d858e9c0` |
| 2 | `structure` | [PreparedCommit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/preparedcommit--357e9b22d62c150099aa4ba6.md) | 29 | `declaration-track:357e9b22d62c150099aa4ba69209709c3367bd1f37f8d7cfaa566b0fddf6526b` |
| 3 | `inductive` | [CommitRejection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/commitrejection--9422b3d0ac39ee5938c18c25.md) | 37 | `declaration-track:9422b3d0ac39ee5938c18c2509fe6711200beb974a98bf1cbe9eda05cc82362d` |
| 4 | `inductive` | [CommitResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/commitresult--9fb2246bacdeed9f29afe6ee.md) | 44 | `declaration-track:9fb2246bacdeed9f29afe6ee3a48a1d0cc5faae994eb8057ad93c7358ee3d344` |
| 5 | `def` | [CommitResult.model](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/commitresult-model--a9be037f170821fce54854be.md) | 48 | `declaration-track:a9be037f170821fce54854be85a02808c0ae348fa067e34c70c4e16fdd2dca52` |
| 6 | `def` | [commit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/commit--c66deb269ee6562a48475e27.md) | 52 | `declaration-track:c66deb269ee6562a48475e27302d94c1046ba4caf3da4a2b2879fba3f754f93b` |
| 7 | `theorem` | [rejectedProposal_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/rejectedproposal-leavesmodelunchanged--b7a88a9c1452772a00de0af9.md) | 68 | `result-track:b7a88a9c1452772a00de0af99586ad86d676b1161036a718433e8aa4974de66f` |
| 8 | `theorem` | [sourceSnapshotRace_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/sourcesnapshotrace-leavesmodelunchanged--b11a1ae1af0a48824812abb5.md) | 78 | `result-track:b11a1ae1af0a48824812abb57ad8ce4fc672b55b1d3666f1a4c03d148f18cf5f` |
| 9 | `theorem` | [targetRevisionRace_leavesModelUnchanged](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/targetrevisionrace-leavesmodelunchanged--4bda300a5b62d61a9a433a2d.md) | 89 | `result-track:4bda300a5b62d61a9a433a2d5fd59f5a464fcecbed4e049b69ba47e6347b8c57` |
| 10 | `theorem` | [successfulCommit_preserves_revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/successfulcommit-preserves-revision--69efe705cbdb4dc62381b7a3.md) | 102 | `result-track:69efe705cbdb4dc62381b7a30e59f195c44dfbc7bb399cd898c6808b4216e421` |
| 11 | `theorem` | [successfulCommit_projects_admitted_payload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Register/Variant4987c88f7a3ed34524b0ff4cd858e36f9c57a07bbbf227b3c021f82003ae2dc7.lean/declarations/successfulcommit-projects-admitted-payload--b6d8326edff88fced04318a5.md) | 121 | `result-track:b6d8326edff88fced04318a5c87a3fa12bba4eb630b5dcf36e68fb17ed711521` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
