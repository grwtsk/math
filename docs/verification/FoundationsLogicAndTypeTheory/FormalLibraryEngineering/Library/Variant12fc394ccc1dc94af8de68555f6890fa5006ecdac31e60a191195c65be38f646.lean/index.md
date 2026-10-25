# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Library.Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4ad16e148ab351fde2ebc41640a9ec221bcf5ce0",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4ad16e148ab351fde2ebc41640a9ec221bcf5ce0`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Common` — import line 10; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Register` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Build.Target.Fetch` — import line 13; external provider; requires a separately pinned dependency.
- `Lake.Build.Infos` — import line 14; external provider; requires a separately pinned dependency.
- `Lake.Util.Proc` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleCollection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/modulecollection--c1c9b570db538ac3665a149d.md) | 27 | `declaration-track:c1c9b570db538ac3665a149daf10d52f8b3a821cb6621caa1f74324e44097cda` |
| 2 | `def` | [LeanLib.recCollectLocalModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-reccollectlocalmodules--7389a7cb065510a488be9558.md) | 36 | `declaration-track:7389a7cb065510a488be9558fc5cc5423fa294ba0ad8b66ce3c79f67a0a82317` |
| 3 | `def` | [LeanLib.modulesFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-modulesfacetconfig--903a1d00c92dcc0454da2d39.md) | 62 | `declaration-track:903a1d00c92dcc0454da2d396533280191e7f4a323ab5ed0de338e5def0e3fcf` |
| 4 | `def` | [LeanLib.recBuildLean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-recbuildlean--e9661ec1b3d9f09b8b76af7f.md) | 65 | `declaration-track:e9661ec1b3d9f09b8b76af7f633608bec0ba85e505abb6c853627444ccf50d0a` |
| 5 | `def` | [LeanLib.leanArtsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-leanartsfacetconfig--2e0df57cbff95b0afb659094.md) | 73 | `declaration-track:2e0df57cbff95b0afb659094c8936a1b74b9399c64cd25732f50ae2f3dcaf07e` |
| 6 | `def` | [LeanLib.recBuildStatic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-recbuildstatic--36b12426f14521870d7103c6.md) | 76 | `declaration-track:36b12426f14521870d7103c63061504a2fb32827d0698950e38ef75c35227810` |
| 7 | `def` | [LeanLib.staticFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-staticfacetconfig--8eee21c1b4a83e5d308c401e.md) | 117 | `declaration-track:8eee21c1b4a83e5d308c401e312f037be6bf7a8e5384616184b9134cd9a32c57` |
| 8 | `def` | [LeanLib.staticExportFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-staticexportfacetconfig--93a1727f2cd84d83db804cc4.md) | 121 | `declaration-track:93a1727f2cd84d83db804cc49a98a9fb738a3853bb1dbed398688524b02bf272` |
| 9 | `def` | [LeanLib.recBuildShared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-recbuildshared--b6fb9ed946ccfb2458ed9978.md) | 126 | `declaration-track:b6fb9ed946ccfb2458ed9978ec3b1a9a543c20fa2a20cf476f62db36ac5d5c24` |
| 10 | `def` | [LeanLib.sharedFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-sharedfacetconfig--5ef627ff6f3569cecfb0f62e.md) | 154 | `declaration-track:5ef627ff6f3569cecfb0f62e431d057436c329773c89dc19eb13708c65250de2` |
| 11 | `def` | [LeanLib.recBuildExtraDepTargets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-recbuildextradeptargets--6fa63ba4fd530f2da95e9052.md) | 161 | `declaration-track:6fa63ba4fd530f2da95e905226a77998d0c4ba911e5b6f907df5ef4265ec7e48` |
| 12 | `def` | [LeanLib.extraDepFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-extradepfacetconfig--809baa75291063d82cef4028.md) | 171 | `declaration-track:809baa75291063d82cef4028f60e2934f649fcccb4bd284839c3237624fa62b0` |
| 13 | `def` | [LeanLib.recBuildDefaultFacets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-recbuilddefaultfacets--8bb95b6b45e56cdf748d7af1.md) | 175 | `declaration-track:8bb95b6b45e56cdf748d7af1f1a27e1b9805344b1226189f93a44d15460bdc65` |
| 14 | `def` | [LeanLib.defaultFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-defaultfacetconfig--17872194f754d1e70b91381a.md) | 181 | `declaration-track:17872194f754d1e70b91381ae2a7cefc7aa76b9ff794bba3115eb10ddd346f0d` |
| 15 | `def` | [LeanLib.initFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/leanlib-initfacetconfigs--73ba8583e843b78e7ce5ef81.md) | 188 | `declaration-track:73ba8583e843b78e7ce5ef810a9308fbfeb89ec1bf5cbfb74161a2e331f4ab9f` |
| 16 | `abbrev` | [initLibraryFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant12fc394ccc1dc94af8de68555f6890fa5006ecdac31e60a191195c65be38f646.lean/declarations/initlibraryfacetconfigs--959cb9979b21cbdc2f5d478b.md) | 199 | `declaration-track:959cb9979b21cbdc2f5d478b78f2038e5fc15386aa1c1a04e0dff2131d49b724` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
