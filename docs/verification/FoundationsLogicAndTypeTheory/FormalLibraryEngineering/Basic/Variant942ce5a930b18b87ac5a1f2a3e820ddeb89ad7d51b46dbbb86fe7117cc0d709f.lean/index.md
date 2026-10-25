# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d29b3c861c192cb675e57f0b55e712396ae4186",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d29b3c861c192cb675e57f0b55e712396ae4186`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Meta` — import line 6; external provider; requires a separately pinned dependency.
- `Std.Lean.LocalContext` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Meta.sortFVarsByContextOrder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/meta-sortfvarsbycontextorder--6368d877e7511ee16834669e.md) | 18 | `declaration-track:6368d877e7511ee16834669e2412ebc746f96ba8feeb0bea51e5c6909a9311cb` |
| 2 | `def` | [getExprMVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/getexprmvardecl--1e6444638707645d2fb28221.md) | 29 | `declaration-track:1e6444638707645d2fb2822119112b4d0ab4f7afd51faa0dfe940670ebf97e18` |
| 3 | `def` | [declareExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/declareexprmvar--1aeeddbece81834940b86ac5.md) | 40 | `declaration-track:1aeeddbece81834940b86ac56e09fca465e9e46b16474afdb30290180a20954a` |
| 4 | `def` | [isExprMVarAssignedOrDelayedAssigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/isexprmvarassignedordelayedassigned--d4c4b1ab365d15007522ab4b.md) | 51 | `declaration-track:d4c4b1ab365d15007522ab4bb904a31d7b922e6268621f519553c42cf1455e08` |
| 5 | `def` | [isExprMVarDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/isexprmvardeclared--05303bb65c02272f5ed712e4.md) | 58 | `declaration-track:05303bb65c02272f5ed712e4868ab0b2c9b532f98bac052b298fd6eca949988b` |
| 6 | `def` | [delayedAssignExprMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/delayedassignexprmvar--dfd6406b41c0c998b943dcac.md) | 65 | `declaration-track:dfd6406b41c0c998b943dcac80101d84ed092e624770e1a7aaf301e87c26797d` |
| 7 | `def` | [eraseExprMVarAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/eraseexprmvarassignment--4af7d8edfe8d6628fad5a41a.md) | 72 | `declaration-track:4af7d8edfe8d6628fad5a41a1caec33b1ad4b896789c0047f221678daef0a8ad` |
| 8 | `def` | [modifyExprMVarDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/modifyexprmvardecl--d2a5a644fa7b49dbab380ccd.md) | 85 | `declaration-track:d2a5a644fa7b49dbab380ccd0101b7f98f505ba974bf1f71636856d41ab3b51f` |
| 9 | `def` | [modifyExprMVarLCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/modifyexprmvarlctx--cf7bb2a5868bd88ac3efa904.md) | 99 | `declaration-track:cf7bb2a5868bd88ac3efa904be2bc98105c0ef5c71753b11dbcbdee3ad53fd70` |
| 10 | `def` | [setFVarKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/setfvarkind--952dad851e439d127330fd24.md) | 108 | `declaration-track:952dad851e439d127330fd240fd235f2d3d04ba99a73eb3e163ad509a326bb06` |
| 11 | `def` | [setFVarBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/setfvarbinderinfo--307f85e5384558c40a2deea9.md) | 117 | `declaration-track:307f85e5384558c40a2deea98554c03f2103fc0e2884a75edc3966ad5607da16` |
| 12 | `def` | [unassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/unassignedexprmvars--6852fe3288c89eeda8bce498.md) | 126 | `declaration-track:6852fe3288c89eeda8bce4989129ccba3d478cb41cce5aaffcee57e4b5089720` |
| 13 | `def` | [isAssignedOrDelayedAssigned](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/isassignedordelayedassigned--dbe907c499999ae6507196b6.md) | 147 | `declaration-track:dbe907c499999ae6507196b6b84983cae249fdcb611d8935c272ed6144f0e072` |
| 14 | `def` | [isDeclared](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/isdeclared--9c152cb6fca1338a544b0e69.md) | 154 | `declaration-track:9c152cb6fca1338a544b0e695f043ab4d20447be452341d0e0ffebb5fc817667` |
| 15 | `def` | [delayedAssign](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/delayedassign--33e9fa696920abf6d6bf5d11.md) | 161 | `declaration-track:33e9fa696920abf6d6bf5d1159ec6484e909d9519e87ff5bc7da4a1351feee17` |
| 16 | `def` | [eraseAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/eraseassignment--6c4352a21680acbc7f48bdf8.md) | 168 | `declaration-track:6c4352a21680acbc7f48bdf80070b0875e194cfb4f2d736f536ff92a82b33586` |
| 17 | `def` | [modifyDecl](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/modifydecl--fbbf58f87e0f17c45d63a4f4.md) | 178 | `declaration-track:fbbf58f87e0f17c45d63a4f41ec2ed895119ef1094a491130fadc411a007a736` |
| 18 | `def` | [modifyLCtx](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/modifylctx--62fd1fc960577e0b19e79a6c.md) | 189 | `declaration-track:62fd1fc960577e0b19e79a6ce462b771d89b46925385119946ee8ffab68672aa` |
| 19 | `def` | [setFVarKind](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/setfvarkind--fea80f358118b111591d2bf5.md) | 197 | `declaration-track:fea80f358118b111591d2bf57032fdd91b7039655bfbf2b9e13b336ffc9f2ba7` |
| 20 | `def` | [setFVarBinderInfo](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/setfvarbinderinfo--4e2b14faada6ebf51616070f.md) | 205 | `declaration-track:4e2b14faada6ebf51616070fc1bea04d9a3f35363cb22fe8114525ee953ad428` |
| 21 | `def` | [getMVarDependencies](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/getmvardependencies--caac65fc935a24ff658a9dbb.md) | 214 | `declaration-track:caac65fc935a24ff658a9dbb3694e428a15db9b47777dc76dbca4bd92db03db8` |
| 22 | `def` | [isSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/issubsingleton--385c802aa000bdb4297c66e3.md) | 245 | `declaration-track:385c802aa000bdb4297c66e30481cc66c6241801a1c3458f7474babc5843b839` |
| 23 | `def` | [isIndependentOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/isindependentof--e281166ada5d6418bda75fa1.md) | 279 | `declaration-track:e281166ada5d6418bda75fa148742b665b8e256e8be4aee098bf69150545537a` |
| 24 | `def` | [replace](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/replace--2a99167f3cd4ed3580bc947d.md) | 302 | `declaration-track:2a99167f3cd4ed3580bc947df2887b8c2969eacdb59816d04a776f6255c28922` |
| 25 | `def` | [getTypeCleanup](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/gettypecleanup--cfa45ebccfb3d3dabee6d807.md) | 328 | `declaration-track:cfa45ebccfb3d3dabee6d8076df48c6a720765422bdd6894de8210cd86f8914c` |
| 26 | `def` | [getUnassignedExprMVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/getunassignedexprmvars--b6bf2d2362a1dae615e2ca6d.md) | 340 | `declaration-track:b6bf2d2362a1dae615e2ca6d601113690c8fdd44a934256f6f0cfe3edf53cf9d` |
| 27 | `def` | [unhygienic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/unhygienic--594782bbb067986d597e71a9.md) | 347 | `declaration-track:594782bbb067986d597e71a953ff27f44f2273ed949f1f0db6d8d91eec867c5d` |
| 28 | `def` | [mkFreshIdWithPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/mkfreshidwithprefix--2bfb5279344e70a9b970332b.md) | 355 | `declaration-track:2bfb5279344e70a9b970332bfe43d9479c35a5e49449d59c85e37c0f20d465a8` |
| 29 | `def` | [repeat'Core](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/repeat-core--6878bf7a09ec4aafc3a74445.md) | 372 | `declaration-track:6878bf7a09ec4aafc3a74445c83f68b41e576a08dabd2171a51ba70b8191552f` |
| 30 | `def` | [repeat'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/repeat--c21def70f0bae81dd18472cc.md) | 402 | `declaration-track:c21def70f0bae81dd18472cc3e98c529188d52f4ab1849f8efad0f9e2a5579a5` |
| 31 | `def` | [repeat1'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/repeat1--40a360bbaae3205a5d77a4c3.md) | 412 | `declaration-track:40a360bbaae3205a5d77a4c3cb3315428bb2cf37a8de5b61939b429e1e75f3b5` |
| 32 | `def` | [saturate1](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant942ce5a930b18b87ac5a1f2a3e820ddeb89ad7d51b46dbbb86fe7117cc0d709f.lean/declarations/saturate1--63b088a5f861b34fea6082f9.md) | 426 | `declaration-track:63b088a5f861b34fea6082f90a71925a0b56d82581096fafa37e971e202ca2f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
