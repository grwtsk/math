# Verification target: GRWTSK.Geometry.DifferentialGeometry.InteriorBoundary.Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8bb015792162f687541bc73da36763a6105712d",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8bb015792162f687541bc73da36763a6105712d`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.IsManifold.ExtChartAt` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint--319649efcbef878a3bb16f79.md) | 68 | `declaration-track:319649efcbef878a3bb16f79c84e2695bc4e75076c48878b57191deb685c6a15` |
| 2 | `def` | [IsBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isboundarypoint--a5e3f924b133df7b12823186.md) | 73 | `declaration-track:a5e3f924b133df7b1282318629dcc378461ca1c2196e83b08deef21572e0915a` |
| 3 | `def` | [interior](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interior--a0df3c14f72721138fcb9ee2.md) | 77 | `declaration-track:a0df3c14f72721138fcb9ee27ae103f8620a4877566150e234bbed7526b1b500` |
| 4 | `lemma` | [isInteriorPoint_iff](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint-iff--0d2bd32530f826ef94805ad4.md) | 79 | `result-track:0d2bd32530f826ef94805ad43d5decb7221f4de4a02aa1c2f049c59d8c9082de` |
| 5 | `def` | [boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundary--297b65674663a02ec096f409.md) | 86 | `declaration-track:297b65674663a02ec096f4094cca758cf123f9aaa29f8af444ec393c4129f545` |
| 6 | `lemma` | [isBoundaryPoint_iff](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isboundarypoint-iff--d7e1aa5246d20f7842b353b9.md) | 88 | `result-track:d7e1aa5246d20f7842b353b9e8bcee467ebfbefa59074f79778e76de0e0e770b` |
| 7 | `lemma` | [isInteriorPoint_or_isBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint-or-isboundarypoint--02b0a93cf049421f885fe6be.md) | 92 | `result-track:02b0a93cf049421f885fe6bef5f48cd589cac1ae412a2f016b5d3b1c5a4b90a1` |
| 8 | `lemma` | [interior_union_boundary_eq_univ](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interior-union-boundary-eq-univ--20891424f3f828e6234957cf.md) | 98 | `result-track:20891424f3f828e6234957cf277207f28cbdca606adaa6a583dab74b17427475` |
| 9 | `lemma` | [disjoint_interior_boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/disjoint-interior-boundary--2d289e07a9b794894da1931e.md) | 102 | `result-track:2d289e07a9b794894da1931eaca2aaeb00a603700b20ad80ca68d60a0d4578a6` |
| 10 | `lemma` | [isInteriorPoint_iff_not_isBoundaryPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint-iff-not-isboundarypoint--ff151a205b14b4c88eeb3aae.md) | 110 | `result-track:ff151a205b14b4c88eeb3aaea86e51b91c0dc966195eafe0f4ab8b60a05af955` |
| 11 | `lemma` | [compl_interior](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/compl-interior--87e144d9571da40dfce80d1c.md) | 120 | `result-track:87e144d9571da40dfce80d1cee8b9626d7f0701db8ac218914b424a4346ef706` |
| 12 | `lemma` | [compl_boundary](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/compl-boundary--cce5fb396406fcb36df02f6f.md) | 125 | `result-track:cce5fb396406fcb36df02f6f23e1345caba5a7204a110cdea586f8efe0946355` |
| 13 | `lemma` | [_root_.range_mem_nhds_isInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/root-range-mem-nhds-isinteriorpoint--0911c7db470e7c0ec52f9f1c.md) | 128 | `result-track:0911c7db470e7c0ec52f9f1c9bc1a5600c9447fd54caf1f1488511b907441555` |
| 14 | `class` | [_root_.BoundarylessManifold](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/root-boundarylessmanifold--a5e222c2f6f268341d7bdd36.md) | 135 | `declaration-track:a5e222c2f6f268341d7bdd361dfbf5314ed0fa34699126481e75c0b60107b9d4` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/instance--1bbdcdf753a8339afda02c01.md) | 145 | `declaration-track:1bbdcdf753a8339afda02c01c0023a7a5af8eaf300c9ce1e5c390ed0f45ab2ff` |
| 16 | `instance` | [BoundarylessManifold.of_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundarylessmanifold-of-empty--a47d18fd2552355ee05ae423.md) | 158 | `declaration-track:a47d18fd2552355ee05ae4230798acdd830a2f90f9919c64bb9d933a96655943` |
| 17 | `lemma` | [_root_.BoundarylessManifold.isInteriorPoint](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/root-boundarylessmanifold-isinteriorpoint--7ba5cc12d5ccc1c59b171a35.md) | 161 | `result-track:7ba5cc12d5ccc1c59b171a35d0ac3a98220d1015cf08f4dbc423ba767a5f25ca` |
| 18 | `lemma` | [interior_eq_univ](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interior-eq-univ--dbec84a9c66f5a2607f30bab.md) | 165 | `result-track:dbec84a9c66f5a2607f30bab64cb8be874ad8e8a2afc55858286c8f199aa9c74` |
| 19 | `lemma` | [Boundaryless.boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundaryless-boundary-eq-empty--93ad6ed8868ccafef46d5c10.md) | 169 | `result-track:93ad6ed8868ccafef46d5c10cb9bf324ba978a8213a53a66d68b2cc258892d47` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/instance--e514f95838a3447af3527ce6.md) | 172 | `declaration-track:e514f95838a3447af3527ce66d4237cdfb8a0edbcd85f38a9764a6f58c4fc246` |
| 21 | `lemma` | [Boundaryless.iff_boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundaryless-iff-boundary-eq-empty--bb15161f6d638088d088fd9e.md) | 176 | `result-track:bb15161f6d638088d088fd9e75414541d141cd4f6ce0ca091bce03422c958ba9` |
| 22 | `lemma` | [Boundaryless.of_boundary_eq_empty](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundaryless-of-boundary-eq-empty--0619df4a7147d34e3359d912.md) | 185 | `result-track:0619df4a7147d34e3359d91271479482b993c65dc90179d011997a715f045196` |
| 23 | `lemma` | [interior_prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interior-prod--e89b02ba3786415cbbcfd6a2.md) | 200 | `result-track:e89b02ba3786415cbbcfd6a2af7e75b48c4fbbc54285855f96c5fa6fe218450e` |
| 24 | `lemma` | [boundary_prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundary-prod--d26cd6e9556c869676578704.md) | 216 | `result-track:d26cd6e9556c869676578704e78a31146c586cf80b4f9a85c33b838d0182f11f` |
| 25 | `lemma` | [boundary_of_boundaryless_left](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundary-of-boundaryless-left--a1e48307077ed7f5adb2c538.md) | 226 | `result-track:a1e48307077ed7f5adb2c53857175dc4a7f9694719007f11ad6cdf2b8e7344c9` |
| 26 | `lemma` | [boundary_of_boundaryless_right](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundary-of-boundaryless-right--201176d68502f2704e823851.md) | 233 | `result-track:201176d68502f2704e823851f20bff2c348ffa23a9ac894828838d45e72991a1` |
| 27 | `instance` | [BoundarylessManifold.prod](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundarylessmanifold-prod--5343a97c0b5d7ca796b25951.md) | 240 | `declaration-track:5343a97c0b5d7ca796b25951b208641307fba5f6bd138c421ad70a01c7f145c6` |
| 28 | `lemma` | [interiorPoint_inl](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interiorpoint-inl--4d8312b69fdaaefff0fe5fe6.md) | 259 | `result-track:4d8312b69fdaaefff0fe5fe6ffa258cc5de3426b7910d477e44cc91b79142ffb` |
| 29 | `lemma` | [boundaryPoint_inl](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundarypoint-inl--46a7b2e6f2938301e08435fd.md) | 266 | `result-track:46a7b2e6f2938301e08435fdb36707390680d86ae27e59b22ac2add9d1396bd4` |
| 30 | `lemma` | [interiorPoint_inr](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interiorpoint-inr--ddb32957c3cc4361c3925919.md) | 273 | `result-track:ddb32957c3cc4361c39259192b4c7d2d13a1de9df2ae5d05e6c1ff2c54e0dac6` |
| 31 | `lemma` | [boundaryPoint_inr](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundarypoint-inr--0d620fd42ba6b2a8b001f8f4.md) | 280 | `result-track:0d620fd42ba6b2a8b001f8f4d889335c915bc547b809c35e55b832104208c91a` |
| 32 | `lemma` | [isInteriorPoint_disjointUnion_left](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint-disjointunion-left--27d910b5cf19588c1c66cac9.md) | 289 | `result-track:27d910b5cf19588c1c66cac93830014d217d8b82de0415481cb21a1d352fe864` |
| 33 | `lemma` | [isInteriorPoint_disjointUnion_right](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/isinteriorpoint-disjointunion-right--f9eecd9a7eb4a92268aad33a.md) | 299 | `result-track:f9eecd9a7eb4a92268aad33a458a58c3825277f61f2296f2722764c246f7ec02` |
| 34 | `lemma` | [interior_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/interior-disjointunion--7653fe76f7fb992bb464fbe3.md) | 310 | `result-track:7653fe76f7fb992bb464fbe3af9be4e217b856df662b7d564debdf59347be370` |
| 35 | `lemma` | [boundary_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundary-disjointunion--8aa2968e73d32d12827b72e5.md) | 342 | `result-track:8aa2968e73d32d12827b72e53ede6e2ba02be70c2959ae7cdf9fcdfd0fc02823` |
| 36 | `instance` | [boundaryless_disjointUnion](../../../../../mathematics/Geometry/DifferentialGeometry/InteriorBoundary/Variantbf146b15ac6592743f23c72ea7b03c6ef2ed17bf53177cea897baacbbf769194.lean/declarations/boundaryless-disjointunion--28b055f245e4bc2410d8d054.md) | 348 | `declaration-track:28b055f245e4bc2410d8d0547b37185e9b0f9c38304c25b0af6bd842c2129ee2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
