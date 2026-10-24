# GRWTSK.Analysis.FunctionalAnalysis.AnalyticMeshPipeline.Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 11 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `147267af0f0dee52ae8958cb566c7ff539048945`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/FunctionalAnalysis/AnalyticMeshPipeline/Variant617508b9a5fdec366bda86c6bb5a7b3618bd88983883c4034f4d3f390080193b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [AnalyticSourceNode](declarations/analyticsourcenode--40a6f2b1b5f18bf73d573857.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [AnalyticSourceTree](declarations/analyticsourcetree--85bf629cb4d5262dedc90f85.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [MeshFaceKind](declarations/meshfacekind--c8226035555654412bb44c0d.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [TheoremFaceSource](declarations/theoremfacesource--68612f33df323ff15158be15.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [BinaryMeshSchema](declarations/binarymeshschema--d10d4854fb0dd4e8be4d2b27.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [BinaryMeshMatrix](declarations/binarymeshmatrix--d00850c1f995648efabe439d.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [MeshFace](declarations/meshface--d4cae4f84a056de6d49a0370.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [AnalyticMesh](declarations/analyticmesh--da79cafb0ab439c5629b1c10.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [DomNodeDescriptor](declarations/domnodedescriptor--c51e5d25836c404da04d8589.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `structure` | [ProceduralDomPresentation](declarations/proceduraldompresentation--ce32b156053a09d7616543e2.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `inductive` | [ReducerOperatorKind](declarations/reduceroperatorkind--8479066e76b830925737f6f2.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [ReducerOperator](declarations/reduceroperator--10303a999c01af3a33961468.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [ReducerWitness](declarations/reducerwitness--5ea854fd462ef6c87797241f.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [ReducerStep](declarations/reducerstep--d63ce624357930963536fb3c.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [ReducerTrace](declarations/reducertrace--c48e8333db43c27ca38a3a3c.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [CertifiedAnalyticMeshPipeline](declarations/certifiedanalyticmeshpipeline--389f18169a49351fde8f8242.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [MeshFaceProvesAnalyticTheorem](declarations/meshfaceprovesanalytictheorem--6baf3ceb18b4f040cdf5d4c9.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [BinaryMatrixOwnsAnalyticAuthority](declarations/binarymatrixownsanalyticauthority--d08fb75da8f0da25a360a5bc.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [ReducerCreatesTheoremAuthority](declarations/reducercreatestheoremauthority--8d31cad462cd7f93e6951a3e.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [ProceduralDomProvesMathematics](declarations/proceduraldomprovesmathematics--e8169f04d74108e0c7962477.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [EnergyReductionProvesAnalyticTruth](declarations/energyreductionprovesanalytictruth--8195feec0c0340ace4d64436.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [MeshFaceConstructsHilbertSpaceObject](declarations/meshfaceconstructshilbertspaceobject--e3b736b039bdc6c24bbe598c.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [PrismaticFaceConstructsPrismaticCohomology](declarations/prismaticfaceconstructsprismaticcohomology--91ec046843024f24d617b5b6.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [TheoremNameHashOrLabelIsProof](declarations/theoremnamehashorlabelisproof--a35e9fc321c0bd9a22d93e2e.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mesh_face_not_analytic_theorem](declarations/mesh-face-not-analytic-theorem--4fbaa3fb55639ce5cbef64bb.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [binary_matrix_not_analytic_authority](declarations/binary-matrix-not-analytic-authority--9c108a0fb09e47c6364b6626.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [reducer_not_theorem_authority](declarations/reducer-not-theorem-authority--1b7b51bbe7304ae93fc74105.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [procedural_dom_not_mathematics_proof](declarations/procedural-dom-not-mathematics-proof--0a7cc94434653a29d93e31cf.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [energy_reduction_not_analytic_truth](declarations/energy-reduction-not-analytic-truth--3d2359fe5b67916c019eb74c.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [mesh_face_not_hilbert_object](declarations/mesh-face-not-hilbert-object--28fdd91390845aeff8a54652.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [prismatic_face_not_prismatic_cohomology](declarations/prismatic-face-not-prismatic-cohomology--af4c9c1f38216e0a4a2b6bd0.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [theorem_name_hash_or_label_not_proof](declarations/theorem-name-hash-or-label-not-proof--55d20c6b43bc0ff10e1e73a5.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [reducer_step_witness_sound](declarations/reducer-step-witness-sound--2e72ac1bdc997407eb5409fa.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [certified_reducible_analytic_mesh_pipeline](declarations/certified-reducible-analytic-mesh-pipeline--1380744de0798a48a157c834.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [analytic_mesh_pipeline_boundary_summary](declarations/analytic-mesh-pipeline-boundary-summary--8e1c076defd6b607a0be4932.md) | 322 | `BLOCKED_NATIVE_ADMISSION` |
