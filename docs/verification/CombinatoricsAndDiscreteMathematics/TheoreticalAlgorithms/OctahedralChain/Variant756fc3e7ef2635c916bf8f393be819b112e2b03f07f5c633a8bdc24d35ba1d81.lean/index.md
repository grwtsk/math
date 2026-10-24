# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralChain.Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b7037737e36b68a43c3f140ea834479f4df6feb",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b7037737e36b68a43c3f140ea834479f4df6feb`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralsign--925aec7ae2c0d5374d1de781.md) | 19 | `declaration-track:925aec7ae2c0d5374d1de781da4ea25946fcf02bd815a042cb1362d87cbe5b64` |
| 2 | `def` | [octahedralSignWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralsignweight--aa8a8e1309381d34d139ab82.md) | 25 | `declaration-track:aa8a8e1309381d34d139ab823580eb5e16e0a72d9cbef1e58fdda623da6e8794` |
| 3 | `inductive` | [OctahedralVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralvertex--432a4dd3c2cdbd3ee7da5d09.md) | 30 | `declaration-track:432a4dd3c2cdbd3ee7da5d09ff149256ec0970fe93dffe6056d35b5e2940faca` |
| 4 | `inductive` | [OctahedralEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedraledge--f2891f066b16b3a6177790d8.md) | 37 | `declaration-track:f2891f066b16b3a6177790d8c5ae2645252f81c5d1b32193a7c0206c2c624dc8` |
| 5 | `structure` | [OctahedralFace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralface--785867758bd337477b734d99.md) | 44 | `declaration-track:785867758bd337477b734d9910dcf3e51c45546f1d5334c8552cd4af9cca7736` |
| 6 | `def` | [octahedralVertexId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralvertexid--a534f92b5f560d4dc441fe42.md) | 51 | `declaration-track:a534f92b5f560d4dc441fe42a86deb507b8d424fc84a4112d0918f7312718ab2` |
| 7 | `def` | [octahedralEdgeId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedraledgeid--c825e6bb92fbe100e190d62b.md) | 60 | `declaration-track:c825e6bb92fbe100e190d62b965aef925a2b930c5337c8eaa9f53bc1c15051bd` |
| 8 | `def` | [octahedralFaceId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfaceid--2a0be332c0415512b420cae7.md) | 75 | `declaration-track:2a0be332c0415512b420cae7447987fcd646610db98298614a4a5fc01b09a4ba` |
| 9 | `def` | [octahedralVertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralvertices--115b3c48567ed84b1ab5d23f.md) | 86 | `declaration-track:115b3c48567ed84b1ab5d23f284ebe3d10f03f24cff8a0287300a8c1e3ecb99f` |
| 10 | `def` | [octahedralEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedraledges--14e79fe438911c86bf6c152f.md) | 92 | `declaration-track:14e79fe438911c86bf6c152feb2dadcd00fd1f2ecb4cf5981a186afa949d7c00` |
| 11 | `def` | [octahedralFaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfaces--5f8ed34922d3a95a7d423221.md) | 101 | `declaration-track:5f8ed34922d3a95a7d423221f91fbf38c8ffc9e18d9d4c232cf6eaacb4002c2d` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedraledgeboundary--ca0c9355fb1943ab3c4c66b5.md) | 112 | `declaration-track:ca0c9355fb1943ab3c4c66b51046bac91fd757b263cf06cf5e0584ece973f892` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfaceboundary--e88b40b63e4cf355b278a4dc.md) | 119 | `declaration-track:e88b40b63e4cf355b278a4dc4b8082e1b7dd4d3008cd42f47d31ee1233d5558c` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfacecoefficient--cc541910f6c9ee1c28719a98.md) | 126 | `declaration-track:cc541910f6c9ee1c28719a9899ad88fdf4a78d1c5f9f93128dce96234d2ba721` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralemptycell--401f340c0408ef53227971b9.md) | 132 | `declaration-track:401f340c0408ef53227971b91f464b1a022363c30eb782e9080dd4be913fee03` |
| 16 | `def` | [OctahedralCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralcell--2e2b4b1e6fdf7a2915ab6f8a.md) | 135 | `declaration-track:2e2b4b1e6fdf7a2915ab6f8ac201e5abbaa702e6cf219c192b6267f166c58a9c` |
| 17 | `def` | [octahedralCellLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralcelllabel--f4914103497e6f7f4f152b8c.md) | 141 | `declaration-track:f4914103497e6f7f4f152b8ca55ea7f699d3e7190eb2316ed18e435939a3f436` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralboundarycells--dd46535d6b2233a03526b855.md) | 148 | `declaration-track:dd46535d6b2233a03526b855bbb7050d860700ea6b132df6e5a1adc5e78ca587` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfinitesound--b504136e371ebe6c57f9c9e0.md) | 156 | `declaration-track:b504136e371ebe6c57f9c9e002c6813ad1c55d945eca9fc6538103aa676a3866` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfinitesoundproof--ed503228e670a2eaeb548147.md) | 161 | `result-track:ed503228e670a2eaeb548147d49ca1898eae9e3c23c16f0c291f0abf47b392ea` |
| 21 | `def` | [octahedralCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralcellcomplex--c8bca556f01f7273932dfe67.md) | 165 | `declaration-track:c8bca556f01f7273932dfe6729b57743e3a26a0fd9c9a2faf5079aeb88c1e9e4` |
| 22 | `def` | [octahedralSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralspherechain--d2efbb75de4b813bf60a75c6.md) | 176 | `declaration-track:d2efbb75de4b813bf60a75c6c3069846b00b344992734c0c3393ffb4ed3b1d67` |
| 23 | `def` | [octahedralSphereBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralsphereboundary--81e85c3ecc319fc232ad910e.md) | 181 | `declaration-track:81e85c3ecc319fc232ad910e070595b3415caa46d06a3f7cbf1458397e13beba` |
| 24 | `def` | [octahedralEdgeCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedraledgecoefficient--9d728aecf92af21047f73060.md) | 185 | `declaration-track:9d728aecf92af21047f730606aab13f524ddaf28b250af0cc0a71c0d9185d226` |
| 25 | `def` | [OctahedralSphereClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralsphereclosed--3a1c1ce5c58124cd637e8afc.md) | 194 | `declaration-track:3a1c1ce5c58124cd637e8afc8706e77c939cf800db6aab477ff9e7afdaa96289` |
| 26 | `theorem` | [octahedralSphereClosedProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralsphereclosedproof--5a3e3deb7d9b3caafeaaf000.md) | 199 | `result-track:5a3e3deb7d9b3caafeaaf000e5c61d0c899e555df5d5733cf8d06d92a4894f54` |
| 27 | `def` | [octahedralVertexCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralvertexcoefficient--3d5f08fc74fa62f1ac853ce8.md) | 207 | `declaration-track:3d5f08fc74fa62f1ac853ce8f4092c5210d7aba3fda0598f7ee5d8c639f483db` |
| 28 | `def` | [octahedralFaceChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfacechain--2311af9ef84703243ac0daf6.md) | 216 | `declaration-track:2311af9ef84703243ac0daf669a3563d002ff165c0fb00958928b4c1f3fa8dc1` |
| 29 | `def` | [octahedralFaceBoundarySquared](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralfaceboundarysquared--1c96a90072da6219600de96b.md) | 221 | `declaration-track:1c96a90072da6219600de96bdd1dfcb2ba46caf98f3a7fc8a18404f144e1ee81` |
| 30 | `def` | [OctahedralBoundarySquaredZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralboundarysquaredzero--78f1e3adfe02d69054fa7e4e.md) | 226 | `declaration-track:78f1e3adfe02d69054fa7e4eb534a0428d78fc09e4ae009248ab1b964565cbce` |
| 31 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralboundarysquaredzeroproof--4fdb40d02433c0695f166167.md) | 231 | `result-track:4fdb40d02433c0695f166167a6c2a82f9b142576d37e0faff498ab7ab1f13196` |
| 32 | `def` | [octahedralClosedSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant756fc3e7ef2635c916bf8f393be819b112e2b03f07f5c633a8bdc24d35ba1d81.lean/declarations/octahedralclosedspherechain--9efeff4d5bb5f768c8e93468.md) | 242 | `declaration-track:9efeff4d5bb5f768c8e934684377c7a1df9ffb2204eccfded3dd0d13166607e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
