# Verification target: GRWTSK.Algebra.LinearAlgebra.Block.Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9b695c8102d9a3c287fab061cfeb205fe64f7b93",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9b695c8102d9a3c287fab061cfeb205fe64f7b93`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Matrix.Transvection` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular--038298e08782b0c021c196be.md) | 57 | `declaration-track:038298e08782b0c021c196be71d0f1794ed549f203cc6498aaa7c07d7311bbe3` |
| 2 | `theorem` | [BlockTriangular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-submatrix--1a88f653a501789a5e3f85e8.md) | 61 | `result-track:1a88f653a501789a5e3f85e8dc425a0ecf1d2c1dcc70bd467258deeb785598c4` |
| 3 | `theorem` | [blockTriangular_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-reindex-iff--2ce600358f14bd29992e8775.md) | 64 | `result-track:2ce600358f14bd29992e87751a62e1c775796f36f4a4c6333c74fa0c56c241fe` |
| 4 | `theorem` | [BlockTriangular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-transpose--64375d21000db1ca750c04eb.md) | 72 | `result-track:64375d21000db1ca750c04eb4aac4739b9fcf01f5845bf7130f82351ce803669` |
| 5 | `theorem` | [blockTriangular_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-transpose-iff--123fba6dc5259f19fb769de1.md) | 77 | `result-track:123fba6dc5259f19fb769de19f1fcf6ac70da06983cc44be21873e2942f20d1d` |
| 6 | `theorem` | [blockTriangular_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-zero--83b5e36ef9ccab2ed0eb869a.md) | 82 | `result-track:83b5e36ef9ccab2ed0eb869a7bf7b409fe1927cff55070ebe044caac2b1048b4` |
| 7 | `theorem` | [BlockTriangular.neg](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-neg--ffa6cd080ad6e82952b66183.md) | 86 | `result-track:ffa6cd080ad6e82952b66183a36be9c557e4222f545b978d3151dfdac7797a2d` |
| 8 | `theorem` | [BlockTriangular.add](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-add--e06dae4b608d2f011e868178.md) | 90 | `result-track:e06dae4b608d2f011e86817834cc56fde15c4fec57b875d1fa09ac1eb2c5634d` |
| 9 | `theorem` | [BlockTriangular.sub](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-sub--c51e0380b939c0ed590490b6.md) | 93 | `result-track:c51e0380b939c0ed590490b6d565fc98bbe8c04b48ca171c1150dd14e1aa0ee7` |
| 10 | `lemma` | [BlockTriangular.add_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-add-iff-right--539467f7fda721a9bad5d464.md) | 97 | `result-track:539467f7fda721a9bad5d46453ea35118c5a3a304b914201e87201fb8231f2ff` |
| 11 | `lemma` | [BlockTriangular.add_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-add-iff-left--a5f380cefbe707769938bda2.md) | 100 | `result-track:a5f380cefbe707769938bda2f68a2bcc2c37ed1a1c7f76af2c2fdac41e123d11` |
| 12 | `lemma` | [BlockTriangular.sub_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-sub-iff-right--1c908a8bcd38150500958185.md) | 103 | `result-track:1c908a8bcd3815050095818558783c3d48656abd230acbc7451c5f790d0a3ad8` |
| 13 | `lemma` | [BlockTriangular.sub_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-sub-iff-left--62823c5215e02c75ca9de8e2.md) | 106 | `result-track:62823c5215e02c75ca9de8e20e801378aab6eda0e74a614dd5732abf62b82007` |
| 14 | `lemma` | [BlockTriangular.map](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-map--042cae0872158b2054ed06ec.md) | 109 | `result-track:042cae0872158b2054ed06ec9dc000c132a0ca77b9afb4cdbb6d86d54cc5b960` |
| 15 | `lemma` | [BlockTriangular.comp](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-comp--3ad94bfe11c87d290ccf4662.md) | 113 | `result-track:3ad94bfe11c87d290ccf466284d76991682ea35f7cfd8bcdad377fcf4665b171` |
| 16 | `theorem` | [blockTriangular_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-diagonal--dc6aca75791c72c68c660bb5.md) | 127 | `result-track:dc6aca75791c72c68c660bb590ee09a3f32e323d17315ff0538cf28f1d2bb1f3` |
| 17 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-blockdiagonal--d9fe692702ee7a7559c66a29.md) | 130 | `result-track:d9fe692702ee7a7559c66a29691a05dd13e96a07f8c4418adbdf636ded709c01` |
| 18 | `theorem` | [blockTriangular_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-blockdiagonal--c4b3e737ae46c375b48fe82f.md) | 135 | `result-track:c4b3e737ae46c375b48fe82f2a2c373fe16517391fa18f4aaf9e2f0c25c9e03b` |
| 19 | `theorem` | [blockTriangular_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-one--a0f920e10ab1bdee1226aa6c.md) | 143 | `result-track:a0f920e10ab1bdee1226aa6c9d44f925e8f7e34aea5098659bc54a19f5bf49da` |
| 20 | `theorem` | [blockTriangular_single](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-single--1d275a20395a9c1fab52d59e.md) | 146 | `result-track:1d275a20395a9c1fab52d59e79f1b5ddc6cdb3642f10d3323676e65777de0bd0` |
| 21 | `theorem` | [blockTriangular_single'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-single--b7eb663340a0bbcad97a6aad.md) | 155 | `result-track:b7eb663340a0bbcad97a6aad431530631eae4f25a121e598a03cfd68fa147660` |
| 22 | `theorem` | [blockTriangular_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-transvection--8b33efe2ecd6f38d0ad68d34.md) | 166 | `result-track:8b33efe2ecd6f38d0ad68d34199d738f8669431b8be592bbaa50cf7a130e294e` |
| 23 | `theorem` | [blockTriangular_transvection'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-transvection--d6c4a2412fa71232f942d49c.md) | 170 | `result-track:d6c4a2412fa71232f942d49cfeb5a5af451e7aa65a3bcf2807e86828814943de` |
| 24 | `theorem` | [BlockTriangular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-mul--483af66644558e54845c2dda.md) | 180 | `result-track:483af66644558e54845c2ddab0db1353559218cbac9d93bca2978ae15ab374dc` |
| 25 | `theorem` | [upper_two_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/upper-two-blocktriangular--b528b6705d2113529d68e53a.md) | 192 | `result-track:b528b6705d2113529d68e53a8249ec86cbbf0cb6ea77fbc706ed0b602ea5aa99` |
| 26 | `theorem` | [equiv_block_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/equiv-block-det--de7fc0d80c0685e67ce2cecb.md) | 202 | `result-track:de7fc0d80c0685e67ce2cecbed2d7b5f5fa51099e2c6aea31ed0dcb2c7b984ae` |
| 27 | `theorem` | [det_toSquareBlock_id](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/det-tosquareblock-id--ffe0cb0681ecb0d069dba30b.md) | 208 | `result-track:ffe0cb0681ecb0d069dba30b3701f571d4979f74bcb8741806a24913a3cae9eb` |
| 28 | `theorem` | [det_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/det-toblock--4b710846229c4f23c5aa9b66.md) | 212 | `result-track:4b710846229c4f23c5aa9b66621dd53112e64ad9485ea59654e0daad08ead905` |
| 29 | `theorem` | [twoBlockTriangular_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/twoblocktriangular-det--4008a1fd719d8b042720d121.md) | 225 | `result-track:4008a1fd719d8b042720d121374b82a7e164343c933a80eb6f97ba9c4c0a69e8` |
| 30 | `theorem` | [twoBlockTriangular_det'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/twoblocktriangular-det--9b8b44be839fc2659198137c.md) | 234 | `result-track:9b8b44be839fc2659198137c3787fe82e11bd90244c3f066556d749f255254f2` |
| 31 | `theorem` | [BlockTriangular.det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-det--0c7b7b3266913279ed9782f9.md) | 242 | `result-track:0c7b7b3266913279ed9782f9bc6e79dcb3bfa275a52cb5970ad0d6f17203ca2f` |
| 32 | `theorem` | [BlockTriangular.det_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-det-fintype--dca979138de8d68cc6af389e.md) | 276 | `result-track:dca979138de8d68cc6af389efafea9563ff8a1ab88f2da29ddb109f96919005d` |
| 33 | `theorem` | [det_of_upperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/det-of-uppertriangular--d6b52a951013e4bd474608fd.md) | 282 | `result-track:d6b52a951013e4bd474608fd6884840c40a6213242241abf9493939ab6988320` |
| 34 | `theorem` | [det_of_lowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/det-of-lowertriangular--fd54aa0436168b19a7370ef8.md) | 287 | `result-track:fd54aa0436168b19a7370ef85e5a1de851f99af604ff1a7e38f6ca3361bc5acd` |
| 35 | `theorem` | [matrixOfPolynomials_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/matrixofpolynomials-blocktriangular--24cb8324330200abba8d1034.md) | 294 | `result-track:24cb8324330200abba8d103490f3db520a83b61b8e8edc5a72e8e4e4246cdb8d` |
| 36 | `theorem` | [det_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/det-matrixofpolynomials--af04d6bcda80517656823fa2.md) | 300 | `result-track:af04d6bcda80517656823fa25da0530de644172ee62205c2830f744482efcd5f` |
| 37 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one--7ea04a378f4a2c28392a71c7.md) | 311 | `result-track:7ea04a378f4a2c28392a71c7dcc171187d591c79adfafa0fa8a495c60c9398cf` |
| 38 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-inv-toblock--1c3980018639ba1419c8476e.md) | 329 | `result-track:1c3980018639ba1419c8476ea220c58501b3b6df8f35e53318fe94b7a48c6b9c` |
| 39 | `def` | [BlockTriangular.invertibleToBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-invertibletoblock--af649bf1a89b5fa22484c799.md) | 336 | `declaration-track:af649bf1a89b5fa22484c799ca32f159635080a5abd77a6f300a71bfd1a0c43d` |
| 40 | `theorem` | [toBlock_inverse_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/toblock-inverse-eq-zero--e6a047b9bbdd44b8c3e6fc19.md) | 343 | `result-track:e6a047b9bbdd44b8c3e6fc19df25e028a4165e59b0854822397e0e2f569c7ff4` |
| 41 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant91a31a99dbebef9699508f12a7f0993f07e97d5224030c604e786396b9b54acd.lean/declarations/blocktriangular-inv-of-blocktriangular--81727d645ec488286f53761a.md) | 363 | `result-track:81727d645ec488286f53761afb1209c9d9ebf219617fef3a861faf371575079b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
