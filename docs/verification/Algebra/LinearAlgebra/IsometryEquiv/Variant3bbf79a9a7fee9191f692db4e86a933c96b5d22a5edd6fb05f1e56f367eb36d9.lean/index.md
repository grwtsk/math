# Verification target: GRWTSK.Algebra.LinearAlgebra.IsometryEquiv.Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0c62450d0b44c79bfe2322f681679171a83b2090",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0c62450d0b44c79bfe2322f681679171a83b2090`.

Source path: `GRWTSK/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsometryEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/isometryequiv--d6d42a569f7f31a4bdf2487d.md) | 39 | `declaration-track:d6d42a569f7f31a4bdf2487d7483c3da975cd882130b4d04b8dc3d2a47c113a7` |
| 2 | `def` | [Equivalent](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/equivalent--20f229b83db57776d380cd71.md) | 46 | `declaration-track:20f229b83db57776d380cd7162f01e31d73450d820681540c0253cc43e8c7c9e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/instance--205b2fb6ceb73d1875ee719f.md) | 56 | `declaration-track:205b2fb6ceb73d1875ee719fbe51ee236336f9174c0cfcfac4812e7f769a7458` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/instance--9c0670560d219ca7e3d93a60.md) | 63 | `declaration-track:9c0670560d219ca7e3d93a609900128dff8775bda2ddcc4cfdac88003ddfb17c` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/instance--a5279ae700e2378f6ca7810a.md) | 67 | `declaration-track:a5279ae700e2378f6ca7810a3845c396e1a4440842de870c7e42dd1d23774c27` |
| 6 | `theorem` | [coe_toLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/coe-tolinearequiv--d02b5ea6c0f9faa23ada69e5.md) | 71 | `result-track:d02b5ea6c0f9faa23ada69e59241edcd8e53de3583548f1b8ac107bb9a9cc8f5` |
| 7 | `theorem` | [map_app](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/map-app--95a4a7394df8250e00b0b1ea.md) | 75 | `result-track:95a4a7394df8250e00b0b1ea42ea82b7f98a81ba7774495fd6976d9cac3c2dcf` |
| 8 | `def` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/refl--b52a2bceb35ce05ef2bfda9e.md) | 80 | `declaration-track:b52a2bceb35ce05ef2bfda9e3cb7324a6e90b7961aafc8735e5909c83a95e067` |
| 9 | `def` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/symm--12d0cff0f8e1635225c830a9.md) | 85 | `declaration-track:12d0cff0f8e1635225c830a978dd20c7ede1380449f5718db2d4db828d32d394` |
| 10 | `def` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/trans--fc5dd99e1f9e9c5b86f48a9f.md) | 93 | `declaration-track:fc5dd99e1f9e9c5b86f48a9f2ef7ad468a156b055d1fc478a37ae48e6e37b1ce` |
| 11 | `def` | [toIsometry](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/toisometry--afa51b1fef9d84c5206d356c.md) | 99 | `declaration-track:afa51b1fef9d84c5206d356c00186369f4d09edf84a63124050716f0dae60092` |
| 12 | `theorem` | [refl](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/refl--546c13cd71c2b3b67335a39f.md) | 111 | `result-track:546c13cd71c2b3b67335a39f60ea729a3733f164a29e0c2cc5eba76c9e0fe0eb` |
| 13 | `theorem` | [symm](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/symm--cc917e3d7c0821ef2ee99ba9.md) | 115 | `result-track:cc917e3d7c0821ef2ee99ba98f5d3b335b494af4a515a2ab97204e487bfefdac` |
| 14 | `theorem` | [trans](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/trans--12efe3187ec8ed22dbc6a849.md) | 119 | `result-track:12efe3187ec8ed22dbc6a849124fc93ca0f14e9e06a48ce99053016c73754e3c` |
| 15 | `def` | [isometryEquivOfCompLinearEquiv](../../../../../mathematics/Algebra/LinearAlgebra/IsometryEquiv/Variant3bbf79a9a7fee9191f692db4e86a933c96b5d22a5edd6fb05f1e56f367eb36d9.lean/declarations/isometryequivofcomplinearequiv--3442366e06b73635e6bc2e94.md) | 125 | `declaration-track:3442366e06b73635e6bc2e94a84dfd4258a5c8786f568e0c80656e64bc8d2cc3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
