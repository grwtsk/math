# GRWTSK.NumberTheory.Moebius.DyadicTriangularKernel

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**23 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/DyadicTriangularKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29207a118760feb5bf47b46b80ce9bdcd0702d94`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/DyadicTriangularKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mertensTriangularAtom](declarations/mertenstriangularatom--a07fc7b31f0f83ac7cebbb01.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [weightedMertensDyadicTriangularBoundary](declarations/weightedmertensdyadictriangularboundary--7cba3032a8c51caa422ea54f.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [weightedMertensDyadicTriangularLocal](declarations/weightedmertensdyadictriangularlocal--7d932ca611d29acc0d2a1b28.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [weightedMertensDyadicTriangularKernel](declarations/weightedmertensdyadictriangularkernel--44e7700ea4e0f12bb45aed20.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [weightedMertensDyadicBoundarySquare](declarations/weightedmertensdyadicboundarysquare--a2c16959a1b9b10d0b114a70.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [SubpolynomialDyadicTriangularKernel](declarations/subpolynomialdyadictriangularkernel--ea57655866a2197bf9aef9a0.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finite_tail_abel](declarations/finite-tail-abel--74657cb218a7cfb8da8a713e.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [two_mul_sum_mul_sub_const](declarations/two-mul-sum-mul-sub-const--3c7e055baf8f456c1caa9341.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [dyadic_reciprocal_cell](declarations/dyadic-reciprocal-cell--f2368ff172901083a0d98259.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [mertensPrefixTriangularCorrelation_sub_pred](declarations/mertensprefixtriangularcorrelation-sub-pred--6dd28cbb629b2e8e8d8e3288.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_range](declarations/weightedmertensdyadictriangularcorrelation-eq-range--b4a0fd72be601d6e4f8d554f.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [weightedMertensDyadicTriangularLocal_eq_range](declarations/weightedmertensdyadictriangularlocal-eq-range--4fb55512df04011ee5e08bb0.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dyadic_left_inv_eq_two_mul_right_inv](declarations/dyadic-left-inv-eq-two-mul-right-inv--d733172431c291f48d03365f.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [two_mul_sum_atom_range_eq_triangular_sub](declarations/two-mul-sum-atom-range-eq-triangular-sub--a9a6c4fc09df686a68ff2d8b.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weightedMertensDyadicTriangularCorrelation_eq_kernel](declarations/weightedmertensdyadictriangularcorrelation-eq-kernel--96953928204ac2f10cc3d1a8.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [weightedMertensDyadicTriangularBoundary_eq_square_sub_diagonal](declarations/weightedmertensdyadictriangularboundary-eq-square-sub-diagonal--b06db26d280618da7f02ef21.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [weightedMertensDyadicTriangularBoundary_le_boundarySquare](declarations/weightedmertensdyadictriangularboundary-le-boundarysquare--c887b2a6dc776464394a5f85.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_triangular](declarations/subpolynomialdyadictriangularkernel-iff-triangular--1b6903c17db2dceff273f950.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_orderedPair](declarations/subpolynomialdyadictriangularkernel-iff-orderedpair--63f5ae66e5ee1d2c0288159d.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_block](declarations/subpolynomialdyadictriangularkernel-iff-block--65c9245f98433a746c896615.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_cumulative](declarations/subpolynomialdyadictriangularkernel-iff-cumulative--60123155399621c04790b040.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [subpolynomialDyadicTriangularKernel_iff_allPositiveWeightedMertensSquare](declarations/subpolynomialdyadictriangularkernel-iff-allpositiveweightedmertenssquare--5526088be6cb4fb2028431b3.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicTriangularKernel](declarations/riemannhypothesis-of-subpolynomialdyadictriangularkernel--e3f0b0d314a402cb42f72bd1.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
