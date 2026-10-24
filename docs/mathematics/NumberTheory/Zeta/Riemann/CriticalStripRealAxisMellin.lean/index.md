# GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**29 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5fa4ad7768bf7b32bb2748fe300da02c4c9d2e42`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripRealAxisMellin.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [realFractionalKernel](declarations/realfractionalkernel--84c5a73b2f192b105d42acd9.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [fractionalKernel](declarations/fractionalkernel--f2f8b169ce1d96f07ad7656f.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [realFractionalKernel_nonneg](declarations/realfractionalkernel-nonneg--523afc8193e301fec046aa68.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [realFractionalKernel_le_one](declarations/realfractionalkernel-le-one--45f7af4203cd67957e35c0d7.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [fractionalKernel_norm_le_one](declarations/fractionalkernel-norm-le-one--164b7a1ecc9f932794a9b6f4.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [realFractionalKernel_measurable](declarations/realfractionalkernel-measurable--8a2f232ecb0bd59aaaf3329f.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `lemma` | [fractionalKernel_measurable](declarations/fractionalkernel-measurable--1b374ac5dcbedc5289830a3d.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `lemma` | [fractionalKernel_locallyIntegrable](declarations/fractionalkernel-locallyintegrable--38f3c5e3eb167db0a7139d2b.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [fractionalKernel_isBigO_top](declarations/fractionalkernel-isbigo-top--3f85e14391806685a8904058.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [fractionalKernel_isBigO_zero](declarations/fractionalkernel-isbigo-zero--bd64ac408774ed6d643197cf.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [fractionalMellin](declarations/fractionalmellin--6cd050db6ba6827ebe3f57f3.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [fractionalMellin_convergent](declarations/fractionalmellin-convergent--d95345ed8cc6f73632fc4c05.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [fractionalMellin_differentiableAt](declarations/fractionalmellin-differentiableat--54b11d447c3df506e4f29c8d.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [fractionalMellin_eq_integral](declarations/fractionalmellin-eq-integral--1ab9423759ea7c947c9571e5.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `lemma` | [fractionalMellin_integrable](declarations/fractionalmellin-integrable--4e8174794c6800c005e543da.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `lemma` | [complex_one_sum_Icc](declarations/complex-one-sum-icc--83a8a616e71834c408ff216c.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `lemma` | [zeta_eq_floor_integral](declarations/zeta-eq-floor-integral--30d219c3967ed8cd1c9d3c29.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [real_mul_cpow_sub_one](declarations/real-mul-cpow-sub-one--1071b639437923a790d917cd.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [floor_integral_eq](declarations/floor-integral-eq--a8a770457df07202827f9e85.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [fractionalPoleModel](declarations/fractionalpolemodel--2817dc4589b2af6d196c124e.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [fractionalPoleModel_differentiableAt](declarations/fractionalpolemodel-differentiableat--a34de77b6fb734c437cfca13.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [poleNormalized_eq_fractional_of_one_lt](declarations/polenormalized-eq-fractional-of-one-lt--3a663575dcc583ea792eca6e.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [poleNormalized_eq_fractional](declarations/polenormalized-eq-fractional--492008814ee2adf61a7af006.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [fractionalMellin_re_nonneg](declarations/fractionalmellin-re-nonneg--983e724149aa588baec6c548.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [real_le_poleNormalized_re](declarations/real-le-polenormalized-re--613c29f9409c1fe21411e553.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [riemannZeta_re_neg_on_real_critical_interval](declarations/riemannzeta-re-neg-on-real-critical-interval--e8261e96835a4ebea2d2c575.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [nontrivialZetaZero_im_ne_zero](declarations/nontrivialzetazero-im-ne-zero--ba871ceadd1fdbc4464edba1.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [windowRH_zero](declarations/windowrh-zero--b57218bc947b02fb911bebc0.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [rh_of_all_source_patch_covers](declarations/rh-of-all-source-patch-covers--6fff50255820187ba84c0085.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
