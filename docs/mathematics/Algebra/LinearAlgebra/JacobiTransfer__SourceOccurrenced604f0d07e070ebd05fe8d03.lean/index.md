# GRWTSK.Algebra.LinearAlgebra.JacobiTransfer

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/JacobiTransfer.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8390b8781c489e6258c91c64ce4d235f8ae72639`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced604f0d07e070ebd05fe8d03.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rawJacobiTransfer](declarations/rawjacobitransfer--27ff51cb65e88582633a3e81.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [jacobiRecurrence](declarations/jacobirecurrence--cb61f465f78a15c32a515f64.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [jacobi_recurrence_iff_solved](declarations/jacobi-recurrence-iff-solved--32808b734685daa3b71063c1.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [jacobi_recurrence_iff_raw_transfer](declarations/jacobi-recurrence-iff-raw-transfer--2dbad736486c0bdf17eec2ec.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [det_rawJacobiTransfer](declarations/det-rawjacobitransfer--bab5f1437ce47369cdc51c62.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedState](declarations/weightedstate--77c0a68e6a75e049179f4b66.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedJacobiTransfer](declarations/weightedjacobitransfer--44a97222003ba83faf4581db.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](declarations/jacobi-recurrence-iff-weighted-transfer--6f115a3160f390279703b894.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_weightedJacobiTransfer](declarations/det-weightedjacobitransfer--83ace9ebc6d357d6ae86a5b6.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [weightedJacobiSL](declarations/weightedjacobisl--23d90aa4b741aa7147f85351.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedJacobiTransfer_schrodinger](declarations/weightedjacobitransfer-schrodinger--32ab1418025176d17b3b04ac.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rawJacobiTransfer_schrodinger](declarations/rawjacobitransfer-schrodinger--fcda663f6f772e19f9dbf044.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stateWeightingMatrix](declarations/stateweightingmatrix--0fc3d024644cab42f858c098.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stateWeightingMatrix_mulVec](declarations/stateweightingmatrix-mulvec--c06561fc6dcd82055fae2492.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weighted_raw_intertwining](declarations/weighted-raw-intertwining--e241283c6dc4bee182e5851e.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [rawSequenceState](declarations/rawsequencestate--34bd1d9e538dcc0243f8c393.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [weightedSequenceState](declarations/weightedsequencestate--49eb9347e85f58d3e25c6a3d.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [schrodinger_sequence_iff_transfer](declarations/schrodinger-sequence-iff-transfer--e11f9c7ff23244e7be8416b8.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [jacobi_sequence_iff_raw_transfer](declarations/jacobi-sequence-iff-raw-transfer--7e5b95e581a355d647ad9cbc.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [jacobi_sequence_iff_weighted_transfer](declarations/jacobi-sequence-iff-weighted-transfer--ee2a1cd0b2682f6f40bd0599.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rawJacobiTransfer_not_det_one](declarations/rawjacobitransfer-not-det-one--363a7ab43a3b225b73cb52d2.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [twoSiteJacobi](declarations/twositejacobi--759940f48ea8b64e8262b69a.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [twoSiteJacobi_cyclic](declarations/twositejacobi-cyclic--17eaffcb7e24da6124fa0901.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](declarations/cyclic-coefficient-zero-without-zero-eigenvector--5f9df6c929d564a89933fefd.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [twoSiteJacobi_first_three_moments_match](declarations/twositejacobi-first-three-moments-match--98c6ff04950f256e599b5d86.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [twoSiteJacobi_not_conjugate](declarations/twositejacobi-not-conjugate--2a00c7e40bfae899c0d3d0c3.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
