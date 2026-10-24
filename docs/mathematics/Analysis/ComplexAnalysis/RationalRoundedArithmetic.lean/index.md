# GRWTSK.Analysis.Complex.RationalRoundedArithmetic

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 15 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalRoundedArithmetic.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `04e70686faca9ef625b310d3abce194153c705ab`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/RationalRoundedArithmetic.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [QComplex](declarations/qcomplex--5598ffddbcd0d6888ccd48dd.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [zero](declarations/zero--9d3218a74635000c9aa53b60.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [one](declarations/one--c5d7e5f67e36ddd792ed194f.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [add](declarations/add--2085f2e6bf66a759841fb7a8.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [mul](declarations/mul--ac03092460e63cde66035e94.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [smul](declarations/smul--830e10cba8086b03ddf78979.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [pow](declarations/pow--acbdebd6853b41b660876c6a.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [rect](declarations/rect--1f5839d30224a25346108e02.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [polynomial](declarations/polynomial--878179ccc7a8db2da9327f89.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [embed](declarations/embed--1f031d5baf4080654a91476c.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [embed_zero](declarations/embed-zero--fcef31db29fac98d3df6a747.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [embed_one](declarations/embed-one--d2b51792e7eaa1cc33cd9137.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [embed_add](declarations/embed-add--b95dee8ccb0be1f4ac93e1c8.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [embed_mul](declarations/embed-mul--bf14830aa39f310d3d9b7e9d.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [embed_smul](declarations/embed-smul--e15dbc019117a7c8517e33e5.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [embed_pow](declarations/embed-pow--bbc555a80f3188dd623a2968.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [cast_rect](declarations/cast-rect--c5cd89c1f9750896eaea6e57.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [embed_polynomial](declarations/embed-polynomial--16f06e3761a973304284b0c4.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [scaleQ](declarations/scaleq--69b8d386b6837b33f881fab5.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [downQ](declarations/downq--28e41a1f8a85befc8c25de9e.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [upQ](declarations/upq--a01f88ef32081ff534996c03.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [roundoffQ](declarations/roundoffq--d46c2afdd1dd60522fc88dcc.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [quantizeQ](declarations/quantizeq--e5a436ca9fc35f505f10fa55.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `structure` | [State](declarations/state--17bec2d4f214eb81caff87ad.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [initialState](declarations/initialstate--63ea48add93cbb1a53a3e05c.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [step](declarations/step--5065e6a931e95515c1e95a6e.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [run](declarations/run--92f0317676fc3c1006141987.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [cast_scaleQ](declarations/cast-scaleq--fe012188ec01293e1d2d6548.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [cast_downQ](declarations/cast-downq--454278817d3fc3aa0f04ca2f.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [cast_upQ](declarations/cast-upq--1d905fbfee946bbd4af54733.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [cast_roundoffQ](declarations/cast-roundoffq--4b615ba2fdd91ed30eeb03ef.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [embed_quantizeQ](declarations/embed-quantizeq--83828b5a1640d14377390071.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [run_refines](declarations/run-refines--c91a470f600fa64c58b6af6f.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [run_sound](declarations/run-sound--eb227ec114abc168d876b122.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
