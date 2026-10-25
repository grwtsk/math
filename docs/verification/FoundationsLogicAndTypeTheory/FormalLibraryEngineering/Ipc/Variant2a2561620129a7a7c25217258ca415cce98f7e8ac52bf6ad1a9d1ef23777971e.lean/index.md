# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ipc.Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e16086d5ea9dd3bc1f7479e4241c09c5ef78204",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e16086d5ea9dd3bc1f7479e4241c09c5ef78204`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Init.While` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ipcStdioConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/ipcstdioconfig--8d535456519f952e9ae76665.md) | 28 | `declaration-track:8d535456519f952e9ae76665bc7e2b1cc415741381ffec3b6b373d5927fa4671` |
| 2 | `abbrev` | [IpcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/ipcm--2933f84e47216ea1119e6d08.md) | 33 | `declaration-track:2933f84e47216ea1119e6d08c59b22463c26a9f05a94a33556db808034ea3cc3` |
| 3 | `def` | [stdin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/stdin--ccd0e7888080a0faab08e154.md) | 37 | `declaration-track:ccd0e7888080a0faab08e154036e7926be3fc541f9a006ace607709893d23ad1` |
| 4 | `def` | [stdout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/stdout--9f0d87778819218a7bcf4306.md) | 40 | `declaration-track:9f0d87778819218a7bcf430609ba18a9df85a26f2ad27ba9bb25e59dc6970d00` |
| 5 | `def` | [writeRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/writerequest--a777328c997a9e9f39c14e9d.md) | 43 | `declaration-track:a777328c997a9e9f39c14e9d2324b2afcda556e197f2ba6bb6355b6fb64cd609` |
| 6 | `def` | [writeNotification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/writenotification--464ff30b9a1859210fc50850.md) | 46 | `declaration-track:464ff30b9a1859210fc508507dca776b8c90dfd21a6fc59dc0d9294c892d60d1` |
| 7 | `def` | [shutdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/shutdown--81c5b7aa48e40c5c64e271af.md) | 49 | `declaration-track:81c5b7aa48e40c5c64e271afce0d3e2b4f090f1e71ef681b1d6b86ffbb3aadc4` |
| 8 | `def` | [readMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/readmessage--1090f683d1c13c22d9aea408.md) | 66 | `declaration-track:1090f683d1c13c22d9aea408d8ceab0ca2636ac6c28fbf2fa8d971c3fff9410e` |
| 9 | `def` | [readRequestAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/readrequestas--36e7e618dfd2f12170190f34.md) | 69 | `declaration-track:36e7e618dfd2f12170190f34d131c5d2a1dfa888dbd8e2c67a8fb2ee09e6f51b` |
| 10 | `def` | [readResponseAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/readresponseas--3b781cd82b67c76e48f03eca.md) | 77 | `declaration-track:3b781cd82b67c76e48f03ecac4b408fc501833118f9b434377d1d75ddc9e6388` |
| 11 | `def` | [waitForExit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/waitforexit--0ae223c94306ee97c60d27cb.md) | 92 | `declaration-track:0ae223c94306ee97c60d27cb9a442287adcea8d7eb00d23fd86a44906335fe1e` |
| 12 | `def` | [normalizePublishDiagnosticsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/normalizepublishdiagnosticsparams--cf3b80319412a43ba4f9d7a6.md) | 95 | `declaration-track:cf3b80319412a43ba4f9d7a6296525be89a4584c749bf4d7b66ceb4641e40daf` |
| 13 | `def` | [mergePublishDiagnosticsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/mergepublishdiagnosticsparams--b8f2c2259be4999e0f1e6d70.md) | 116 | `declaration-track:b8f2c2259be4999e0f1e6d700ca41486fd48240a692c8180f84935ef61cbb5d5` |
| 14 | `def` | [collectDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/collectdiagnostics--6852d5f761b659baed5a09ac.md) | 136 | `declaration-track:6852d5f761b659baed5a09ac03edbd72cd808b4029a3ce8f91eb96a5b4d4c94c` |
| 15 | `def` | [waitForILeans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/waitforileans--52a70f5e646902a6be81d7a1.md) | 159 | `declaration-track:52a70f5e646902a6be81d7a158eaad65cc0b29c0f4820ef831ebcbc1a1dd3217` |
| 16 | `def` | [waitForWatchdogILeans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/waitforwatchdogileans--8a929cdc49943b71f0c05fb4.md) | 172 | `declaration-track:8a929cdc49943b71f0c05fb47e2f8a1269118be1c594c6fd573ab93a8aa7fe30` |
| 17 | `structure` | [CallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/callhierarchy--8a329dec22a0a4bea74ca35f.md) | 185 | `declaration-track:8a329dec22a0a4bea74ca35fce833ee3105ef78e768bed18091126860a79cb47` |
| 18 | `def` | [expandIncomingCallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/expandincomingcallhierarchy--0f397c0e9b59c5de5603072f.md) | 191 | `declaration-track:0f397c0e9b59c5de5603072fd026aa81267a29207991555ee02a019bfb581048` |
| 19 | `def` | [expandOutgoingCallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/expandoutgoingcallhierarchy--907b36af47cf87d31460e110.md) | 233 | `declaration-track:907b36af47cf87d31460e110fdc0d1952ac56b2878c14544f57291c3a7ec2b95` |
| 20 | `structure` | [ModuleHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/modulehierarchy--0b7b69371d71f63204d9d0ee.md) | 275 | `declaration-track:0b7b69371d71f63204d9d0eeaa087edb0a3293f13bad459462c052f7129b9d8a` |
| 21 | `def` | [expandModuleHierarchyImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/expandmodulehierarchyimports--dc6767911013cbe76082d0b4.md) | 280 | `declaration-track:dc6767911013cbe76082d0b4082c51ce2ca6f9553381cda7e0374788eb326474` |
| 22 | `def` | [expandModuleHierarchyImportedBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/expandmodulehierarchyimportedby--82b5d66d43d3d2a7553476f8.md) | 323 | `declaration-track:82b5d66d43d3d2a7553476f8dd4693ee9fe4d43133a94fb72847c2d2dc96cd1b` |
| 23 | `def` | [runWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant2a2561620129a7a7c25217258ca415cce98f7e8ac52bf6ad1a9d1ef23777971e.lean/declarations/runwith--60696f0fb6659284af742c00.md) | 366 | `declaration-track:60696f0fb6659284af742c003ddba19173893c31be2a9ed38c1c85e6cf7bb3ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
