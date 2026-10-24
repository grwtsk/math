# GRWTSK.LinearAlgebra.JacobiTransfer

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**26 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/JacobiTransfer.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `355e6fe28df83abc7f46c574a7f7575552fadb1d`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/JacobiTransfer__SourceOccurrenced3f3467f202a587dcc3776c5.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [rawJacobiTransfer](declarations/rawjacobitransfer--2f683daa848313a8cc52e766.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [jacobiRecurrence](declarations/jacobirecurrence--77dd39ec908842f83b6274e7.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [jacobi_recurrence_iff_solved](declarations/jacobi-recurrence-iff-solved--0de1cd58f7ef19ce42a2cdf1.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [jacobi_recurrence_iff_raw_transfer](declarations/jacobi-recurrence-iff-raw-transfer--e2c57fe1e1b8a0134a5ac48b.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [det_rawJacobiTransfer](declarations/det-rawjacobitransfer--f058eb1b8d0217645f97c2a7.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [weightedState](declarations/weightedstate--e428c825630709ee226ea310.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [weightedJacobiTransfer](declarations/weightedjacobitransfer--c1442d50a8ae1dd26081489f.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [jacobi_recurrence_iff_weighted_transfer](declarations/jacobi-recurrence-iff-weighted-transfer--c31bb119a5b222ae8521ad87.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [det_weightedJacobiTransfer](declarations/det-weightedjacobitransfer--8d777ad4c38d171f4639b35c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [weightedJacobiSL](declarations/weightedjacobisl--6723f54b7e4a9fcd9389a979.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [weightedJacobiTransfer_schrodinger](declarations/weightedjacobitransfer-schrodinger--e025e21ab1044f1d5daccda8.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rawJacobiTransfer_schrodinger](declarations/rawjacobitransfer-schrodinger--fe060337895fdccd1056f339.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [stateWeightingMatrix](declarations/stateweightingmatrix--46667c14b773bb57dcf8fc0c.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [stateWeightingMatrix_mulVec](declarations/stateweightingmatrix-mulvec--d6ccadb720e80f76528a121d.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [weighted_raw_intertwining](declarations/weighted-raw-intertwining--a114669e11f5120f144bcdda.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [rawSequenceState](declarations/rawsequencestate--c4f5e3ae77a8434a942411ed.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [weightedSequenceState](declarations/weightedsequencestate--ac89ad0c83f0873256cf6346.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [schrodinger_sequence_iff_transfer](declarations/schrodinger-sequence-iff-transfer--6b9b8089467df3dded7a130e.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [jacobi_sequence_iff_raw_transfer](declarations/jacobi-sequence-iff-raw-transfer--5214ed84ad0bfd7e0d3dd3af.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [jacobi_sequence_iff_weighted_transfer](declarations/jacobi-sequence-iff-weighted-transfer--42aae5f8d543ef4e1baac97b.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [rawJacobiTransfer_not_det_one](declarations/rawjacobitransfer-not-det-one--47bf61e6dda086895fcd05a9.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [twoSiteJacobi](declarations/twositejacobi--b6207d361b6ea507bf87472a.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [twoSiteJacobi_cyclic](declarations/twositejacobi-cyclic--270f5e1d74ad686dca554fe1.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cyclic_coefficient_zero_without_zero_eigenvector](declarations/cyclic-coefficient-zero-without-zero-eigenvector--8688c4b087c6c661f23b6052.md) | 273 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [twoSiteJacobi_first_three_moments_match](declarations/twositejacobi-first-three-moments-match--803ca62281d7c6446f409248.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [twoSiteJacobi_not_conjugate](declarations/twositejacobi-not-conjugate--7887801c04436bd91a823062.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
