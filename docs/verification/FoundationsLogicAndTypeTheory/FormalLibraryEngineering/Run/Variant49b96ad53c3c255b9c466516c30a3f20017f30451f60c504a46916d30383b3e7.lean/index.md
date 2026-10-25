# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Run.Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc19a860759f5e616e6f0708ea1fb91a716715a8",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc19a860759f5e616e6f0708ea1fb91a716715a8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Config.Monad` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Monad` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Build.Index` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkBuildContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/mkbuildcontext--bd79dd0c7ecc9129d8f56e22.md) | 35 | `declaration-track:bd79dd0c7ecc9129d8f56e22d72c083cd29e9f27735884a0a093fdac8d28f49a` |
| 2 | `def` | [Monitor.spinnerFrames](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitor-spinnerframes--9f5fae146c53578320455c39.md) | 45 | `declaration-track:9f5fae146c53578320455c3986505df236e1fe3e686d50cf3ace2ca47b86aca0` |
| 3 | `structure` | [MonitorContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorcontext--1cd3ba460c658288867fc4a0.md) | 49 | `declaration-track:1cd3ba460c658288867fc4a01d714121eeeefadbf7d3799c816f0d0edd1a4ce5` |
| 4 | `def` | [MonitorContext.logger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorcontext-logger--16daab256fd2d85b8e581c23.md) | 62 | `declaration-track:16daab256fd2d85b8e581c23e1e8c48b55a95327c9324eb27f748031debcd218` |
| 5 | `structure` | [MonitorState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorstate--bb7773fc9c0c8063ef309fe9.md) | 66 | `declaration-track:bb7773fc9c0c8063ef309fe93849a9d5bda4767a75e0a7c9b752ffadf7280e74` |
| 6 | `abbrev` | [MonitorM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorm--6138963602b56f120c6812d3.md) | 76 | `declaration-track:6138963602b56f120c6812d396cb0ea9ef86bc9e57b31204f374ac8f058e9649` |
| 7 | `def` | [MonitorM.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorm-run--9473b8cc8741accf88d597b7.md) | 78 | `declaration-track:9473b8cc8741accf88d597b75bab8ff4c9ce1c8de4ddcc962220c93c7fe33806` |
| 8 | `def` | [Ansi.resetLine](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/ansi-resetline--848b4c1ca7146bd34fe2b3d7.md) | 87 | `declaration-track:848b4c1ca7146bd34fe2b3d7966aca498edc2ce991f47c2cb2b1f3f72226018b` |
| 9 | `def` | [flush](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/flush--9ec91b5aa71773b87b396f53.md) | 91 | `declaration-track:9ec91b5aa71773b87b396f530d3f520a47ec5d1832b1e0ea27b7c399360ff352` |
| 10 | `def` | [print!](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/print--31c04b3b5171f9e195a750f5.md) | 95 | `declaration-track:31c04b3b5171f9e195a750f512e5895950d0a9e45ce1774db46abab0d79e448e` |
| 11 | `def` | [print](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/print--37a9debc92586fdfb8740018.md) | 101 | `declaration-track:37a9debc92586fdfb87400184454379c932e2b4b869612ad4c0ba752604ef013` |
| 12 | `def` | [flush](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/flush--f7f3411873e1317b38b647d8.md) | 104 | `declaration-track:f7f3411873e1317b38b647d8da756f31e4028ff15817beb59985a337615459bb` |
| 13 | `def` | [renderProgress](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/renderprogress--7b4c96d133739bb06000fb93.md) | 107 | `declaration-track:7b4c96d133739bb06000fb9334918461177c61b1772293a79eaa32640a444c46` |
| 14 | `def` | [reportJob](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/reportjob--421a1aa808cf7cbf94f050ec.md) | 127 | `declaration-track:421a1aa808cf7cbf94f050ecc426005383a56f507ff015fecb7ab8b338bcb5b7` |
| 15 | `def` | [drainQueue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/drainqueue--65b0538a0736f8b9454109ff.md) | 166 | `declaration-track:65b0538a0736f8b9454109ffbdb08d2cf5cdab384bcc607aac361907376668d8` |
| 16 | `def` | [scanJobs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/scanjobs--c8960c4d4286410d0df5ab9e.md) | 171 | `declaration-track:c8960c4d4286410d0df5ab9e61ee9b9945c78392edb52fc45093c2c4b93a027c` |
| 17 | `def` | [sleep](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/sleep--e93ea418416c9ea349706e1d.md) | 185 | `declaration-track:e93ea418416c9ea349706e1d4dfffc8d446d8990f5b56300cdd32b584aa3e43e` |
| 18 | `def` | [loop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/loop--3c22d8b608b6c6db7b50e3ab.md) | 194 | `declaration-track:3c22d8b608b6c6db7b50e3ab5dfc7109099983d68616c61cfaa34a39b508bd61` |
| 19 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/main--789de9c52ba4c9e9389cd65f.md) | 210 | `declaration-track:789de9c52ba4c9e9389cd65f9be0d431fcafa32dc22e2fb18b24631f808f1da8` |
| 20 | `structure` | [MonitorResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorresult--5e2ca47df3f3933bda63fedc.md) | 221 | `declaration-track:5e2ca47df3f3933bda63fedcba4d435e867832c2fd7026a894009f90c5e9d661` |
| 21 | `def` | [MonitorResult.isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorresult-isok--7d7ca5ad8f5526686742ba7b.md) | 226 | `declaration-track:7d7ca5ad8f5526686742ba7ba70e0855e8bd3091348a25de309e86065668430a` |
| 22 | `def` | [mkMonitorContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/mkmonitorcontext--50641af0bbbd86c6bd4d947b.md) | 229 | `declaration-track:50641af0bbbd86c6bd4d947b29d9d1313dc9e08fcf51aa1e19100f87685389be` |
| 23 | `def` | [monitorJobs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorjobs--0730090bf13fd138666b9ed2.md) | 245 | `declaration-track:0730090bf13fd138666b9ed26d657f4a3ce3d88025b4a09933d67e0080222a11` |
| 24 | `def` | [monitorJobs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorjobs--b570bcb02869003a461850f6.md) | 265 | `declaration-track:b570bcb02869003a461850f63a4d5ec3f0665e720e56c3e52bf4d762ac5b191a` |
| 25 | `def` | [noBuildCode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/nobuildcode--fe86ab9eacf7d7bd103f9c4b.md) | 283 | `declaration-track:fe86ab9eacf7d7bd103f9c4b786c5d77cc4cafed228c076484f02c06da1ee69d` |
| 26 | `def` | [Workspace.saveOutputs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/workspace-saveoutputs--f441bf0292f91181effb3d7a.md) | 285 | `declaration-track:f441bf0292f91181effb3d7aa466487f6fd666a00b531dbeb4ac8db304ad0855` |
| 27 | `def` | [reportResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/reportresult--a0e1d04dcb1002146f718998.md) | 306 | `declaration-track:a0e1d04dcb1002146f718998caa9ce479e32c1c8f41e4df012ab38f16121bfa5` |
| 28 | `structure` | [BuildResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/buildresult--6b67de4613a7f9a8929f9378.md) | 323 | `declaration-track:6b67de4613a7f9a8929f9378498b145e275646a40f88e0ee92f07865c0089be0` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/instance--da69d446ea3e32b481da2f72.md) | 326 | `declaration-track:da69d446ea3e32b481da2f7270c5aa016ec005abf728a8b8f860471d912fa078` |
| 30 | `def` | [BuildResult.isOk](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/buildresult-isok--bd2abe99310d0e2727e5ac8e.md) | 328 | `declaration-track:bd2abe99310d0e2727e5ac8e94d40e40e8edc94a7dd1a6c8de79bab1948c3846` |
| 31 | `def` | [monitorJob](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorjob--72e6b31a8d78864824b8ff1a.md) | 331 | `declaration-track:72e6b31a8d78864824b8ff1ae0a45af2846ad74a8b01bbb164c5c1830e920b04` |
| 32 | `def` | [mkBuildContext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/mkbuildcontext--0ca5459d2ed01e4aa4b7609e.md) | 343 | `declaration-track:0ca5459d2ed01e4aa4b7609e69ae63b2bd55f0ef025a61452cbb7b931053fd49` |
| 33 | `def` | [Workspace.startBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/workspace-startbuild--0291403f70af157d5883ac53.md) | 358 | `declaration-track:0291403f70af157d5883ac53ceab40ff6d489f11279e8a295108e9642f89fe3a` |
| 34 | `def` | [finalizeBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/finalizebuild--91a33388c8f49d67ce02cfc4.md) | 364 | `declaration-track:91a33388c8f49d67ce02cfc464f3addb140ceba99965dbf656798e05b4e98309` |
| 35 | `def` | [Workspace.runFetchM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/workspace-runfetchm--78862c08c50abb50ad778fea.md) | 385 | `declaration-track:78862c08c50abb50ad778feaa484b3da3205a890038c23e31b16451450791f13` |
| 36 | `def` | [monitorBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/monitorbuild--12e867be19b7bffa779edb64.md) | 395 | `declaration-track:12e867be19b7bffa779edb642bfcf6b1456b6eda2d2f3d4dd2806abcc7c31097` |
| 37 | `def` | [Workspace.checkNoBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/workspace-checknobuild--24c67d3a9f1e663de66ca76d.md) | 413 | `declaration-track:24c67d3a9f1e663de66ca76db40239f0f4fc751fd05cd52612233b7a9be54fd1` |
| 38 | `def` | [Workspace.runBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/workspace-runbuild--e4fbab93d14f996d855e3db3.md) | 425 | `declaration-track:e4fbab93d14f996d855e3db3217864c559cfcbfe1874568b2035fe85db1bed22` |
| 39 | `def` | [runBuild](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Run/Variant49b96ad53c3c255b9c466516c30a3f20017f30451f60c504a46916d30383b3e7.lean/declarations/runbuild--cedc9f3a672681e7d0762b03.md) | 436 | `declaration-track:cedc9f3a672681e7d0762b03410dee6e5c75ef6b974e5eff884a04aa65a082a8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
