# GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17d67e9f4dd960a0ad958f13b18f253153d75489`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variantcd67141c4a5122693dcbb8c4145d38d359228bb335afe48059ed3a9c77c0a62b.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](declarations/kernelintegrand--d88a925e793aeb95a3a5ab07.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_kernelIntegrand](declarations/norm-kernelintegrand--8bc9f73199dde9dabd72e846.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [kernelIntegrand_integrable](declarations/kernelintegrand-integrable--33faafcc0a84fed63627c037.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernelIntegrand_tendsto](declarations/kernelintegrand-tendsto--960c90696563f296d3b6495c.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernelIntegrand_deriv](declarations/kernelintegrand-deriv--cbd1a9e5803de24b99b0215a.md) | 81 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [integral_recurrence](declarations/integral-recurrence--73119b70bb966e95a391ae11.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kernelNumerator](declarations/kernelnumerator--ec1e5e28808cf941f4b166fa.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [laplaceKernel](declarations/laplacekernel--48ed5b77d2c0fb5e64e2d390.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [laplaceKernel_zero](declarations/laplacekernel-zero--0e57f46344ec1bea0982ec1b.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [laplaceKernel_succ](declarations/laplacekernel-succ--8b45106a7258239d9062d1d8.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_eq_laplaceKernel](declarations/integral-eq-laplacekernel--06dd1baebe9b7cf75990b68b.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [kernelNumerator_eq_sum](declarations/kernelnumerator-eq-sum--d235a679e4ef1eee4360e431.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [laplaceKernel_eq_sum](declarations/laplacekernel-eq-sum--efc142dc6ef6bf8fcd18334c.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](declarations/kernelnumerator-eq-source-sum--41dc170aff9c338d7892dd91.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [laplaceKernel_eq_J](declarations/laplacekernel-eq-j--643863d2f8192bd84826ecc4.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [j_integral_obligation](declarations/j-integral-obligation--5ab02e721b3fd48a11a1c5be.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [headIntegral](declarations/headintegral--81b7be9d315f4b49421e6635.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [headIntegral_zero](declarations/headintegral-zero--151dedb5b40bf1ca216de6ca.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [headIntegral_succ](declarations/headintegral-succ--4127b76f84ab8fffc4b9fe10.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [regularKernel](declarations/regularkernel--b51120cc0c74e61bd2ba84c7.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [regularKernel_zero](declarations/regularkernel-zero--d17398b07b7ca1836e72759c.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [regularKernel_succ](declarations/regularkernel-succ--7aecb6d02b64bacf0a71c90d.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](declarations/regularkernel-eq-laplacekernel--da7946a1368e76ba9d7c9e03.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](declarations/setintegral-icc-eq-headintegral--22e25f84f9a807f8f490c947.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [j_regular_part_obligation](declarations/j-regular-part-obligation--4e1543ab26dd5dc29d13167d.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [kernelNumerator_analytic](declarations/kernelnumerator-analytic--fd44936e297a62d0d889df70.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [laplaceKernel_analytic](declarations/laplacekernel-analytic--69e58494ab91e0438e5d729d.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [kernelNumerator_at_zero](declarations/kernelnumerator-at-zero--28da965cd7046ac0c6439e69.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [laplaceKernel_cleared](declarations/laplacekernel-cleared--f1b4ec78cf07ae76a1da51c8.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](declarations/laplacekernel-cleared-tendsto--d1e98e45232cb9127bffb6bc.md) | 395 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [J_cleared_tendsto](declarations/j-cleared-tendsto--d5c5ac015673c5963b96f33f.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kernel_checkpoint](declarations/kernel-checkpoint--c27a9c1d219013e828759343.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
