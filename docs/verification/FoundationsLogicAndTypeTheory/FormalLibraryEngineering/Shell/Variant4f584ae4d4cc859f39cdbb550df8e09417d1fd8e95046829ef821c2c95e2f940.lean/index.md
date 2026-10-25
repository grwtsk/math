# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Shell.Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f73f6fe35d11cbccd9b6effe1bafad030fdbdce",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f73f6fe35d11cbccd9b6effe1bafad030fdbdce`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.Frontend` — import line 9; external provider; requires a separately pinned dependency.
- `Lean.Elab.ParseImportsFast` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Server.Watchdog` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Server.FileWorker` — import line 12; external provider; requires a separately pinned dependency.
- `Lean.Compiler.LCNF.EmitC` — import line 13; external provider; requires a separately pinned dependency.
- `Init.System.Platform` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Compiler.Options` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `opaque` | [decodeLossyUTF8](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/decodelossyutf8--2da83375552443887f1c7088.md) | 32 | `declaration-track:2da83375552443887f1c7088878cdfd157d72f84b2706ea3ec6d5e864e235bad` |
| 2 | `opaque` | [runMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/runmain--8f596c17a323205aef3b1bcd.md) | 36 | `declaration-track:8f596c17a323205aef3b1bcde2b3a15c5fa702fd7b668b602b7b2dd0529eb089` |
| 3 | `opaque` | [initLLVM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/initllvm--f95888283eb5cefa523cefeb.md) | 43 | `declaration-track:f95888283eb5cefa523cefeb55fc8fdfefd62a5977dec32e3c68322efb29bbca` |
| 4 | `opaque` | [emitLLVM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/emitllvm--5fd521a1781fbbd5506ab2fb.md) | 50 | `declaration-track:5fd521a1781fbbd5506ab2fb8937f55133cf10275ebbbb78f3ebe4c8bab64ec5` |
| 5 | `opaque` | [Internal.hasAddressSanitizer](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-hasaddresssanitizer--d12e0bcc192f918faae8459e.md) | 54 | `declaration-track:d12e0bcc192f918faae8459e26304762e601e5306a8bcb32115084af778a2465` |
| 6 | `opaque` | [Internal.isMultiThread](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-ismultithread--8cdb9469a07a3feb6d95a7ea.md) | 58 | `declaration-track:8cdb9469a07a3feb6d95a7ea9c75735af3da5335b6360cbe31f1a76cb53867b0` |
| 7 | `opaque` | [Internal.isDebug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-isdebug--e66ce8af76bbb919316d2f2e.md) | 62 | `declaration-track:e66ce8af76bbb919316d2f2e3b33401fee07a0085e990de7b43637dd512c0bd3` |
| 8 | `opaque` | [Internal.getBuildType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getbuildtype--1195fcf979d6a52248650b22.md) | 66 | `declaration-track:1195fcf979d6a52248650b22336be05f0f3ca5b38210f05d7bccc057d04b3d41` |
| 9 | `opaque` | [Internal.getDefaultMaxMemory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getdefaultmaxmemory--41e8ea827154b542875cbad6.md) | 73 | `declaration-track:41e8ea827154b542875cbad6d41ea874997a9ffcd79f57e88884c893d409bc8e` |
| 10 | `opaque` | [Internal.setMaxMemory](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-setmaxmemory--31f427383caf9ef4d5e8aece.md) | 77 | `declaration-track:31f427383caf9ef4d5e8aece4925dab5ec1b07790aaeef4145eddd979d803f88` |
| 11 | `opaque` | [Internal.getDefaultMaxHeartbeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getdefaultmaxheartbeat--a6a1827f514fa7f4b2fada13.md) | 84 | `declaration-track:a6a1827f514fa7f4b2fada13bf2167d269ada168cd2cb9465ba4040025ecc2d5` |
| 12 | `opaque` | [Internal.setMaxHeartbeat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-setmaxheartbeat--2ec294a42811042eb961b04a.md) | 88 | `declaration-track:2ec294a42811042eb961b04a4e38ce633ce958d7a0c69d552b7d1950ef8dfb88` |
| 13 | `opaque` | [Internal.getDefaultVerbose](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getdefaultverbose--498e8b4c4238de1c17264a8d.md) | 92 | `declaration-track:498e8b4c4238de1c17264a8d0af37f312367f935000098dde86c525805e7c0cc` |
| 14 | `opaque` | [Internal.setExitOnPanic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-setexitonpanic--244caa046922d1129f5397d6.md) | 96 | `declaration-track:244caa046922d1129f5397d68517fac8975ee762d470b9f4e39852c18e74c02d` |
| 15 | `opaque` | [Internal.setThreadStackSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-setthreadstacksize--aa732eeaa222962c2574b46b.md) | 100 | `declaration-track:aa732eeaa222962c2574b46bff3f17c00742de301414a4f9b1b9ba9e5b33385a` |
| 16 | `opaque` | [Internal.enableDebug](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-enabledebug--c3a2ca7ca54726cd3f5fbf59.md) | 104 | `declaration-track:c3a2ca7ca54726cd3f5fbf59ccc7db8355e51ffba46554c9fa336c443408e5a7` |
| 17 | `def` | [shortVersionString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shortversionstring--bd175067438216671041205a.md) | 111 | `declaration-track:bd175067438216671041205aef609eb2e45d346ebfdfad799124a293b56ce04d` |
| 18 | `def` | [versionHeader](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/versionheader--b387b734c1e3dd32078fe85b.md) | 120 | `declaration-track:b387b734c1e3dd32078fe85bb6365374a898f79bc1f43f259f7e134ec245278d` |
| 19 | `def` | [featuresString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/featuresstring--826a6fa3aee6a34463ad835d.md) | 133 | `declaration-track:826a6fa3aee6a34463ad835d8b7d59efd0d050134728245d48968dc627bc6e74` |
| 20 | `def` | [displayHelp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/displayhelp--4439235ad3d116759d053200.md) | 139 | `declaration-track:4439235ad3d116759d0532003a79399f7dea3805a25f77d120730c0820b3c227` |
| 21 | `inductive` | [ShellComponent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shellcomponent--338bca42b6a5e6eee2e78071.md) | 188 | `declaration-track:338bca42b6a5e6eee2e780712246b3709307705001aa861160ef7fabb5bfddd3` |
| 22 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/builtin-initialize--27506d1539613c5e32ba6df4.md) | 193 | `declaration-track:27506d1539613c5e32ba6df4b06b410b0a77f5448540396a6336d5e6ac255cdf` |
| 23 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/builtin-initialize--dfc4e2429673e645136f9815.md) | 196 | `declaration-track:dfc4e2429673e645136f9815c9d7ebc9d595758d580e1a7375323c7add3f8e60` |
| 24 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/builtin-initialize--12fdab20c5c264c41f677bc4.md) | 199 | `declaration-track:12fdab20c5c264c41f677bc4cc034b9c006c71c8b73545f756ecbdfe9c6b8a96` |
| 25 | `opaque` | [Internal.getOptionOverrides](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getoptionoverrides--2a3affa07698d77591a498ec.md) | 204 | `declaration-track:2a3affa07698d77591a498ec00b9b8b9525c06731c34f5a36789c1ba301fa0aa` |
| 26 | `opaque` | [Internal.getBelieverTrustLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/internal-getbelievertrustlevel--3ec3697da77648f74a5fdef5.md) | 213 | `declaration-track:3ec3697da77648f74a5fdef5d9f08c4578a2ebab2dda1d4b4ec90da36854cefd` |
| 27 | `def` | [defaultTrustLevel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/defaulttrustlevel--b64790fd9c93a638fd73040a.md) | 216 | `declaration-track:b64790fd9c93a638fd73040a19b8b5e4f02222ac63b6f5448078ad3f0e3b3cbf` |
| 28 | `def` | [defaultNumThreads](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/defaultnumthreads--ec46e34295b9130df7538f51.md) | 220 | `declaration-track:ec46e34295b9130df7538f51409b653d116d5aba8359e3736febf8fe5c771575` |
| 29 | `structure` | [ShellOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shelloptions--4b4152a995368c066df49d4b.md) | 225 | `declaration-track:4b4152a995368c066df49d4bda138b469dec110c8dc40a928dc90b7c764695b6` |
| 30 | `def` | [mkShellOptions](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/mkshelloptions--357918bc3644cdc883e5269a.md) | 253 | `declaration-track:357918bc3644cdc883e5269a0dffb846018d2ebf40f946ef37e06d2d7b96a134` |
| 31 | `def` | [ShellOptions.getRun](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shelloptions-getrun--663ccad4461e4f40c7d06a8b.md) | 256 | `declaration-track:663ccad4461e4f40c7d06a8b0614d436ea93d86fbdd71a7b1ead390cfbe9ef90` |
| 32 | `def` | [ShellOptions.getProfiler](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shelloptions-getprofiler--b70cfb50ab245a5c21b750c4.md) | 260 | `declaration-track:b70cfb50ab245a5c21b750c4d14e30dd71d0612891d70f38ee63546c6f5fd740` |
| 33 | `def` | [ShellOptions.getNumThreads](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shelloptions-getnumthreads--be077be9a28497490a037557.md) | 264 | `declaration-track:be077be9a28497490a03755711076af5a3780c0582df5c34d2e1d29fa4b413ef` |
| 34 | `def` | [checkOptArg](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/checkoptarg--0286b8fabfa2750dd4f9bc81.md) | 267 | `declaration-track:0286b8fabfa2750dd4f9bc81be27b8b36a9d476ff3322d806b9055e9f7a1d095` |
| 35 | `def` | [setConfigOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/setconfigoption--e4ba3773ba3b91d8604f6833.md) | 273 | `declaration-track:e4ba3773ba3b91d8604f6833f15aeb08d48b21c5179789f364084a3e2de059ca` |
| 36 | `def` | [ShellOptions.process](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shelloptions-process--ae9b7ddff64a40c9b99f8554.md) | 293 | `declaration-track:ae9b7ddff64a40c9b99f855417260e1c1938eda15bd3f1fb35a5bfd72d87c004` |
| 37 | `def` | [shellMain](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Shell/Variant4f584ae4d4cc859f39cdbb550df8e09417d1fd8e95046829ef821c2c95e2f940.lean/declarations/shellmain--54203aacaa9df42c8a17fbf2.md) | 468 | `declaration-track:54203aacaa9df42c8a17fbf22c356aa47b655a0bf58b760273fa5c7941a53035` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
