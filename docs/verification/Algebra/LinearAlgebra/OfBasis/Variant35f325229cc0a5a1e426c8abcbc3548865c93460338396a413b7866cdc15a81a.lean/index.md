# Verification target: GRWTSK.Algebra.LinearAlgebra.OfBasis.Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e8518cefe17f2bdd516ae60b4cb1b0b5d49b0693",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e8518cefe17f2bdd516ae60b4cb1b0b5d49b0693`.

Source path: `GRWTSK/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped--c45bfddc0362bdefd7e7310f.md) | 52 | `declaration-track:c45bfddc0362bdefd7e7310f52ed1b6fe4b0511b001744d0dc98ccaaaa62b388` |
| 2 | `theorem` | [mem_parallelepiped_iff](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/mem-parallelepiped-iff--898a5d4ddbcf26d03b867da6.md) | 56 | `result-track:898a5d4ddbcf26d03b867da64e6d268cc5630b0eca8df0e4255416ca6f360b8b` |
| 3 | `theorem` | [image_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/image-parallelepiped--1a824715b91c2b86bde50d4f.md) | 61 | `result-track:1a824715b91c2b86bde50d4f6ba97a00fa248dbd8763bcb3f16b91bf04cfa823` |
| 4 | `theorem` | [parallelepiped_comp_equiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped-comp-equiv--792894d07be4472aad579000.md) | 70 | `result-track:792894d07be4472aad579000bca9d850fd53c4067e9118ee8588324c3eef8f2f` |
| 5 | `theorem` | [parallelepiped_orthonormalBasis_one_dim](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped-orthonormalbasis-one-dim--c2dd48af299f788d088b3001.md) | 92 | `result-track:c2dd48af299f788d088b30010f88e0d00c85c16f2cc843d1154b1f3024d613ce` |
| 6 | `theorem` | [parallelepiped_eq_sum_segment](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped-eq-sum-segment--f6129783baaf8d888b810970.md) | 122 | `result-track:f6129783baaf8d888b810970bee763e936b731104f7da3a415d074394f8ffaa4` |
| 7 | `theorem` | [convex_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/convex-parallelepiped--86fdf0c6f088c114290f714d.md) | 135 | `result-track:86fdf0c6f088c114290f714dc8a6ed2e02e2eec9c90ca69507cac866cc59b5bd` |
| 8 | `theorem` | [parallelepiped_eq_convexHull](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped-eq-convexhull--5639d15c6ab44a4913426563.md) | 141 | `result-track:5639d15c6ab44a4913426563efda552800967f3b1236519634070828caea569a` |
| 9 | `theorem` | [parallelepiped_single](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/parallelepiped-single--d209707a210a339089bb143b.md) | 147 | `result-track:d209707a210a339089bb143bf2916a16399674ef55500a8228cbca727f431e7a` |
| 10 | `def` | [Basis.parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/basis-parallelepiped--c8228d93eedd8a272b64fa71.md) | 185 | `declaration-track:c8228d93eedd8a272b64fa715e61acfd637e3d39c29ccb96b81145f50d57971f` |
| 11 | `theorem` | [Basis.coe_parallelepiped](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/basis-coe-parallelepiped--b077c67d8d1a76ffd2d4f940.md) | 203 | `result-track:b077c67d8d1a76ffd2d4f94047f7c7bef230f9a8705853370bfa42258d492299` |
| 12 | `theorem` | [Basis.parallelepiped_reindex](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/basis-parallelepiped-reindex--82b2e940d0eae59a012320ee.md) | 208 | `result-track:82b2e940d0eae59a012320ee07fa4d85a169d54ff16a0f88bd74e81972ce051c` |
| 13 | `theorem` | [Basis.parallelepiped_map](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/basis-parallelepiped-map--57f55d508188eaf943e29c4f.md) | 214 | `result-track:57f55d508188eaf943e29c4f298a622ba3944c57d9732c2d314df7dae97ff770` |
| 14 | `instance` | [IsAddHaarMeasure_basis_addHaar](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/isaddhaarmeasure-basis-addhaar--af3b73a38ef9a8722bc1a81f.md) | 233 | `declaration-track:af3b73a38ef9a8722bc1a81f9bf1ae604ec501de1499972ef618ef2b1cd3c624` |
| 15 | `theorem` | [Basis.addHaar_self](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/basis-addhaar-self--c646ddb48de9bef77b2a26b8.md) | 237 | `result-track:c646ddb48de9bef77b2a26b88b914ac4d9adf902ee6809b1675c304d737d12f5` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/instance--ea05924654b09474e21ce3fb.md) | 247 | `declaration-track:ea05924654b09474e21ce3fb4693d1be26dfb1110977a279bed95d99bddaa884` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/instance--8b16a68a21786c2996e838db.md) | 252 | `declaration-track:8b16a68a21786c2996e838dbe2b9c63a42c10546754e66faaa01d1ef716ee673` |
| 18 | `instance` | [Real.measureSpace](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/real-measurespace--a45d5d23546f457bb354b139.md) | 258 | `declaration-track:a45d5d23546f457bb354b13950121a97987198dbef8c71da0a96026f392b57b7` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/instance--613809d442eb21b611e45b93.md) | 272 | `declaration-track:613809d442eb21b611e45b931588a0ee8e817e893eaed37ca4418279f8dc968d` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/instance--8d4e28a8d793bb5ddd069d7f.md) | 274 | `declaration-track:8d4e28a8d793bb5ddd069d7f3707f325f3eee2793bc8806c44743dbd6aa3d0bb` |
| 21 | `def` | [measurableEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/measurableequiv--26dd163860d130065e1ac8b4.md) | 278 | `declaration-track:26dd163860d130065e1ac8b4132602b31dec541c70d0bd764cc60c5f2e2b7c48` |
| 22 | `theorem` | [coe_measurableEquiv](../../../../../mathematics/Algebra/LinearAlgebra/OfBasis/Variant35f325229cc0a5a1e426c8abcbc3548865c93460338396a413b7866cdc15a81a.lean/declarations/coe-measurableequiv--c6ce720afdb1e590068d7be9.md) | 284 | `result-track:c6ce720afdb1e590068d7be9a9103bfaaac238e10c0fce9a41fb042d7e5a4f11` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
