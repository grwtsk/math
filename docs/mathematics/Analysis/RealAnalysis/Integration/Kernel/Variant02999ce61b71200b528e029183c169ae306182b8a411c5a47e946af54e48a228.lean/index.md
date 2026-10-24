# GRWTSK.Analysis.RealAnalysis.Integration.Kernel.Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 27 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24e62b24c7297f7f0f57df7210664a0383694261`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/Kernel/Variant02999ce61b71200b528e029183c169ae306182b8a411c5a47e946af54e48a228.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [kernelIntegrand](declarations/kernelintegrand--db6ccd94b4b5639b57a088fe.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `lemma` | [norm_kernelIntegrand](declarations/norm-kernelintegrand--86142a2baecb5debbd0520a4.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `lemma` | [kernelIntegrand_integrable](declarations/kernelintegrand-integrable--93770920453b7fd7cc37a101.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `lemma` | [kernelIntegrand_tendsto](declarations/kernelintegrand-tendsto--71993eef2b53c333ccac656a.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `lemma` | [kernelIntegrand_deriv](declarations/kernelintegrand-deriv--99173dbb996a86e4143e76bb.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [integral_recurrence](declarations/integral-recurrence--92f719cfbfffdcc953b31f5a.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [kernelNumerator](declarations/kernelnumerator--bf1b6237dde44e014d3b62f4.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [laplaceKernel](declarations/laplacekernel--1b10556191c803d681532f59.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `lemma` | [laplaceKernel_zero](declarations/laplacekernel-zero--7c8067ba81184f8ab3db3983.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `lemma` | [laplaceKernel_succ](declarations/laplacekernel-succ--371755a880f267a960439a6c.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `lemma` | [integral_eq_laplaceKernel](declarations/integral-eq-laplacekernel--dd31aae0a3f19e3825a963f9.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [kernelNumerator_eq_sum](declarations/kernelnumerator-eq-sum--d21bcdbdf176376ceab6b6c4.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [laplaceKernel_eq_sum](declarations/laplacekernel-eq-sum--0461eea7d2b28b974eea9639.md) | 174 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `lemma` | [kernelNumerator_eq_source_sum](declarations/kernelnumerator-eq-source-sum--5dffba86f7a0da8364cc7584.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [laplaceKernel_eq_J](declarations/laplacekernel-eq-j--43e6d54345b95f10a5054842.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [j_integral_obligation](declarations/j-integral-obligation--a5b1edcc695e5892446b0b4a.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [headIntegral](declarations/headintegral--fa5cd527dde15907371f7e36.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `lemma` | [headIntegral_zero](declarations/headintegral-zero--a26de8873677da85a2344fc6.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `lemma` | [headIntegral_succ](declarations/headintegral-succ--5484621b87e4a7722a93a65b.md) | 253 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [regularKernel](declarations/regularkernel--1fa83e08b9678a091f6ed7f9.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `lemma` | [regularKernel_zero](declarations/regularkernel-zero--6d234384f22f0350c8931f65.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `lemma` | [regularKernel_succ](declarations/regularkernel-succ--68d29e14f4274387b392b09f.md) | 307 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `lemma` | [regularKernel_eq_laplaceKernel](declarations/regularkernel-eq-laplacekernel--72f4bec4ef8d44cafd0f34c2.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `lemma` | [setIntegral_Icc_eq_headIntegral](declarations/setintegral-icc-eq-headintegral--52dccd77e8e2e0a9e355009c.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [j_regular_part_obligation](declarations/j-regular-part-obligation--25164738e57182fa9f637d8b.md) | 344 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `lemma` | [kernelNumerator_analytic](declarations/kernelnumerator-analytic--cc83b9573497794903d394c5.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `lemma` | [laplaceKernel_analytic](declarations/laplacekernel-analytic--3c491393367c6da73253db78.md) | 363 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `lemma` | [kernelNumerator_at_zero](declarations/kernelnumerator-at-zero--81674a318304e64c0aa8c08a.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `lemma` | [laplaceKernel_cleared](declarations/laplacekernel-cleared--69670cc3129763fbc9480b53.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `lemma` | [laplaceKernel_cleared_tendsto](declarations/laplacekernel-cleared-tendsto--91e03abb68f3f1f204d10c17.md) | 387 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [J_cleared_tendsto](declarations/j-cleared-tendsto--c63936a4faaf1e0ff03d1aae.md) | 409 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [kernel_checkpoint](declarations/kernel-checkpoint--944c2678d387b349e88a03a7.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
