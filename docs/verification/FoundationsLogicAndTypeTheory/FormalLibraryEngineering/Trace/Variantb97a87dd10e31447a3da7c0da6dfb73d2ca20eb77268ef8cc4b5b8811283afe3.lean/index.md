# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Trace.Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb6aea1431eef54da8295c675a31bcebb2ef16b2",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb6aea1431eef54da8295c675a31bcebb2ef16b2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean.json)

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
| 1 | `structure` | [TraceElem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/traceelem--fa7091150ac9120f0bbd8f15.md) | 74 | `declaration-track:fa7091150ac9120f0bbd8f15ddc7420b635b344af3e1d3e9c149ebe76d9c30d1` |
| 2 | `structure` | [TraceState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/tracestate--ec5ff5a780a6e403a2e219c7.md) | 79 | `declaration-track:ec5ff5a780a6e403a2e219c72a1ad17605fe3f9e2bc9735f65edc2cb9eb52102` |
| 3 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/builtin-initialize--e9e6f28f11bf8e3646d2e848.md) | 85 | `declaration-track:e9e6f28f11bf8e3646d2e84858e1e33e1271ed03d748a72d982a34381b899f51` |
| 4 | `class` | [MonadTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/monadtrace--8a6261006053aff47ce2ace2.md) | 87 | `declaration-track:8a6261006053aff47ce2ace209edb9bff40c59382e12db78de8a5f1782ffb2bf` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--af5db3064bd1e66aef71b597.md) | 99 | `declaration-track:af5db3064bd1e66aef71b597f6f7d262026ef57799409491766a398af8e37143` |
| 6 | `def` | [printTraces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/printtraces--cac9114ddfeb5ce36bbc2e09.md) | 106 | `declaration-track:cac9114ddfeb5ce36bbc2e09c3861b6dff767958de162b82804c147ec263aae1` |
| 7 | `def` | [resetTraceState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/resettracestate--baa4e522d2f69d1e2402a172.md) | 110 | `declaration-track:baa4e522d2f69d1e2402a17211b4c0c5a98e0f55124d1cc91c0961c99ab5ef53` |
| 8 | `def` | [checkTraceOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/checktraceoption--db2918c221389e4949ae5f9e.md) | 113 | `declaration-track:db2918c221389e4949ae5f9e317ee1e06721c183674efb375045233816c57724` |
| 9 | `def` | [isTracingEnabledFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/istracingenabledfor--78ed25b70ad3dbebd5c07f74.md) | 126 | `declaration-track:78ed25b70ad3dbebd5c07f7478f08867448ff41e2ea9c154a12866652bc7e674` |
| 10 | `def` | [isTracingEnabledForExport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/istracingenabledforexport--22b33c01a0be52d52c6a92b8.md) | 130 | `declaration-track:22b33c01a0be52d52c6a92b8274177ce3bbee91d5273cc2d0b5641e10f27ef60` |
| 11 | `def` | [getTraces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/gettraces--44406eb4774f37961ba06875.md) | 138 | `declaration-track:44406eb4774f37961ba0687524e10086035da3ca6d647aa406cfa7a941ec2d46` |
| 12 | `def` | [modifyTraces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/modifytraces--3c8fc466c99ea82a3db608ed.md) | 142 | `declaration-track:3c8fc466c99ea82a3db608ed582c5454c80ac91f3a3ac6156d6146f31f8747a4` |
| 13 | `def` | [setTraceState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/settracestate--d786e777d6bd599551442e95.md) | 145 | `declaration-track:d786e777d6bd599551442e95dcef23b9c20366f88348d5913c9388cd97070ed7` |
| 14 | `def` | [getResetTraces](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/getresettraces--f593e6e29566633ad8abe121.md) | 148 | `declaration-track:f593e6e29566633ad8abe12154c81300a6ecc96e544b53dd4fbf9de46ffd3d21` |
| 15 | `def` | [addRawTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/addrawtrace--1ae8fd900d972e060a9b42fe.md) | 156 | `declaration-track:1ae8fd900d972e060a9b42fe76df7ac062379bae279369cb0c6a6f37a1c969a5` |
| 16 | `def` | [addTrace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/addtrace--f55ef98d98eac9e7e85d2619.md) | 161 | `declaration-track:f55ef98d98eac9e7e85d26199af663e2e5179c4d004c5fc2c528a6f9583f184e` |
| 17 | `def` | [trace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/trace--6fd322cc16fb00cb5ea277f7.md) | 166 | `declaration-track:6fd322cc16fb00cb5ea277f7a958e2e233dbdca63b4d5401c567beae72fa387d` |
| 18 | `def` | [traceM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/tracem--d3736fa170bf09b692361968.md) | 170 | `declaration-track:d3736fa170bf09b6923619685fe0c5d6ee771c402203ba18c90dccb3ef6a7ac4` |
| 19 | `def` | [addTraceNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/addtracenode--b299e5439612446690bbcaa3.md) | 175 | `declaration-track:b299e5439612446690bbcaa3ee320aa79938ab171137bfcec7c6c05015038389` |
| 20 | `def` | [trace.profiler.isExporting](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/trace-profiler-isexporting--9a1ae28009fb2d9721947682.md) | 221 | `declaration-track:9a1ae28009fb2d9721947682107a25688b1d4efe73159c53d2c0df7462f0cee3` |
| 21 | `def` | [withStartStop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/withstartstop--5e90c9e2a409760bda90cc4b.md) | 233 | `declaration-track:5e90c9e2a409760bda90cc4befd9b94e170ca7d370ebfa210ea068bf922825df` |
| 22 | `def` | [trace.profiler.threshold.unitAdjusted](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/trace-profiler-threshold-unitadjusted--71202e66084724133bdece92.md) | 246 | `declaration-track:71202e66084724133bdece92362dfc11754e582d0b19000f68a62f5a5cd6b8ad` |
| 23 | `class` | [MonadAlwaysExcept](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/monadalwaysexcept--49985dd511baffcfb824724c.md) | 261 | `declaration-track:49985dd511baffcfb824724c3af03e2c15e32a9590259f32d1657109523906fd` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--3ccbbcf9222c6574a0c702fe.md) | 266 | `declaration-track:3ccbbcf9222c6574a0c702fe6c8fe1d2cfc6963ed5bf7636fe689530645bef03` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--fbdbea4fbad7ee390069a959.md) | 269 | `declaration-track:fbdbea4fbad7ee390069a959ecf30aaef59ccdeb83bc4999e24144efa3d1a8ab` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--5f540b7fc712172f92589375.md) | 272 | `declaration-track:5f540b7fc712172f92589375fac4e0685809d6570a4fc4060fac003f1926bf20` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--54af98e5fabe72df5192df33.md) | 275 | `declaration-track:54af98e5fabe72df5192df33c70d72263e869293f171e99258db059df5df988c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--1208f8879dd5a6702d655446.md) | 278 | `declaration-track:1208f8879dd5a6702d6554462aaf22376a86e9be40e6e20e8f18417996053ab5` |
| 29 | `def` | [bombEmoji](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/bombemoji--c3f3f3be22bbaf7e67e24a00.md) | 282 | `declaration-track:c3f3f3be22bbaf7e67e24a005a328293e5c67e602487547f7c2813c8b66e1007` |
| 30 | `def` | [checkEmoji](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/checkemoji--8362e0742d2fce40a00b5f4a.md) | 283 | `declaration-track:8362e0742d2fce40a00b5f4aaef99e96303822ebd9205b62c01d688f67bb9c25` |
| 31 | `def` | [crossEmoji](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/crossemoji--db28875de402bf5e3aa24124.md) | 284 | `declaration-track:db28875de402bf5e3aa24124a9f1593af11d3936c7bf86d9b0432468ab29e23d` |
| 32 | `class` | [ExceptToTraceResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/excepttotraceresult--c208f9e71422cddabbf38512.md) | 289 | `declaration-track:c208f9e71422cddabbf3851222d7c4e6b662cfa53f1002354848ccc2e44d24a6` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--acf32d82cd3074384d8289fa.md) | 292 | `declaration-track:acf32d82cd3074384d8289fa6dcd3127703bc5b6239f3cf1ef0e66459a310821` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--6a6becaedb45d391b4eca718.md) | 298 | `declaration-track:6a6becaedb45d391b4eca718bf3aa8465b90654f6b6e1241830e2da36e3bb1bb` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--361158a6192c1f5562082be7.md) | 304 | `declaration-track:361158a6192c1f5562082be73cea5476801a54f373fb52c3e2329beec8252d42` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/instance--261efcd803e1d8b5ae3ce250.md) | 309 | `declaration-track:261efcd803e1d8b5ae3ce2508baacd77527cf2e8f8f92e499626f7f2424b3854` |
| 37 | `def` | [Except.toTraceResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/except-totraceresult--11b2f4debcda79915b59dc75.md) | 315 | `declaration-track:11b2f4debcda79915b59dc75a9842d848b32ae2956f5d179f2f14bc227df0900` |
| 38 | `def` | [withTraceNode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/withtracenode--8722779cc67d935466dde4ec.md) | 340 | `declaration-track:8722779cc67d935466dde4ec3314ceb590914211de717cde4111292949abdcc1` |
| 39 | `def` | [withTraceNode'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/withtracenode--9e0761ae57e8da1e0d902899.md) | 372 | `declaration-track:9e0761ae57e8da1e0d9028997289bcfb937aa2bab4aedddfb953f2600f8d8e5b` |
| 40 | `def` | [registerTraceClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/registertraceclass--8ba2652b09ecb44a1fc29d22.md) | 389 | `declaration-track:8ba2652b09ecb44a1fc29d22664876a7e47c6ddbe6d175e24d15c787934da069` |
| 41 | `def` | [expandTraceMacro](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/expandtracemacro--7edf613706a17e801dc7da72.md) | 400 | `declaration-track:7edf613706a17e801dc7da72abaaff6ae9b154a694661efe373f5f630a56b9db` |
| 42 | `macro` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/macro--7e92614cc18e9b0a78c44f37.md) | 407 | `declaration-track:7e92614cc18e9b0a78c44f37a076666b9bc9acf20cec71ccdadf9a89f4371120` |
| 43 | `def` | [withTraceNodeBefore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/withtracenodebefore--32b082cb66e86ccb09953bc9.md) | 423 | `declaration-track:32b082cb66e86ccb09953bc9d248d4eee6d372304479afa9820cf4983788b5ab` |
| 44 | `def` | [addTraceAsMessages](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/addtraceasmessages--f34189a65304d38f9d7b5712.md) | 455 | `declaration-track:f34189a65304d38f9d7b5712a3841e8c754211ac9875fcb6cc7ee637abc65ce3` |
| 45 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Trace/Variantb97a87dd10e31447a3da7c0da6dfb73d2ca20eb77268ef8cc4b5b8811283afe3.lean/declarations/builtin-initialize--dc7a9b16aac419a4dd49c9f2.md) | 477 | `declaration-track:dc7a9b16aac419a4dd49c9f2336ffbf697cded6b0fda681994befd8753d8cfed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
