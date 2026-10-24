# Verification target: GRWTSK.Topology.AlgebraicTopology.SurfacePolygonAbelianizationComparison

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb5cbb6bc794788c31b40116e2810724ccc56619",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/index.md) · [Full source](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb5cbb6bc794788c31b40116e2810724ccc56619`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCellularBoundary`](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonCellularBoundary.lean/index.md) — import line 10; pinned internal source present.
- `Mathlib.GroupTheory.Abelianization.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Int.TypeTags` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [coordinateLetter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/coordinateletter--15bfc40476dea60ff557b3b2.md) | 53 | `declaration-track:15bfc40476dea60ff557b3b2378e32f0449e1df9980d90fb36a08f7777bd1d99` |
| 2 | `def` | [exponentCharacter](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/exponentcharacter--bd9c4e29ed854fa47a91b836.md) | 59 | `declaration-track:bd9c4e29ed854fa47a91b836e81d5170e4e029c97fe2cd147768ca663d07248a` |
| 3 | `theorem` | [exponentCharacter_generator](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/exponentcharacter-generator--68252bde44b0f7f3be337026.md) | 64 | `result-track:68252bde44b0f7f3be33702633fcde58afe0d0f0fc6b7a658bab17983677a406` |
| 4 | `theorem` | [exponentCharacter_signedSide](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/exponentcharacter-signedside--bb77020adc75a22f7e80acc8.md) | 72 | `result-track:bb77020adc75a22f7e80acc87a144431567e2fc4c072cff829adf9fc4e4db46a` |
| 5 | `theorem` | [exponentCharacter_polygonWord](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/exponentcharacter-polygonword--080064f5d8efd561dc307a30.md) | 87 | `result-track:080064f5d8efd561dc307a30d28a8173ab8b68e365b0121d470e162f2b830fcb` |
| 6 | `def` | [abelianCoordinate](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abeliancoordinate--c439664b6988c42dbcc90c87.md) | 105 | `declaration-track:c439664b6988c42dbcc90c8763c2f5ba09c91cb1715ddde8c9fd0a80877057a6` |
| 7 | `theorem` | [abelianCoordinate_polygonWord](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abeliancoordinate-polygonword--705471257e00637b4c35b73d.md) | 111 | `result-track:705471257e00637b4c35b73d2113602bc2bc65cd6086b0fe7e79761c1663e599` |
| 8 | `theorem` | [polygonCharacter_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/polygoncharacter-zero--1fd24d16f31bc408df78d034.md) | 121 | `result-track:1fd24d16f31bc408df78d034c0eb6703589199abc9ce114ef3319eead0efcdde` |
| 9 | `theorem` | [abelianPolygonCoordinate_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abelianpolygoncoordinate-zero--0c0ed310f4bfed13c42ae83f.md) | 129 | `result-track:0c0ed310f4bfed13c42ae83fc625f075975eb94a6ba502c45bb9658de875f34c` |
| 10 | `theorem` | [abelianization_wordCommutator_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abelianization-wordcommutator-zero--42f8cb6ed9bf6f3c9af912b7.md) | 139 | `result-track:42f8cb6ed9bf6f3c9af912b77b17964ca85d20c6729129e0e5ecddee82426fe9` |
| 11 | `theorem` | [abelianization_firstTwoRelator_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abelianization-firsttworelator-zero--da0f17b78587f50fee73853e.md) | 148 | `result-track:da0f17b78587f50fee73853e671e3674a2a63856c54662f9b9c68fe9f2e45fb5` |
| 12 | `theorem` | [abelianization_extraHandleRelator_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abelianization-extrahandlerelator-zero--f37b27dec309f10d11821d58.md) | 159 | `result-track:f37b27dec309f10d11821d580cba36c64eef1215522c7d05c202a4bc62da984b` |
| 13 | `theorem` | [abelianization_extraRelatorList_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/abelianization-extrarelatorlist-zero--1905f70398ac97652a2f3e16.md) | 168 | `result-track:1905f70398ac97652a2f3e16c9deef4c9d82fc237d2084b0cfa3f042517f3e70` |
| 14 | `theorem` | [canonicalAbelianization_higherGenusRelator_eq_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/canonicalabelianization-highergenusrelator-eq-one--81a5a02ffb917dbab0503984.md) | 193 | `result-track:81a5a02ffb917dbab05039840c9c6aa76d12ef74c5c7e24988fa9942812354ad` |
| 15 | `theorem` | [canonicalAbelianization_polygonBoundary_eq_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/canonicalabelianization-polygonboundary-eq-one--dcebeea447e92b6b08d97170.md) | 203 | `result-track:dcebeea447e92b6b08d97170202a6f936bbff98d2f77355813189ff5c3bb2cc5` |
| 16 | `theorem` | [missingInverseEdge_character_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/missinginverseedge-character-one--7b4ff71cb7de69a958686361.md) | 212 | `result-track:7b4ff71cb7de69a9586863616d9d16fb6c94c10dc9377bc922819fff9da06c30` |
| 17 | `theorem` | [missingInverseEdge_abelianization_ne_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/missinginverseedge-abelianization-ne-one--7b4336b2c9489bcb00139869.md) | 219 | `result-track:7b4336b2c9489bcb001398699c99f2500a6651a567fce66c5ceb4fe5389ae0bc` |
| 18 | `theorem` | [handleBlock_character_zero](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/handleblock-character-zero--e7e7d7a5a6586dce1f1cd331.md) | 234 | `result-track:e7e7d7a5a6586dce1f1cd3314ee6a563629611a39b3cd03f03f830c89d7fc96a` |
| 19 | `theorem` | [firstHandleBlock_not_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/firsthandleblock-not-one--c2b7d6182799d32a2aa6fb5a.md) | 244 | `result-track:c2b7d6182799d32a2aa6fb5ac4ea1201bec60ca8edc7af721b1d9f562617b9a4` |
| 20 | `theorem` | [firstHandleBlock_abelianization_eq_one](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/firsthandleblock-abelianization-eq-one--e0d073cb13ccb33c7fe73b39.md) | 263 | `result-track:e0d073cb13ccb33c7fe73b3999c17fa499511bdbb3dafa13f90ceb7d5e388637` |
| 21 | `theorem` | [firstHandleBlock_in_kernel_nontrivial](../../../../mathematics/Topology/AlgebraicTopology/SurfacePolygonAbelianizationComparison.lean/declarations/firsthandleblock-in-kernel-nontrivial--9bcd95e395e06a599ad7282f.md) | 274 | `result-track:9bcd95e395e06a599ad7282f14d4422023e91ac29597e47a9a429b45565e4fa9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
