# Verification target: GRWTSK.Geometry.DifferentialGeometry.InteriorBoundary.Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "acfcbeddb397a52d385dc85f26b6046052e1a22d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `acfcbeddb397a52d385dc85f26b6046052e1a22d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.ExtChartAt` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint--25984fe614c1c3592fbbc3ea.md) | 76 | `declaration-track:25984fe614c1c3592fbbc3ea71ac0e53ea3d714a4b390844d45488f15282d396` |
| 2 | `def` | [IsBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isboundarypoint--338705155722aad27d9c1142.md) | 81 | `declaration-track:338705155722aad27d9c11422673e9aa15aa67e37e851ca55a2b30aaf92d1455` |
| 3 | `def` | [interior](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interior--0a5e4270a091a4894b0e0888.md) | 85 | `declaration-track:0a5e4270a091a4894b0e088836be3076a8fe52e09f8f9219c4d539e89dcd50d8` |
| 4 | `lemma` | [isInteriorPoint_iff](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint-iff--4321ffe2c6079f190886e46b.md) | 87 | `result-track:4321ffe2c6079f190886e46b4c21ebaffbdbd5c74310cae2e301af33262acbbe` |
| 5 | `def` | [boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundary--a1287693018def0453528241.md) | 94 | `declaration-track:a1287693018def045352824113959c4482152e5074305a398b5c2b5f4b386efb` |
| 6 | `lemma` | [isBoundaryPoint_iff](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isboundarypoint-iff--6e606b7dc44051cb0287d40a.md) | 96 | `result-track:6e606b7dc44051cb0287d40a4ae929213f1ebf4ba88fa88964fb2c1c730f50b8` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint-or-isboundarypoint--21fdc9219964a0e5e6fb4f87.md) | 100 | `result-track:21fdc9219964a0e5e6fb4f87d598371b1e11415482a1259807e38c3f5d82803a` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interior-union-boundary-eq-univ--5763c116cf9933e7f9f9fce5.md) | 106 | `result-track:5763c116cf9933e7f9f9fce5bb8c22e9a68bd7d7aea45a9ae305639d7d5d5625` |
| 9 | `lemma` | [disjoint_interior_boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/disjoint-interior-boundary--0f8ddafe63c7d0399ef47988.md) | 110 | `result-track:0f8ddafe63c7d0399ef479887c7d7263e876bb1535aa1b11ffd85a1e6fe4b328` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint-iff-not-isboundarypoint--ac426ce9a6ae5b657808fdcb.md) | 118 | `result-track:ac426ce9a6ae5b657808fdcb51490a332bcae4f9dd66dbdf9616a51a9d914bff` |
| 11 | `lemma` | [compl_interior](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/compl-interior--c9b236a5fae0c40e5ef1b48d.md) | 128 | `result-track:c9b236a5fae0c40e5ef1b48de90a81a5fc83e4b804ccf4f0c260f5f59fee54a9` |
| 12 | `lemma` | [compl_boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/compl-boundary--b1aa8c596e70342459c0d5dc.md) | 133 | `result-track:b1aa8c596e70342459c0d5dc7c694e6ecde04b6cc96c35d5986c273a9f2fd339` |
| 13 | `lemma` | [_root_.GRWTSK.Geometry.DifferentialGeometry.RootBoundarylessManifold.Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.range_mem_nhds_isInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/root-grwtsk-geometry-differentialgeometry-rootboundarylessmanifold-varia--87ce7ce9e59eee2ff18e8780.md) | 136 | `result-track:87ce7ce9e59eee2ff18e8780fa72b4dd90e4fb8baf22059b10b382f4abeb641f` |
| 14 | `class` | [_root_.GRWTSK.Geometry.DifferentialGeometry.RootBoundarylessManifold.Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.BoundarylessManifold](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/root-grwtsk-geometry-differentialgeometry-rootboundarylessmanifold-varia--17787aef5a03b64ee9b31c2e.md) | 143 | `declaration-track:17787aef5a03b64ee9b31c2eab66e23fda57456ba24b1208da8d632330e3cccb` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/instance--6ef1c5482989300e49a681f8.md) | 153 | `declaration-track:6ef1c5482989300e49a681f87d8a4e4ba6bd091a2abe3c8f7a94f8ca77c325ec` |
| 16 | `instance` | [BoundarylessManifold.of_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundarylessmanifold-of-empty--b7c64ac81cc1668409906172.md) | 166 | `declaration-track:b7c64ac81cc16684099061727d54c387d7bb9c15e390ecb8d6eab2191d2c18c3` |
| 17 | `lemma` | [_root_.GRWTSK.Geometry.DifferentialGeometry.RootBoundarylessManifold.Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.BoundarylessManifold.isInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/root-grwtsk-geometry-differentialgeometry-rootboundarylessmanifold-varia--7510bd5793f0d36f71b12dd3.md) | 169 | `result-track:7510bd5793f0d36f71b12dd39b751591742a09579350fefc91465863a09079f8` |
| 18 | `lemma` | [interior_eq_univ](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interior-eq-univ--a2938f2649840ce25351a37a.md) | 173 | `result-track:a2938f2649840ce25351a37ab4bca90ce01cbbf635388f205c7d37da2a1382ca` |
| 19 | `lemma` | [Boundaryless.boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundaryless-boundary-eq-empty--d6032774aecd895729f6d219.md) | 177 | `result-track:d6032774aecd895729f6d2198f492752674c17bd06f935fb1f49ae43f8ac2b94` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/instance--033f18de73c3c4d9cd657249.md) | 180 | `declaration-track:033f18de73c3c4d9cd657249f5bb32dd1e6a023bb02ea2c4293884b4a92e6071` |
| 21 | `lemma` | [Boundaryless.iff_boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundaryless-iff-boundary-eq-empty--962e82134fd3fea4a3fa5a8f.md) | 184 | `result-track:962e82134fd3fea4a3fa5a8f587836c72d139f718878dad91b8e64587febf10a` |
| 22 | `lemma` | [Boundaryless.of_boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundaryless-of-boundary-eq-empty--c7bae4ec43d838551303435d.md) | 193 | `result-track:c7bae4ec43d838551303435d0b0079731208165b1aa8d689f6371da0f8294cbc` |
| 23 | `lemma` | [interior_prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interior-prod--d1813e55b407d656d8291af7.md) | 208 | `result-track:d1813e55b407d656d8291af72ad6e0710e828b4a522c10bd9c7fbd1901d86c71` |
| 24 | `lemma` | [boundary_prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundary-prod--7b24325058dc4b27bbd6a8a1.md) | 224 | `result-track:7b24325058dc4b27bbd6a8a1df9271bc2e8381479ac3b7d99d4aa4a009b723a5` |
| 25 | `lemma` | [boundary_of_boundaryless_left](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundary-of-boundaryless-left--6164d6b5fed12f3b54f4910d.md) | 234 | `result-track:6164d6b5fed12f3b54f4910d26c220091ceb6d23daad2a1d0ea3fc2e2e5f7806` |
| 26 | `lemma` | [boundary_of_boundaryless_right](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundary-of-boundaryless-right--2a5cef88d2ad6c3d3f9b3b68.md) | 241 | `result-track:2a5cef88d2ad6c3d3f9b3b68dfade320df68dd18912aa79cac601e016a540e5a` |
| 27 | `instance` | [BoundarylessManifold.prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundarylessmanifold-prod--dc78080ce0e39cc9c9a206d8.md) | 248 | `declaration-track:dc78080ce0e39cc9c9a206d8536a0a4d491f3fd17f34aeb9927ca30ca64c6299` |
| 28 | `lemma` | [interiorPoint_inl](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interiorpoint-inl--cdf8bbda698708b1a22ff4e6.md) | 267 | `result-track:cdf8bbda698708b1a22ff4e66107e8ceab2c9d63f8b7ef687f9e2040f57187f8` |
| 29 | `lemma` | [boundaryPoint_inl](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundarypoint-inl--d13d701c02b2afbbd174825d.md) | 274 | `result-track:d13d701c02b2afbbd174825d007c1be95be899dd6c3a06e99f9bf99fe39aa775` |
| 30 | `lemma` | [interiorPoint_inr](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interiorpoint-inr--6ffffcb1af77e76318041da6.md) | 281 | `result-track:6ffffcb1af77e76318041da62a6bde646e2b3ce26534852ea77e3fa9a53c8218` |
| 31 | `lemma` | [boundaryPoint_inr](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundarypoint-inr--e4e785a5e9eaa58438d0e35e.md) | 288 | `result-track:e4e785a5e9eaa58438d0e35eb3064dd75440b9b0f9a0c167222742184feb2ca4` |
| 32 | `lemma` | [isInteriorPoint_disjointUnion_left](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint-disjointunion-left--d8503b3369c118625f964280.md) | 297 | `result-track:d8503b3369c118625f964280422ee10f1d5f22f16c14108d35513bf2ea917889` |
| 33 | `lemma` | [isInteriorPoint_disjointUnion_right](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/isinteriorpoint-disjointunion-right--6cca280b2ee52a77befc9a4c.md) | 307 | `result-track:6cca280b2ee52a77befc9a4c17b9e40378f0fab74f543a4a339f56bc8dda8c28` |
| 34 | `lemma` | [interior_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/interior-disjointunion--ebc3501a9011e8e2bcabeb25.md) | 318 | `result-track:ebc3501a9011e8e2bcabeb250364e3d8c264359300d305d3d2945ab4a44e6931` |
| 35 | `lemma` | [boundary_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundary-disjointunion--4ada878d4a9ed64b4b056a48.md) | 350 | `result-track:4ada878d4a9ed64b4b056a48025d41175bafa2bbce6bbc920a4e22defdbe047c` |
| 36 | `instance` | [boundaryless_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Varianta4028b174281685b7f664455c81ce2fe5e6d0a63af405decfa5d260419d84aa1.lean/declarations/boundaryless-disjointunion--70426598b1932bfe2091e404.md) | 356 | `declaration-track:70426598b1932bfe2091e4045b83e4ce948ba6d582075dd96f4bc9aa871d30e5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
