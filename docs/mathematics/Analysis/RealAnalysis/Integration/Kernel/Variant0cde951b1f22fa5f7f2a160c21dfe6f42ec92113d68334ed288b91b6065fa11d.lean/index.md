# GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d3e56782820eb272f935a426b620923282a6d0c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant0cde951b1f22fa5f7f2a160c21dfe6f42ec92113d68334ed288b91b6065fa11d.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](declarations/kernelintegrand--c4f3dfd0b3cab61131ebe5f1.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_kernelIntegrand](declarations/norm-kernelintegrand--f2788868dd8f302746d633bf.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [kernelIntegrand_integrable](declarations/kernelintegrand-integrable--d2d84a1d23909a0081bbafee.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernelIntegrand_tendsto](declarations/kernelintegrand-tendsto--44b53b818721cdcab349116c.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernelIntegrand_deriv](declarations/kernelintegrand-deriv--1d0566c55c0dc532059cad22.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [integral_recurrence](declarations/integral-recurrence--d96dbf7611d9185068b9fc75.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kernelNumerator](declarations/kernelnumerator--c73048b3f26334f70b0bb6c6.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [laplaceKernel](declarations/laplacekernel--08c806c4e17e5e288ea22ae0.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [laplaceKernel_zero](declarations/laplacekernel-zero--4ce895fe4bebe3236691c42f.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [laplaceKernel_succ](declarations/laplacekernel-succ--0475c254688b043cfdd20fd2.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_eq_laplaceKernel](declarations/integral-eq-laplacekernel--136f4275c0754fe6d45480f1.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [kernelNumerator_eq_sum](declarations/kernelnumerator-eq-sum--2b80b804f7f19e1c923d137a.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [laplaceKernel_eq_sum](declarations/laplacekernel-eq-sum--9077337543405b8b11a9eeed.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](declarations/kernelnumerator-eq-source-sum--fdc389d8538d90cc5fbf91f4.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [laplaceKernel_eq_J](declarations/laplacekernel-eq-j--ffc665110930981dee216e98.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [j_integral_obligation](declarations/j-integral-obligation--e8f18f455d79bebde8c8403a.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [headIntegral](declarations/headintegral--c37e83f2d81d2707fda477cd.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [headIntegral_zero](declarations/headintegral-zero--a9cfa4e51b2f4b8928f90d59.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [headIntegral_succ](declarations/headintegral-succ--2a4645e36d06471ce16e1f67.md) | 251 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [regularKernel](declarations/regularkernel--2d9ec41281f577aca05526e1.md) | 294 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [regularKernel_zero](declarations/regularkernel-zero--848132fe3f8d80f9e0538d98.md) | 297 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [regularKernel_succ](declarations/regularkernel-succ--2c5bc7b594ececf9f37e6667.md) | 305 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](declarations/regularkernel-eq-laplacekernel--1a9b59515a2db606c55121a7.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](declarations/setintegral-icc-eq-headintegral--ed3abedc30b42dad060cfebc.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [j_regular_part_obligation](declarations/j-regular-part-obligation--1ca0f5742ca2c16540979f7f.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [kernelNumerator_analytic](declarations/kernelnumerator-analytic--b4739e22ec5cc5deef20565f.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [laplaceKernel_analytic](declarations/laplacekernel-analytic--fe7d632ac212b1f7fb70db63.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [kernelNumerator_at_zero](declarations/kernelnumerator-at-zero--1e82049a5a5fcfb89f94cae1.md) | 368 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [laplaceKernel_cleared](declarations/laplacekernel-cleared--93caf7c6dd723f43daffb1ea.md) | 377 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](declarations/laplacekernel-cleared-tendsto--57234242149d167ce057e23f.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [J_cleared_tendsto](declarations/j-cleared-tendsto--89d8881548c1a92497402159.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kernel_checkpoint](declarations/kernel-checkpoint--b7b87631a4ee2738e01ddcb0.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
