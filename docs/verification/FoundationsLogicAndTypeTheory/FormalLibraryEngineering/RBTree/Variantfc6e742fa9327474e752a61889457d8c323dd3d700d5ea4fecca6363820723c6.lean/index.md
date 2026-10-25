# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RbTree.Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9737f6b8777cf3b9dbd96667bd50a81449fc0024",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9737f6b8777cf3b9dbd96667bd50a81449fc0024`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RbTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `ProofWidgets.Presentation.Expr` — import line 1; external provider; requires a separately pinned dependency.
- `ProofWidgets.Component.SelectionPanel` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [RBColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbcolour--83f2a4abc30c619c6bd698f2.md) | 7 | `declaration-track:83f2a4abc30c619c6bd698f297bde22442c930c34802055ff3642d8307143a3a` |
| 2 | `inductive` | [RBTree](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbtree--cc14fcb9d28506d4183c4fc5.md) | 10 | `declaration-track:cc14fcb9d28506d4183c4fc5def8a25d28560411f582f361b5e76003344e4eb9` |
| 3 | `def` | [contains](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/contains--56a6d930cf8e0abac6959e4b.md) | 16 | `declaration-track:56a6d930cf8e0abac6959e4be68912e250f498ee5d9d3940dda0725b98a225d8` |
| 4 | `def` | [balance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/balance--53a0792691578ab8e253943f.md) | 23 | `declaration-track:53a0792691578ab8e253943f1e58826a609648af605b504d85867f618193f74b` |
| 5 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/insert--5c9055e3b186b838a8184873.md) | 31 | `declaration-track:5c9055e3b186b838a818487366ff1004133c2e21c495dce4d9db3abf64c24f33` |
| 6 | `def` | [empty?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/empty--6c23e5a3c8919fc48a1519af.md) | 50 | `declaration-track:6c23e5a3c8919fc48a1519af543232902554af7cf8ca860e7bb0e8001413246e` |
| 7 | `def` | [Lean.Expr.app5?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/lean-expr-app5--718cf734f56535a2ba2c5187.md) | 53 | `declaration-track:718cf734f56535a2ba2c51876cc68bf6ec34c3efb3ca98ffecf61b3d6a14b241` |
| 8 | `def` | [node?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/node--5b032bbfee86f7de8969514e.md) | 64 | `declaration-track:5b032bbfee86f7de8969514e7a986914b01c045f02629ac91ee79b53c469a4f0` |
| 9 | `def` | [evalColourUnsafe](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/evalcolourunsafe--079e69aeb91be1113f711e02.md) | 68 | `declaration-track:079e69aeb91be1113f711e0233c5ba033f9386e8fa4634bf0ac187a08f46ec72` |
| 10 | `opaque` | [evalColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/evalcolour--68313f13af713c09c29b7dfe.md) | 72 | `declaration-track:68313f13af713c09c29b7dfe2f38e9c8b0fd469eb7d738f0285742c1f3719f55` |
| 11 | `inductive` | [RBTreeVarsColour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbtreevarscolour--f85dd68d8c717b9eabff43a3.md) | 75 | `declaration-track:f85dd68d8c717b9eabff43a3ec9f6e7e548dd31627a872794f592ad493cbb77a` |
| 12 | `inductive` | [RBTreeVars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbtreevars--8be3ac84aaf31d5b58289d58.md) | 85 | `declaration-track:8be3ac84aaf31d5b58289d58a3418f171800ff7e3cd397c7e75806fb58e798ed` |
| 13 | `structure` | [RBDisplayProps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbdisplayprops--14c89e7cb99743dfed233f4b.md) | 94 | `declaration-track:14c89e7cb99743dfed233f4b505c9866693d095b56f46ea0a94ab9e115d569e1` |
| 14 | `def` | [RBDisplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbdisplay--d632c687623c1670cf68160e.md) | 102 | `declaration-track:d632c687623c1670cf68160e57d1b3ab0e99b58949fcf0a689724853b6cd8e71` |
| 15 | `def` | [drawTree?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/drawtree--8de8bbad907fdaa7a11346a3.md) | 106 | `declaration-track:8de8bbad907fdaa7a11346a37fbbe77f1ee144cb090fb61fee8345ba63adb229` |
| 16 | `def` | [RBTree.presenter](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/rbtree-presenter--96883eb93d2b19819c9cea3a.md) | 127 | `declaration-track:96883eb93d2b19819c9cea3a1dca93d04d8ae59fc18c768a2de8c4cc55d3271a` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RBTree/Variantfc6e742fa9327474e752a61889457d8c323dd3d700d5ea4fecca6363820723c6.lean/declarations/example--81537cb9a0e318f5dcf6df53.md) | 137 | `declaration-track:81537cb9a0e318f5dcf6df53f2ab14d8972f5c7080e2ada3c01c3dbd9eee1c3b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
