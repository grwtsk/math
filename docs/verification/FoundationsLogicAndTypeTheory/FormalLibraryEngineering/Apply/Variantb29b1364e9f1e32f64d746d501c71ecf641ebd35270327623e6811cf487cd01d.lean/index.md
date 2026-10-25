# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Apply.Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0b1ce93f4b13e0507ca333baf895d38dd0cc77a3",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0b1ce93f4b13e0507ca333baf895d38dd0cc77a3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.AppBuilder` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [getExpectedNumArgsAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/getexpectednumargsaux--5bb2d47441d8669b97306229.md) | 21 | `declaration-track:5bb2d47441d8669b97306229dbbe0679074af893609fc1f51339125f886343da` |
| 2 | `def` | [getExpectedNumArgs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/getexpectednumargs--19676c0ece2ea6386c3da0bb.md) | 25 | `declaration-track:19676c0ece2ea6386c3da0bb9c29092789f1af7591dd29d6ec986656a1893ba9` |
| 3 | `def` | [throwApplyError](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/throwapplyerror--c8ba6e8ae39dff917a1846a7.md) | 29 | `declaration-track:c8ba6e8ae39dff917a1846a769e889731587e5ab025c8b1b37156bd02dd63154` |
| 4 | `def` | [synthAppInstances](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/synthappinstances--b73e8c6067c4c5ddf845ecf8.md) | 40 | `declaration-track:b73e8c6067c4c5ddf845ecf826a5b4a90610ef1c69afd6a8ffaebe476d4f9129` |
| 5 | `def` | [appendParentTag](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/appendparenttag--a1d37202529a8b2a3234a167.md) | 108 | `declaration-track:a1d37202529a8b2a3234a1670a8e3cad0ba958049f8be0d75bdb8725872695ec` |
| 6 | `def` | [postprocessAppMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/postprocessappmvars--eb89b6eca9cfdb7df9dd5fa9.md) | 127 | `declaration-track:eb89b6eca9cfdb7df9dd5fa9261052b9ba77824b393c604ebf04638922957a77` |
| 7 | `def` | [dependsOnOthers](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/dependsonothers--22e21e23dd16a63f860535c6.md) | 132 | `declaration-track:22e21e23dd16a63f860535c6d50c86623c576591ff793c4e5ceacb592127d8a2` |
| 8 | `def` | [partitionDependentMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/partitiondependentmvars--e0dafc35d460d728e88d89a0.md) | 142 | `declaration-track:e0dafc35d460d728e88d89a093fba69ee4cef5e2ffbb2cc02d314b95d34f8217` |
| 9 | `def` | [reorderGoals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/reordergoals--85241c1f82b9113023bc711b.md) | 150 | `declaration-track:85241c1f82b9113023bc711b3510d5cda9dab9b3b319afef64f19f2b9a82fcc3` |
| 10 | `def` | [isDefEqApply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/isdefeqapply--02d256428dac4bffaba44a97.md) | 160 | `declaration-track:02d256428dac4bffaba44a97b72b3499027f2f0e61c09e5fd7dad2527ee76da5` |
| 11 | `def` | [_root_.Lean.MVarId.apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/root-lean-mvarid-apply--13e607a0158774233ab67637.md) | 169 | `declaration-track:13e607a0158774233ab6763745a7ac3ce1a0196af644fdc468e7655a266cd227` |
| 12 | `def` | [_root_.Lean.MVarId.applyConst](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/root-lean-mvarid-applyconst--fe4b3a4513ebfd71b5d48392.md) | 234 | `declaration-track:fe4b3a4513ebfd71b5d483923768bebf70f080ba7de8ac82aa1bafaacebfaf28` |
| 13 | `def` | [_root_.Lean.MVarId.applyN](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/root-lean-mvarid-applyn--73689e9d2b05f5e7c4493b56.md) | 238 | `declaration-track:73689e9d2b05f5e7c4493b5689311f29e943cd1d2b91014d8014f5f1dc0d702e` |
| 14 | `def` | [splitAndCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/splitandcore--7569449e19f0c5454d388f0a.md) | 257 | `declaration-track:7569449e19f0c5454d388f0a9fac9797a6f589f5482f8441a1f16e7a7fd2a04d` |
| 15 | `abbrev` | [splitAnd](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/splitand--47bc2259dcd6c3c4232ee46d.md) | 283 | `declaration-track:47bc2259dcd6c3c4232ee46d29fb4f09957fd7246c3fb5c1420fb6007a13402f` |
| 16 | `def` | [exfalso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/exfalso--f18ab879c1d6c5bc6f5d1481.md) | 286 | `declaration-track:f18ab879c1d6c5bc6f5d14810429ce29a30d969f399fc9334c234da934088b6a` |
| 17 | `def` | [nthConstructor](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/nthconstructor--d5d442278372d43640f432ce.md) | 300 | `declaration-track:d5d442278372d43640f432cef1abaadc4ef659a693a68006296e3771deeeb2a6` |
| 18 | `def` | [iffOfEq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/iffofeq--2bd7e13c049659dd0bf91680.md) | 322 | `declaration-track:2bd7e13c049659dd0bf91680e55239b471e44ff1372e8d6b8ce73396dbbdde75` |
| 19 | `def` | [propext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/propext--14cec8728998c22f64478268.md) | 332 | `declaration-track:14cec8728998c22f64478268d941a6fd475ca6cc6308400a8fc1e47c844eb045` |
| 20 | `def` | [proofIrrelHeq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/proofirrelheq--81c4ad58d0594922a7866247.md) | 349 | `declaration-track:81c4ad58d0594922a78662472c648b57bbb05d78d52642838d7420bb25da43fa` |
| 21 | `def` | [subsingletonElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Apply/Variantb29b1364e9f1e32f64d746d501c71ecf641ebd35270327623e6811cf487cd01d.lean/declarations/subsingletonelim--e894ddabab8cf64796672f2a.md) | 368 | `declaration-track:e894ddabab8cf64796672f2af9c09cc9f9430bfaa086464e530cc2b43a1d85cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
