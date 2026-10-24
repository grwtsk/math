# GRWTSK.Algebra.LinearAlgebra.Basis.Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `97e66729147e79bd440f7a386139b3a0ec5137b7`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/Basis/Variant4184a9b649f42d8175b2bdd39359e765489f1052d61c0009d1dd1d0636a2a659.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [Basis.toMatrix](declarations/basis-tomatrix--423e4e5772ae12f3125b835c.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMatrix_apply](declarations/tomatrix-apply--5097417e98b66f842ce8902d.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMatrix_transpose_apply](declarations/tomatrix-transpose-apply--85a48288af1758861ab2d23b.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](declarations/tomatrix-eq-tomatrix-constr--7be7131f0de545e3feed4155.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](declarations/coepibasisfun-tomatrix-eq-transpose--c252273b553ae78630610498.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMatrix_self](declarations/tomatrix-self--433ea310af84f593bbf3f9e0.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMatrix_update](declarations/tomatrix-update--369c432bacadfb14508e09c5.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMatrix_unitsSMul](declarations/tomatrix-unitssmul--2fab76c817291e013d0dcce8.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMatrix_isUnitSMul](declarations/tomatrix-isunitsmul--5be7a2fadc99a79ef0f1a032.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMatrix_smul_left](declarations/tomatrix-smul-left--7c09d781659d47fe99800cb7.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_toMatrix_smul_self](declarations/sum-tomatrix-smul-self--2c97dc386d841b887bfeea65.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_smul](declarations/tomatrix-smul--7d0591c17c9519219733ea55.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_map_vecMul](declarations/tomatrix-map-vecmul--e769aecb0ef921a0a3b8232d.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toLin_toMatrix](declarations/tolin-tomatrix--71c1cfb9e213e8fb94f6fcbd.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toMatrixEquiv](declarations/tomatrixequiv--71ba18795bf0efe33b4bb29c.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrictScalars_toMatrix](declarations/restrictscalars-tomatrix--c5a8eea9defe4e0fa6f7b9b4.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](declarations/linearmap-tomatrix-id-eq-basis-tomatrix--ec3d507727576de073f33894.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix--ef41955000f9b1fe02b9f801.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basis_toMatrix_mul](declarations/basis-tomatrix-mul--4e84ce7ef7ac1a2e6cbad3be.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix--3340a62101f3d0e44b330e97.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--61e2e6cdc1a52ec497422aeb.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_basis_toMatrix](declarations/mul-basis-tomatrix--69a7e86afc788549ea7a03cf.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](declarations/basis-tomatrix-basisfun-mul--9efbc4c29251b0a1138d0f6c.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [Basis.toMatrix_reindex'](declarations/basis-tomatrix-reindex--8cd66f01ca9e9ae6257b795e.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [Basis.toMatrix_mulVec_repr](declarations/basis-tomatrix-mulvec-repr--b4c8bc584d5e2d8d27a1a4db.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [Basis.toMatrix_mul_toMatrix](declarations/basis-tomatrix-mul-tomatrix--b5d11aa6c022584eab333eab.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [Basis.toMatrix_mul_toMatrix_flip](declarations/basis-tomatrix-mul-tomatrix-flip--661cbd843493fc7f9b9e8d5a.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [Basis.invertibleToMatrix](declarations/basis-invertibletomatrix--61110c6ccc870ac9313b6dd0.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [Basis.toMatrix_reindex](declarations/basis-tomatrix-reindex--1ad7986eb4b22a97b6729ac9.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [Basis.toMatrix_map](declarations/basis-tomatrix-map--2d4bc782222f81f0ea475433.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
