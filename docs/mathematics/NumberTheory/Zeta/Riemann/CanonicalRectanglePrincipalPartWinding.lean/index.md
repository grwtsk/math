# GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectanglePrincipalPartWinding

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**27 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `807b9cc5c0a74f22c51232ac068d7a354cacc0b5`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectanglePrincipalPartWinding.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [unitPole](declarations/unitpole--1753f08dea8d7cd341e37525.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [RectangleBoundaryIntegrable](declarations/rectangleboundaryintegrable--7167f5a1f0c11cb39a05ff07.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [zero](declarations/zero--ab6f0f1854f54c5fb00b7f20.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [add](declarations/add--d19b580bac424c654db3706c.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [const_mul](declarations/const-mul--e4e1da89c6fdf6a910495502.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [neg](declarations/neg--65402dfd0a06cd62391b5c11.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [finsetSum](declarations/finsetsum--4ce787e3ec4bb8e173bc8f9b.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [rectangleBoundaryIntegral_add](declarations/rectangleboundaryintegral-add--744f100aa77763daa2bf3a46.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rectangleBoundaryIntegral_const_mul](declarations/rectangleboundaryintegral-const-mul--ce8d90299bfbbff64dee5f4a.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rectangleBoundaryIntegral_finsetSum](declarations/rectangleboundaryintegral-finsetsum--8f1efd0a185aa7246cbefb6d.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [mem_openRectangle_iff](declarations/mem-openrectangle-iff--1ef659630bda9fcab7c50d45.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [interior_subset_openRectangle](declarations/interior-subset-openrectangle--f5804af751a067a4231cc088.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [nontrivial_mem_openRectangle](declarations/nontrivial-mem-openrectangle--cd859caacfe8db6d2266bb33.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [trivial_mem_openRectangle](declarations/trivial-mem-openrectangle--15101d1b31cdf9df0fb62d5e.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [one_mem_openRectangle](declarations/one-mem-openrectangle--6ac1532771461327d58a3958.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [unitPole_boundaryIntegrable](declarations/unitpole-boundaryintegrable--3d05fbb8559e5bbfe2092bc0.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [RectangleUnitPoleWindingCertificate](declarations/rectangleunitpolewindingcertificate--30bad044b9bef1b5f4de085f.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [nontrivial_boundaryIntegrable](declarations/nontrivial-boundaryintegrable--73f89f64643a2cbe13c650aa.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [trivial_boundaryIntegrable](declarations/trivial-boundaryintegrable--2c9f31ed34a5cb3d100c11e4.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [pole_boundaryIntegrable](declarations/pole-boundaryintegrable--72ef7d7ded791bef3412cf62.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [principalPart_boundaryIntegrable](declarations/principalpart-boundaryintegrable--7496a56539c8ea78094698dd.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [nontrivial_principalPart_integral](declarations/nontrivial-principalpart-integral--f5f834533034bb6b9617636e.md) | 271 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [trivial_principalPart_integral](declarations/trivial-principalpart-integral--4699175ac4accf7f9939b8cd.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [pole_principalPart_integral](declarations/pole-principalpart-integral--0c91c051c0135468b18831ed.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [principal_part_integral](declarations/principal-part-integral--b86ffdcb7bf91a3a12ff0b5f.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [toPrincipalPartWindingCertificate](declarations/toprincipalpartwindingcertificate--2eca3aebc84737dd2bccd9a8.md) | 375 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bottom_boundary_not_open_fixture](declarations/bottom-boundary-not-open-fixture--8f0e646adecb2de7f9df96d8.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
