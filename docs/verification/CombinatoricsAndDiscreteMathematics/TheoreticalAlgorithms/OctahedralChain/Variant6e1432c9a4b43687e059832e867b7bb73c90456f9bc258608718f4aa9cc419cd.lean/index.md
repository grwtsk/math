# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralChain.Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0df78e16c7b115150887fc3f43cd1335a61500d9",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0df78e16c7b115150887fc3f43cd1335a61500d9`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.PrismaticGeometry.Sphere` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [OctahedralSign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralsign--e6f524dea47fd36f640cd9c3.md) | 27 | `declaration-track:e6f524dea47fd36f640cd9c3acca15897eb942623ef7bec4add7b8a3bd965e36` |
| 2 | `def` | [octahedralSignWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralsignweight--46a615890d837417b556a3ea.md) | 33 | `declaration-track:46a615890d837417b556a3ea6c194d1b3e50585315e246a9d3c5a278d29cb301` |
| 3 | `inductive` | [OctahedralVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralvertex--ed3ff0fa35a5896d2b865ef3.md) | 38 | `declaration-track:ed3ff0fa35a5896d2b865ef3c165624b289d577e2e4ee1401c17a13971ba5f8f` |
| 4 | `inductive` | [OctahedralEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedraledge--a85bb65384042735af8b2d47.md) | 45 | `declaration-track:a85bb65384042735af8b2d4742d67e1d707883e6774f874cf6143ec30b921c28` |
| 5 | `structure` | [OctahedralFace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralface--8d53f0fe4f65d7e7d82cd29d.md) | 52 | `declaration-track:8d53f0fe4f65d7e7d82cd29d538f36d1893416cc9216b53e226c9afc07f87c30` |
| 6 | `def` | [octahedralVertexId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralvertexid--81c9db28593288f1374112aa.md) | 59 | `declaration-track:81c9db28593288f1374112aa04a53bf6c8d9d27b9e24b5ace2917367c2920fa8` |
| 7 | `def` | [octahedralEdgeId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedraledgeid--e3cb9f5365c21d1dc66bd952.md) | 68 | `declaration-track:e3cb9f5365c21d1dc66bd952b57a31f4f1d3dfd2ef8875953e9c8d438da56b2e` |
| 8 | `def` | [octahedralFaceId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfaceid--bab3f316450b30c5ee1f9826.md) | 83 | `declaration-track:bab3f316450b30c5ee1f9826d773acd4facbe2856080913cae6b6f3dd89fcd4a` |
| 9 | `def` | [octahedralVertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralvertices--6ccd62f30bb1c16f378bc706.md) | 94 | `declaration-track:6ccd62f30bb1c16f378bc706dd1a8a0f3ee642ad88ca929124333b34b0606132` |
| 10 | `def` | [octahedralEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedraledges--4515c6c0931fab4b7e2cf2e0.md) | 100 | `declaration-track:4515c6c0931fab4b7e2cf2e08d7c6c77ecc5f111a1e6219b47256e4d608c6dfc` |
| 11 | `def` | [octahedralFaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfaces--03be7ca7dc7203d50ef20b3e.md) | 109 | `declaration-track:03be7ca7dc7203d50ef20b3eb75b89e20c045530e388e239528255657dc99ffb` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedraledgeboundary--3835f5f94bb1c28f6ea079f1.md) | 120 | `declaration-track:3835f5f94bb1c28f6ea079f17c8a2e342854986288fb1f2a255bfd7bcf5a4280` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfaceboundary--e5a0d2ae22987fe189dc0d21.md) | 127 | `declaration-track:e5a0d2ae22987fe189dc0d2193de72379eae9a05672aa537d9fb9e10d6a7ed32` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfacecoefficient--d70b832fcc3d349b77682b87.md) | 134 | `declaration-track:d70b832fcc3d349b77682b879905917dd9c547a08c9065d61bfe3649cee4033e` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralemptycell--90264b0371d8df2109d9fbda.md) | 140 | `declaration-track:90264b0371d8df2109d9fbdaefd66dac35a86e0c18bb2dc266210c55296ec575` |
| 16 | `def` | [OctahedralCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralcell--ca581865c75fcfb616300b95.md) | 143 | `declaration-track:ca581865c75fcfb616300b95cb5e43af0fa9c38481e2c8ebb1754579a268e61a` |
| 17 | `def` | [octahedralCellLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralcelllabel--f93b4c0f65dd50313dcf8e47.md) | 149 | `declaration-track:f93b4c0f65dd50313dcf8e47a558ef276ec3ee3f61d810c7f77ff31c43cd5c82` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralboundarycells--cd5e94309384ee8d493c76bd.md) | 156 | `declaration-track:cd5e94309384ee8d493c76bd8993a1b6be0f5a779c4c885835be1aa2fda175d9` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfinitesound--30bb964e790d77e7343759ac.md) | 164 | `declaration-track:30bb964e790d77e7343759ac92af9e0d7150e22ef2777e5138c4a3fe218ee238` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfinitesoundproof--f29330f1165d7da9fc61ca04.md) | 169 | `result-track:f29330f1165d7da9fc61ca048fed809f28303778c8003d1f03fbe6256a229d2a` |
| 21 | `def` | [octahedralCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralcellcomplex--ce659e8ba9473e90df37c50c.md) | 173 | `declaration-track:ce659e8ba9473e90df37c50cecfb456f77e90ff94f08de4acd83f9e5ee4d0e1f` |
| 22 | `def` | [octahedralSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralspherechain--e8d5cc30cd5c4f6f49d860c5.md) | 184 | `declaration-track:e8d5cc30cd5c4f6f49d860c59be0ba0c2bc03a91f24e10a4011ad472c60c4657` |
| 23 | `def` | [octahedralSphereBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralsphereboundary--f5e3b0696f300a012a861965.md) | 189 | `declaration-track:f5e3b0696f300a012a8619653b7c357674cd9db416293d2df73be17f24cde227` |
| 24 | `def` | [octahedralEdgeCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedraledgecoefficient--aa0997220d12b9e45c66edfe.md) | 193 | `declaration-track:aa0997220d12b9e45c66edfefc4c38dbf5e52956b19f7c49d47b0c8e27194fde` |
| 25 | `def` | [OctahedralSphereClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralsphereclosed--595bb18bbab1f09960fc5382.md) | 202 | `declaration-track:595bb18bbab1f09960fc5382d48d387d381b91969481d4bbfb216cbac7e28c20` |
| 26 | `theorem` | [octahedralSphereClosedProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralsphereclosedproof--801cc0468aaea2c0d314082e.md) | 207 | `result-track:801cc0468aaea2c0d314082e45d7abb3ed8ff03cb3d4d9ed907c6a2c172cb830` |
| 27 | `def` | [octahedralVertexCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralvertexcoefficient--bc19d8facd704b27aecd7733.md) | 215 | `declaration-track:bc19d8facd704b27aecd7733d6f497d32b6693321265751ae6f790753d966250` |
| 28 | `def` | [octahedralFaceChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfacechain--68d8dd75a128abd2ef1aef2c.md) | 224 | `declaration-track:68d8dd75a128abd2ef1aef2c7e3f9a7c466ba12d40c9cf8ffdd3394e3e50054e` |
| 29 | `def` | [octahedralFaceBoundarySquared](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralfaceboundarysquared--4e0d68a22123dc5b37249029.md) | 229 | `declaration-track:4e0d68a22123dc5b37249029f67de395e6269fdfd662ef15a23d3159b68f6af5` |
| 30 | `def` | [OctahedralBoundarySquaredZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralboundarysquaredzero--6600ab2a275c2667dd03e627.md) | 234 | `declaration-track:6600ab2a275c2667dd03e62729acc989a94243a7f56f940e732b92194aa8d03f` |
| 31 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralboundarysquaredzeroproof--4e4389d476a3632c9d619ece.md) | 239 | `result-track:4e4389d476a3632c9d619ece0abe944a18f238613a9f2fc2defba4a790631b2a` |
| 32 | `def` | [octahedralClosedSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variant6e1432c9a4b43687e059832e867b7bb73c90456f9bc258608718f4aa9cc419cd.lean/declarations/octahedralclosedspherechain--8b21d764e75d4e5d31829763.md) | 250 | `declaration-track:8b21d764e75d4e5d3182976328dc28a9ba76ea5901b779b7e2055d40f7289f83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
