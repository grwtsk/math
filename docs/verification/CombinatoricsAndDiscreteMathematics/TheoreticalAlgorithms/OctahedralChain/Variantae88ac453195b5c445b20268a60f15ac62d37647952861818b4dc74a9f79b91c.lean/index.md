# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OctahedralChain.Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da9b34e333b414a63e3d87d700c724fa54d8ec63",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da9b34e333b414a63e3d87d700c724fa54d8ec63`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean.json)

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
| 1 | `inductive` | [OctahedralSign](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralsign--88500dc2b11b16787bc03ada.md) | 19 | `declaration-track:88500dc2b11b16787bc03ada2b23092d3edac1e836225e07722c200e58759132` |
| 2 | `def` | [octahedralSignWeight](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralsignweight--af24692090344ee53d67555e.md) | 25 | `declaration-track:af24692090344ee53d67555e7d36716a415f9d244ce4074c45076ea2fbae9af1` |
| 3 | `inductive` | [OctahedralVertex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralvertex--ff8ab4a73df845fd345eaada.md) | 30 | `declaration-track:ff8ab4a73df845fd345eaada60904df64dfe7e62feb3f713c268659bc02e011e` |
| 4 | `inductive` | [OctahedralEdge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedraledge--26dd3f1174a5016043bc418f.md) | 37 | `declaration-track:26dd3f1174a5016043bc418f3ecaa9c3b78bdc8e45e63c26d28cbf0f315de950` |
| 5 | `structure` | [OctahedralFace](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralface--17d2da2d9872c3bf9edd9701.md) | 44 | `declaration-track:17d2da2d9872c3bf9edd9701edad1df6da2dfac566f160f9850231986714964b` |
| 6 | `def` | [octahedralVertexId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralvertexid--56e3edcbfb690f9835996a78.md) | 51 | `declaration-track:56e3edcbfb690f9835996a786bd8ccb8f8c2b84027d7efb981448d45023f931b` |
| 7 | `def` | [octahedralEdgeId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedraledgeid--30312e582fc8808f9a3477f3.md) | 60 | `declaration-track:30312e582fc8808f9a3477f38cfd12109d19e8b5bffb91263dc89b2f13376177` |
| 8 | `def` | [octahedralFaceId](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfaceid--ded6346a16ca922de7e1e9e3.md) | 75 | `declaration-track:ded6346a16ca922de7e1e9e37ec24b20b860440c3c8d794891861ecae3607458` |
| 9 | `def` | [octahedralVertices](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralvertices--35cb0d64895394ba41f4557a.md) | 86 | `declaration-track:35cb0d64895394ba41f4557ae7cc7e2366be934c96a9b7b715e59ae82c3fdc52` |
| 10 | `def` | [octahedralEdges](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedraledges--5992c8d96b2f01ca5349b8e1.md) | 92 | `declaration-track:5992c8d96b2f01ca5349b8e19c23035ee301306dc931b10b828f544ca0fb12ad` |
| 11 | `def` | [octahedralFaces](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfaces--a463556c6e3c9e6f059021c4.md) | 101 | `declaration-track:a463556c6e3c9e6f059021c4de654cf12de3b1b7d4a56cf3d4e56d24f5e01dc1` |
| 12 | `def` | [octahedralEdgeBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedraledgeboundary--bb30ff97acfa57ccef5284b4.md) | 112 | `declaration-track:bb30ff97acfa57ccef5284b4454487f75fe4afc864c255611853749384c552d3` |
| 13 | `def` | [octahedralFaceBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfaceboundary--1fdd4b374d99e6844197617e.md) | 119 | `declaration-track:1fdd4b374d99e6844197617e6ede3db6704d0776a7598ef29c68841aa1a4c585` |
| 14 | `def` | [octahedralFaceCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfacecoefficient--a92238c0e508e1561fe9d94a.md) | 126 | `declaration-track:a92238c0e508e1561fe9d94ac47a74278051092a9f211b51f9458319f1dd4aa2` |
| 15 | `inductive` | [OctahedralEmptyCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralemptycell--2e82bdc1b563c07e629482db.md) | 132 | `declaration-track:2e82bdc1b563c07e629482db47ff5a30c7944e2a7e92af349b670a278d53d521` |
| 16 | `def` | [OctahedralCell](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralcell--0720aabd6cf94ba893cd2651.md) | 135 | `declaration-track:0720aabd6cf94ba893cd265196be1aa035873b9ba5a9cee322c8966dafc8d532` |
| 17 | `def` | [octahedralCellLabel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralcelllabel--e163dd8c37c7d72f166efc33.md) | 141 | `declaration-track:e163dd8c37c7d72f166efc3395d7575aa943a95a3ea87fbcac3a3e1f10018fbb` |
| 18 | `def` | [octahedralBoundaryCells](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralboundarycells--8218b48b5cb1e45d4dda8c2d.md) | 148 | `declaration-track:8218b48b5cb1e45d4dda8c2d343f45d974fdf9f0cca68db6c2ad93c866a35193` |
| 19 | `def` | [OctahedralFiniteSound](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfinitesound--096c1cd32098a811c70c7a78.md) | 156 | `declaration-track:096c1cd32098a811c70c7a78f1cdfcfcff4f28952d7b7c5fbe17410b1ef90b8b` |
| 20 | `theorem` | [octahedralFiniteSoundProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfinitesoundproof--28b7777500360cd40f21fee6.md) | 161 | `result-track:28b7777500360cd40f21fee6bb8ac4d12e765f821ab09dc8bd814ce5d9dfa321` |
| 21 | `def` | [octahedralCellComplex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralcellcomplex--96e7575149787e1755e89e53.md) | 165 | `declaration-track:96e7575149787e1755e89e533440c51ab5ba186bebda17b54a66e3c2a05ef42a` |
| 22 | `def` | [octahedralSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralspherechain--aa3712a9809a95b923e56bbc.md) | 176 | `declaration-track:aa3712a9809a95b923e56bbc103592e5356969558a87ff61242468aae7625393` |
| 23 | `def` | [octahedralSphereBoundary](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralsphereboundary--e4319046880e945ed691b48d.md) | 181 | `declaration-track:e4319046880e945ed691b48da174ace4ea2d3307f3b45088c002a13c2b2741dd` |
| 24 | `def` | [octahedralEdgeCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedraledgecoefficient--0428eb04b36ffae66e332091.md) | 185 | `declaration-track:0428eb04b36ffae66e332091a05b0040d56d7b4dadaf0bb778124a6883c55072` |
| 25 | `def` | [OctahedralSphereClosed](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralsphereclosed--101ad5aad5b57cf619869e12.md) | 194 | `declaration-track:101ad5aad5b57cf619869e12c964c3f44bb7b4cc1517aacb4ad0617ba9a0ddcb` |
| 26 | `theorem` | [octahedralSphereClosedProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralsphereclosedproof--e20e4b473fe073036b013d3b.md) | 199 | `result-track:e20e4b473fe073036b013d3ba6155d2ba69e86c6982b72bbc1e530f9493880cb` |
| 27 | `def` | [octahedralVertexCoefficient](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralvertexcoefficient--317f2473c5eacee27c760b5d.md) | 207 | `declaration-track:317f2473c5eacee27c760b5da4bbce42e902f95fe6790da95fe0763e178e406f` |
| 28 | `def` | [octahedralFaceChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfacechain--3245a3372c53795a37f66faf.md) | 216 | `declaration-track:3245a3372c53795a37f66faf4b7d83bb8f96cd8cef7c168172d2f005ded6547d` |
| 29 | `def` | [octahedralFaceBoundarySquared](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralfaceboundarysquared--4222bac3b77dae9f5de1aa82.md) | 221 | `declaration-track:4222bac3b77dae9f5de1aa82f26aee4d02d338c59ca78fa796d0423b94760bc5` |
| 30 | `def` | [OctahedralBoundarySquaredZero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralboundarysquaredzero--7cd32b48a0185b7ab954bdc0.md) | 226 | `declaration-track:7cd32b48a0185b7ab954bdc0f21769ad07ffdbb8e6d5821da2655e626c167df1` |
| 31 | `theorem` | [octahedralBoundarySquaredZeroProof](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralboundarysquaredzeroproof--2e6a7020b4ceaa99fd3ee391.md) | 231 | `result-track:2e6a7020b4ceaa99fd3ee391da880940db5542bf29bbe56b9b53b87b2faf0054` |
| 32 | `def` | [octahedralClosedSphereChain](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OctahedralChain/Variantae88ac453195b5c445b20268a60f15ac62d37647952861818b4dc74a9f79b91c.lean/declarations/octahedralclosedspherechain--fdd8be4fcd4ed01f3a4edd62.md) | 242 | `declaration-track:fdd8be4fcd4ed01f3a4edd62531e209fbba35366b262acc8460628b0d6ec06cc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
