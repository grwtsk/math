# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Replay.Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "569d367f96e36289e903ff7df2fe2f284ccd59e3",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `569d367f96e36289e903ff7df2fe2f284ccd59e3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.SemanticTokenization.Resolver` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/declarations/replay--0369ce97d8ce91d9890e37b7.md) | 7 | `declaration-track:0369ce97d8ce91d9890e37b7f23a80c2748f55d3f7e290668bfa6bcabd8de977` |
| 2 | `structure` | [ReplayReceipt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/declarations/replayreceipt--a145ecb88e8ed4541956fe98.md) | 12 | `declaration-track:a145ecb88e8ed4541956fe98bd6a044d5a5fc44d9d67b95a9b8f607568f849ab` |
| 3 | `theorem` | [deterministic_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/declarations/deterministic-replay--d84b0e045cd483d4b2bd0cbb.md) | 25 | `result-track:d84b0e045cd483d4b2bd0cbb7b8666a04b0f20602814ccf7ccb523954fae79c8` |
| 4 | `theorem` | [ReplayReceipt.results_equal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/declarations/replayreceipt-results-equal--13c0b428a9b74c7d12c541e6.md) | 30 | `result-track:13c0b428a9b74c7d12c541e67a9b93f7e1b2fac07b6f06891030d1cec344ad06` |
| 5 | `theorem` | [ReplayReceipt.snapshot_digest_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Replay/Variant6968f568b821290515a297a01a6606cfe1682994d49f35b19791e2e0d67b4d01.lean/declarations/replayreceipt-snapshot-digest-exact--f8499bf6cb96061c893c5a36.md) | 36 | `result-track:f8499bf6cb96061c893c5a3661d0fffdb466fef3ce95652ec6633b0cb3970553` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
