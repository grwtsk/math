# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CondexpL2.Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93c814ed467e1eb8811ab1a1422a6fe989ad66de",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93c814ed467e1eb8811ab1a1422a6fe989ad66de`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Projection` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.ConditionalExpectation.Unique` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [condexpL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2--8199eaf435e3d00be59aefcb.md) | 79 | `declaration-track:8199eaf435e3d00be59aefcbaae9ecbd5fee7a59a4d6475d1b0018aa8bce3b8c` |
| 2 | `theorem` | [aeStronglyMeasurable'_condexpL2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/aestronglymeasurable-condexpl2--1ea45793cfb2ff37f2e83961.md) | 87 | `result-track:1ea45793cfb2ff37f2e839616fcd333d966889360f0d4a37c825a4afa4cb38bc` |
| 3 | `theorem` | [integrableOn_condexpL2_of_measure_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integrableon-condexpl2-of-measure-ne-top--9d76fa689120357ae637eb4b.md) | 92 | `result-track:9d76fa689120357ae637eb4bd8450143e2a7e84ad3d2f0a0daf67144818df339` |
| 4 | `theorem` | [integrable_condexpL2_of_isFiniteMeasure](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integrable-condexpl2-of-isfinitemeasure--0c573291abdf825abe1df095.md) | 98 | `result-track:0c573291abdf825abe1df095b491f32427acb72f03da63c8fef7d1465a88c765` |
| 5 | `theorem` | [norm_condexpL2_le_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/norm-condexpl2-le-one--c326f8464f1ed72ae5af7140.md) | 103 | `result-track:c326f8464f1ed72ae5af71401008fca5b6f99f5c88a79a785eb931bb96b260ff` |
| 6 | `theorem` | [norm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/norm-condexpl2-le--79484fe81b6aaa817311c071.md) | 108 | `result-track:79484fe81b6aaa817311c071631400dc0461610a438d94ac66278db3af6a60b4` |
| 7 | `theorem` | [snorm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/snorm-condexpl2-le--865daa01bff2ba885f53796c.md) | 113 | `result-track:865daa01bff2ba885f53796c56106f2a0ae8db2f2de1c41244925c6aef6128ae` |
| 8 | `theorem` | [norm_condexpL2_coe_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/norm-condexpl2-coe-le--680af9dc7b265111b91bb5c2.md) | 120 | `result-track:680af9dc7b265111b91bb5c2c1e43454aba856d9731038f381f3532631e8e459` |
| 9 | `theorem` | [inner_condexpL2_left_eq_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/inner-condexpl2-left-eq-right--f6366d083f1540244021113c.md) | 127 | `result-track:f6366d083f1540244021113cf03a747f52cf9b2ee437f8f41b15bb997510e35a` |
| 10 | `theorem` | [condexpL2_indicator_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-indicator-of-measurable--fdb5f7d7d3c5bf13ea356231.md) | 133 | `result-track:fdb5f7d7d3c5bf13ea356231e85bd9a7466874daa46d8d6c5822e067694d2f83` |
| 11 | `theorem` | [inner_condexpL2_eq_inner_fun](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/inner-condexpl2-eq-inner-fun--90c87cb4a4c0cc24d380099a.md) | 147 | `result-track:90c87cb4a4c0cc24d380099ae7738e394a615731cd371dd092d9c984a36bc74a` |
| 12 | `theorem` | [integral_condexpL2_eq_of_fin_meas_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integral-condexpl2-eq-of-fin-meas-real--fa15d0b743ddd3e8a2724782.md) | 159 | `result-track:fa15d0b743ddd3e8a2724782b2fe1c1067e1c5eb743c63db26ce55353e583d09` |
| 13 | `theorem` | [lintegral_nnnorm_condexpL2_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/lintegral-nnnorm-condexpl2-le--ff24b21effbba65502d28885.md) | 168 | `result-track:ff24b21effbba65502d28885b5885def13fcf29a48179480cee91b9c88a52897` |
| 14 | `theorem` | [condexpL2_ae_eq_zero_of_ae_eq_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-ae-eq-zero-of-ae-eq-zero--98a7374c40f295ea8b32711d.md) | 192 | `result-track:98a7374c40f295ea8b32711df967611212329724f5960c8d85d7f50d466d612d` |
| 15 | `theorem` | [lintegral_nnnorm_condexpL2_indicator_le_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le-real--3cdc7f86044c5f3ece19cd66.md) | 213 | `result-track:3cdc7f86044c5f3ece19cd66996328a6de1c064417232a171300e21125f75a7c` |
| 16 | `theorem` | [condexpL2_const_inner](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-const-inner--2ee7b86e7656151ebadd3647.md) | 236 | `result-track:2ee7b86e7656151ebadd36474fc9af824034d1048cd8b01efc7616bffde01eb4` |
| 17 | `theorem` | [integral_condexpL2_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integral-condexpl2-eq--ea242709e956024d2e0713de.md) | 264 | `result-track:ea242709e956024d2e0713de317be8f5f73c577859a21485c324236269e5e666` |
| 18 | `theorem` | [condexpL2_comp_continuousLinearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-comp-continuouslinearmap--aaf1bfc6286b7a198beb4760.md) | 289 | `result-track:aaf1bfc6286b7a198beb4760c3fe955f9bd9b4bd38d67cbe1a74bfe6dd08ad03` |
| 19 | `theorem` | [condexpL2_indicator_ae_eq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-indicator-ae-eq-smul--cf39c85428016601159e1bab.md) | 316 | `result-track:cf39c85428016601159e1babe95b5efe4cfb65e8997f25a5cbefb171a8b9bb2c` |
| 20 | `theorem` | [condexpL2_indicator_eq_toSpanSingleton_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-indicator-eq-tospansingleton-comp--522ed36379df710e2ee6787e.md) | 329 | `result-track:522ed36379df710e2ee6787e2711755b577418c3ec138f1a687378120c59559b` |
| 21 | `theorem` | [set_lintegral_nnnorm_condexpL2_indicator_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/set-lintegral-nnnorm-condexpl2-indicator-le--0681e937c55f067e609f7da0.md) | 345 | `result-track:0681e937c55f067e609f7da073426ac3fc0a844d24cea0ec92d6ef8d333b0212` |
| 22 | `theorem` | [lintegral_nnnorm_condexpL2_indicator_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/lintegral-nnnorm-condexpl2-indicator-le--185334fc7fd2afa53b76a5cb.md) | 362 | `result-track:185334fc7fd2afa53b76a5cbb89d7cce3778870abf151aa3c962832d2ddd3dfc` |
| 23 | `theorem` | [integrable_condexpL2_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integrable-condexpl2-indicator--89843be440f4d89195a0ec4b.md) | 374 | `result-track:89843be440f4d89195a0ec4b4882f7053362609fb599787c8f629422e8942873` |
| 24 | `def` | [condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul--51c63b9d133b3024c1e9a59e.md) | 392 | `declaration-track:51c63b9d133b3024c1e9a59e8c423f61100f670910234c58d2be0f4628e54512` |
| 25 | `theorem` | [aeStronglyMeasurable'_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/aestronglymeasurable-condexpindsmul--96635beac2568af15925bfea.md) | 397 | `result-track:96635beac2568af15925bfea96e380a897bd1da9e847ed93ea240c2a19865c25` |
| 26 | `theorem` | [condexpIndSMul_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-add--e3cd83bb364f84e6866d60cc.md) | 410 | `result-track:e3cd83bb364f84e6866d60cce15ce82511bc29caf08bcac5e2fa7d5968945cab` |
| 27 | `theorem` | [condexpIndSMul_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-smul--df10db1f771dd1569d19dd5b.md) | 415 | `result-track:df10db1f771dd1569d19dd5bb44947d939c03d8f36cde38305c7c66ee022c1b8` |
| 28 | `theorem` | [condexpIndSMul_smul'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-smul--611daf2ac6be8a11536bfc43.md) | 420 | `result-track:611daf2ac6be8a11536bfc43ca6d760742505f57164b87d897e6c40f8d626368` |
| 29 | `theorem` | [condexpIndSMul_ae_eq_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-ae-eq-smul--49b0f627dfa179fdacc5cbbb.md) | 427 | `result-track:49b0f627dfa179fdacc5cbbb8cd1f61c6ed23419de2dd8400f9e543213bb0fad` |
| 30 | `theorem` | [set_lintegral_nnnorm_condexpIndSMul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/set-lintegral-nnnorm-condexpindsmul-le--2c1062e6dcbd81721b1d073c.md) | 433 | `result-track:2c1062e6dcbd81721b1d073cb730164849c0bba76d7b70b79d78664b24d84451` |
| 31 | `theorem` | [lintegral_nnnorm_condexpIndSMul_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/lintegral-nnnorm-condexpindsmul-le--89c9ba7ff7e9ec7cf622abc6.md) | 449 | `result-track:89c9ba7ff7e9ec7cf622abc62ac11a7f6a788a0f41e40ffcb67d307afc24d77e` |
| 32 | `theorem` | [integrable_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/integrable-condexpindsmul--90bef34b480cba36e0cbae56.md) | 459 | `result-track:90bef34b480cba36e0cbae567a804e2177a59bb2b7e550adbb029d01127ab620` |
| 33 | `theorem` | [condexpIndSMul_empty](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-empty--c9cb2fef7565c5ba0ffad095.md) | 469 | `result-track:c9cb2fef7565c5ba0ffad095b4278c69f87d8217ac709a67ff23050983c6e359` |
| 34 | `theorem` | [set_integral_condexpL2_indicator](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/set-integral-condexpl2-indicator--3590c4b130d28bd00d8dff30.md) | 475 | `result-track:3590c4b130d28bd00d8dff303234e101565b88ff8a66c6f86bdd36a5bdc6d0c3` |
| 35 | `theorem` | [set_integral_condexpIndSMul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/set-integral-condexpindsmul--05826490a5e0630ad88964d6.md) | 486 | `result-track:05826490a5e0630ad88964d64c56b07a158e8156eea262248a90fae1d6cb1f84` |
| 36 | `theorem` | [condexpL2_indicator_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpl2-indicator-nonneg--a56da8d4946898b4f9d1a3b5.md) | 499 | `result-track:a56da8d4946898b4f9d1a3b5c867c58e1b9a5db0836faf4ce304570f560a52da` |
| 37 | `theorem` | [condexpIndSMul_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CondexpL2/Variant4015153f634dc00df76abe8d68d9c46ac8016f3dab01afe286c51fe2c60b814b.lean/declarations/condexpindsmul-nonneg--e53cc98ec9b1a9a81628046c.md) | 524 | `result-track:e53cc98ec9b1a9a81628046ccae49b5f9f93858b90aaf6299e9aaf15d28f03ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
