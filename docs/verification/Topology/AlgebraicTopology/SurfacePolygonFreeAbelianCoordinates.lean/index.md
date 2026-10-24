# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonFreeAbelianCoordinates

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "231ff750ba448b37ec1e4d19bc17d778b248ede5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `231ff750ba448b37ec1e4d19bc17d778b248ede5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Algebra.FreeAbelianGroup.Finsupp` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Finsupp` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Equiv.TypeTags` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [freeAbelianCoordinates](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/freeabeliancoordinates--c7d99d831f040dd4c8ebab6e.md) | 57 | `declaration-track:c7d99d831f040dd4c8ebab6e6c00b9414f3441d71093df7323b81f712480b33e` |
| 2 | `def` | [canonicalAbelianizationCoordinates](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalabelianizationcoordinates--9cb8b18f5d03e4e703ec529e.md) | 65 | `declaration-track:9cb8b18f5d03e4e703ec529e310188e99d2bffe170ec3c843ac36ac01036b190` |
| 3 | `theorem` | [freeAbelianCoordinates_of](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/freeabeliancoordinates-of--65e6ea006ed81fc7495846a0.md) | 72 | `result-track:65e6ea006ed81fc7495846a03e76dd280da2e245f16961bb78535aac7d1f25a6` |
| 4 | `theorem` | [canonicalAbelianizationCoordinates_generator](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalabelianizationcoordinates-generator--24ecaa6800361dde83e5651d.md) | 82 | `result-track:24ecaa6800361dde83e5651d91eac21681eaf41aa753f93e71e53a0319fda4db` |
| 5 | `theorem` | [canonicalCoordinates_surjective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalcoordinates-surjective--6d9f7f1c8987df0144c8fb69.md) | 92 | `result-track:6d9f7f1c8987df0144c8fb698f7c6364b4bbdeded3b0902ba002f179332d5f9d` |
| 6 | `theorem` | [canonicalCoordinates_injective](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalcoordinates-injective--9db5f63e979a92ad83a121c6.md) | 100 | `result-track:9db5f63e979a92ad83a121c6dd306b93abfda7ca9bdcbb6fea88880a6943f142` |
| 7 | `def` | [coordinateProjection](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/coordinateprojection--64b07ae7de503b207fb4e3b1.md) | 106 | `declaration-track:64b07ae7de503b207fb4e3b18fc27ffcd89fa18e4e3a98689500d8607deec94b` |
| 8 | `def` | [canonicalProjectedCharacter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalprojectedcharacter--863824ff30e1f4c66b76b4db.md) | 114 | `declaration-track:863824ff30e1f4c66b76b4db51bdccc35709e2326401fb37b752d1dda6eebe4e` |
| 9 | `theorem` | [canonicalProjectedCharacter_eq_exponentCharacter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalprojectedcharacter-eq-exponentcharacter--13f603ade05625c972c1638c.md) | 126 | `result-track:13f603ade05625c972c1638cd4ff3219e55885f355a3a6f2a60ff95c9ac25b3e` |
| 10 | `theorem` | [canonicalCoordinates_eq_exponentCharacter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalcoordinates-eq-exponentcharacter--fa26c5f59371b1b8069997e1.md) | 141 | `result-track:fa26c5f59371b1b8069997e13979161f0556eb5c4129b320cacc7226ffeeb588` |
| 11 | `theorem` | [canonicalCoordinates_signedWord](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/canonicalcoordinates-signedword--10432d6b83599c24c9783d7b.md) | 155 | `result-track:10432d6b83599c24c9783d7b251470c9eb6467e51fada8b4b1b5f24318d3990b` |
| 12 | `theorem` | [polygonFaceBoundaryVector_eq_canonicalCoordinates](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/polygonfaceboundaryvector-eq-canonicalcoordinates--0760e12c88bb200f72f82b8a.md) | 173 | `result-track:0760e12c88bb200f72f82b8a5a2d27515616c188bd8b02e59b80ed4b6a5efc75` |
| 13 | `theorem` | [fullPolygonCoordinates_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/fullpolygoncoordinates-zero--6fe6a193482f6d9138feb155.md) | 187 | `result-track:6fe6a193482f6d9138feb155db060328e73da8adf1cc0e61b18d271ccc2373cb` |
| 14 | `theorem` | [abelianization_eq_one_iff_all_characters_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/abelianization-eq-one-iff-all-characters-zero--c529a09cbb5e4411b3ed9069.md) | 196 | `result-track:c529a09cbb5e4411b3ed90691b9270bc729cb9ee6fecb8ba5bf0981b84ec10a1` |
| 15 | `theorem` | [missingInverseEdge_coordinates_nonzero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/missinginverseedge-coordinates-nonzero--b292628a5345c29b0afc58f4.md) | 225 | `result-track:b292628a5345c29b0afc58f4f7a64e300b8230e4b9b8c4db20e99ec706e809d2` |
| 16 | `theorem` | [firstHandleBlock_zero_coordinates_but_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/firsthandleblock-zero-coordinates-but-nontrivial--b3c39ea8ed69bf36d861db6a.md) | 240 | `result-track:b3c39ea8ed69bf36d861db6a3ebc3003ddfd24c2cf31234940036b4e56349620` |
| 17 | `theorem` | [genus_two_integer_coordinate_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/genus-two-integer-coordinate-count--6fec32f03730858277e0b76c.md) | 254 | `result-track:6fec32f03730858277e0b76ce4ab9c816155f40c1c57886d797c0e7dedcbaee4` |
| 18 | `theorem` | [genus_three_integer_coordinate_count](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonFreeAbelianCoordinates.lean/declarations/genus-three-integer-coordinate-count--019aef7cc727ab287ddbc8ab.md) | 260 | `result-track:019aef7cc727ab287ddbc8ab6e0931049702d3d756439d1e84d677ea0c862efd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
