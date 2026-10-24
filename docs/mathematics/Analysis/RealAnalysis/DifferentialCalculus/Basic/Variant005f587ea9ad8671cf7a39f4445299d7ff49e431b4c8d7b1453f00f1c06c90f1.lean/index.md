# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant005f587ea9ad8671cf7a39f4445299d7ff49e431b4c8d7b1453f00f1c06c90f1

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**59 observed declarations and anonymous commands**, 54 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant005f587ea9ad8671cf7a39f4445299d7ff49e431b4c8d7b1453f00f1c06c90f1.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `836221ccf300c356df90b1fc8843319183e49e0f`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant005f587ea9ad8671cf7a39f4445299d7ff49e431b4c8d7b1453f00f1c06c90f1.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](declarations/hasgradientatfilter--5f1211588437b23c7318e7e2.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasGradientWithinAt](declarations/hasgradientwithinat--226b0e45ab4405b9bf72567c.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasGradientAt](declarations/hasgradientat--e754f085211cff61423a09a9.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gradientWithin](declarations/gradientwithin--13b5397f88f89b165d8f4fee.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gradient](declarations/gradient--eda51c098f497c718103935c.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](declarations/hasgradientwithinat-iff-hasfderivwithinat--6fc7ae7e049d52fd623d7e22.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](declarations/hasfderivwithinat-iff-hasgradientwithinat--eee338916dfc5593f0e081b1.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](declarations/hasgradientat-iff-hasfderivat--5a38891f13b0ec88146ca410.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](declarations/hasfderivat-iff-hasgradientat--f3c3085ed32c623edcecbbcf.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](declarations/gradient-eq-zero-of-not-differentiableat--66d92dd51c4eb79236b9947a.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [HasGradientAt.unique](declarations/hasgradientat-unique--fb75d7f3d3e966da0fac8c75.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [DifferentiableAt.hasGradientAt](declarations/differentiableat-hasgradientat--0b385acd9a1afc45330d182f.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [HasGradientAt.differentiableAt](declarations/hasgradientat-differentiableat--14b03fc6be0f531e012c02b0.md) | 124 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](declarations/differentiablewithinat-hasgradientwithinat--cc0b210fbab75f2fc458ef55.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](declarations/hasgradientwithinat-differentiablewithinat--821c7b4e5a152a3513b3bb00.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [hasGradientWithinAt_univ](declarations/hasgradientwithinat-univ--90fc99c1bfc899977f1b397a.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [DifferentiableOn.hasGradientAt](declarations/differentiableon-hasgradientat--d340f7a6ce75e679005470b4.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [HasGradientAt.gradient](declarations/hasgradientat-gradient--42a3ed76b176d3405da78995.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [gradient_eq](declarations/gradient-eq--802c100345185166e041b3f4.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](declarations/hasgradientatfilter-hasderivatfilter--5926faf07fbd6923f9612346.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](declarations/hasderivatfilter-hasgradientatfilter--f5b2688af8a50a661b5be69c.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [HasGradientAt.hasDerivAt](declarations/hasgradientat-hasderivat--9cd4b587baa76f01d496edc2.md) | 169 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasDerivAt.hasGradientAt](declarations/hasderivat-hasgradientat--dcabcb1d91f6f7aa54026514.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gradient_eq_deriv](declarations/gradient-eq-deriv--658005ca9ea71ac77155003c.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](declarations/hasgradientatfilter-hasderivatfilter--dea602c5fd282caf56e37ed8.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](declarations/hasderivatfilter-hasgradientatfilter--aaf7b43b12ba824680b6eec6.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt'](declarations/hasgradientat-hasderivat--02c28bebe26eebd903e3e45c.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt'](declarations/hasderivat-hasgradientat--859c012bce4e00d1edd801b0.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gradient_eq_deriv'](declarations/gradient-eq-deriv--4fec261640c040d4657c8846.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [hasGradientAtFilter_iff_isLittleO](declarations/hasgradientatfilter-iff-islittleo--df78a226d4679d6d519b0a17.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [hasGradientWithinAt_iff_isLittleO](declarations/hasgradientwithinat-iff-islittleo--50c20e421326d80e57eceea1.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [hasGradientWithinAt_iff_tendsto](declarations/hasgradientwithinat-iff-tendsto--d7d52189fc0cb38094db7b71.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [hasGradientAt_iff_isLittleO](declarations/hasgradientat-iff-islittleo--399b771952798aebb255d94b.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [hasGradientAt_iff_tendsto](declarations/hasgradientat-iff-tendsto--dd50eafdfe665b9295e2a917.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [HasGradientAtFilter.isBigO_sub](declarations/hasgradientatfilter-isbigo-sub--4f4e094db2e66a408457326b.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasGradientWithinAt_congr_set'](declarations/hasgradientwithinat-congr-set--1e6dc1009c2a984b722208a1.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasGradientWithinAt_congr_set](declarations/hasgradientwithinat-congr-set--91c9c3f54fb8264ba45a9b55.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](declarations/hasgradientat-iff-islittleo-nhds-zero--f05a0affab5d051c07541861.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](declarations/filter-eventuallyeq-hasgradientatfilter-iff--e4d514da0439bd6559a7bcea.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](declarations/hasgradientatfilter-congr-of-eventuallyeq--6cd841a095536878153d6c9f.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [HasGradientWithinAt.congr_mono](declarations/hasgradientwithinat-congr-mono--62fcec0135172d57815a5215.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [HasGradientWithinAt.congr](declarations/hasgradientwithinat-congr--69bde2560ab4a58ed8ee2015.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [HasGradientWithinAt.congr_of_mem](declarations/hasgradientwithinat-congr-of-mem--b27b1babeaf43cb974eaa572.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](declarations/hasgradientwithinat-congr-of-eventuallyeq--6dfab64e7c73ef79ae78a377.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem--e7ac5ec78794480e402c753a.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](declarations/hasgradientat-congr-of-eventuallyeq--37af10de53dd18e3d9a544ef.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [Filter.EventuallyEq.gradient_eq](declarations/filter-eventuallyeq-gradient-eq--709fa9f3b4b58f884067f440.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [Filter.EventuallyEq.gradient](declarations/filter-eventuallyeq-gradient--992d920920b5fca7b9bfa4bc.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [hasGradientAtFilter_const](declarations/hasgradientatfilter-const--a96a419e488ce6b09b8793e4.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [hasGradientWithinAt_const](declarations/hasgradientwithinat-const--8999a69415c5e7efa020139d.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [hasGradientAt_const](declarations/hasgradientat-const--230d793c44d5b1cb8818fac3.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [gradient_fun_const](declarations/gradient-fun-const--3f0a111e9e3547b2b014efce.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [gradient_const](declarations/gradient-const--315cb132efe0f388d4c3f730.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [gradient_fun_const'](declarations/gradient-fun-const--1b806ede3cd67b19c046c51c.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [gradient_const'](declarations/gradient-const--b365098b560c5d8c5aa918af.md) | 323 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasGradientAtFilter.tendsto_nhds](declarations/hasgradientatfilter-tendsto-nhds--91bd4bd6efe386b0c3ff7b59.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasGradientWithinAt.continuousWithinAt](declarations/hasgradientwithinat-continuouswithinat--379fccb0235dfda88a567782.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [HasGradientAt.continuousAt](declarations/hasgradientat-continuousat--6811f2e333ce23fae709a803.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [HasGradientAt.continuousOn](declarations/hasgradientat-continuouson--153e50376d33cec05f1f174e.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
