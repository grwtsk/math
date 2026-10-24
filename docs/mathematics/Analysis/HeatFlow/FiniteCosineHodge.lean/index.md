# GRWTSK.Analysis.HeatFlow.FiniteCosineHodge

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**82 observed declarations and anonymous commands**, 63 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HeatFlow/FiniteCosineHodge.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f0c632413378e72cc78f91f0809a45b104e0740`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/HeatFlow/FiniteCosineHodge.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [modeLaplacian](declarations/modelaplacian--876bce474f893ef9837360b9.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [modeLaplacian_nonneg](declarations/modelaplacian-nonneg--19fbdb8dcb9d180c97a238e2.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [modeHeat](declarations/modeheat--902903160b5a3e5868ef895b.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [modeHeat_zero](declarations/modeheat-zero--040573e80cde4fc03d6371dd.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [modeHeat_add](declarations/modeheat-add--9325215fdb17adad2b9e7d4f.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [modeHeat_pos](declarations/modeheat-pos--089a4d4a8288e7c416579c36.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [modeHeat_le_one](declarations/modeheat-le-one--600bff3be0990ce0c6352536.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [coefficient](declarations/coefficient--eaae3b2749cfcaf28b2fc724.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [coefficient_zero](declarations/coefficient-zero--89bf75eeccc527bd1ad2a956.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [coefficient_time_add](declarations/coefficient-time-add--e16d2b259ecdda688910a217.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [twoModeHeat](declarations/twomodeheat--cb7683d1dc55511ed748caf4.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [twoModeHeat_zero](declarations/twomodeheat-zero--c415e27f680e99ad1abb0c22.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [twoModeHeat_even](declarations/twomodeheat-even--072334fbb9f69a45fcb9edb3.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [twoModeHeat_source_separation](declarations/twomodeheat-source-separation--f0ea0f6296c1132e20334606.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [twoModeHeat_source_error](declarations/twomodeheat-source-error--b99d133135fa82101b612c11.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [twoModeHeat_source_error_bound](declarations/twomodeheat-source-error-bound--0d0e7ac61d17f2ba7da8260e.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [twoModeHeat_source_identity](declarations/twomodeheat-source-identity--027e017c439fed3e45af81b1.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [twoModeHeat_two_stage_bound](declarations/twomodeheat-two-stage-bound--f1e6347e28358eac8f8796a7.md) | 152 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [hasDerivAt_modeHeat](declarations/hasderivat-modeheat--c4a723f0f8ee426a591f55a3.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [hasDerivAt_coefficient](declarations/hasderivat-coefficient--41765e8712e546cb19ca9504.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [hasDerivAt_cosineMode](declarations/hasderivat-cosinemode--9db84b14270276f14fd784c6.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [hasDerivAt_sineMode](declarations/hasderivat-sinemode--e213eca2f2e56b83e6a1f157.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [hasDerivAt_timeCosineMode](declarations/hasderivat-timecosinemode--b7ddce4e746f6101b6029522.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [hasDerivAt_twoModeHeat_time](declarations/hasderivat-twomodeheat-time--85a4f42784a951db34a6a55c.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [hasDerivAt_twoModeHeat_space](declarations/hasderivat-twomodeheat-space--1a5310105ba292811c0aa086.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [hasDerivAt_twoModeHeat_space_derivative](declarations/hasderivat-twomodeheat-space-derivative--9a3ac957e62bb93eaf28e249.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [twoModeHeat_finite_heat_equation](declarations/twomodeheat-finite-heat-equation--e083ad039bb8473dfa5d3b3f.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `structure` | [FiniteHeatErrorBudget](declarations/finiteheaterrorbudget--3c5bbc3720f725643b375fdb.md) | 270 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [FiniteHeatErrorBudget.total](declarations/finiteheaterrorbudget-total--c254d434bc4920147fc22729.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [finiteHeatErrorBudget_bound](declarations/finiteheaterrorbudget-bound--8a8fee77f84a8fdf24813eb8.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [finiteCosineTailBound](declarations/finitecosinetailbound--0301063fda8e5d941c21a3c5.md) | 313 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [finiteCosineExponentialMajorant](declarations/finitecosineexponentialmajorant--cd2536c305f4f34b32757a45.md) | 345 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [exponentialTailBudget](declarations/exponentialtailbudget--61d3806b09a09b1fbd1dbe09.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [exponentialTailBudget_nonneg](declarations/exponentialtailbudget-nonneg--72516afb3bcde9bdf08fd253.md) | 381 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [exponentialTailBudget_antitone](declarations/exponentialtailbudget-antitone--6bff7db0b21f2ffb2fc0f3ee.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [exponentialTailBudget_amplitude_mono](declarations/exponentialtailbudget-amplitude-mono--37b46f44dbefb5f238e69b2b.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [exponentialTailBudget_refine](declarations/exponentialtailbudget-refine--d39d0a091c527c1fa59e25f5.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [ExponentialTailIntegralCertificate](declarations/exponentialtailintegralcertificate--65102dd306709f11bb1eb767.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [certified_integrated_tail_bound](declarations/certified-integrated-tail-bound--e94177c1e2520bdd96609d31.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [certified_integrated_tail_refinement](declarations/certified-integrated-tail-refinement--6e1fc387bbaa3deebefcf59c.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [modeHeat_abs_le_one](declarations/modeheat-abs-le-one--0214566ccc5e6fec3225f108.md) | 455 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [coefficient_error_contracts](declarations/coefficient-error-contracts--878a176b7eb310a0f1ad09dd.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [twoModeHeat_source_error_contracts](declarations/twomodeheat-source-error-contracts--e613f6153df5ce02fb99d03a.md) | 479 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [twoModeHeat_source_lipschitz](declarations/twomodeheat-source-lipschitz--6d30df31ab63e787450cffa7.md) | 513 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [twoModeHeat_source_and_readout_budget](declarations/twomodeheat-source-and-readout-budget--030528f89b02e796d6b69ff1.md) | 522 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [exponentialTailBudget_at_zero](declarations/exponentialtailbudget-at-zero--04854c09ddf83edd3c7be3cb.md) | 544 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [finiteHeatErrorBudget_source_le_total](declarations/finiteheaterrorbudget-source-le-total--12e695fffdea3554fa9bbfc9.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [finiteHeatErrorBudget_tail_le_total](declarations/finiteheaterrorbudget-tail-le-total--66aa66f796236a7dac94733a.md) | 562 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `structure` | [ThetaTailSupplier](declarations/thetatailsupplier--c0ffa2a22d39f6fca8b2ee39.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [thetaTailSupplier_combine](declarations/thetatailsupplier-combine--6ea7faf1b37c474a960fbb34.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [thetaTailSupplier_source_le_total](declarations/thetatailsupplier-source-le-total--a40f6422ee62d56b09bbc9c9.md) | 595 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `def` | [thetaGaussianSummand](declarations/thetagaussiansummand--6db7a281c8467d44a95b0e1e.md) | 605 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [thetaGaussianSummand_pos](declarations/thetagaussiansummand-pos--3173138be6f4242f245c5e60.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [thetaGaussianSummand_mode_antitone](declarations/thetagaussiansummand-mode-antitone--0918246c19827237d2c3d2aa.md) | 615 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [thetaKernelTerm](declarations/thetakernelterm--596e1f94a68b4b2e232464c8.md) | 631 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `theorem` | [thetaKernelTerm_zero](declarations/thetakernelterm-zero--256bdba3bfc47a5cbd62e262.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `theorem` | [thetaKernelTerm_expansion](declarations/thetakernelterm-expansion--ecd70ebfc6725d12f2c44dd5.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [thetaKernelPositivePart](declarations/thetakernelpositivepart--8cd8da348b2e9bbcb6ec2953.md) | 656 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [thetaKernelNegativePart](declarations/thetakernelnegativepart--5ec6d5195e049c9a9b8cd89f.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `theorem` | [thetaKernelPositivePart_nonneg](declarations/thetakernelpositivepart-nonneg--ef78490f7da28050352caa3a.md) | 664 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [thetaKernelNegativePart_nonneg](declarations/thetakernelnegativepart-nonneg--defd9d5b3424d6f7873ea4ce.md) | 670 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `theorem` | [thetaKernelTerm_split](declarations/thetakernelterm-split--8ee0450407403f04904b8475.md) | 679 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [thetaKernelTerm_abs_le_parts](declarations/thetakernelterm-abs-le-parts--ea5bf7be5cb3bc1865e036e9.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [thetaKernelPartialSum](declarations/thetakernelpartialsum--60469ae393d0638c281521f9.md) | 702 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `def` | [thetaKernelPartialMajorant](declarations/thetakernelpartialmajorant--f83409afced3c9b62121619c.md) | 706 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [thetaKernelPartialMajorant_nonneg](declarations/thetakernelpartialmajorant-nonneg--5e5206860f570367e8b45c36.md) | 711 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [thetaKernelPartialSum_abs_le](declarations/thetakernelpartialsum-abs-le--e905596adaaa34b5a4c3039a.md) | 721 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `structure` | [ThetaUniformMajorant](declarations/thetauniformmajorant--cc5ed953a3c5c3ffd520803c.md) | 738 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [thetaKernelPartialSum_uniform_bound](declarations/thetakernelpartialsum-uniform-bound--316592d9fef8859ea7a67c44.md) | 744 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `theorem` | [thetaKernelPartialMajorant_mono](declarations/thetakernelpartialmajorant-mono--50d4a79c9f7b65d8c083a609.md) | 753 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [thetaScaledGaussian](declarations/thetascaledgaussian--b9edd67950e279c0fa70f2da.md) | 767 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [thetaGaussianSummand_scaled](declarations/thetagaussiansummand-scaled--4b3276c7fe12c8776f2ccbfb.md) | 770 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `theorem` | [thetaScaledGaussian_nonneg](declarations/thetascaledgaussian-nonneg--7fdfa9c27938b3ca412ed61f.md) | 777 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [thetaKernelPositivePart_scaled](declarations/thetakernelpositivepart-scaled--61d66194a1160b3d6419097e.md) | 785 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [thetaKernelNegativePart_scaled](declarations/thetakernelnegativepart-scaled--24021900de334d329c9ff223.md) | 801 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [thetaKernelTerm_scaled](declarations/thetakernelterm-scaled--797c316a422db9c05c2b5e7a.md) | 817 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `def` | [thetaScaledPolynomial](declarations/thetascaledpolynomial--03918e8be380bf93ca3e6073.md) | 829 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [thetaScaledPolynomial_abs_bound](declarations/thetascaledpolynomial-abs-bound--5d1409cb0e74d6e441e7cdc3.md) | 834 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [thetaKernelTerm_scaledPolynomial](declarations/thetakernelterm-scaledpolynomial--49bb5933285eb1b0a85b30de.md) | 849 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `structure` | [ScaledGaussianEnvelope](declarations/scaledgaussianenvelope--eccd1a7d2c67d4fbf2e9349c.md) | 860 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `theorem` | [thetaScaledPolynomial_gaussian_bound](declarations/thetascaledpolynomial-gaussian-bound--b206ea6011dbb40836f6e6ff.md) | 868 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `theorem` | [polynomial_exponential_envelope](declarations/polynomial-exponential-envelope--0fff559c7476a634cc0e050b.md) | 896 | `BLOCKED_NATIVE_ADMISSION` |
