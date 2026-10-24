# GRWTSK.Algebra.LinearAlgebra.Basis.Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**31 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `72def924832a5de8d4caf8c0631a780ba19f1cdd`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LinearAlgebra/Basis/Variant9a9387c79c5dea1e27602eb8213e7c2f06efbe2c15c0072e6a83a0a2b9055360.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [toMatrix](declarations/tomatrix--e46aafa9330fc3c526cd2161.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [toMatrix_apply](declarations/tomatrix-apply--bfb2d1691f3d2471e253cfa6.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [toMatrix_transpose_apply](declarations/tomatrix-transpose-apply--e44f7411fa8c93440430114d.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [toMatrix_eq_toMatrix_constr](declarations/tomatrix-eq-tomatrix-constr--f44638bd9fc52174421866df.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [coePiBasisFun.toMatrix_eq_transpose](declarations/coepibasisfun-tomatrix-eq-transpose--ed27237de8195c5ba88af9d3.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [toMatrix_self](declarations/tomatrix-self--d1dbb07f4acc1ba179a72117.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toMatrix_update](declarations/tomatrix-update--82137bd8fb7e270e52d0241d.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toMatrix_unitsSMul](declarations/tomatrix-unitssmul--eef5058b06e0792bd2c68bd8.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [toMatrix_isUnitSMul](declarations/tomatrix-isunitsmul--7b160001648548463017da87.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [toMatrix_smul_left](declarations/tomatrix-smul-left--2c71ac96431cf0eefc1914dd.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [sum_toMatrix_smul_self](declarations/sum-tomatrix-smul-self--f7012b1e734ade9e9ab1af16.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [toMatrix_smul](declarations/tomatrix-smul--9025bda63c5fc42380becb51.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [toMatrix_map_vecMul](declarations/tomatrix-map-vecmul--381ed200ec1a7b39b45ba35f.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [toLin_toMatrix](declarations/tolin-tomatrix--9da6ae02561363d868f35796.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [toMatrixEquiv](declarations/tomatrixequiv--d5f1dbae6a9bfd9e7a7a49c9.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [restrictScalars_toMatrix](declarations/restrictscalars-tomatrix--b32d6e76d079800ed116b7a1.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [LinearMap.toMatrix_id_eq_basis_toMatrix](declarations/linearmap-tomatrix-id-eq-basis-tomatrix--7a7d07e47991856c19e56f94.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix--4750287230c44c2df5baafef.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [basis_toMatrix_mul](declarations/basis-tomatrix-mul--c7fffc6ccdc81f95470776f0.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [linearMap_toMatrix_mul_basis_toMatrix](declarations/linearmap-tomatrix-mul-basis-tomatrix--6b130649e319b4b16317a0db.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [basis_toMatrix_mul_linearMap_toMatrix_mul_basis_toMatrix](declarations/basis-tomatrix-mul-linearmap-tomatrix-mul-basis-tomatrix--54b7419d0a053f9c5ed47a57.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [mul_basis_toMatrix](declarations/mul-basis-tomatrix--9e1d21e95e9590de8e109d5e.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [basis_toMatrix_basisFun_mul](declarations/basis-tomatrix-basisfun-mul--192d4948bade2e623de5a96f.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [toMatrix_reindex'](declarations/tomatrix-reindex--8a721454612a8f06723e1ac5.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `lemma` | [toMatrix_mulVec_repr](declarations/tomatrix-mulvec-repr--563ecac17720e01d3da1bef5.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [toMatrix_mul_toMatrix](declarations/tomatrix-mul-tomatrix--17385a6515304b7509322f0e.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [toMatrix_mul_toMatrix_flip](declarations/tomatrix-mul-tomatrix-flip--0b9da9baebe8c8a76075d710.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [invertibleToMatrix](declarations/invertibletomatrix--969d57cf82828cbf40210666.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [toMatrix_reindex](declarations/tomatrix-reindex--eb6240925a99b64adf378400.md) | 264 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [toMatrix_map](declarations/tomatrix-map--9e7c9a1dc0a5f61c08f37587.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `lemma` | [_root_.LinearMap.toMatrix_eq_basisToMatrix](declarations/root-linearmap-tomatrix-eq-basistomatrix--1e3b118916d2996cb1f14746.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
