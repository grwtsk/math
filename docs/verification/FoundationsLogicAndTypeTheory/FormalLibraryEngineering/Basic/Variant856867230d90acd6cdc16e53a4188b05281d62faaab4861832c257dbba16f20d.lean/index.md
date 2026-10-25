# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da8b588ad75bbac0d376f2746fc662d763a88267",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da8b588ad75bbac0d376f2746fc662d763a88267`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.ConfigEval.Util` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [evalTermWithRef](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evaltermwithref--dee4f34a91d7f74c979cc5d3.md) | 23 | `declaration-track:dee4f34a91d7f74c979cc5d3cae365118e6817af99824d4b78a33c840ce9ed7a` |
| 2 | `def` | [evalExprWithElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalexprwithelab--cd491eb1624afd2c87fe1733.md) | 29 | `declaration-track:cd491eb1624afd2c87fe173382c967a2b95b0711c4d5eb41d32b96493eafe04d` |
| 3 | `def` | [evalTermOrExprWithElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evaltermorexprwithelab--073f8c081c21d85d620fb141.md) | 50 | `declaration-track:073f8c081c21d85d620fb1418f0aa232b92f470fcb22928e8996b36caa195870` |
| 4 | `def` | [stripParens](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/stripparens--c62e2a3cb197374f8f2c6d26.md) | 57 | `declaration-track:c62e2a3cb197374f8f2c6d268aef20467df9c31fa8662c662d484bd6d06cd619` |
| 5 | `def` | [EvalTerm.evalTermWithInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalterm-evaltermwithinfo--2dba20ac994d86cee100f0c1.md) | 61 | `declaration-track:2dba20ac994d86cee100f0c176ff8f674b4b2ee7d1a6ce782691870f3d79466e` |
| 6 | `def` | [EvalTerm.evalTermWithInfo'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalterm-evaltermwithinfo--7926d1c8939f0514d40a3c3e.md) | 71 | `declaration-track:7926d1c8939f0514d40a3c3e18aab9ff58e94c2e77c8ab93a361870b2843e403` |
| 7 | `def` | [EvalExpr.withWHNF](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalexpr-withwhnf--6a83e015c72b8004e7c91aa3.md) | 83 | `declaration-track:6a83e015c72b8004e7c91aa3a09a014a8c017b0c5ed82ee286e5de067be86689` |
| 8 | `def` | [ConfigItem.isAnonymous](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-isanonymous--b82e5514106f86c7dc22a365.md) | 92 | `declaration-track:b82e5514106f86c7dc22a3654ab89634e51e4a40f8cc363a52bf3f365e9a7c74` |
| 9 | `def` | [ConfigItem.root](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-root--86ab99738cde8b4b726e6a04.md) | 94 | `declaration-track:86ab99738cde8b4b726e6a04eda18357af48f75a1d5a4b5d4a15d79ea3624826` |
| 10 | `def` | [ConfigItem.getRootStr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-getrootstr--c41266670f8cd1edf4da2cdf.md) | 99 | `declaration-track:c41266670f8cd1edf4da2cdfce5c6ea6031f8503103cd78151ec19cb2a19840b` |
| 11 | `def` | [ConfigItem.prevRoot?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-prevroot--4a4369e8762e893f879e3b9f.md) | 105 | `declaration-track:4a4369e8762e893f879e3b9ffc564640ce068f05e36d87d877229570b42a5ce3` |
| 12 | `def` | [ConfigItem.prevRoot](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-prevroot--fb0b5fd19b6d10aaa20dcdfc.md) | 108 | `declaration-track:fb0b5fd19b6d10aaa20dcdfccfa4bb909d4fcaf56b671b1b66387e60af09fd19` |
| 13 | `def` | [ConfigItem.getCurrOptionName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-getcurroptionname--f66c84fd148eeb00056a3b6f.md) | 119 | `declaration-track:f66c84fd148eeb00056a3b6fa04d7a3fef28f8740a5c78822455c7a1f9c11445` |
| 14 | `def` | [ConfigItem.shift](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-shift--673c61cd3c39629d513576a4.md) | 126 | `declaration-track:673c61cd3c39629d513576a4218ace8176ddb496c8c17310b169b45da1c500f7` |
| 15 | `def` | [ConfigItem.checkNotBool](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-checknotbool--7ed97384f447d767d66c6aa4.md) | 131 | `declaration-track:7ed97384f447d767d66c6aa4978892e7ce9afc205bbb42fcdcc83543a608a40b` |
| 16 | `def` | [ConfigItem.throwInvalidOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-throwinvalidoption--f3f1476886abeff10204d356.md) | 135 | `declaration-track:f3f1476886abeff10204d356007899bf4b0097948f5f5cccb5f771a23b8cfe00` |
| 17 | `def` | [ConfigItem.throwCannotSetOption](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-throwcannotsetoption--5069a9a368f34c7ef01c36e7.md) | 141 | `declaration-track:5069a9a368f34c7ef01c36e7ec06529e041e4a8da4a49e0beb7fc64facfe18c8` |
| 18 | `def` | [ConfigItem.addConstInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-addconstinfo--b965dff668397726be967539.md) | 147 | `declaration-track:b965dff668397726be9675396a3b093507d84df033c3999ce1af46e5e35b636c` |
| 19 | `def` | [ConfigItem.addCompletionInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/configitem-addcompletioninfo--6b96075aef3479cdb980acfa.md) | 152 | `declaration-track:6b96075aef3479cdb980acfaddaa54c2568f66a648753dfda0caa0259d10e37e` |
| 20 | `def` | [foldConfigM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/foldconfigm--93e25d1949e391a2c0dc5375.md) | 187 | `declaration-track:93e25d1949e391a2c0dc537559b99a793f3648ae9fb6950a5986865ead3e5b3e` |
| 21 | `def` | [foldConfigsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/foldconfigsm--83b2651b9f4b1dd1486325dc.md) | 234 | `declaration-track:83b2651b9f4b1dd1486325dc6eca63908371cd18f8482db258d695813c248411` |
| 22 | `def` | [EvalConfigItem.trySet](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-tryset--293f0081af583604a9c2df9f.md) | 242 | `declaration-track:293f0081af583604a9c2df9f80c150c0712b2e7c4ec4ac22fa4977dc3b0747f2` |
| 23 | `def` | [EvalConfigItem.defaultOnErr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-defaultonerr--2c9d2b2d09088a6c34a48f3d.md) | 264 | `declaration-track:2c9d2b2d09088a6c34a48f3d42430b04d828e97da7a055e9995b79bc8d09891c` |
| 24 | `def` | [EvalConfigItem.setConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-setconfig--ebbd283b585458bc82f606db.md) | 288 | `declaration-track:ebbd283b585458bc82f606db21c01d59948264827cf5ebb6c67d8024b9c16430` |
| 25 | `def` | [EvalConfigItem.setConfigs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-setconfigs--e14dd97ceb6bbcd855ef423b.md) | 302 | `declaration-track:e14dd97ceb6bbcd855ef423b459feed0178f9b2f51d5b8b2d335680876877721` |
| 26 | `def` | [runConfigElab](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/runconfigelab--c106e0a84c289bdc834823e6.md) | 312 | `declaration-track:c106e0a84c289bdc834823e6be2dce22e9bfec8a3cf7e182a2b54b62d999b9f8` |
| 27 | `def` | [EvalConfigItem.setConfig'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-setconfig--b7f51070c77921f41144dee8.md) | 318 | `declaration-track:b7f51070c77921f41144dee8082bef4d2d5c19ded794191d503287166652bb61` |
| 28 | `def` | [EvalConfigItem.setConfigs'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant856867230d90acd6cdc16e53a4188b05281d62faaab4861832c257dbba16f20d.lean/declarations/evalconfigitem-setconfigs--1f63f58bc3c71f1a08f239b7.md) | 332 | `declaration-track:1f63f58bc3c71f1a08f239b704f431f02036abb1e7f4843acd3aad4e901a8873` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
