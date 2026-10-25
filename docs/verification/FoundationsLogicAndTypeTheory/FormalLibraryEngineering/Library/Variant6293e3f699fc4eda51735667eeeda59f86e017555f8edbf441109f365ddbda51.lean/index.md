# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Library.Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "43c42349f566ae98b6ab53a22c58dd38c53b7e08",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `43c42349f566ae98b6ab53a22c58dd38c53b7e08`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Common` — import line 15; external provider; requires a separately pinned dependency.
- `Lake.Build.Targets` — import line 16; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Register` — import line 17; external provider; requires a separately pinned dependency.
- `Lake.Build.Target.Fetch` — import line 18; external provider; requires a separately pinned dependency.
- `Lake.Build.Infos` — import line 19; external provider; requires a separately pinned dependency.
- `Lake.Util.Proc` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ModuleCollection](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/modulecollection--9286708112087b971fbffb00.md) | 35 | `declaration-track:9286708112087b971fbffb00b2546d244785c06cf688d686d5282e3acdbba860` |
| 2 | `def` | [LeanLib.recCollectLocalModules](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-reccollectlocalmodules--24798680432808a6e7697f6b.md) | 44 | `declaration-track:24798680432808a6e7697f6bd0e52f4a3e295af463ac0a8d4a24531d71b82b91` |
| 3 | `def` | [LeanLib.modulesFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-modulesfacetconfig--0743f8c2670b01261fcc75c5.md) | 70 | `declaration-track:0743f8c2670b01261fcc75c50ad9a79faaa0be136289268a808dcb6ff3d8cfe5` |
| 4 | `def` | [LeanLib.recBuildLean](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-recbuildlean--60de7c91c9acb6b572f79c7d.md) | 73 | `declaration-track:60de7c91c9acb6b572f79c7da65d1b40c9f223e712d1cd1f884ab4b94a341401` |
| 5 | `def` | [LeanLib.leanArtsFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-leanartsfacetconfig--2790ce4ff96ace521f919afc.md) | 81 | `declaration-track:2790ce4ff96ace521f919afc431ce6cb640de2220fcf3e84706e1ba4c2f53435` |
| 6 | `def` | [LeanLib.recBuildStatic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-recbuildstatic--02e4a958ec32035f5fe6bf39.md) | 84 | `declaration-track:02e4a958ec32035f5fe6bf391f63f1e396befc114db0c23529422ec012bff4c3` |
| 7 | `def` | [LeanLib.staticFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-staticfacetconfig--cf2169b0a8861a8c88249e1e.md) | 125 | `declaration-track:cf2169b0a8861a8c88249e1e7a1f1bcaabb76edcc5027804e2e0e6994442e45c` |
| 8 | `def` | [LeanLib.staticExportFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-staticexportfacetconfig--8e0d3dea0f974be772b5a1bb.md) | 129 | `declaration-track:8e0d3dea0f974be772b5a1bbf7d4993b6398fa90eab6fea18f8da8201f47f5eb` |
| 9 | `def` | [LeanLib.recBuildShared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-recbuildshared--a482b39d12a178cc97083be7.md) | 134 | `declaration-track:a482b39d12a178cc97083be7b8447d684fcb995052998827c69ed30eac7f48fa` |
| 10 | `def` | [LeanLib.sharedFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-sharedfacetconfig--037f68756a609102083cf13a.md) | 162 | `declaration-track:037f68756a609102083cf13a99410e287cdb3fa3d83f7ddf6f607541bca33ff8` |
| 11 | `def` | [LeanLib.recBuildExtraDepTargets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-recbuildextradeptargets--8366bdddff0d8a5c3c522a11.md) | 169 | `declaration-track:8366bdddff0d8a5c3c522a11d6332bcc676cf5e6c64dcc0374e1605842046a07` |
| 12 | `def` | [LeanLib.extraDepFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-extradepfacetconfig--61f482ed6778ca5ad04bc156.md) | 179 | `declaration-track:61f482ed6778ca5ad04bc15611b19dd811ac02e56984aa31224b00c1fe7e2a21` |
| 13 | `def` | [LeanLib.recBuildDefaultFacets](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-recbuilddefaultfacets--5f00e95054d9ec3ccd70ad38.md) | 183 | `declaration-track:5f00e95054d9ec3ccd70ad3844393da62bd18f35b8c297e65b554de0e0173bfe` |
| 14 | `def` | [LeanLib.defaultFacetConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-defaultfacetconfig--fa1e9041f597f543321fe490.md) | 189 | `declaration-track:fa1e9041f597f543321fe490f2d49a098ed76453293e2e8c708ed010d7d20635` |
| 15 | `def` | [LeanLib.initFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/leanlib-initfacetconfigs--08b93cafc576bba42c1a2acd.md) | 196 | `declaration-track:08b93cafc576bba42c1a2acd92abbdccc1b71ff389e445c8b1b1c5b6ef071b80` |
| 16 | `abbrev` | [initLibraryFacetConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Library/Variant6293e3f699fc4eda51735667eeeda59f86e017555f8edbf441109f365ddbda51.lean/declarations/initlibraryfacetconfigs--0b864f1b4792483de9b35753.md) | 207 | `declaration-track:0b864f1b4792483de9b357539942f99f8d39cafbd04e5312996f11e4c22b7f18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
