# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContextAsync.Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c528e64387c29337fdb204a0909960095b6a0d3",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c528e64387c29337fdb204a0909960095b6a0d3`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean.json)

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
| 1 | `abbrev` | [ContextAsync](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/contextasync--5d2f24175d27785ae1c10298.md) | 28 | `declaration-track:5d2f24175d27785ae1c1029884b4a4f02502828219b5697662d5d570a09764e4` |
| 2 | `def` | [runIn](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/runin--34fd828d8f8ebb76a357878d.md) | 37 | `declaration-track:34fd828d8f8ebb76a357878dad9e6877bc76f88dd13aa5cf0fc4536a712ccc64` |
| 3 | `def` | [run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/run--4fd48235cf057583f3f1cfde.md) | 45 | `declaration-track:4fd48235cf057583f3f1cfde8a105834fe804deb2f4a91ada79ef5cc02f19520` |
| 4 | `def` | [getContext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/getcontext--42d654327439d1243b194556.md) | 53 | `declaration-track:42d654327439d1243b194556772c68fe1eecaf4a2253e0fe1659e34033da9e6d` |
| 5 | `def` | [isCancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/iscancelled--9116fbe29e262fbbea62523d.md) | 61 | `declaration-track:9116fbe29e262fbbea62523d1fa0e07cd2f51537bbc84da66031e050f693031c` |
| 6 | `def` | [getCancellationReason](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/getcancellationreason--56c6d705e878eb889485998a.md) | 70 | `declaration-track:56c6d705e878eb889485998ae3a624397b44c7969f314e7218034ed7238bb46e` |
| 7 | `def` | [cancel](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/cancel--f9b2a23b01c9fedae6868e59.md) | 79 | `declaration-track:f9b2a23b01c9fedae6868e596c040d084760a46f8ed51617a89ca5fa8e7b7c15` |
| 8 | `def` | [doneSelector](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/doneselector--54c7896332352e56db4fb318.md) | 87 | `declaration-track:54c7896332352e56db4fb318cf178d723918e5228964455140a39a67e7774c81` |
| 9 | `def` | [awaitCancellation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/awaitcancellation--5132f8ea5d221fdf0c0355ec.md) | 95 | `declaration-track:5132f8ea5d221fdf0c0355ec6588c8acf6ca8cf75e55af59c9eb39117a43f72c` |
| 10 | `def` | [concurrently](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/concurrently--0851e50fc6e7b1371727e583.md) | 105 | `declaration-track:0851e50fc6e7b1371727e583b64ddf749624dff8dd434376d319ddbba527ed95` |
| 11 | `def` | [concurrentlyAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/concurrentlyall--d682c9d2958fdb5841964f50.md) | 127 | `declaration-track:d682c9d2958fdb5841964f50931d2da2ce6401021b0a634a98a34e4642f3898d` |
| 12 | `def` | [background](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/background--2aa54e37c7eeda812b8e738b.md) | 155 | `declaration-track:2aa54e37c7eeda812b8e738bb0454fbb932456681ee8f63536b16e7bd745b641` |
| 13 | `def` | [disown](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/disown--cff957705fda09d54391d0a7.md) | 168 | `declaration-track:cff957705fda09d54391d0a7ce7e895f93f36954ff68a8fa9caadaf935c50a44` |
| 14 | `def` | [raceAll](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/raceall--db37d2e0aa1d3e14bf412d9e.md) | 176 | `declaration-track:db37d2e0aa1d3e14bf412d9ecf46cbb51504dcd750901e41795fb46b1b58bb00` |
| 15 | `def` | [async](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/async--f45b3084c3c7ba3784b91f75.md) | 201 | `declaration-track:f45b3084c3c7ba3784b91f757d3f0d16b4a2e003c14e6c86716596a2ab0a1911` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--19e7a70d8a44cb17a9b7ba48.md) | 206 | `declaration-track:19e7a70d8a44cb17a9b7ba487a4bed0c530e04d19bfa523a61a7ab73ddad6203` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--56cd3312c6a9024e0cbd1780.md) | 209 | `declaration-track:56cd3312c6a9024e0cbd17804954cd5e55c3940d946c1384575b7ed66710241d` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--c78732e88f367c3b653be784.md) | 212 | `declaration-track:c78732e88f367c3b653be784ec65469800574e50693af45d5874f6c038598af8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--b5fcccba70418f11e1d1f45b.md) | 216 | `declaration-track:b5fcccba70418f11e1d1f45b5278256ed072a449090e75f5500b936083f0348c` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--f91f7d66d2d5cdc9256be4d0.md) | 219 | `declaration-track:f91f7d66d2d5cdc9256be4d012f6bee8da8933b53e18fbdf579a098b42923a0f` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--031b8da4802c0f5046632d32.md) | 222 | `declaration-track:031b8da4802c0f5046632d3286e4d99f4f1667e38685f0245bc78ea94cb0f26d` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--a62ba2273af2589b1ac8be72.md) | 226 | `declaration-track:a62ba2273af2589b1ac8be72d44bfbee6cba1362257edd1a076b2f1394ff5240` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--9be1173c83cd16339505be05.md) | 230 | `declaration-track:9be1173c83cd16339505be05e99a98c5b0848b6a3f92399039918ff931a03206` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/instance--b5ccf5d41cbc900ad9523844.md) | 233 | `declaration-track:b5ccf5d41cbc900ad95238443a4c3e4247721ef6514e86ac340447b42675a1ca` |
| 25 | `def` | [race](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/race--77befd8118b9c9d6ac9d7647.md) | 241 | `declaration-track:77befd8118b9c9d6ac9d7647ad9a8c5da59e74c8444e695a05b3753d5860f709` |
| 26 | `def` | [Selector.cancelled](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ContextAsync/Variant12d6c7e63be954495b381600d4c75f3758005aef450cd2666b939e2ae67cce94.lean/declarations/selector-cancelled--b48ebc5f57c58f9d346800a5.md) | 263 | `declaration-track:b48ebc5f57c58f9d346800a5d1b984547f9c240bf35ca22dbac0385be82a052c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
