# Verification target: GRWTSK.Algebra.LinearAlgebra.EMLCircuit.Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8602a7a5f970e3aa36ab70b8570ea2ba96f3b30d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.BinaryLogicMatrix.EMLTree` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [CircuitNodeKind](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/circuitnodekind--32511f0f2a744b70bbd607d1.md) | 5 | `declaration-track:32511f0f2a744b70bbd607d16f6eb6abf25d530f88aab27f42def7dca018d234` |
| 2 | `def` | [matchesKind](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/matcheskind--fbcad550a7d3aac4c46e1542.md) | 13 | `declaration-track:fbcad550a7d3aac4c46e15424de7155f020f913801604157022e033f5f40fbaa` |
| 3 | `structure` | [EMLCircuitMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/emlcircuitmatrix--8db2ac4f88350e11bcba8731.md) | 19 | `declaration-track:8db2ac4f88350e11bcba873143d222280fe2171db75939991e35ba1077d52988` |
| 4 | `def` | [HasNodeKinds](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/hasnodekinds--c6265f45708e6a767082a14a.md) | 31 | `declaration-track:c6265f45708e6a767082a14a8a0654b4299da53f1a2408f51934c2fd5379146b` |
| 5 | `def` | [KindMarkersDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/kindmarkersdiagonal--207113fb81765e6929ff41d3.md) | 32 | `declaration-track:207113fb81765e6929ff41d3b661775cefc4d563767c6d51e6d122aeebf15a4b` |
| 6 | `def` | [ExactlyOneKindPerNode](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/exactlyonekindpernode--2341e2fa111953165aee72a5.md) | 33 | `declaration-track:2341e2fa111953165aee72a5abb88fdcec3d30a6d91ae0f39398ee000fc26c2b` |
| 7 | `def` | [OperatorChildrenFunctional](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/operatorchildrenfunctional--5fe211981d4d0d09e34c4d0f.md) | 34 | `declaration-track:5fe211981d4d0d09e34c4d0f6d24159d7c484f7e200a67770d2868a3ae2cbae5` |
| 8 | `def` | [LeafNodesHaveNoChildren](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/leafnodeshavenochildren--2a8b55f7dda2ccd96ea1cb1e.md) | 35 | `declaration-track:2a8b55f7dda2ccd96ea1cb1ed90d5f3ca8e2db303c4e903812cbc4fad80be4da` |
| 9 | `def` | [VariableLeavesUseOneInput](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/variableleavesuseoneinput--580b7fb17902dcb977b2f63e.md) | 36 | `declaration-track:580b7fb17902dcb977b2f63e515b11d740bb1d385008a72b7264fb42e30394d5` |
| 10 | `def` | [ConstantLeavesUseNoInput](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/constantleavesusenoinput--604368658c7917c04b476be8.md) | 37 | `declaration-track:604368658c7917c04b476be8314cf20a26f487545225f5738b381827d3ceaec1` |
| 11 | `def` | [ChildrenDecrease](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/childrendecrease--bc77039c892327c7cec24613.md) | 38 | `declaration-track:bc77039c892327c7cec24613e8723d7cdadfc2e7e32394f573409f30b57bbe6d` |
| 12 | `def` | [ReachableFromRoot](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/reachablefromroot--84b59bea1a2c83ff76b2ac8c.md) | 39 | `declaration-track:84b59bea1a2c83ff76b2ac8cad1863e6f1354f8752ac3a868b85759c60afc93d` |
| 13 | `def` | [RootIsLast](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/rootislast--50e0457256eb1c9e118f24d4.md) | 40 | `declaration-track:50e0457256eb1c9e118f24d4b9858ea4cd8c7575431c5ad76a3f726ea5684aa7` |
| 14 | `def` | [WellFormed](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/wellformed--1b36fe21f0584079a99f76c2.md) | 42 | `declaration-track:1b36fe21f0584079a99f76c2fde4d9b02306ffe16d2ee03b2ff06cf42b7f24d3` |
| 15 | `def` | [lastFin](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/lastfin--8c3dcb576520c971bb09b438.md) | 50 | `declaration-track:8c3dcb576520c971bb09b438289bdf93d29bc61a5c0abe78132f7f3a4791a060` |
| 16 | `def` | [kindAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/kindat--87d5d69e138795c34648935e.md) | 55 | `declaration-track:87d5d69e138795c34648935e79b8c0f402adee5ae7f0b8d02257bdd7d5250382` |
| 17 | `def` | [varInputAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/varinputat--bf439caf557994f6df78d2ea.md) | 68 | `declaration-track:bf439caf557994f6df78d2eae0ddc0aeb30ae15b9e409cf039308f81e7f7b56f` |
| 18 | `def` | [leftChildAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/leftchildat--9aa559b2e5db03f8866178a1.md) | 79 | `declaration-track:9aa559b2e5db03f8866178a1265e020cf49893acaf156083b459ac1f183b6946` |
| 19 | `def` | [rightChildAt](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/rightchildat--a31eeb75a93bb191fe44ad75.md) | 92 | `declaration-track:a31eeb75a93bb191fe44ad75fedc2ce44d01233ffd7509a02b80bc7040f6cf18` |
| 20 | `def` | [optionNatMatches](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/optionnatmatches--ea331e07fc99f83ce3305c3a.md) | 107 | `declaration-track:ea331e07fc99f83ce3305c3a33190ed068955c7f3829a8c5eafa526f8711555b` |
| 21 | `def` | [treeKindOneMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treekindonematrix--6360b1fc05721dbdc9864537.md) | 111 | `declaration-track:6360b1fc05721dbdc9864537c1052960ce89a7ff87f000b03edd94a88251167f` |
| 22 | `def` | [treeKindVarMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treekindvarmatrix--6c87a3c35648a5bc42bf5d58.md) | 115 | `declaration-track:6c87a3c35648a5bc42bf5d58e88936f3e80bd7f0e52c03f699b93c41f99437b8` |
| 23 | `def` | [treeKindOpMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treekindopmatrix--a233f63a685fb0ff417824d4.md) | 119 | `declaration-track:a233f63a685fb0ff417824d4674dc2efbfedefe907a151d2f2f4990d2cda4aa6` |
| 24 | `def` | [treeLeftEdgeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treeleftedgematrix--c27040fc1dc7f9a205ab0cc2.md) | 123 | `declaration-track:c27040fc1dc7f9a205ab0cc22dc48cf9176d2c67dca12b1d037797fa00ca7c9b` |
| 25 | `def` | [treeRightEdgeMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treerightedgematrix--dc8a5dfea753bc8e29f9918e.md) | 126 | `declaration-track:dc8a5dfea753bc8e29f9918e5e0c75536f02774cb3a18291906906ef612cbe3b` |
| 26 | `def` | [treeInputUseMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treeinputusematrix--0129d9bae9cba9654786ac1f.md) | 129 | `declaration-track:0129d9bae9cba9654786ac1f98bab8a886e6b3044c47bc60d86211e25974f5ff` |
| 27 | `def` | [treeToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treetomatrix--8b2b853f982c109c89fadcd1.md) | 135 | `declaration-track:8b2b853f982c109c89fadcd155f63205930719d887fca7f5cde53ec941a366c9` |
| 28 | `def` | [matrixToTree?](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/matrixtotree--55079e5314de195ca4b61229.md) | 148 | `declaration-track:55079e5314de195ca4b612290710a9aa0501c9de303c8b9a1104ecffee7a7afb` |
| 29 | `theorem` | [treeToMatrix_wellFormed](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/treetomatrix-wellformed--613685d608278cbf9f6be1e0.md) | 151 | `result-track:613685d608278cbf9f6be1e032cbf9b05e8b3a19122106eb0f1b692103da0de4` |
| 30 | `theorem` | [matrixToTree_treeToMatrix](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/matrixtotree-treetomatrix--4358472af3f2d7f456ea9c43.md) | 161 | `result-track:4358472af3f2d7f456ea9c43a8ca61e6f17e9a981b246c4d241525aec1adaa3d` |
| 31 | `theorem` | [tree_encoding_injective](../../../../../mathematics/Algebra/LinearAlgebra/EMLCircuit/Variant441246f20e9222cb4f19d9b52f252663cd5ba82861d239c0efe34073644b463c.lean/declarations/tree-encoding-injective--3803fe8fcc3d6b6ba711c662.md) | 165 | `result-track:3803fe8fcc3d6b6ba711c662fec54b5348174e34fd0f0f3f54cf208527f02960` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
