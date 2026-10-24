# GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f91ce48dd90bb849bddb1a5c01f10a18ba20354`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [bottomPoint](declarations/bottompoint--6cd955faf12cc96de825ee17.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [rightPoint](declarations/rightpoint--6e4215eb0dbf68cfb21d37bc.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [topPoint](declarations/toppoint--13fefc49517044653d2e6c79.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [rectangleLeftPoint](declarations/rectangleleftpoint--6102bfdefaf50de13c2f920a.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [bottomPoint_re](declarations/bottompoint-re--42586db01f5212c56733d713.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [bottomPoint_im](declarations/bottompoint-im--b2fa6121a946791f827acdbf.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [topPoint_re](declarations/toppoint-re--a73bf06a1238be8939f62579.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [topPoint_im](declarations/toppoint-im--c5513ed6f1f6b34c21993c04.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [rightPoint_re](declarations/rightpoint-re--6a136ea3aa801297e2f6185f.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [rightPoint_im](declarations/rightpoint-im--564ea8c34a8d1633bed967ab.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [rectangleLeftPoint_re](declarations/rectangleleftpoint-re--085d3eb9e3b3e29624f450d6.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [rectangleLeftPoint_im](declarations/rectangleleftpoint-im--e1441558123b77bf4fa3b598.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bottomPoint_mem_boundary](declarations/bottompoint-mem-boundary--c98cd6b3644db2ebf8c114ca.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [topPoint_mem_boundary](declarations/toppoint-mem-boundary--bde01e765407a238203cfe38.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [rightPoint_mem_boundary](declarations/rightpoint-mem-boundary--e08a558d2642b6d068c716fa.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [rectangleLeftPoint_mem_boundary](declarations/rectangleleftpoint-mem-boundary--d5a6d5d6986d5131574e57a3.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [zeta_ne_zero_bottom](declarations/zeta-ne-zero-bottom--fc724068ee9486e9c0dc6285.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [zeta_ne_zero_top](declarations/zeta-ne-zero-top--4d18873e9058ac90f49519fb.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [zeta_ne_zero_right](declarations/zeta-ne-zero-right--081904ffaf90d88b1ca132f5.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [zeta_ne_zero_left](declarations/zeta-ne-zero-left--85b70717587e4988b3328589.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bottomPoint_ne_one](declarations/bottompoint-ne-one--fc7d64691dc79fcbb0564efc.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [topPoint_ne_one](declarations/toppoint-ne-one--8d5bd77adb57a3b872675081.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [rightPoint_ne_one](declarations/rightpoint-ne-one--781cf405edee88942743d9fd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [rectangleLeftPoint_ne_one](declarations/rectangleleftpoint-ne-one--817b0f25b0ccc86993ac543c.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [rectangleLogDerivativeIntegral](declarations/rectanglelogderivativeintegral--9f84d10b61344ee070e0593d.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [normalizedRectangleIndex](declarations/normalizedrectangleindex--74be5f4c8e0b5577631f2821.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [expectedRectangleIndex](declarations/expectedrectangleindex--b6a15a3977688d3cd8d2e7d6.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [expectedRectangleIndex_eq_two_positive_add_trivial_sub_pole](declarations/expectedrectangleindex-eq-two-positive-add-trivial-sub-pole--0535c8f574eb5c86326c3744.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [recoverPositiveCount](declarations/recoverpositivecount--7ecc10af6d1b1cd874156394.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [recoverPositiveCount_expected](declarations/recoverpositivecount-expected--f8a0032082529c8752b64b6a.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [positiveCountInterval](declarations/positivecountinterval--ebefc2a5dd5444d30ee2155b.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [cast_positiveCountInterval_lower](declarations/cast-positivecountinterval-lower--f26f198764d7743f1ae62d74.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [cast_positiveCountInterval_upper](declarations/cast-positivecountinterval-upper--3b4f3dc283429c803d9e14d6.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [CanonicalRectangleIndexEnclosure](declarations/canonicalrectangleindexenclosure--5a6deb3527d1d24a739ca9db.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [normalized_re_eq_expected](declarations/normalized-re-eq-expected--f81def90fab3b624a7f0d324.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [normalized_im_eq_zero](declarations/normalized-im-eq-zero--41a96806d6409ce5df3e371f.md) | 260 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [toCanonicalCountEnclosure](declarations/tocanonicalcountenclosure--2e12bd9ec8343fb903aa789b.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [accepts](declarations/accepts--69b0aa7d74a4e92480a243f7.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [accepts_iff](declarations/accepts-iff--83dc9888e24345f4229437a8.md) | 288 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [exact_positive_count_of_accepts](declarations/exact-positive-count-of-accepts--9f8767eec590d9e11a5950f0.md) | 298 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [accepted_count_unique](declarations/accepted-count-unique--72a58d125a1224339d606c51.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [pole_trivial_two_sign_correction_fixture](declarations/pole-trivial-two-sign-correction-fixture--2a7088fd71c0ab566ba00792.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [omitted_pole_shifts_by_half_fixture](declarations/omitted-pole-shifts-by-half-fixture--85adaa463b7889ff1e2fe002.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
