# GRWTSK.Analysis.Complex.HolomorphicAreaProjection

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 31 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicAreaProjection.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ccfe1a0754e4306ebdd40e97b69fd71cb1f99352`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicAreaProjection.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [AmbientL2](declarations/ambientl2--de9d3dcba03fb9a5efaad340.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [l2Inclusion](declarations/l2inclusion--38241beca7feff8a1778d4b9.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [l2Inclusion_apply](declarations/l2inclusion-apply--b1511c5c4a4338adc52a5288.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [l2Inclusion_inner](declarations/l2inclusion-inner--2c33eff7c1c10ab3a663ea10.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [l2Inclusion_norm_le](declarations/l2inclusion-norm-le--0c69489d70a53d45b1f39389.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [bergmanLift](declarations/bergmanlift--642e6d78444401cee2bdfe24.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [bergmanLift_inner](declarations/bergmanlift-inner--a4603515fb709a566f4c6cc8.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [bergmanLift_embedding](declarations/bergmanlift-embedding--d0207ced822687f9a00c9123.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [bergmanProjection](declarations/bergmanprojection--aae466f3f7ba2afc77fd6735.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [bergmanProjection_apply](declarations/bergmanprojection-apply--f63377bcfb2063e10013270e.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [bergmanProjection_embedding](declarations/bergmanprojection-embedding--a52541afbf1865240ee8ef0a.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [bergmanProjection_mem](declarations/bergmanprojection-mem--f95c99e11f7272eceac79be4.md) | 84 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [bergmanProjection_eq_self_iff](declarations/bergmanprojection-eq-self-iff--38b5b0a286ac5f0b5941c1cb.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [bergmanProjection_range](declarations/bergmanprojection-range--d4b619a72c85fb8450956e89.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [bergmanProjection_idempotent](declarations/bergmanprojection-idempotent--6f1a1230e84f749614d74b7c.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [bergmanProjection_adjoint](declarations/bergmanprojection-adjoint--44716c01f24966fb75c14632.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [bergmanLift_norm_le](declarations/bergmanlift-norm-le--a81793878c3548c1cf8b7b6d.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [bergmanProjection_norm_le](declarations/bergmanprojection-norm-le--05d610bcad9b97fc6c146f1c.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [projection_residual_inner](declarations/projection-residual-inner--78c003f1596b9705841cad9a.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [bergmanLift_residual](declarations/bergmanlift-residual--0489688f125ae5064a2a9956.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [bergmanProjection_eq_zero_iff](declarations/bergmanprojection-eq-zero-iff--4b14d0ab95f4b6e65fff6ba8.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [bergmanProjection_bestApprox](declarations/bergmanprojection-bestapprox--4686804818dad971476a0aaa.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [bergmanProjection_unique](declarations/bergmanprojection-unique--d9dc7a7174f9f3d7a188f105.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [existsUnique_bestApprox](declarations/existsunique-bestapprox--60097d6f5a914a10d8c3b061.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [projectedFunction](declarations/projectedfunction--98ccbb6fa140fb72805330d1.md) | 190 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [projectedFunction_finite](declarations/projectedfunction-finite--d4b1d6da872b40a8c467f96a.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [bergmanProjection_ae](declarations/bergmanprojection-ae--6af2aea8a72fe2e84c6e30cb.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [projectedFunction_embedding](declarations/projectedfunction-embedding--7a60eb73a69bd771cc8d26e3.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [kernel_cross_ae](declarations/kernel-cross-ae--2745d8cc1ca44069c035b59d.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [projection_kernel_integrable](declarations/projection-kernel-integrable--57ed9ad79482d726ba3145e9.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [integral_projection](declarations/integral-projection--f95805d3832f904c2bf03a00.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [integral_projection_toLp](declarations/integral-projection-tolp--8292fcdc583b96c7ad60d8ec.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [projectedFunction_zero](declarations/projectedfunction-zero--3b3914ea58a9244c280d5d94.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [projection_not_zero](declarations/projection-not-zero--35c8d1542d6f4732bd26b40f.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [disk_projection_not_zero](declarations/disk-projection-not-zero--051193584dff14e8d8498b7c.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [spike_not_recovered](declarations/spike-not-recovered--e756cda7fc16b585b8f47203.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
