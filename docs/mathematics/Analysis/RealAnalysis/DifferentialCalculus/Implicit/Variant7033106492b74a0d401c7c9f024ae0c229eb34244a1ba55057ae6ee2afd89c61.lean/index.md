# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Implicit.Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**41 observed declarations and anonymous commands**, 32 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9041a0b914f7af8fb9453c954100493318e6a573`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Implicit/Variant7033106492b74a0d401c7c9f024ae0c229eb34244a1ba55057ae6ee2afd89c61.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ImplicitFunctionData](declarations/implicitfunctiondata--e83a19097259a7b783a99322.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [prodFun](declarations/prodfun--af88eb4cd42c84bdd6bc01f3.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [prodFun_apply](declarations/prodfun-apply--4feaf9601d9a76979b17568b.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [hasStrictFDerivAt](declarations/hasstrictfderivat--3a1a635b88f26a756bace12d.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [toPartialHomeomorph](declarations/topartialhomeomorph--f5a9a589b48f67430218d910.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [implicitFunction](declarations/implicitfunction--10bb782edf00e973f7e935bc.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [toPartialHomeomorph_coe](declarations/topartialhomeomorph-coe--1a265d904f1865ad7489684d.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [toPartialHomeomorph_apply](declarations/topartialhomeomorph-apply--d4a46039f92181abeba58781.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pt_mem_toPartialHomeomorph_source](declarations/pt-mem-topartialhomeomorph-source--7df55ffca6752ca9209e934b.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [map_pt_mem_toPartialHomeomorph_target](declarations/map-pt-mem-topartialhomeomorph-target--2cc57082283f974e014702a0.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [prod_map_implicitFunction](declarations/prod-map-implicitfunction--2c9fef17151af2ddd4e64613.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [left_map_implicitFunction](declarations/left-map-implicitfunction--752d95db586dbed2b10bdcaf.md) | 172 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [right_map_implicitFunction](declarations/right-map-implicitfunction--84167085e01d67e7e9889944.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [implicitFunction_apply_image](declarations/implicitfunction-apply-image--e6532af31628629b2d6179fc.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [map_nhds_eq](declarations/map-nhds-eq--9b1d5d25da16ba513e88c6c5.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [implicitFunction_hasStrictFDerivAt](declarations/implicitfunction-hasstrictfderivat--ff7d8190d9fe1e41786deb2f.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [implicitFunctionDataOfComplemented](declarations/implicitfunctiondataofcomplemented--9a3aa3b157cf22d4284752f4.md) | 230 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [implicitToPartialHomeomorphOfComplemented](declarations/implicittopartialhomeomorphofcomplemented--971fea093218d6e6acfef605.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [implicitFunctionOfComplemented](declarations/implicitfunctionofcomplemented--dbcabfe705d4e6ec3ca49d20.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [implicitToPartialHomeomorphOfComplemented_fst](declarations/implicittopartialhomeomorphofcomplemented-fst--c5779acdbff67b508fc5947a.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply](declarations/implicittopartialhomeomorphofcomplemented-apply--8ee95f2ce8bc288a5f021868.md) | 263 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [implicitToPartialHomeomorphOfComplemented_apply_ker](declarations/implicittopartialhomeomorphofcomplemented-apply-ker--ae6633bc04a0eabdcfb2c46a.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [implicitToPartialHomeomorphOfComplemented_self](declarations/implicittopartialhomeomorphofcomplemented-self--ccaa363b8b8a8ca90f0a1ec0.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_source](declarations/mem-implicittopartialhomeomorphofcomplemented-source--b4e79cbf9cfc93ca2f0450bc.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [mem_implicitToPartialHomeomorphOfComplemented_target](declarations/mem-implicittopartialhomeomorphofcomplemented-target--46db3f597d62809faba6aa02.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [map_implicitFunctionOfComplemented_eq](declarations/map-implicitfunctionofcomplemented-eq--fb49fcfca4de274dc09b6e8a.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [eq_implicitFunctionOfComplemented](declarations/eq-implicitfunctionofcomplemented--44050f94ddc7989b4e40aac2.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [implicitFunctionOfComplemented_apply_image](declarations/implicitfunctionofcomplemented-apply-image--c31ebe1be7b2d7ca45c4cb9a.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [to_implicitFunctionOfComplemented](declarations/to-implicitfunctionofcomplemented--4b60817b8404b7c776f36de7.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [implicitToPartialHomeomorph](declarations/implicittopartialhomeomorph--58673f13382a885cb04149e5.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [implicitFunction](declarations/implicitfunction--a53da35acadb87e8d888414a.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [implicitToPartialHomeomorph_fst](declarations/implicittopartialhomeomorph-fst--53ae2f87e22c983bcf1d023a.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [implicitToPartialHomeomorph_apply_ker](declarations/implicittopartialhomeomorph-apply-ker--874ad82f59dd0ce5e00f2a93.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [implicitToPartialHomeomorph_self](declarations/implicittopartialhomeomorph-self--7f54bd2275c9d3349e3359d8.md) | 388 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [mem_implicitToPartialHomeomorph_source](declarations/mem-implicittopartialhomeomorph-source--4eae111d4cc4875ddd45cba1.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [mem_implicitToPartialHomeomorph_target](declarations/mem-implicittopartialhomeomorph-target--9a0f61fa1bbf66ab50829e0e.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [tendsto_implicitFunction](declarations/tendsto-implicitfunction--5368c049d98616d17ca38d2f.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [map_implicitFunction_eq](declarations/map-implicitfunction-eq--3b290dfb1f27c1f5c83ec63f.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [implicitFunction_apply_image](declarations/implicitfunction-apply-image--4ce30c3e3d46bafe0eeda295.md) | 421 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [eq_implicitFunction](declarations/eq-implicitfunction--ab6a0824f9bf8103de8154f7.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [to_implicitFunction](declarations/to-implicitfunction--24dfffd3a0a09eeb88aede31.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
