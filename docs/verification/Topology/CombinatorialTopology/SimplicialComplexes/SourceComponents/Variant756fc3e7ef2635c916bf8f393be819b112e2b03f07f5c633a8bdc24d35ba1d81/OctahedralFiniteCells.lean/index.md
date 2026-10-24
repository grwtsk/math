# Verification target: GRWTSK.Topology.CombinatorialTopology.SimplicialComplexes.SourceComponents.Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.OctahedralFiniteCells

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0916eb6c487a328935809823261e775a4f7d323a",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/index.md) · [Full source](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0916eb6c487a328935809823261e775a4f7d323a`.

Source path: `GRWTSK/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralsign--6ee62f3807e5b2122b23b4c2.md) | 36 | `declaration-track:6ee62f3807e5b2122b23b4c231adb3ddcc3178da2e294b67afae3f8a5d3be6e2` |
| 2 | `def` | [octahedralSignWeight](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralsignweight--4aca2bd5163e87f190ea525b.md) | 42 | `declaration-track:4aca2bd5163e87f190ea525b2d9be92a8760c2db2466f50d858e315fbfed1098` |
| 3 | `inductive` | [OctahedralVertex](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralvertex--e32a7dd93c93723c91436a2a.md) | 47 | `declaration-track:e32a7dd93c93723c91436a2a67d9066ac9f2956ec619c6fa4c57c568165d1954` |
| 4 | `inductive` | [OctahedralEdge](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedraledge--3c2f8cb182cd147c27a4effb.md) | 54 | `declaration-track:3c2f8cb182cd147c27a4effbb24c2595f323775bc0fe4cd466d2f7e0e8ff0374` |
| 5 | `structure` | [OctahedralFace](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralface--4fb3630d1fcf81749df15a0c.md) | 61 | `declaration-track:4fb3630d1fcf81749df15a0c80a602ea8c91e33b1c5e021518c511dbcf4d44e6` |
| 6 | `def` | [octahedralVertexId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralvertexid--f6c03455fc8211cf2916a4f2.md) | 68 | `declaration-track:f6c03455fc8211cf2916a4f2b63c8c41b32691e146214ee80c489505ddf0186d` |
| 7 | `def` | [octahedralEdgeId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedraledgeid--adb296888ea70ef9cb721905.md) | 77 | `declaration-track:adb296888ea70ef9cb721905401eb0488be234f06be44f388c0f9b03f52d425c` |
| 8 | `def` | [octahedralFaceId](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfaceid--c8c622f0a12994c2bd4bec7f.md) | 92 | `declaration-track:c8c622f0a12994c2bd4bec7fcdb95a81f0ece5e6cc6c8c24e1e881d0c3a68942` |
| 9 | `def` | [octahedralVertices](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralvertices--0d603f20dd6b60a651d4221b.md) | 103 | `declaration-track:0d603f20dd6b60a651d4221b8ad281d177d7d24049a4ce9c6f34e2aaf9a5ed34` |
| 10 | `def` | [octahedralEdges](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedraledges--a138d1dc7d98ac6676395c63.md) | 109 | `declaration-track:a138d1dc7d98ac6676395c63e3cbd85d5ad1ff2e4c5370dbc9e37cf04fba3a75` |
| 11 | `def` | [octahedralFaces](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfaces--776a63d0da6434888d29486a.md) | 118 | `declaration-track:776a63d0da6434888d29486a7e97ea21fe4bbccc02b5136056b865f84d8969d2` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedraledgeboundary--92af554413104abdcaba6599.md) | 129 | `declaration-track:92af554413104abdcaba6599ddf6b25f35e9a1218948681efa953b5161f41a85` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfaceboundary--d22d73571bd42d0f4de1a12e.md) | 136 | `declaration-track:d22d73571bd42d0f4de1a12e075a5f60c4703cc8499bf91f1bdff0cd19d2f319` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfacecoefficient--ac699b37fc9fc05359ff7718.md) | 143 | `declaration-track:ac699b37fc9fc05359ff77184aa10769e22cb6c3ede91e3a3e69281f0cda57de` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralemptycell--822f60274cf3a9d1e11e49d0.md) | 149 | `declaration-track:822f60274cf3a9d1e11e49d0d9c6827e2081b30f34e889c94c43bbb0cbeb5c31` |
| 16 | `def` | [OctahedralCell](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralcell--a856dbef20c3d78646f47634.md) | 152 | `declaration-track:a856dbef20c3d78646f47634c137ced044066ef263844d446bdf1ca19420c629` |
| 17 | `def` | [octahedralCellLabel](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralcelllabel--3344c841c9e313546ef9d677.md) | 158 | `declaration-track:3344c841c9e313546ef9d677adff463362caacd1ef7550a24ab983f459431100` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralboundarycells--5efa4eca5b70a13b16b01710.md) | 165 | `declaration-track:5efa4eca5b70a13b16b017109068e907fae78b3610fb6358cc11eb941de041db` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfinitesound--01efad94c514a639de1d193c.md) | 173 | `declaration-track:01efad94c514a639de1d193c516e14ece168ea23b80e2cf44d2a28459d1d4346` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralfinitesoundproof--7d336b1e8eb4b6c0254523e0.md) | 178 | `result-track:7d336b1e8eb4b6c0254523e0ec44a7fe418a69829f4e8c0feb3dd7a41aa82bc4` |
| 21 | `def` | [octahedralCellComplex](../../../../../../../mathematics/Topology/CombinatorialTopology/SimplicialComplexes/SourceComponents/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81/OctahedralFiniteCells.lean/declarations/octahedralcellcomplex--080d0360aea1bc0d7e4b6400.md) | 182 | `declaration-track:080d0360aea1bc0d7e4b640022579dfeef607c47c74249194c5602da7b749d76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
