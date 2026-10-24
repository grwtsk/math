# GRWTSK.NumberTheory.Moebius.CompensatedCorrelationCriterion

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 19 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f35ac15351db8dacec75d9ff45b4f3e9359ce652`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/CompensatedCorrelationCriterion.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sampleWeightedDiagonal](declarations/sampleweighteddiagonal--660603df9d307f15e1e52cfb.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [sampleCompensatedCorrelation](declarations/samplecompensatedcorrelation--0f23969b27d4b8afa8ac8d44.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [sampleDiagonalMajorant](declarations/samplediagonalmajorant--4b8a7851161e53239e1e6f2e.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sampleDiagonalBudget](declarations/samplediagonalbudget--dab2b9fc08e0ae6cffcb4e59.md) | 65 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [CompensatedCorrelationBound](declarations/compensatedcorrelationbound--60da1dd17b7268f58f2c8b21.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [ReciprocalCompensatedCorrelation](declarations/reciprocalcompensatedcorrelation--9f1b06f3363af75caf37d181.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [sampleWeightedDiagonal_nonneg](declarations/sampleweighteddiagonal-nonneg--8e88fb8938404c923063910e.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [sampleDiagonalMajorant_nonneg](declarations/samplediagonalmajorant-nonneg--64c9752971d1bac3163186a1.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [sampleDiagonalMajorant_eq_rpow](declarations/samplediagonalmajorant-eq-rpow--d2807cc359259e4b59191aa8.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [summable_sampleDiagonalMajorant](declarations/summable-samplediagonalmajorant--8af72542afb20951e689d1e7.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sampleDiagonalBudget_nonneg](declarations/samplediagonalbudget-nonneg--1ae7213d2bda7fdb32c69df8.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [sampleWeightedDiagonal_le_budget](declarations/sampleweighteddiagonal-le-budget--6e12becd83d9cbdad22b61d8.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [sampleCellMass_partial_sum_eq_compensated_add_diagonal](declarations/samplecellmass-partial-sum-eq-compensated-add-diagonal--cb7f837912c0451b860a7ddb.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [summable_cellMass_iff_compensatedCorrelationBound](declarations/summable-cellmass-iff-compensatedcorrelationbound--b940e4bfa194eee59e307ef5.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [sampleCellMass_tsum_le_of_compensatedCorrelation](declarations/samplecellmass-tsum-le-of-compensatedcorrelation--bf2942baa498945f604deb83.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [actual_energy_le_of_compensatedCorrelation](declarations/actual-energy-le-of-compensatedcorrelation--a8fbc1798974a7b504b7e4a9.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [abscissa_zero_iff_reciprocal_compensatedCorrelation](declarations/abscissa-zero-iff-reciprocal-compensatedcorrelation--43185aad2b17f62a86976505.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [riemannHypothesis_of_reciprocal_compensatedCorrelation](declarations/riemannhypothesis-of-reciprocal-compensatedcorrelation--c1c0987849f7c0de9db56bb5.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [sampleResidue_eq_criticalEndpointDefect](declarations/sampleresidue-eq-criticalendpointdefect--c1d5236a594e80cc46271db1.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [sampleCellMass_one_eq_endpointDefectEnergy](declarations/samplecellmass-one-eq-endpointdefectenergy--91952add6796bd05caac9c9d.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [summable_sampleCellMass_one_iff_endpointDefectSummable](declarations/summable-samplecellmass-one-iff-endpointdefectsummable--56c17597c35d571ffb30acd0.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [compensatedCorrelationBound_one_iff_criticalBoundary](declarations/compensatedcorrelationbound-one-iff-criticalboundary--dfcdf296a5bf4ac26e298bbb.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [compensatedCorrelationBound_one_iff_mertensTransformSummable](declarations/compensatedcorrelationbound-one-iff-mertenstransformsummable--aec696a6ecf98ecca04db4f2.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [compensatedCorrelationBound_one_of_incrementMeanSquare](declarations/compensatedcorrelationbound-one-of-incrementmeansquare--5594bd55a165d03e624fd65c.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [compensatedCorrelationBound_one_of_weightedMertensSquare](declarations/compensatedcorrelationbound-one-of-weightedmertenssquare--b81e2a4a8fda447b046f937f.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
