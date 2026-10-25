# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HaveTelescope.Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Util.CollectFVars` — import line 10; external provider; requires a separately pinned dependency.
- `Lean.Util.CollectLooseBVars` — import line 11; external provider; requires a separately pinned dependency.
- `Lean.Meta.AppBuilder` — import line 12; external provider; requires a separately pinned dependency.
- `Init.While` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [HaveInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/haveinfo--406e67bebc3dd2da3de4f33d.md) | 25 | `declaration-track:406e67bebc3dd2da3de4f33d84a789143c5cf36ee016abf0a86aeba8110ef15e` |
| 2 | `structure` | [HaveTelescopeInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/havetelescopeinfo--b90ed29a5f2a2d8a3849b036.md) | 63 | `declaration-track:b90ed29a5f2a2d8a3849b0367ce2058182a253280a626cba2a2e77cd00d0e407` |
| 3 | `def` | [getHaveTelescopeInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/gethavetelescopeinfo--33eb3ac1b54b87fc79f266e8.md) | 87 | `declaration-track:33eb3ac1b54b87fc79f266e8dcd2ceebc762ff676fc1c497a449edf0884133b9` |
| 4 | `def` | [HaveTelescopeInfo.computeFixedUsed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/havetelescopeinfo-computefixedused--400afd96a4612bb8e93dc585.md) | 132 | `declaration-track:400afd96a4612bb8e93dc58501e5f3776ad682b95bb83521bfa93cf5255aeadc` |
| 5 | `structure` | [SimpHaveResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/simphaveresult--bd8e1925b535e389bd66d06d.md) | 162 | `declaration-track:bd8e1925b535e389bd66d06da9ece9079e1973e3ffc3fa319b50fdd898d228ab` |
| 6 | `def` | [simpHaveTelescopeAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/simphavetelescopeaux--82b6547305db2d87ef76723e.md) | 209 | `declaration-track:82b6547305db2d87ef76723e4ae0c97a6327cd24c24615ede6686422ad2f14a6` |
| 7 | `inductive` | [ZetaUnusedMode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/zetaunusedmode--af71af70380b3bccba98b4c2.md) | 335 | `declaration-track:af71af70380b3bccba98b4c29fa0c0dcf86da0ec959266fdd74b6679cdb3617d` |
| 8 | `def` | [zetaUnused](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/zetaunused--5647727359fd966085e8d37b.md) | 344 | `declaration-track:5647727359fd966085e8d37b69ef79f1db737d7efd90031b6a3e13e9185d5f71` |
| 9 | `def` | [SimpHaveResult.toResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/simphaveresult-toresult--83e1e631f37d7db3ce8c5f59.md) | 367 | `declaration-track:83e1e631f37d7db3ce8c5f592347f92494998190b5f5ab44af2a54fb9a94bb1f` |
| 10 | `def` | [simpHaveTelescope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/declarations/simphavetelescope--fe17847dd52718c9aefd4be2.md) | 454 | `declaration-track:fe17847dd52718c9aefd4be26b01431f06dea3a045521d38a394b1f146024e06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
