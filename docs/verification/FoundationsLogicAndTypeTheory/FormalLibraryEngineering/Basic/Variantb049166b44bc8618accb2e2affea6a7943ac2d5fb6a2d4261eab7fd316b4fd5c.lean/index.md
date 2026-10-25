# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3610b18a2512cba36f9d9c370823e6d982267162",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3610b18a2512cba36f9d9c370823e6d982267162`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.PhaseOrder` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [MemoryId](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/memoryid--82e21fe9d2e4952eb9c1654f.md) | 7 | `declaration-track:82e21fe9d2e4952eb9c1654f0f4cb6c7cb39eaca434f3e3b47ec7c6fc7dc1415` |
| 2 | `abbrev` | [RepoPtr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/repoptr--ccb0edff3d163c8ccf010717.md) | 8 | `declaration-track:ccb0edff3d163c8ccf010717edf74e1abec48dd525defa608512492f931bcc94` |
| 3 | `abbrev` | [ConversationPtr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/conversationptr--9b25e57885c64bc3d33881d8.md) | 9 | `declaration-track:9b25e57885c64bc3d33881d8142b69ae710dfb7c07dad52ad9d711fcfc2b2c01` |
| 4 | `abbrev` | [ToolPtr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/toolptr--2a623bad3fe40eddc80adefe.md) | 10 | `declaration-track:2a623bad3fe40eddc80adefe415580d06c8029d5df16bd407a43b261f5395c9e` |
| 5 | `abbrev` | [WorkflowPtr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/workflowptr--70815006ff6cca5967c25afb.md) | 11 | `declaration-track:70815006ff6cca5967c25afb709ef46f99683b8bd7820a6e7a8abf4e27784d09` |
| 6 | `inductive` | [TimeScope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/timescope--8555b77e2f2c8800c164cc46.md) | 13 | `declaration-track:8555b77e2f2c8800c164cc46f95265804f937af0e91c6850c651a1807fa6ef97` |
| 7 | `inductive` | [SourcePointer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/sourcepointer--684c8157be682bdc3d0accae.md) | 19 | `declaration-track:684c8157be682bdc3d0accaeb4c0395ed99dad6efeedcf829564b99a53868c2d` |
| 8 | `def` | [SourcePointer.label](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/sourcepointer-label--2ec6deea55b9da1fca8330ac.md) | 26 | `declaration-track:2ec6deea55b9da1fca8330ace8a1a2798fd98da817b4e23d16bc488d5c8234b7` |
| 9 | `structure` | [FiniteRunBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/finiterunbounds--7a430aad58c5f79107cfaf36.md) | 32 | `declaration-track:7a430aad58c5f79107cfaf36c4723948be16c2d57ba37e1b528520b1dbefa321` |
| 10 | `def` | [defaultFiniteRunBounds](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/defaultfiniterunbounds--e3c536897fdd8922a3306148.md) | 39 | `declaration-track:e3c536897fdd8922a33061488e4d128dec51d5a8653af594093ea474b0237c22` |
| 11 | `def` | [preservedCenterIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/preservedcenterindex--b7d2282f2bf1e044b5e6dc49.md) | 45 | `declaration-track:b7d2282f2bf1e044b5e6dc4946ad7103663b9fa6a5d1c389a549920b937e0ed6` |
| 12 | `def` | [preservedPhaseCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/preservedphasecount--0648ebbab188fac6b10e0d9f.md) | 48 | `declaration-track:0648ebbab188fac6b10e0d9f754a3bd80ac8dbe22abb52ba05e63007c4a49a8a` |
| 13 | `theorem` | [preservedPhaseCount_matches_spine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/preservedphasecount-matches-spine--b8d6363b71366db2e213be2e.md) | 51 | `result-track:b8d6363b71366db2e213be2e503b872ee1480f13cf8345370bd3d24ae0308f08` |
| 14 | `theorem` | [preservedCenterIndex_is_30](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantb049166b44bc8618accb2e2affea6a7943ac2d5fb6a2d4261eab7fd316b4fd5c.lean/declarations/preservedcenterindex-is-30--5c293402e2493d4b5a723bda.md) | 55 | `result-track:5c293402e2493d4b5a723bdaa84f56e489d44711ceb986c2a67b875ffe0f0681` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
