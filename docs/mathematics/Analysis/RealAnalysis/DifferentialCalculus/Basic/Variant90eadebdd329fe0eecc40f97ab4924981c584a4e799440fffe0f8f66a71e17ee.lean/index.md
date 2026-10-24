# GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Basic.Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**70 observed declarations and anonymous commands**, 65 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c6bd287fbdc4988f8d71fa1f39f8d0b7cad0f39`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Basic/Variant90eadebdd329fe0eecc40f97ab4924981c584a4e799440fffe0f8f66a71e17ee.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [HasGradientAtFilter](declarations/hasgradientatfilter--484f5864c03b6beb173b33bb.md) | 67 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [HasGradientWithinAt](declarations/hasgradientwithinat--33d4f8321bf7c119eb5a99d0.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [HasGradientAt](declarations/hasgradientat--a4f4de757f141f1d05b29a80.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [gradientWithin](declarations/gradientwithin--4433ec7c982bafdcf28c7228.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [gradient](declarations/gradient--674169f4c03cde5e381238d4.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [hasGradientWithinAt_iff_hasFDerivWithinAt](declarations/hasgradientwithinat-iff-hasfderivwithinat--968cf3f73232616e33dab45e.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [hasFDerivWithinAt_iff_hasGradientWithinAt](declarations/hasfderivwithinat-iff-hasgradientwithinat--c47639d8de249b0a3dfa1134.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [hasGradientAt_iff_hasFDerivAt](declarations/hasgradientat-iff-hasfderivat--d1ccdf46d232fd06dc618caa.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [hasFDerivAt_iff_hasGradientAt](declarations/hasfderivat-iff-hasgradientat--31c0f02aef149af239db89bc.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [gradient_eq_zero_of_not_differentiableAt](declarations/gradient-eq-zero-of-not-differentiableat--e018d46b1215abf025ea74b1.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [toDual_gradientWithin](declarations/todual-gradientwithin--ad66e53b0be2bfb5f3597562.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [toDual_gradient](declarations/todual-gradient--9b10ca57525be206be342620.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [toDual_comp_gradientWithin](declarations/todual-comp-gradientwithin--c6cc7fcbe6fca2076859fa18.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [toDual_comp_gradient](declarations/todual-comp-gradient--04f6b632108d4c12e216f773.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [HasGradientAt.unique](declarations/hasgradientat-unique--51c771eda330fed95a798f3f.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [DifferentiableAt.hasGradientAt](declarations/differentiableat-hasgradientat--b2a8b052373fb8c17ad91457.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [HasGradientAt.differentiableAt](declarations/hasgradientat-differentiableat--4521e10b2192fc87fbc59e5e.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [DifferentiableWithinAt.hasGradientWithinAt](declarations/differentiablewithinat-hasgradientwithinat--df0df60f759d5fbbfae3fcb3.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [HasGradientWithinAt.differentiableWithinAt](declarations/hasgradientwithinat-differentiablewithinat--f258c75d386758aa89a84f1f.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasGradientWithinAt_univ](declarations/hasgradientwithinat-univ--0a1f4bd9cf76ce83e094fe3d.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [gradientWithin_univ](declarations/gradientwithin-univ--8de8321a532fdbc3dab3c026.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [DifferentiableOn.hasGradientAt](declarations/differentiableon-hasgradientat--3489c900f4c8c454cac46d06.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [HasGradientAt.gradient](declarations/hasgradientat-gradient--32c34ca73ce2cbdbfe41153a.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [gradient_eq](declarations/gradient-eq--4bc4057c72d3403e2b85a68c.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter](declarations/hasgradientatfilter-hasderivatfilter--ea7e118af6599bfcec819cd6.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter](declarations/hasderivatfilter-hasgradientatfilter--7b431ce4b557ffc4da7884dc.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [HasGradientAt.hasDerivAt](declarations/hasgradientat-hasderivat--b0c5815ee5cb084a287360e7.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [HasDerivAt.hasGradientAt](declarations/hasderivat-hasgradientat--3441586f557d9cdc2747285f.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [gradient_eq_deriv](declarations/gradient-eq-deriv--25fb0a807d6e2d08661b2dcf.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [HasGradientAtFilter.hasDerivAtFilter'](declarations/hasgradientatfilter-hasderivatfilter--5f0ffd00949a09ac61c8c8c4.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [HasDerivAtFilter.hasGradientAtFilter'](declarations/hasderivatfilter-hasgradientatfilter--1ae792fc3c2f58647da35ad6.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [HasGradientAt.hasDerivAt'](declarations/hasgradientat-hasderivat--f0ec5e30e233a3f5d5c6974e.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [HasDerivAt.hasGradientAt'](declarations/hasderivat-hasgradientat--26e7982e8626f9e53bc4ca19.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [gradient_eq_deriv'](declarations/gradient-eq-deriv--24970fcd3ffa84f73c6c3725.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [hasGradientAtFilter_iff_isLittleO](declarations/hasgradientatfilter-iff-islittleo--d36adaa01edfc30722eca6de.md) | 242 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [hasGradientWithinAt_iff_isLittleO](declarations/hasgradientwithinat-iff-islittleo--cc16f4b15ecb9d96f5ace815.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [hasGradientWithinAt_iff_tendsto](declarations/hasgradientwithinat-iff-tendsto--fef2043f91bc1126a42f2ea3.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [hasGradientAt_iff_isLittleO](declarations/hasgradientat-iff-islittleo--11ca0a79650248031854f95e.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [hasGradientAt_iff_tendsto](declarations/hasgradientat-iff-tendsto--fa18d5838fda35cff3f9a9e4.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [HasGradientAtFilter.isBigO_sub](declarations/hasgradientatfilter-isbigo-sub--1350afc0c17fa6adf5b5835d.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [hasGradientWithinAt_congr_set'](declarations/hasgradientwithinat-congr-set--fce9a5c651d5a3a1bc5f2d53.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [hasGradientWithinAt_congr_set](declarations/hasgradientwithinat-congr-set--e083726305d3fefad97a8e7b.md) | 274 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [hasGradientAt_iff_isLittleO_nhds_zero](declarations/hasgradientat-iff-islittleo-nhds-zero--457e83e89993066ed6d1e740.md) | 278 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `lemma` | [HasGradientWithinAt.fderivWithin_apply](declarations/hasgradientwithinat-fderivwithin-apply--9b0ae29e657c155b18c865c7.md) | 286 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `lemma` | [HasGradientAt.fderiv_apply](declarations/hasgradientat-fderiv-apply--891a97bb0702ddc43aa8b237.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `lemma` | [inner_gradientWithin_left](declarations/inner-gradientwithin-left--f81f93ea3485e9b3aaa7f757.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `lemma` | [inner_gradient_left](declarations/inner-gradient-left--e4bf1c9f1b344e14380c9044.md) | 301 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `lemma` | [inner_gradientWithin_right](declarations/inner-gradientwithin-right--3068569a4b2c7873fd734115.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `lemma` | [inner_gradient_right](declarations/inner-gradient-right--a7eb6ee4d77176196d88f725.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [Filter.EventuallyEq.hasGradientAtFilter_iff](declarations/filter-eventuallyeq-hasgradientatfilter-iff--14f4a590764a94d19af9ae40.md) | 321 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [HasGradientAtFilter.congr_of_eventuallyEq](declarations/hasgradientatfilter-congr-of-eventuallyeq--c9d2e7dfa1f0d6b00d5b4dab.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [HasGradientWithinAt.congr_mono](declarations/hasgradientwithinat-congr-mono--ac07a6eb92a7112757cdadef.md) | 329 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [HasGradientWithinAt.congr](declarations/hasgradientwithinat-congr--1773c769713cda4de418f9ab.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [HasGradientWithinAt.congr_of_mem](declarations/hasgradientwithinat-congr-of-mem--203b807f997d201a12aa51d6.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq](declarations/hasgradientwithinat-congr-of-eventuallyeq--5891e04f773f707c35d457e1.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [HasGradientWithinAt.congr_of_eventuallyEq_of_mem](declarations/hasgradientwithinat-congr-of-eventuallyeq-of-mem--19144e3422a30ebdc01f05f5.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [HasGradientAt.congr_of_eventuallyEq](declarations/hasgradientat-congr-of-eventuallyeq--d5083b3fe8331703534d57cd.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `theorem` | [Filter.EventuallyEq.gradient_eq](declarations/filter-eventuallyeq-gradient-eq--e7306b6ef5a5e89dd1a0f83c.md) | 353 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `theorem` | [Filter.EventuallyEq.gradient](declarations/filter-eventuallyeq-gradient--79f9616e5d0944ca39e69d59.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [hasGradientAtFilter_const](declarations/hasgradientatfilter-const--bf7f1536b99201c0869b6b48.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [hasGradientWithinAt_const](declarations/hasgradientwithinat-const--f0aca437c3a4c668b0c066f6.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [hasGradientAt_const](declarations/hasgradientat-const--49e99c65e35980a2a8649685.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [gradient_fun_const](declarations/gradient-fun-const--df9e97db41819c4b84891d10.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [gradient_const](declarations/gradient-const--274fd2998b69c23c8183e592.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [gradient_fun_const'](declarations/gradient-fun-const--02ade35989bca73e77233058.md) | 382 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [gradient_const'](declarations/gradient-const--498ffd0633c278b57f978005.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [HasGradientAtFilter.tendsto_nhds](declarations/hasgradientatfilter-tendsto-nhds--09df72608f8618f4feaa63cb.md) | 394 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [HasGradientWithinAt.continuousWithinAt](declarations/hasgradientwithinat-continuouswithinat--5e31ab54cf12e1918f7dad7b.md) | 398 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [HasGradientAt.continuousAt](declarations/hasgradientat-continuousat--f1a96b914092a04b0f9b0cd8.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [HasGradientAt.continuousOn](declarations/hasgradientat-continuouson--6c7a55512e92f50382f516f4.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
