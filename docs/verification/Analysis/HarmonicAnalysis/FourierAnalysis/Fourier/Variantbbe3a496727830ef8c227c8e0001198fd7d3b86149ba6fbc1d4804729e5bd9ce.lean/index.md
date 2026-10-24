# Verification target: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e626c83f68490fd8146d057a8ecca1f6863dfbc6",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e626c83f68490fd8146d057a8ecca1f6863dfbc6`.

Source path: `GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fourierTransformCLM](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fouriertransformclm--48c3d44e1bb44b898c715070.md) | 51 | `declaration-track:48c3d44e1bb44b898c715070658644afb0fd399b730d37e46b0242b1558b6fa5` |
| 2 | `instance` | [instFourierTransform](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfouriertransform--9cb3751ad8c4a8b273d01655.md) | 86 | `declaration-track:9cb3751ad8c4a8b273d01655bde85e9c871afd794b6086e16c96a42be029f325` |
| 3 | `instance` | [instFourierAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfourieradd--09c7b90debedc4643586b4ea.md) | 89 | `declaration-track:09c7b90debedc4643586b4ea9cd98ee1d2848a65b65e3e8f64bd0d92cd994398` |
| 4 | `instance` | [instFourierSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfouriersmul--10ac31b8bc52858129dcb578.md) | 92 | `declaration-track:10ac31b8bc52858129dcb5788cbd024bfd920cf007d66036989a902c4ff17875` |
| 5 | `instance` | [instContinuousFourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instcontinuousfourier--7800e8bd36dea94898e4d97a.md) | 95 | `declaration-track:7800e8bd36dea94898e4d97a22161fb46751b91830c84d467be64905ee95cee1` |
| 6 | `lemma` | [fourier_coe](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourier-coe--595887248ba7c9ff4ea617f4.md) | 98 | `result-track:595887248ba7c9ff4ea617f4e2efc2466ed3089c0a1e669f03fd9ad72d145b14` |
| 7 | `theorem` | [fourierTransformCLM_apply](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fouriertransformclm-apply--bf64afac3c62cebe3012213a.md) | 101 | `result-track:bf64afac3c62cebe3012213a3ebf1339a3ff26fa8732777059d4b7caf39dfb51` |
| 8 | `instance` | [instFourierTransformInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfouriertransforminv--2459464a2d9a3252cf810acb.md) | 104 | `declaration-track:2459464a2d9a3252cf810acb60003bc09cbd2a67ce145521ea19f5c71137cee4` |
| 9 | `instance` | [instFourierInvAdd](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfourierinvadd--31614d5832270ecb736fb9b5.md) | 108 | `declaration-track:31614d5832270ecb736fb9b5b107d0c5a8ecff171ef175fba214ddbe40f0f164` |
| 10 | `instance` | [instFourierInvSMul](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfourierinvsmul--41436d8f6e2c00332e92c67f.md) | 111 | `declaration-track:41436d8f6e2c00332e92c67f3287a2bab0e4bf1ac08dca5a4aefb8f68d90b736` |
| 11 | `instance` | [instContinuousFourierInv](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instcontinuousfourierinv--f9408dd5095c23f07e077253.md) | 115 | `declaration-track:f9408dd5095c23f07e077253f8e7dbe65f453fd486a6e8e5c7768f2b5fc8b9ea` |
| 12 | `lemma` | [fourierInv_coe](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourierinv-coe--ca351223a9516304c46cc407.md) | 118 | `result-track:ca351223a9516304c46cc4073409584477570e637e688ee185daf30c11c6c850` |
| 13 | `lemma` | [fourierInv_apply_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourierinv-apply-eq--04da3274e0d9b48bf52e0202.md) | 122 | `result-track:04da3274e0d9b48bf52e02022cf7f273a939c52244241ebec75b894cdb1b6ac8` |
| 14 | `instance` | [instFourierPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfourierpair--8bbdc4f168db69fcb818ae58.md) | 128 | `declaration-track:8bbdc4f168db69fcb818ae58ca9b863d8ee70202f40e78e7db3bba12645cd035` |
| 15 | `instance` | [instFourierInvPair](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/instfourierinvpair--1319dc103af56d6a20757f27.md) | 135 | `declaration-track:1319dc103af56d6a20757f2783e587df9ff2c48b9c2453fb9bd0bcadc724c92c` |
| 16 | `theorem` | [fourier_evalCLM_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourier-evalclm-eq--ecb13f682196f67d153f40b6.md) | 151 | `result-track:ecb13f682196f67d153f40b63913b72f9ebded57b57a1cf85e55c95cc245e2aa` |
| 17 | `theorem` | [fderivCLM_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fderivclm-fourier-eq--8b634f14ce09ca545df7d9c9.md) | 162 | `result-track:8b634f14ce09ca545df7d9c9dde2e89975aecdbf15882321ce863ea6b3746f51` |
| 18 | `theorem` | [fourier_fderivCLM_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourier-fderivclm-eq--e505fe379db044c76b7618d9.md) | 171 | `result-track:e505fe379db044c76b7618d90f5d1e64e8fc0081da872f5bdaddcd051568c932` |
| 19 | `theorem` | [lineDerivOp_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/linederivop-fourier-eq--2d4347a26722aaee3f353226.md) | 182 | `result-track:2d4347a26722aaee3f353226711c6e9a3e2cc0ae6cd1cc130d5e7ab630c2b78c` |
| 20 | `theorem` | [fourier_lineDerivOp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourier-linederivop-eq--d8c885f06d4ebf4505a4684b.md) | 193 | `result-track:d8c885f06d4ebf4505a4684b631f680a29b050f78bc2e2b1930ac40fea020a28` |
| 21 | `theorem` | [lineDerivOp_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/linederivop-fourierinv-eq--3861c9cb3eeb15a97342869b.md) | 202 | `result-track:3861c9cb3eeb15a97342869b34410cce516293fe9a11b1424441de2802dbede3` |
| 22 | `theorem` | [fourierInv_lineDerivOp_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/fourierinv-linederivop-eq--0b6dd2f7fa42461bcb4a7ac2.md) | 208 | `result-track:0b6dd2f7fa42461bcb4a7ac287d819b4ab7271c92dce8578cb2b5867f021eaed` |
| 23 | `theorem` | [integral_bilin_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-bilin-fourier-eq--eb400f204ef9b3737dd6168f.md) | 227 | `result-track:eb400f204ef9b3737dd6168f77f7791658eb9f0d200b91521e1ab698364702b3` |
| 24 | `theorem` | [integral_fourier_smul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-fourier-smul-eq--45cff02bc1d21cb8c04e6665.md) | 233 | `result-track:45cff02bc1d21cb8c04e666515c849f32175bea93b25fb888dc5567ab8ea5fda` |
| 25 | `theorem` | [integral_fourier_mul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-fourier-mul-eq--09016c6176843365378e9a79.md) | 238 | `result-track:09016c6176843365378e9a79083c7b11b494090b4ed3b29540dbf0a522cba83e` |
| 26 | `theorem` | [integral_bilin_fourierInv_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-bilin-fourierinv-eq--893147306aa4894c13cf18c1.md) | 245 | `result-track:893147306aa4894c13cf18c1f1dc5c5cf0ca7979e53328a80e812402c2e4e291` |
| 27 | `theorem` | [integral_fourierInv_smul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-fourierinv-smul-eq--c5dae60607d38064acbd7de1.md) | 252 | `result-track:c5dae60607d38064acbd7de1ba7013d13976d6dcca6a87c91043a3bf613732a4` |
| 28 | `theorem` | [integral_fourierInv_mul_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-fourierinv-mul-eq--517c1a0942806f7ce8ece2c1.md) | 257 | `result-track:517c1a0942806f7ce8ece2c1b442892b6cb499147b68a9b5b1e8d9dc69c0ed80` |
| 29 | `theorem` | [integral_sesq_fourier_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-sesq-fourier-eq--cd5d943eb55f1dfc4aef21a8.md) | 261 | `result-track:cd5d943eb55f1dfc4aef21a87d01de3aacff11cf38ad73114ad056d87805fed1` |
| 30 | `theorem` | [integral_sesq_fourier_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-sesq-fourier-fourier--8955a56378c06dd28f6df2a8.md) | 269 | `result-track:8955a56378c06dd28f6df2a813b9405da744d72f31958a4f3cb9f7a7e1fb4740` |
| 31 | `theorem` | [norm_fourier_apply_le_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/norm-fourier-apply-le-tolp-one--001505ac20faaa6d2f824d28.md) | 279 | `result-track:001505ac20faaa6d2f824d28c42ddfb2febb65af30016b302e6d01df31bdee89` |
| 32 | `theorem` | [norm_fourier_toBoundedContinuousFunction_le_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/norm-fourier-toboundedcontinuousfunction-le-tolp-one--d1dc398a443918ac91e71a09.md) | 285 | `result-track:d1dc398a443918ac91e71a09abcb892214a040a970f197de736be624fbe61374` |
| 33 | `theorem` | [norm_fourier_Lp_top_leq_toLp_one](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/norm-fourier-lp-top-leq-tolp-one--d826a72cc177676075648911.md) | 290 | `result-track:d826a72cc17767607564891123d4108be8cdf289f9402ab028a1ed527ffc52d1` |
| 34 | `theorem` | [integral_inner_fourier_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-inner-fourier-fourier--81afcdd685e63b29d0569cc2.md) | 302 | `result-track:81afcdd685e63b29d0569cc29d4a27c8ef469b88307e646bf2e8db739b757004` |
| 35 | `theorem` | [integral_norm_sq_fourier](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/integral-norm-sq-fourier--dc162a9a0dc9548fa6c7569b.md) | 306 | `result-track:dc162a9a0dc9548fa6c7569b52b630af74e4968dd9572a95597af343085aec3a` |
| 36 | `theorem` | [inner_fourier_toL2_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/inner-fourier-tol2-eq--d35e99f89bcf82bb8801a50b.md) | 312 | `result-track:d35e99f89bcf82bb8801a50b940191722d43f7d9f2fe4519f19d5dd95e8a2089` |
| 37 | `theorem` | [norm_fourier_toL2_eq](../../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/Fourier/Variantbbe3a496727830ef8c227c8e0001198fd7d3b86149ba6fbc1d4804729e5bd9ce.lean/declarations/norm-fourier-tol2-eq--b71369828957550c87e39b50.md) | 315 | `result-track:b71369828957550c87e39b5001df3c81e5c86354ca0b23072f58dca4da684366` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
