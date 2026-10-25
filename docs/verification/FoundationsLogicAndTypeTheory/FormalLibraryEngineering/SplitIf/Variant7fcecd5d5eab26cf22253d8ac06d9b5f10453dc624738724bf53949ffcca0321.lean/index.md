# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SplitIf.Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c7cfa824de083dacc2a2d73157b51d23aa33eb2",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c7cfa824de083dacc2a2d73157b51d23aa33eb2`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta.Tactic.Simp.Main` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [SplitKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitkind--bcd26d10dcc60558448eae20.md) | 14 | `declaration-track:bcd26d10dcc60558448eae20115b5411b242c5a78c3e879daacb616e3dc93252` |
| 2 | `def` | [SplitKind.considerIte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitkind-considerite--b2a5525aa885db0b43a021de.md) | 17 | `declaration-track:b2a5525aa885db0b43a021ded10765d2a97359eaf41f7807eafe3a837edb2103` |
| 3 | `def` | [SplitKind.considerMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitkind-considermatch--ecdc47578eb628b80b3df1ab.md) | 21 | `declaration-track:ecdc47578eb628b80b3df1ab56237e726679a8c220d87c3356f2f5a9fe988470` |
| 4 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/context--c669a728270cb1b102afca5e.md) | 27 | `declaration-track:c669a728270cb1b102afca5eee946b5885744bf6d3437fdf5e435a975bc19274` |
| 5 | `abbrev` | [FindM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/findm--55a6ced031559ecb3d5c60ea.md) | 31 | `declaration-track:55a6ced031559ecb3d5c60eab81e4254b9cf5a2e4f99879f36c3f803f6c64002` |
| 6 | `def` | [isCandidate?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/iscandidate--9b72ef48a14e299ae74ec2a3.md) | 39 | `declaration-track:9b72ef48a14e299ae74ec2a3f5ff6ea1e3df8b1fe41d9d2dde2848de7513bedb` |
| 7 | `def` | [checkVisited](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/checkvisited--0ca50cb6b2f92933e3f665b7.md) | 56 | `declaration-track:0ca50cb6b2f92933e3f665b7a85222807f0c292b69fd16617d6c71696c494230` |
| 8 | `def` | [visit](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/visit--60bf4434795343a5790912c7.md) | 61 | `declaration-track:60bf4434795343a5790912c7b8e3011b698c1ba7f3340af36e90efdde8a5d6ee` |
| 9 | `def` | [findSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/findsplit--bde691bd841ef514c13e81b3.md) | 102 | `declaration-track:bde691bd841ef514c13e81b3bfb81c179cc9a7c9eaa0381a9b723b0ab2a8ce48` |
| 10 | `def` | [findIfToSplit?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/findiftosplit--0baf675ea249530a3347a43f.md) | 123 | `declaration-track:0baf675ea249530a3347a43fd90bd281f6706c640ce345d4e2a0d060726b2df2` |
| 11 | `def` | [getSimpContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/getsimpcontext--9bd254af55a479832b073604.md) | 142 | `declaration-track:9bd254af55a479832b073604d55ac151a79bb64462b0cc748c50f9356cd15cea` |
| 12 | `def` | [getSimpContext'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/getsimpcontext--987d90290804eedf98fcf7f4.md) | 156 | `declaration-track:987d90290804eedf98fcf7f4585fa5eb6d2ead05de40380b7a31bd7f7e4ca9b6` |
| 13 | `def` | [discharge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/discharge--8fe4033ac127d94f69435135.md) | 174 | `declaration-track:8fe4033ac127d94f69435135de837b245b687adff9c1774660fabe289bfd887e` |
| 14 | `def` | [reduceIte'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/reduceite--ff3f47616b5958c5abb61760.md) | 197 | `declaration-track:ff3f47616b5958c5abb61760b6d115c20fd30db518b79e7d4a386341c5a8b3cb` |
| 15 | `def` | [getBinderName](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/getbindername--a927513cd1588075079e2539.md) | 219 | `declaration-track:a927513cd1588075079e2539d73e3a8dc6ca0534a7bcd0ce69d5da75a6a19c67` |
| 16 | `def` | [reduceDIte'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/reducedite--735b8093488553f57710e06d.md) | 223 | `declaration-track:735b8093488553f57710e06dbc451ca94e7a40c8c03eaad65d8e4e6209535ad3` |
| 17 | `def` | [getSimprocs](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/getsimprocs--5a4d7b9c224643d69c82d377.md) | 252 | `declaration-track:5a4d7b9c224643d69c82d37769485fb3da5a88921062261b4148178d41dca6ad` |
| 18 | `def` | [mkDischarge?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/mkdischarge--bea7f56d59a047424e5239ed.md) | 258 | `declaration-track:bea7f56d59a047424e5239ed92235057fff78a416c8d9e7c4692ed73bf38e6f4` |
| 19 | `def` | [splitIfAt?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitifat--cf0bfbdc8b790342a8992cb0.md) | 261 | `declaration-track:cf0bfbdc8b790342a8992cb0327c988025c9899c27a9563570796fc156278862` |
| 20 | `def` | [getNumIndices](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/getnumindices--14c8791ea08f23a558e549a6.md) | 277 | `declaration-track:14c8791ea08f23a558e549a664137454badd6f36a13888152a26d805b7f7d4c0` |
| 21 | `def` | [simpIfTarget](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/simpiftarget--79ebfd4e7a17c592d4040654.md) | 284 | `declaration-track:79ebfd4e7a17c592d404065420dfcea80b1cb584bc4f81a386731ea92b152933` |
| 22 | `def` | [simpIfLocalDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/simpiflocaldecl--8de3bc11316b270eecdf3cc7.md) | 300 | `declaration-track:8de3bc11316b270eecdf3cc71d5a7a963650d6020b04b89137efd999cede6128` |
| 23 | `def` | [splitIfTarget?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitiftarget--0d57b9fd084b525d38ac8af5.md) | 316 | `declaration-track:0d57b9fd084b525d38ac8af50740774ec65520f05d12d6b5fc53a855adc9ffb8` |
| 24 | `def` | [splitIfLocalDecl?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/splitiflocaldecl--87100c89a02f019d70b4d2c4.md) | 329 | `declaration-track:87100c89a02f019d70b4d2c4241d0bf4eba388f0ddc4f568e8e18b864ceff8c5` |
| 25 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SplitIf/Variant7fcecd5d5eab26cf22253d8ac06d9b5f10453dc624738724bf53949ffcca0321.lean/declarations/builtin-initialize--a8b72fe2060ad9a13cbcb1ab.md) | 340 | `declaration-track:a8b72fe2060ad9a13cbcb1ab1f43717820634df63e71d21aadc288186764fbfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
