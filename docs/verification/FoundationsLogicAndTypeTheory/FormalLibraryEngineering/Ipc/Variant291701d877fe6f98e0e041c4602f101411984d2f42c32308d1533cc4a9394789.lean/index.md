# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Ipc.Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "716b453f6da84a27cf9ff498f12100e60962db41",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `716b453f6da84a27cf9ff498f12100e60962db41`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Sort.Basic` — import line 18; external provider; requires a separately pinned dependency.
- `Init.While` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ipcStdioConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/ipcstdioconfig--574a4a4c69c1400b4fc32f96.md) | 36 | `declaration-track:574a4a4c69c1400b4fc32f96b14eec7ea1a98d923b91ed580ab794d02850046b` |
| 2 | `abbrev` | [IpcM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/ipcm--d373a34c2a2eba293c8392d2.md) | 41 | `declaration-track:d373a34c2a2eba293c8392d2424a19cdc656adef9642c371a4f00d742168f5fa` |
| 3 | `def` | [stdin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/stdin--3116275fd0cacb41aeb98982.md) | 45 | `declaration-track:3116275fd0cacb41aeb989822d744516c60de1e8a30bfe2e6aaec54bf09d2774` |
| 4 | `def` | [stdout](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/stdout--230ac3501cdee3b35bdb71d4.md) | 48 | `declaration-track:230ac3501cdee3b35bdb71d40413174e3e992f0dbc707f80e859aaf06995569c` |
| 5 | `def` | [writeRequest](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/writerequest--623d537d405a9867afc2e9a5.md) | 51 | `declaration-track:623d537d405a9867afc2e9a57654969ae58b2de53c74d10c090c9f663379258f` |
| 6 | `def` | [writeNotification](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/writenotification--ada1d9dc34685536558d8203.md) | 54 | `declaration-track:ada1d9dc34685536558d8203c369f4ffbfcecdc553cc227796ccee1a195a2347` |
| 7 | `def` | [shutdown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/shutdown--06873e487429ed420a5a2276.md) | 57 | `declaration-track:06873e487429ed420a5a2276f89ab8e350cce572fec947298fed8507dac6ee89` |
| 8 | `def` | [readMessage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/readmessage--8d9828d365f42011c86800f7.md) | 74 | `declaration-track:8d9828d365f42011c86800f7591eccf9c92ed156081197b4b428b0854eb6b19b` |
| 9 | `def` | [readRequestAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/readrequestas--a0dadc308585d93614af5a67.md) | 77 | `declaration-track:a0dadc308585d93614af5a67b35969c39ce9965d9e4254cdc75c1e443188e96b` |
| 10 | `def` | [readResponseAs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/readresponseas--a63cdcede4bd209b1c0e13eb.md) | 85 | `declaration-track:a63cdcede4bd209b1c0e13ebc44b40b2759af331fe076937d8c1081cb3c33e11` |
| 11 | `def` | [waitForExit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/waitforexit--6a3fca1930ee5f04008ea03c.md) | 100 | `declaration-track:6a3fca1930ee5f04008ea03c73499b48d9144a2e957eceab913f6499f928bd67` |
| 12 | `def` | [normalizePublishDiagnosticsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/normalizepublishdiagnosticsparams--d868beff596dedf0218a9073.md) | 103 | `declaration-track:d868beff596dedf0218a9073241668f901226d6c072d529f9fe369fad12229ba` |
| 13 | `def` | [mergePublishDiagnosticsParams](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/mergepublishdiagnosticsparams--78f6a39cb43ebaa56c2e59be.md) | 124 | `declaration-track:78f6a39cb43ebaa56c2e59be185a655ee18f866d7665be701e6bb7dcad749345` |
| 14 | `def` | [collectDiagnostics](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/collectdiagnostics--fced10c352286d3ed2ea38e2.md) | 144 | `declaration-track:fced10c352286d3ed2ea38e2fcdbd936ffc73e4a0d9d5f6d82e732ab75c85abb` |
| 15 | `def` | [waitForILeans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/waitforileans--4d706aaf9fb5cf2e216a2b25.md) | 167 | `declaration-track:4d706aaf9fb5cf2e216a2b25e6b1c6c16f0f6652771774d41371db26f8a8af17` |
| 16 | `def` | [waitForWatchdogILeans](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/waitforwatchdogileans--05851b5bc35e96f44b5589ed.md) | 180 | `declaration-track:05851b5bc35e96f44b5589ed1eb595e3bfb116d5c95499d6cd7e9c990ac4f96f` |
| 17 | `structure` | [CallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/callhierarchy--45089b5375a66578ec918963.md) | 193 | `declaration-track:45089b5375a66578ec918963b08e97b75697b11852e4263672a6be7d647737da` |
| 18 | `def` | [expandIncomingCallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/expandincomingcallhierarchy--6e947d0f6ea67583ee1f0bc8.md) | 199 | `declaration-track:6e947d0f6ea67583ee1f0bc8a4d2d1fb495b2f7e652c9630f2ee4964ccaa3b2e` |
| 19 | `def` | [expandOutgoingCallHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/expandoutgoingcallhierarchy--bbdd7d06efc73a365aa0792c.md) | 241 | `declaration-track:bbdd7d06efc73a365aa0792c400e2325f97edb4183af873b1aee51fbdd748962` |
| 20 | `structure` | [ModuleHierarchy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/modulehierarchy--affaa5b8299a18637904065c.md) | 283 | `declaration-track:affaa5b8299a18637904065ce73a5c3cfea5d23b0ff5e69293dc36897089b7eb` |
| 21 | `def` | [expandModuleHierarchyImports](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/expandmodulehierarchyimports--38ca4bbae5ad6b5eb5d8612b.md) | 288 | `declaration-track:38ca4bbae5ad6b5eb5d8612bedc6d8c1ac7e01c44c2b198063548d5b13411fe0` |
| 22 | `def` | [expandModuleHierarchyImportedBy](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/expandmodulehierarchyimportedby--f3670dddfb3970daec0d3db2.md) | 331 | `declaration-track:f3670dddfb3970daec0d3db254f9c5ceb848ec08a1fd6ab7866b0c57c113ad47` |
| 23 | `def` | [runWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Ipc/Variant291701d877fe6f98e0e041c4602f101411984d2f42c32308d1533cc4a9394789.lean/declarations/runwith--ad92744564370e249f24b3af.md) | 374 | `declaration-track:ad92744564370e249f24b3afea2c6ce26b061f33bb2d4d1a3c2a769e83fbe43a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
