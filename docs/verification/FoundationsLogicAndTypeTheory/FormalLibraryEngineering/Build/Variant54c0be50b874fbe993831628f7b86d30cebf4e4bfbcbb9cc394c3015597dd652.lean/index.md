# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Build.Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "273a5eb58721bb87d70c485ffed9ab064c4e7e4a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `273a5eb58721bb87d70c485ffed9ab064c4e7e4a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Build.Infos` — import line 11; external provider; requires a separately pinned dependency.
- `Lake.Build.Job.Monad` — import line 12; external provider; requires a separately pinned dependency.
- `Lake.Util.IO` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/buildspec--792ceaf225fdc2922c463ee2.md) | 23 | `declaration-track:792ceaf225fdc2922c463ee2a0af9c887909698a12b21f1aa716aaa8fb082416` |
| 2 | `def` | [mkBuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/mkbuildspec--1cb8eb1f1bb968e9ec145726.md) | 28 | `declaration-track:1cb8eb1f1bb968e9ec1457260bcc8d2e5ec071df5a9cb51827986e9d75373cfc` |
| 3 | `def` | [mkConfigBuildSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/mkconfigbuildspec--2c27497b811f8d4511db3b96.md) | 35 | `declaration-track:2c27497b811f8d4511db3b9634fbda63d504679c3c1672bcdc57518d86e12e0f` |
| 4 | `def` | [BuildSpec.fetch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/buildspec-fetch--9758dd5458c64cdf3b7b295a.md) | 44 | `declaration-track:9758dd5458c64cdf3b7b295a213719fc75516e013005ba6f11a201e1add0ad87` |
| 5 | `def` | [BuildSpec.build](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/buildspec-build--ab14ab7d6da5cabe2593edae.md) | 47 | `declaration-track:ab14ab7d6da5cabe2593edae6617bcb7d50a63e0d587e3e5a8dcf419864fb285` |
| 6 | `def` | [BuildSpec.query](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/buildspec-query--1d1e2022baf84e7920af57e6.md) | 50 | `declaration-track:1d1e2022baf84e7920af57e684955c74ce0a866ef3f38da3a2c2aef280c78ce9` |
| 7 | `def` | [buildSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/buildspecs--c96f151c3145b4e06e27e7a3.md) | 54 | `declaration-track:c96f151c3145b4e06e27e7a334670afbb846bbe2619393bb7586db7da25d1b12` |
| 8 | `def` | [querySpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/queryspecs--9efc01f3b9ef30a065c25435.md) | 57 | `declaration-track:9efc01f3b9ef30a065c25435a4aae906c86986d239e592d7ee04ba4d339c4317` |
| 9 | `def` | [parsePackageSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/parsepackagespec--21d741445b84ccc09fef3a9a.md) | 62 | `declaration-track:21d741445b84ccc09fef3a9a85b1939aaf2f49c200fbdf0853c21481167fb7db` |
| 10 | `def` | [resolveModuleTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvemoduletarget--28ae6e995953615a1d76c6be.md) | 70 | `declaration-track:28ae6e995953615a1d76c6be20604032b75b8ee7ae49de3cdb9d5954429c9ecb` |
| 11 | `def` | [resolveCustomTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvecustomtarget--b8b876abaa217e31eae21d13.md) | 81 | `declaration-track:b8b876abaa217e31eae21d133cc964f2c69ac7d435e3db29e73ebc1e824c9bd1` |
| 12 | `def` | [resolveConfigDeclTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolveconfigdecltarget--b8ff1521d69c2fbdcf2260b5.md) | 89 | `declaration-track:b8ff1521d69c2fbdcf2260b5931d1b00add238d37cf707ffa6717a7cf1fad3be` |
| 13 | `def` | [resolveTargetInPackage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvetargetinpackage--58d7c3ddc1ab85b2669c7233.md) | 105 | `declaration-track:58d7c3ddc1ab85b2669c72334da3c45ee481b646bb04b3357cedfd6438be5f69` |
| 14 | `def` | [resolveDefaultPackageTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvedefaultpackagetarget--890526c10092dd6957941205.md) | 115 | `declaration-track:890526c10092dd695794120569c59de495483f1b609a65ef86e41d5f86211f3e` |
| 15 | `def` | [resolvePackageTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvepackagetarget--219a422c85747389554a3a5c.md) | 120 | `declaration-track:219a422c85747389554a3a5cad8a470d045db42dc4121872f9294810743ec4e6` |
| 16 | `def` | [resolveTargetInWorkspace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvetargetinworkspace--e2ea15ccb1b9f2d7a07ca012.md) | 131 | `declaration-track:e2ea15ccb1b9f2d7a07ca0129fae0d31963a3e8308d0fa5be515678e14196b07` |
| 17 | `def` | [resolveTargetLikeSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvetargetlikespec--a5bd4ef14a5c48831c78b7c7.md) | 143 | `declaration-track:a5bd4ef14a5c48831c78b7c77c398c642d04ef02da6b01949819a4be65bc0f06` |
| 18 | `def` | [resolveTargetBaseSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/resolvetargetbasespec--65ffc9fd9bf4f49fabee40f1.md) | 172 | `declaration-track:65ffc9fd9bf4f49fabee40f1b07550d217eae08a3029a847c3ff24848dc09f41` |
| 19 | `def` | [parseExeTargetSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/parseexetargetspec--f72804e3a5b912866c5b2b9f.md) | 194 | `declaration-track:f72804e3a5b912866c5b2b9f098d864cce85c4a35bed9c597c0ad4674a510258` |
| 20 | `def` | [parseTargetSpec](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/parsetargetspec--4d3e20d80b81a9549c159ac9.md) | 213 | `declaration-track:4d3e20d80b81a9549c159ac98040e0dddd8387fe53c550d2a349fedc2463bc59` |
| 21 | `def` | [parseTargetSpecs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Build/Variant54c0be50b874fbe993831628f7b86d30cebf4e4bfbcbb9cc394c3015597dd652.lean/declarations/parsetargetspecs--bb1d3adba5da0eb6f931f923.md) | 224 | `declaration-track:bb1d3adba5da0eb6f931f923ffdf9b7539162e4259570bed2052c2698c69e27d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
