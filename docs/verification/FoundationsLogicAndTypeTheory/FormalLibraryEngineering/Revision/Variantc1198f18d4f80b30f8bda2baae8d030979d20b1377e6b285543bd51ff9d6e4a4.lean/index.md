# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Revision.Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc1538d91ed33eb2eb9653ece47a03f19e889f67",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc1538d91ed33eb2eb9653ece47a03f19e889f67`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [revisionModulus](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/revisionmodulus--26c27101541e0e7d55d98d22.md) | 17 | `declaration-track:26c27101541e0e7d55d98d2287bcce6372af3826eb45a899884e557922716d62` |
| 2 | `abbrev` | [Revision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/revision--6579ae083cbb1d0b85c64a55.md) | 19 | `declaration-track:6579ae083cbb1d0b85c64a55a71170210437654fcb29867ec3e11fc526925906` |
| 3 | `def` | [next?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/next--76773e738650da82c15e2734.md) | 23 | `declaration-track:76773e738650da82c15e2734eaf51ee94f4f59227849b567cae350887f7d5a97` |
| 4 | `theorem` | [next?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/next-sound--af0b68ea41926b673c44de28.md) | 30 | `result-track:af0b68ea41926b673c44de285bc41743e2a175add0bae865c9e75c662f2e513e` |
| 5 | `theorem` | [next?_strict](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/next-strict--5c5ef2c6a125a829ff9a521a.md) | 39 | `result-track:5c5ef2c6a125a829ff9a521aeae005fd79cd51d12e5dbdcf92fb28185ee7b70f` |
| 6 | `theorem` | [next?_eq_none_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/next-eq-none-iff--60bdf257ab5fe793c7067740.md) | 47 | `result-track:60bdf257ab5fe793c7067740f58f4023b4a1dc80b7e03522d35f7457e3f33154` |
| 7 | `structure` | [Revisioned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/revisioned--424c057062e373db10028ad8.md) | 54 | `declaration-track:424c057062e373db10028ad85f6151906ec37ebde7c788379a381fc8af89c91c` |
| 8 | `structure` | [LwwRegister](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/lwwregister--f4b3fb07ae7333c086641a95.md) | 60 | `declaration-track:f4b3fb07ae7333c086641a950988475d1aa97d635e7b668e607b35558f31597c` |
| 9 | `inductive` | [MergeDecision](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/mergedecision--b7f55abe1217201bc8faf1df.md) | 65 | `declaration-track:b7f55abe1217201bc8faf1df05f692ace6ab30e2b38214c55e0476149d76a5fe` |
| 10 | `def` | [merge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/merge--b9d34b45e8c67a1e27fa3e08.md) | 72 | `declaration-track:b9d34b45e8c67a1e27fa3e08390a0806c4cc9353dea531fee46b1d2b37ea94c1` |
| 11 | `def` | [MergeDecision.result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/mergedecision-result--bfcc17c120b4d575f6a8d218.md) | 88 | `declaration-track:bfcc17c120b4d575f6a8d218807ff87820d8c833ff9c91e62fae3c7e774f8366` |
| 12 | `def` | [LwwRegister.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/lwwregister-apply--4ce44850e4683892cf326dce.md) | 95 | `declaration-track:4ce44850e4683892cf326dcee22bf4a802539db7e4812b3ea5575c940f8776f3` |
| 13 | `theorem` | [merge_deterministic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/merge-deterministic--b85505c24e1c38d17bf54255.md) | 101 | `result-track:b85505c24e1c38d17bf5425508e37680f8ba4e8132eff12c42527a83fa4cea9a` |
| 14 | `theorem` | [staleRevision_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/stalerevision-rejected--34ad6a81a0ff09e48a728452.md) | 110 | `result-track:34ad6a81a0ff09e48a7284526dbdab319a21f4f5e13b93fcb3b01a10cc4c47bc` |
| 15 | `theorem` | [equalRevision_conflict_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/equalrevision-conflict-rejected--34300ac7e1d60b76fc830d05.md) | 117 | `result-track:34300ac7e1d60b76fc830d0519610827665fea1955a7d10e5d977e6369277433` |
| 16 | `theorem` | [equalRevision_identical_replay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/equalrevision-identical-replay--95c89deb6764f3b6babd6321.md) | 126 | `result-track:95c89deb6764f3b6babd6321d2a2fe75cc6e6302934bb1ca4adb2d7f17396cc0` |
| 17 | `theorem` | [acceptedRevision_not_stale](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/acceptedrevision-not-stale--cb446c80e90db59d59fd378c.md) | 135 | `result-track:cb446c80e90db59d59fd378ce59d5d431804fa078d699179b5dcd93e29cd9782` |
| 18 | `theorem` | [merge_revision_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/merge-revision-monotone--2a9c2b3d328324416586e23c.md) | 144 | `result-track:2a9c2b3d328324416586e23cf7640c567933db70ece13eef0aa8d9f6dda0e9f3` |
| 19 | `theorem` | [replay_apply_idempotent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Revision/Variantc1198f18d4f80b30f8bda2baae8d030979d20b1377e6b285543bd51ff9d6e4a4.lean/declarations/replay-apply-idempotent--6b351c8d0c0bb5f3770ee16e.md) | 158 | `result-track:6b351c8d0c0bb5f3770ee16efc92a13632bc5b79c13f72f548a81db5f4e2238b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
