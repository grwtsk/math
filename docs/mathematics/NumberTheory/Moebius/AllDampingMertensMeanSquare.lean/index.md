# GRWTSK.NumberTheory.Moebius.AllDampingMertensMeanSquare

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**21 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4cbc405fb9a73e89fda0aed98213efe49e8eaa7c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/NumberTheory/Moebius/AllDampingMertensMeanSquare.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [sampleIncrementMeanSquareTotal](declarations/sampleincrementmeansquaretotal--86dc4b5e229f34bd68624c48.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [sampleIncrementMeanSquareTotal_nonneg](declarations/sampleincrementmeansquaretotal-nonneg--8e5eb22ba34655b2aa32ebdd.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [sampleResidue_sq_le_incrementMeanSquareTotal](declarations/sampleresidue-sq-le-incrementmeansquaretotal--b11c7cf252d349f774c49cf7.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [sampleCellMass_eq_exponentialLogDrop](declarations/samplecellmass-eq-exponentiallogdrop--8b3d2a811795a2f177edf1b0.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [sampleCellMass_le_incrementMeanSquareMajorant](declarations/samplecellmass-le-incrementmeansquaremajorant--f6dc2a3676d0f265c3946b1b.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [summable_sampleCellMass_of_incrementMeanSquare](declarations/summable-samplecellmass-of-incrementmeansquare--7986587260cd8a482cb8d138.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [compensatedCorrelationBound_of_incrementMeanSquare](declarations/compensatedcorrelationbound-of-incrementmeansquare--15ee4c3b481bea3285aaaebe.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [compensatedCorrelationBound_of_weightedMertensSquare](declarations/compensatedcorrelationbound-of-weightedmertenssquare--451c5c4b8849fa83751eba3d.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [ReciprocalIncrementMeanSquare](declarations/reciprocalincrementmeansquare--83d82398184f4892cab25efc.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [ReciprocalWeightedMertensSquare](declarations/reciprocalweightedmertenssquare--4abe65d392d0c91c82e842ca.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [AllPositiveWeightedMertensSquare](declarations/allpositiveweightedmertenssquare--0ba9021a90df6e72c216413b.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [reciprocalHalfDamping_pos](declarations/reciprocalhalfdamping-pos--2fe047cc87cf8aeb5e42f47f.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [reciprocalHalfDamping_le_one](declarations/reciprocalhalfdamping-le-one--f1a037da9d6dc8557a16c6f2.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [reciprocalHalfDamping_lt_damping](declarations/reciprocalhalfdamping-lt-damping--ee49db34beb6c6d21f6ec588.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [reciprocalCompensatedCorrelation_of_incrementMeanSquare](declarations/reciprocalcompensatedcorrelation-of-incrementmeansquare--d60a345442bc07d29e77f226.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [riemannHypothesis_of_reciprocalIncrementMeanSquare](declarations/riemannhypothesis-of-reciprocalincrementmeansquare--12c248a7c43adb5e280cdf00.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [reciprocalIncrementMeanSquare_of_weightedMertensSquare](declarations/reciprocalincrementmeansquare-of-weightedmertenssquare--271607f4e05dffd119c503ea.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [riemannHypothesis_of_reciprocalWeightedMertensSquare](declarations/riemannhypothesis-of-reciprocalweightedmertenssquare--f9b21f1066fd59687c1d9cf5.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [weightedMertensSquareSummable_mono](declarations/weightedmertenssquaresummable-mono--355432258f94331253679605.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [allPositiveWeightedMertensSquare_iff_reciprocal](declarations/allpositiveweightedmertenssquare-iff-reciprocal--ce8c22116fe3e497a7e5b9f5.md) | 256 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [riemannHypothesis_of_allPositiveWeightedMertensSquare](declarations/riemannhypothesis-of-allpositiveweightedmertenssquare--74d4ac327378f0d3aec2ea79.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
