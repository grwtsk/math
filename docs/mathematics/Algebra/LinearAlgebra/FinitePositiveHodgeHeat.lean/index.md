# GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**35 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/LinearAlgebra/FinitePositiveHodgeHeat.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5fc34723c3dd9a8d09b3dce66f3bfa180998c0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Algebra/LinearAlgebra/FinitePositiveHodgeHeat.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [dot](declarations/dot--b1a7451d5d313987d124bb59.md) | 16 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [dot_self_nonneg](declarations/dot-self-nonneg--0b8065904711db6b0d7cdebb.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [dot_self_eq_zero_iff](declarations/dot-self-eq-zero-iff--b85145db4e49b71d374c49b3.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [diagonal](declarations/diagonal--cc4730b15507da6959f7c26c.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [diagonal_apply](declarations/diagonal-apply--8118d089dd8541d5147bb8a8.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [positiveDiagonalHodge](declarations/positivediagonalhodge--6f607ebbf8214684dc60ab3f.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [diagonal_adjoint](declarations/diagonal-adjoint--f505b6d3fa035af659705538.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [positiveDiagonalHodge_laplacian0_apply](declarations/positivediagonalhodge-laplacian0-apply--60a202dd790feb48916c03ef.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [positiveDiagonalHodge_laplacian1_apply](declarations/positivediagonalhodge-laplacian1-apply--a5e7ba4385ca5241fa85fdd7.md) | 74 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [energy](declarations/energy--138cb864ed1c851d714f7cc1.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [energy_nonneg](declarations/energy-nonneg--e1e294131c7f7b19885b6b9d.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [energy_eq_zero_iff](declarations/energy-eq-zero-iff--4c97c925ff0171c7d47384b2.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [harmonic0_iff_delta_eq_zero](declarations/harmonic0-iff-delta-eq-zero--0ab48ba5b55956e3339de7fb.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [harmonic0_iff_eq_zero](declarations/harmonic0-iff-eq-zero--25e2dbeeea03704690878347.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [functionalCalculus](declarations/functionalcalculus--f3d0f95cc33eef7023a11c8a.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [functionalCalculus_one](declarations/functionalcalculus-one--be85014432e611fdcd3689d0.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [functionalCalculus_mul](declarations/functionalcalculus-mul--6d9ffd7ebaed48b6b9f1d81a.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [heat](declarations/heat--331509e00a1d1b8a5e9d2266.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [heat_zero](declarations/heat-zero--15ec3be2d22a97f240288120.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [heat_add](declarations/heat-add--13e64b01ebce5a48fc6685d4.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [heat_laplacian0_comm](declarations/heat-laplacian0-comm--c5260552d9971ab9f08fb1ab.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [heat_fixed_of_harmonic](declarations/heat-fixed-of-harmonic--73c27980cfea8fbf8dda8619.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [heat_contracts](declarations/heat-contracts--a754df300d2a18409b3c3d3f.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [maskProjector](declarations/maskprojector--68d68edb95d881f9bc189e9b.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [complementMask](declarations/complementmask--4e3c1269a4382b76621b6238.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [maskProjector_apply](declarations/maskprojector-apply--cc29b84871db72a6c674ec74.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [maskProjector_idempotent](declarations/maskprojector-idempotent--a0c81f9677d1f9932ba86990.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [maskProjector_add_complement](declarations/maskprojector-add-complement--2b67aa4776c4fab8127d5624.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mask_complement_orthogonal](declarations/mask-complement-orthogonal--6cea6001ad2f2d7dfa739557.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [maskProjector_delta_comm](declarations/maskprojector-delta-comm--efec9c9e3275abe03735a6d7.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [coordinateHodgeProjector](declarations/coordinatehodgeprojector--21f50aa84e31e68a542222cc.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [energy_mask_split](declarations/energy-mask-split--6aa84caccbce1f154bac0d2c.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [heat_maskProjector_comm](declarations/heat-maskprojector-comm--0b3cf0dc0652db70245e376c.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [heat_mask_split](declarations/heat-mask-split--7e6ea3cfcd76fa37b74fcb01.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [diagonal_heat_comm](declarations/diagonal-heat-comm--c7955f7ad4f8d191ce21fed5.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
