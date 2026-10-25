# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Run.Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "062ff5f3b468a537a0a070cb72f1a59f521c3878",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `062ff5f3b468a537a0a070cb72f1a59f521c3878`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Config.Monad` — import line 10; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Monad` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Build.Index` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBuildContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/mkbuildcontext--200f16ee40f693c50383d32f.md) | 27 | `declaration-track:200f16ee40f693c50383d32fd64b904fca6ce833f8ca5ef55f64eb62969293c3` |
| 2 | `def` | [Monitor.spinnerFrames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitor-spinnerframes--e13faebc6a733f3665439f5c.md) | 37 | `declaration-track:e13faebc6a733f3665439f5ca3596a00e3343a1b5886c566666d75bdbfb05e81` |
| 3 | `structure` | [MonitorContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorcontext--664605478a301d13571b6882.md) | 41 | `declaration-track:664605478a301d13571b68824713faf764d1db55d64624003f097e7e96a2e19c` |
| 4 | `def` | [MonitorContext.logger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorcontext-logger--24f4dda93e6fa2767a7197ca.md) | 54 | `declaration-track:24f4dda93e6fa2767a7197ca84785c6e75ffe1da1a48c786def434965bcc6095` |
| 5 | `structure` | [MonitorState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorstate--79e1f519a370406951da251d.md) | 58 | `declaration-track:79e1f519a370406951da251d2bac12e830b2fcc7c5d686493c0f56869a72cf60` |
| 6 | `abbrev` | [MonitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorm--2d9126483bba0aa88882eb85.md) | 68 | `declaration-track:2d9126483bba0aa88882eb855880a878d107e48257edd9ecdc963b772ff092a8` |
| 7 | `def` | [MonitorM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorm-run--b1616ac9790eaabbec6254fd.md) | 70 | `declaration-track:b1616ac9790eaabbec6254fdf32f8b863659beafad4ea187c41fb10fab2e41b2` |
| 8 | `def` | [Ansi.resetLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/ansi-resetline--8d6d9c0bf9eda0f35c445e0d.md) | 79 | `declaration-track:8d6d9c0bf9eda0f35c445e0d16c82a701c5c24d3f2df699164d60138d948ae32` |
| 9 | `def` | [flush](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/flush--21e7f57c1e8a95ab85138025.md) | 83 | `declaration-track:21e7f57c1e8a95ab851380254aba7899b969a4844e04a0aeca758d0a4230032a` |
| 10 | `def` | [print!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/print--2939295e1044e13d19df4253.md) | 87 | `declaration-track:2939295e1044e13d19df42531ae52364e76ac85ac5000de8a61d5347661b55a5` |
| 11 | `def` | [print](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/print--51f9b353e67332a57258da1c.md) | 93 | `declaration-track:51f9b353e67332a57258da1c0b1a261c84c64cb10b413764aad188b76ca0eae7` |
| 12 | `def` | [flush](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/flush--f1bfa3d1482c214e8288bdaf.md) | 96 | `declaration-track:f1bfa3d1482c214e8288bdaf3b1516c46d09f0236279171895083b80c1d0bf0d` |
| 13 | `def` | [renderProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/renderprogress--71102be4bae3a177df977661.md) | 99 | `declaration-track:71102be4bae3a177df9776614315ac4d3c603ca9207f42beee0c07e130d3e8df` |
| 14 | `def` | [reportJob](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/reportjob--615e2ca94afc418969290a90.md) | 119 | `declaration-track:615e2ca94afc418969290a90930948c2dc506493346a343ecc99e708a6115fbc` |
| 15 | `def` | [drainQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/drainqueue--363de49bd6f31fd6e2563137.md) | 158 | `declaration-track:363de49bd6f31fd6e25631378c7c3ab59b8ebbc9de9655810b0d0cd791e8c23d` |
| 16 | `def` | [scanJobs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/scanjobs--9064892116d3797de905b2a5.md) | 163 | `declaration-track:9064892116d3797de905b2a5ef6034815f14b0159bb2937a3ecd2584cf282a01` |
| 17 | `def` | [sleep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/sleep--e09e83f824c26ffa9f3f0ad1.md) | 177 | `declaration-track:e09e83f824c26ffa9f3f0ad18fed8d89a3dfbbd828c13d0f5db9a1c8db60755f` |
| 18 | `def` | [loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/loop--f5a773adee387af34cf0785c.md) | 186 | `declaration-track:f5a773adee387af34cf0785ccf9d93f5f53f1d8851a76b729c1848653ed96235` |
| 19 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/main--1df28d6a1fd2f792a99d365f.md) | 202 | `declaration-track:1df28d6a1fd2f792a99d365f76b263a40c5d14f4ed7e6fc7bd6d5098d186fb0e` |
| 20 | `structure` | [MonitorResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorresult--640c01d12e1dbaa45333f27c.md) | 213 | `declaration-track:640c01d12e1dbaa45333f27ca3cbab63c60e7134add77c2d4fe71a9dae259d59` |
| 21 | `def` | [MonitorResult.isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorresult-isok--e00de407a7cbb13fd53825a6.md) | 218 | `declaration-track:e00de407a7cbb13fd53825a62bdec544a4ce40738188d628846dcde3fc71ba67` |
| 22 | `def` | [mkMonitorContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/mkmonitorcontext--6de269d4142792fda5d0ac84.md) | 221 | `declaration-track:6de269d4142792fda5d0ac84ff4a8d198585d02c0862f494b98231477fd7ea91` |
| 23 | `def` | [monitorJobs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorjobs--c30c95ec92983f9f3c42e000.md) | 237 | `declaration-track:c30c95ec92983f9f3c42e0001f0643428894814595c152a1538afa4f6a2313a7` |
| 24 | `def` | [monitorJobs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorjobs--7f2b514b2b1ae06a94ea4ef3.md) | 257 | `declaration-track:7f2b514b2b1ae06a94ea4ef36fbecf7c802988d4f7f545c419c77a0b31155f71` |
| 25 | `def` | [noBuildCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/nobuildcode--7e39dd622de45340034a731c.md) | 275 | `declaration-track:7e39dd622de45340034a731cd31f27e86d3b48979bb2dccd48aaf00aba18346c` |
| 26 | `def` | [Workspace.saveOutputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/workspace-saveoutputs--6063ee6237b8af0b040b309f.md) | 277 | `declaration-track:6063ee6237b8af0b040b309f11b85b7f71236b597f57438d0fec88311238a0ca` |
| 27 | `def` | [reportResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/reportresult--54bf206517d6207a657e6201.md) | 298 | `declaration-track:54bf206517d6207a657e62015a1d296adb567189b067ab5a29f5401179d7d7e7` |
| 28 | `structure` | [BuildResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/buildresult--b637d79649307b1e83ba9ac3.md) | 315 | `declaration-track:b637d79649307b1e83ba9ac3490c61c4ce6b488ff08fe49ef276de7d92e79c22` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/instance--8675d8ff70d539e6f3480dca.md) | 318 | `declaration-track:8675d8ff70d539e6f3480dcab90b17a2f8fabbfc90c26ce32df30384bc45f372` |
| 30 | `def` | [BuildResult.isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/buildresult-isok--3225026741f4e3cf01212da7.md) | 320 | `declaration-track:3225026741f4e3cf01212da756afdac72457e1ff4145936426e886455700bfc0` |
| 31 | `def` | [monitorJob](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorjob--c69aca0292e079c8d61b338f.md) | 323 | `declaration-track:c69aca0292e079c8d61b338f416925d577217be95c77165261fcaf848c53fe09` |
| 32 | `def` | [mkBuildContext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/mkbuildcontext--3607e582a7e94e4f316ad673.md) | 335 | `declaration-track:3607e582a7e94e4f316ad673dc4e59e4b59fb8e78b48924414c06fc41cc3f7aa` |
| 33 | `def` | [Workspace.startBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/workspace-startbuild--2da5b947ebbc375fc03141b5.md) | 350 | `declaration-track:2da5b947ebbc375fc03141b50626cb19409a2bdbbb1fe57d24d1c535067a6541` |
| 34 | `def` | [finalizeBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/finalizebuild--f9aaf4c5bf24237dcf95e448.md) | 356 | `declaration-track:f9aaf4c5bf24237dcf95e44812de3c35b7c321a8c7beeddf560511c5412c5dad` |
| 35 | `def` | [Workspace.runFetchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/workspace-runfetchm--5a8b9ead10f8867b8dca0dcf.md) | 377 | `declaration-track:5a8b9ead10f8867b8dca0dcf1fdd309c64d3afe08501ff9fa465435afd5673bc` |
| 36 | `def` | [monitorBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/monitorbuild--d4645d032d91bd6047dde105.md) | 387 | `declaration-track:d4645d032d91bd6047dde10512c9fa2b75066776b8b4c206c599d2049f4f21fa` |
| 37 | `def` | [Workspace.checkNoBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/workspace-checknobuild--b6a33b4df774c44ef6e27286.md) | 405 | `declaration-track:b6a33b4df774c44ef6e27286f8771bcd6ca7b640269d6c742da5f955c449b543` |
| 38 | `def` | [Workspace.runBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/workspace-runbuild--23b5bf7c353a8602ea3ad828.md) | 417 | `declaration-track:23b5bf7c353a8602ea3ad828cf0fb1d122bd0a5625dde6932a28f55ec275236b` |
| 39 | `def` | [runBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant37815f29c099d38ff76417054e5ac349895fe87ab585b295231fddf86f8c0ff6.lean/declarations/runbuild--23d3460090f2ac96a8cb77c2.md) | 428 | `declaration-track:23d3460090f2ac96a8cb77c2aaf8894ebf04716c5957cff0878c7cfdb8e71c23` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
