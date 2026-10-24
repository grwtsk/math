# GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**37 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e626c83f68490fd8146d057a8ecca1f6863dfbc6`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformCLM](declarations/fouriertransformclm--48c3d44e1bb44b898c715070.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `instance` | [instFourierTransform](declarations/instfouriertransform--9cb3751ad8c4a8b273d01655.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `instance` | [instFourierAdd](declarations/instfourieradd--09c7b90debedc4643586b4ea.md) | 89 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `instance` | [instFourierSMul](declarations/instfouriersmul--10ac31b8bc52858129dcb578.md) | 92 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `instance` | [instContinuousFourier](declarations/instcontinuousfourier--7800e8bd36dea94898e4d97a.md) | 95 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `lemma` | [fourier_coe](declarations/fourier-coe--595887248ba7c9ff4ea617f4.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [fourierTransformCLM_apply](declarations/fouriertransformclm-apply--bf64afac3c62cebe3012213a.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `instance` | [instFourierTransformInv](declarations/instfouriertransforminv--2459464a2d9a3252cf810acb.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [instFourierInvAdd](declarations/instfourierinvadd--31614d5832270ecb736fb9b5.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `instance` | [instFourierInvSMul](declarations/instfourierinvsmul--41436d8f6e2c00332e92c67f.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [instContinuousFourierInv](declarations/instcontinuousfourierinv--f9408dd5095c23f07e077253.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `lemma` | [fourierInv_coe](declarations/fourierinv-coe--ca351223a9516304c46cc407.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `lemma` | [fourierInv_apply_eq](declarations/fourierinv-apply-eq--04da3274e0d9b48bf52e0202.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `instance` | [instFourierPair](declarations/instfourierpair--8bbdc4f168db69fcb818ae58.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instFourierInvPair](declarations/instfourierinvpair--1319dc103af56d6a20757f27.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [fourier_evalCLM_eq](declarations/fourier-evalclm-eq--ecb13f682196f67d153f40b6.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [fderivCLM_fourier_eq](declarations/fderivclm-fourier-eq--8b634f14ce09ca545df7d9c9.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [fourier_fderivCLM_eq](declarations/fourier-fderivclm-eq--e505fe379db044c76b7618d9.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [lineDerivOp_fourier_eq](declarations/linederivop-fourier-eq--2d4347a26722aaee3f353226.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [fourier_lineDerivOp_eq](declarations/fourier-linederivop-eq--d8c885f06d4ebf4505a4684b.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [lineDerivOp_fourierInv_eq](declarations/linederivop-fourierinv-eq--3861c9cb3eeb15a97342869b.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [fourierInv_lineDerivOp_eq](declarations/fourierinv-linederivop-eq--0b6dd2f7fa42461bcb4a7ac2.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [integral_bilin_fourier_eq](declarations/integral-bilin-fourier-eq--eb400f204ef9b3737dd6168f.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [integral_fourier_smul_eq](declarations/integral-fourier-smul-eq--45cff02bc1d21cb8c04e6665.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_fourier_mul_eq](declarations/integral-fourier-mul-eq--09016c6176843365378e9a79.md) | 238 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [integral_bilin_fourierInv_eq](declarations/integral-bilin-fourierinv-eq--893147306aa4894c13cf18c1.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [integral_fourierInv_smul_eq](declarations/integral-fourierinv-smul-eq--c5dae60607d38064acbd7de1.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [integral_fourierInv_mul_eq](declarations/integral-fourierinv-mul-eq--517c1a0942806f7ce8ece2c1.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [integral_sesq_fourier_eq](declarations/integral-sesq-fourier-eq--cd5d943eb55f1dfc4aef21a8.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [integral_sesq_fourier_fourier](declarations/integral-sesq-fourier-fourier--8955a56378c06dd28f6df2a8.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [norm_fourier_apply_le_toLp_one](declarations/norm-fourier-apply-le-tolp-one--001505ac20faaa6d2f824d28.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [norm_fourier_toBoundedContinuousFunction_le_toLp_one](declarations/norm-fourier-toboundedcontinuousfunction-le-tolp-one--d1dc398a443918ac91e71a09.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [norm_fourier_Lp_top_leq_toLp_one](declarations/norm-fourier-lp-top-leq-tolp-one--d826a72cc177676075648911.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [integral_inner_fourier_fourier](declarations/integral-inner-fourier-fourier--81afcdd685e63b29d0569cc2.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [integral_norm_sq_fourier](declarations/integral-norm-sq-fourier--dc162a9a0dc9548fa6c7569b.md) | 306 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inner_fourier_toL2_eq](declarations/inner-fourier-tol2-eq--d35e99f89bcf82bb8801a50b.md) | 312 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [norm_fourier_toL2_eq](declarations/norm-fourier-tol2-eq--b71369828957550c87e39b50.md) | 315 | `BLOCKED_NATIVE_ADMISSION` |
