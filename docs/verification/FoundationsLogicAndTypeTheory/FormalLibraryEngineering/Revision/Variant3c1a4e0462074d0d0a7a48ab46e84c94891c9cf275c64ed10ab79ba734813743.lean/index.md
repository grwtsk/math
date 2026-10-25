# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ead54238d161b6339b5e8e6772f079def8d26283",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ead54238d161b6339b5e8e6772f079def8d26283`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revisionModulus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/revisionmodulus--d1dbc2e728fcf89161718224.md) | 25 | `declaration-track:d1dbc2e728fcf8916171822469c56171bd6b713891a1aa043ddf1dda27c25dd6` |
| 2 | `abbrev` | [Revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/revision--0846fd63d6d016ba3036d25c.md) | 27 | `declaration-track:0846fd63d6d016ba3036d25ccce0d319905009209a82fe2556a34a2cd8bbfcb1` |
| 3 | `def` | [next?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/next--30041f304ff7d6e59d613885.md) | 31 | `declaration-track:30041f304ff7d6e59d61388577b907697752992fdefdd54c09845c6e5cf86690` |
| 4 | `theorem` | [next?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/next-sound--69e49aa7825bf051ebe4b940.md) | 38 | `result-track:69e49aa7825bf051ebe4b9405244567603d8e4c3c3943d94cbaef778cd2359aa` |
| 5 | `theorem` | [next?_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/next-strict--f3c7ea1096566972bd5eb526.md) | 47 | `result-track:f3c7ea1096566972bd5eb526edd1902f978377c2455c38f7774c789a73bb4f60` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/next-eq-none-iff--60f5c921351e9f35f820fe41.md) | 55 | `result-track:60f5c921351e9f35f820fe410a324c02613d1be985d1c44fab33f5c26db966bf` |
| 7 | `structure` | [Revisioned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/revisioned--b3994ab22077322db71340d7.md) | 62 | `declaration-track:b3994ab22077322db71340d75f4f0aefdeef6ea8eb59d62d14af820fdbb2ba0f` |
| 8 | `structure` | [LwwRegister](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/lwwregister--b0b56268307105f0ac786937.md) | 68 | `declaration-track:b0b56268307105f0ac786937caa551df43365f462256abbfa7480c3ca33d6619` |
| 9 | `inductive` | [MergeDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/mergedecision--82ab7935f62d32f996c3e4da.md) | 73 | `declaration-track:82ab7935f62d32f996c3e4da4311801c934756ba06f6b40e4f4497e18344dab9` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/merge--4dc0697ce6ce673705a8a681.md) | 80 | `declaration-track:4dc0697ce6ce673705a8a6813d42eb55f58db6177dcbab39f557f49d804070d9` |
| 11 | `def` | [MergeDecision.result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/mergedecision-result--af98d83a6887cc8fe4aef3a0.md) | 96 | `declaration-track:af98d83a6887cc8fe4aef3a0bb766f93a382bec3bba70fea52e2381c8f887e17` |
| 12 | `def` | [LwwRegister.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/lwwregister-apply--2fe154016b7febbf7aceee22.md) | 103 | `declaration-track:2fe154016b7febbf7aceee22c171172d24b146f1fe902980d0ed7899e7615691` |
| 13 | `theorem` | [merge_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/merge-deterministic--5d40a52a75277008d13a64c0.md) | 109 | `result-track:5d40a52a75277008d13a64c0d5a5bcbc6619e9317b331f7ce90e37c067ea2213` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/stalerevision-rejected--d9f9a2219b8341e7602ff1df.md) | 118 | `result-track:d9f9a2219b8341e7602ff1df61d1b09539d5b0f02894db6b66c92151b408f245` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/equalrevision-conflict-rejected--7ff02acd51b5e91eb86cdd56.md) | 125 | `result-track:7ff02acd51b5e91eb86cdd56185c01378094d51b04f7a624c067ab85f8fc4d0f` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/equalrevision-identical-replay--d0ab94904c68292e305712b0.md) | 134 | `result-track:d0ab94904c68292e305712b056a376ba194505f539fdfe9a1d234659130f126a` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/acceptedrevision-not-stale--2a449e3434b58bf6c156ae74.md) | 143 | `result-track:2a449e3434b58bf6c156ae7491a427c0efc76319ae3e85a1721545a85ee4348d` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/merge-revision-monotone--8c42e21effb0365c6202157a.md) | 152 | `result-track:8c42e21effb0365c6202157ae6fd315e95f566a7ecf4afd6175a622edc314db8` |
| 19 | `theorem` | [replay_apply_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variant3c1a4e0462074d0d0a7a48ab46e84c94891c9cf275c64ed10ab79ba734813743.lean/declarations/replay-apply-idempotent--59f0579887066b5c9df95f61.md) | 166 | `result-track:59f0579887066b5c9df95f61936c0d98d49b32b366219bc21a227644c741975e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
