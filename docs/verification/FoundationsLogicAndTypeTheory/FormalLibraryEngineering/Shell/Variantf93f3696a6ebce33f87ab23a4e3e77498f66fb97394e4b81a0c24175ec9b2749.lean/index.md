# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Shell.Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9f00d57a273e10dfdbae4b0ddb23881e067e4ea",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9f00d57a273e10dfdbae4b0ddb23881e067e4ea`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Frontend` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 15; external provider; requires a separately pinned dependency.
- `Lean.Server.Watchdog` — import line 16; external provider; requires a separately pinned dependency.
- `Lean.Server.FileWorker` — import line 17; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.EmitC` — import line 18; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [decodeLossyUTF8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/decodelossyutf8--6854275c27bd9ac1a53b3d26.md) | 40 | `declaration-track:6854275c27bd9ac1a53b3d26b7cb5140d6e994ccf3b89e427afa6ffd28bf0ae2` |
| 2 | `opaque` | [runMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/runmain--80b3a1e7fa16a5d9b940d1d0.md) | 44 | `declaration-track:80b3a1e7fa16a5d9b940d1d0f67b42ba3f3fe5a503c7835f70d3ebe30088d1a8` |
| 3 | `opaque` | [initLLVM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/initllvm--77f54556aa42232f67452171.md) | 51 | `declaration-track:77f54556aa42232f674521718ca0ad7f474a0f6d269f2719f094db81a0b45892` |
| 4 | `opaque` | [emitLLVM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/emitllvm--a6de27305519691edd52a043.md) | 58 | `declaration-track:a6de27305519691edd52a043c9af9d3ece7aa08fada563681a9517641525181a` |
| 5 | `opaque` | [Internal.hasAddressSanitizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-hasaddresssanitizer--3c3a6b5f25313a94099cb69f.md) | 62 | `declaration-track:3c3a6b5f25313a94099cb69fc369023243a8b2306f9927f7ceac184ef17c3f0a` |
| 6 | `opaque` | [Internal.isMultiThread](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-ismultithread--06be425ea4faae6222e7c4b0.md) | 66 | `declaration-track:06be425ea4faae6222e7c4b0615af33462ae0785065384f9bd83bbb4dd712fbe` |
| 7 | `opaque` | [Internal.isDebug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-isdebug--9e4c569f1af16465bbbbc3d1.md) | 70 | `declaration-track:9e4c569f1af16465bbbbc3d1681ce7f6cb6bcf7b354d765a15278d8d70e044bc` |
| 8 | `opaque` | [Internal.getBuildType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getbuildtype--264486ca2fd3b7080af5090a.md) | 74 | `declaration-track:264486ca2fd3b7080af5090ac19814a2e48b88dbcb94f300f4432a828af0373c` |
| 9 | `opaque` | [Internal.getDefaultMaxMemory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getdefaultmaxmemory--776d44528fdaa84dd3245073.md) | 81 | `declaration-track:776d44528fdaa84dd3245073401921798b96f94f585614bdec18f5b96775dcf6` |
| 10 | `opaque` | [Internal.setMaxMemory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-setmaxmemory--71a53c293b9cd922fdbf8525.md) | 85 | `declaration-track:71a53c293b9cd922fdbf8525c98467acc09c4613776a24708219626510ea09b4` |
| 11 | `opaque` | [Internal.getDefaultMaxHeartbeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getdefaultmaxheartbeat--e686f772e0c768dacff2134a.md) | 92 | `declaration-track:e686f772e0c768dacff2134aad91dc5555b90c599c3272b20da0af5109ff2513` |
| 12 | `opaque` | [Internal.setMaxHeartbeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-setmaxheartbeat--f7577745e90a55901808680c.md) | 96 | `declaration-track:f7577745e90a55901808680cd34faff4e1e2f6beb490af69ca0233b923ea3f58` |
| 13 | `opaque` | [Internal.getDefaultVerbose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getdefaultverbose--88b4f8671b2d1279cb860a9d.md) | 100 | `declaration-track:88b4f8671b2d1279cb860a9d1faed66cd02c5d7ce5e95c4be0f650a431d524df` |
| 14 | `opaque` | [Internal.setExitOnPanic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-setexitonpanic--4ddb943a13e8029c06d5b176.md) | 104 | `declaration-track:4ddb943a13e8029c06d5b176404323438026fb756aff9d3d11cc59a8910a5b77` |
| 15 | `opaque` | [Internal.setThreadStackSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-setthreadstacksize--3932b8558330c6dc46943818.md) | 108 | `declaration-track:3932b8558330c6dc46943818be01cd7f7fc9b4350734a788d08dc2a4b584fb4a` |
| 16 | `opaque` | [Internal.enableDebug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-enabledebug--be7fd3320410017f537d8bb8.md) | 112 | `declaration-track:be7fd3320410017f537d8bb8a6ce2a5bd83ee5c3034d3b2befd9184c35e85a19` |
| 17 | `def` | [shortVersionString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shortversionstring--6a2e0680030d19606b01cff9.md) | 119 | `declaration-track:6a2e0680030d19606b01cff9c5dedb4d10afeeb5388bd6633adfaa3d26fc14c9` |
| 18 | `def` | [versionHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/versionheader--6f5c493e63d30504574ff722.md) | 128 | `declaration-track:6f5c493e63d30504574ff7222be416e9be9d924a2cc8707b338faa2fcfc9fec2` |
| 19 | `def` | [featuresString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/featuresstring--2333139cc99e547dcfc09095.md) | 141 | `declaration-track:2333139cc99e547dcfc090957f9d4dd879f5fb8e086b80808b71e69f5126e16f` |
| 20 | `def` | [displayHelp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/displayhelp--4f3b9487fa73cd6b650478ef.md) | 147 | `declaration-track:4f3b9487fa73cd6b650478efcf721c15c1c5178a8b9aacf2ced9fe788b2950aa` |
| 21 | `inductive` | [ShellComponent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shellcomponent--826258f8c5fd6d72a4770c78.md) | 196 | `declaration-track:826258f8c5fd6d72a4770c784eb26dd2623c678beb358f8b4700823a6da8c526` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/builtin-initialize--d4f1ef9a0d4b8c9bd8787a0b.md) | 201 | `declaration-track:d4f1ef9a0d4b8c9bd8787a0bbbc45a34d4ac7b4c7e172564fac24ba1955d6a43` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/builtin-initialize--2454b60c89a8fbacb9e79b8f.md) | 204 | `declaration-track:2454b60c89a8fbacb9e79b8f658c8846ab88ec76808641bf50d34a2caff67d57` |
| 24 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/builtin-initialize--778ca2e8ab98634f36b3167b.md) | 207 | `declaration-track:778ca2e8ab98634f36b3167be0b634f64ddab843069bf3aa218fcd93f4670729` |
| 25 | `opaque` | [Internal.getOptionOverrides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getoptionoverrides--dc6b629849b61944201a0880.md) | 212 | `declaration-track:dc6b629849b61944201a0880e7271a6ad85bbe9addca61ff0d1a0465005efe43` |
| 26 | `opaque` | [Internal.getBelieverTrustLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/internal-getbelievertrustlevel--6f6a47338b8fe0005634ef93.md) | 221 | `declaration-track:6f6a47338b8fe0005634ef933dfe78dbade1a77548f041625560639e3fe4cba1` |
| 27 | `def` | [defaultTrustLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/defaulttrustlevel--e6e17420ef289b6ffdbdaf06.md) | 224 | `declaration-track:e6e17420ef289b6ffdbdaf0682313ebf474d42e65d8cf514560d2befd4bf24b8` |
| 28 | `def` | [defaultNumThreads](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/defaultnumthreads--b5c5445d4fe54801cac5e1e9.md) | 228 | `declaration-track:b5c5445d4fe54801cac5e1e913e5117e69378666880859a88b8876b3a6b863a7` |
| 29 | `structure` | [ShellOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shelloptions--2407ae430716734618a59a9f.md) | 233 | `declaration-track:2407ae430716734618a59a9f898da6ba681130f2f0c5e71caf069ec478023322` |
| 30 | `def` | [mkShellOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/mkshelloptions--b4885ff39ba063ad272ed329.md) | 261 | `declaration-track:b4885ff39ba063ad272ed3296ca9848484f96057d59deee070a3bdb9b78e2179` |
| 31 | `def` | [ShellOptions.getRun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shelloptions-getrun--c3e9df791273f5275050e814.md) | 264 | `declaration-track:c3e9df791273f5275050e814ee70c74c21ea573efd16a85dcf4a9265b15fde5f` |
| 32 | `def` | [ShellOptions.getProfiler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shelloptions-getprofiler--af4d8eb6102440d183b0c1ef.md) | 268 | `declaration-track:af4d8eb6102440d183b0c1ef6b6244e8eafd09b32b6c2db538565033c58cf3cf` |
| 33 | `def` | [ShellOptions.getNumThreads](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shelloptions-getnumthreads--fbce1c257176574de90fe445.md) | 272 | `declaration-track:fbce1c257176574de90fe445f7c797138a000dc555367b8e11d6f410ec3bd1d8` |
| 34 | `def` | [checkOptArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/checkoptarg--b54f70450a82984272a79737.md) | 275 | `declaration-track:b54f70450a82984272a79737d3d50c8e20d7469e398a0a1979243ace34ea19a2` |
| 35 | `def` | [setConfigOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/setconfigoption--05dc139f53f4a41a38e1a245.md) | 281 | `declaration-track:05dc139f53f4a41a38e1a245749285220b75a5dc082bd6cd01fa8521c04d7c16` |
| 36 | `def` | [ShellOptions.process](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shelloptions-process--c15685fedff4d0356f4a1b98.md) | 301 | `declaration-track:c15685fedff4d0356f4a1b985586320aa07340bfa77d1f42fbfc4ae8b6acfa38` |
| 37 | `def` | [shellMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variantf93f3696a6ebce33f87ab23a4e3e77498f66fb97394e4b81a0c24175ec9b2749.lean/declarations/shellmain--ed3091ba9202c5aae0fad292.md) | 476 | `declaration-track:ed3091ba9202c5aae0fad2923f883fea3afb31e790c7bcc3b96f9be2b2bba8e6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
