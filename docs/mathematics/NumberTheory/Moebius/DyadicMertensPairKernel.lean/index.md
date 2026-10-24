# GRWTSK.NumberTheory.Moebius.DyadicMertensPairKernel

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/DyadicMertensPairKernel.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d5a566b331cac8a1b8d193f0ad39cde081191605`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/DyadicMertensPairKernel.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [weightedMertensDyadicWeight](declarations/weightedmertensdyadicweight--ce78b2e5a0d1505ac6f2a180.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [weightedMertensBaseTerm_eq_weight](declarations/weightedmertensbaseterm-eq-weight--7e3e5f9dc250c03d42603ee2.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [weightedMertensDyadicWeight_nonneg](declarations/weightedmertensdyadicweight-nonneg--8f2e52e9337cf196513465da.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [weightedMertensDyadicWeight_eq_inv_sub_inv_succ](declarations/weightedmertensdyadicweight-eq-inv-sub-inv-succ--b9b15b77bccd1bb20958425f.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sum_weightedMertensDyadicWeight_Ico](declarations/sum-weightedmertensdyadicweight-ico--b91295b04974171bd782a8c2.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedMertensPairKernel](declarations/weightedmertenspairkernel--cdee71238dfdc9a603ac589c.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedMertensPairLower](declarations/weightedmertenspairlower--ef94f7583bab2841185a83e5.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [weightedMertensPairKernel_eq_sum_Ico_lower](declarations/weightedmertenspairkernel-eq-sum-ico-lower--0a545d684d2a5f8b6ecdc4ae.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [weightedMertensPairKernel_closed](declarations/weightedmertenspairkernel-closed--9ee23b241cfeee0014219865.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [weightedMertensPairKernel_nonneg](declarations/weightedmertenspairkernel-nonneg--f63f33eda34b6be1a764857d.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedMertensPairKernel_le_inv_left](declarations/weightedmertenspairkernel-le-inv-left--da74ddb4dbe59a9561d52d67.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [pickupMertensPrefix_fixed_inventory](declarations/pickupmertensprefix-fixed-inventory--2d18f8e224821b99b16a9bf2.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [pickupMertensPrefix_sq_fixed_inventory](declarations/pickupmertensprefix-sq-fixed-inventory--f5f2633262121ef695eb01db.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [weightedMertensDyadicPairQuadratic](declarations/weightedmertensdyadicpairquadratic--425beb21134b94dc4c91c772.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weightedMertensDyadicBlock_eq_pairQuadratic](declarations/weightedmertensdyadicblock-eq-pairquadratic--83d4570d1d1a41b4d7669429.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [weightedMertensDyadicPairDiagonal](declarations/weightedmertensdyadicpairdiagonal--a326e3622fdb6ddf19437c94.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [weightedMertensDyadicPairOffDiagonal](declarations/weightedmertensdyadicpairoffdiagonal--e3bcb32a7c051a74b36d21e3.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [weightedMertensDyadicPairQuadratic_eq_diagonal_add_offDiagonal](declarations/weightedmertensdyadicpairquadratic-eq-diagonal-add-offdiagonal--091368e32ab0abe84842e722.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [weightedMertensDyadicBlock_eq_pairDiagonal_add_offDiagonal](declarations/weightedmertensdyadicblock-eq-pairdiagonal-add-offdiagonal--7e77e4451cdfcd343cb61a2b.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [moebiusReal_sq_le_one](declarations/moebiusreal-sq-le-one--9836e6566c134c477e64ea76.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [weightedMertensDyadicPairDiagonal_nonneg](declarations/weightedmertensdyadicpairdiagonal-nonneg--9bf2d00d932f0e15adb91b4f.md) | 366 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [weightedMertensDyadicPairDiagonal_le_two](declarations/weightedmertensdyadicpairdiagonal-le-two--7017a7936a745839d728a1cb.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [SubpolynomialDyadicMertensPairCorrelation](declarations/subpolynomialdyadicmertenspaircorrelation--30d962d13282d2315c2b9c81.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pairCorrelation_of_dyadicBlock](declarations/paircorrelation-of-dyadicblock--7fdbb9013f21316252600257.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [dyadicBlock_of_pairCorrelation](declarations/dyadicblock-of-paircorrelation--e7e4356279a9c532d1744caf.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [subpolynomialDyadicMertensPairCorrelation_iff_block](declarations/subpolynomialdyadicmertenspaircorrelation-iff-block--c96ccaea641d586a144f404a.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [riemannHypothesis_of_subpolynomialDyadicMertensPairCorrelation](declarations/riemannhypothesis-of-subpolynomialdyadicmertenspaircorrelation--109fcef06c6fcaa43de95dea.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
