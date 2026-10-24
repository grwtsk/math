# GRWTSK.Analysis.LinearAlgebra.ThreePhaseCoefficientHeat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**33 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/LinearAlgebra/ThreePhaseCoefficientHeat.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b50b0dd31cfcbb3e3faa04d622eefbe7eb9c544`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/ThreePhaseCoefficientHeat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Triple](declarations/triple--2c48cd50eb0ef92db91a73b9.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [mean](declarations/mean--8567dba0b701721d9686d8c7.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [relax](declarations/relax--abade3349fc56429ee5eca91.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [decay](declarations/decay--7f3a51e67c1fc1507518f8bc.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [flow](declarations/flow--8ecf90ee487dca2852aabd6b.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [mean_relax](declarations/mean-relax--6ccec546d4b437ad2955b8e0.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [relax_one](declarations/relax-one--a286af81efa4603a6493fa40.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [relax_comp](declarations/relax-comp--cf6fa7adebec8d63732d35d6.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [decay_zero](declarations/decay-zero--6c6598247412687973410264.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [decay_add](declarations/decay-add--2e8619d00a9d6bef49ef0649.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [decay_pos](declarations/decay-pos--a6cc4d1a33cff95bcae99f69.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [decay_square](declarations/decay-square--2679ce51d1ee775f3884fad7.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [flow_zero](declarations/flow-zero--24be1357a8285b75cc156cf8.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [flow_add](declarations/flow-add--64a4d3e09ef9de795f39eddc.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [mean_flow](declarations/mean-flow--986c1ca70f8619ec8eb86996.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [flow_continuous](declarations/flow-continuous--f4dae21042ddf1d4bf107c08.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [generator](declarations/generator--e9ce6e2dd20d46bfbd706fc0.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [flow_derivative](declarations/flow-derivative--afe2ae0e57fdf4719dd7f9ff.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [phaseEnergy](declarations/phaseenergy--8b2d9ff1bd3f44c8dae069cb.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [residualEnergy](declarations/residualenergy--73b50fda7ce2de9a65b95e7b.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [totalEnergy](declarations/totalenergy--3746429238caac572a4124a7.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [defectEnergy](declarations/defectenergy--7e69615bd68016c7986ee20f.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [energy_decomposition](declarations/energy-decomposition--20540cd7ce4308d3122aa2e5.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [edge_energy](declarations/edge-energy--9b8027ae08d4ca1ccb7d7697.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [filled_cell_gap](declarations/filled-cell-gap--d5f734c249dff59a083decbd.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [defect_nonneg](declarations/defect-nonneg--653b6d5d09b6fa25f4233d83.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [defect_zero_iff](declarations/defect-zero-iff--d58829a05e8596f8f27dba50.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [defect_relax](declarations/defect-relax--ec419998672e3416903e74a9.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [defect_flow](declarations/defect-flow--1d5652bc6b3fa123ff281c0a.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [total_flow](declarations/total-flow--9fd92f9705d55be9584eee39.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [defect_contraction](declarations/defect-contraction--cd8a0a43278c5e25ff791b93.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finite_time_zero_iff](declarations/finite-time-zero-iff--371679d6e7bd32d7ec90e0c6.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [nonconstant_fixture](declarations/nonconstant-fixture--d157eaba9a0bb2faba1f214c.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
