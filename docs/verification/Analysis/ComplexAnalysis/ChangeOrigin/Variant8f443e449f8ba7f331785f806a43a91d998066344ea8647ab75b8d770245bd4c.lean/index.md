# Verification target: GRWTSK.Analysis.ComplexAnalysis.ChangeOrigin.Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a45a0f0433d855565817fc2da22b97564dc61173",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a45a0f0433d855565817fc2da22b97564dc61173`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseriesterm--00902539d23999ba4d821d2e.md) | 68 | `declaration-track:00902539d23999ba4d821d2e2bcf2b94021b05f9515fcd7801fd03206f395d0c` |
| 2 | `theorem` | [changeOriginSeriesTerm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseriesterm-apply--e0cbc1fdfc93c6e7c752eff6.md) | 74 | `result-track:e0cbc1fdfc93c6e7c752eff68ad04a2b2a9d30edde98342e46dffca06b9e89a6` |
| 3 | `theorem` | [norm_changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/norm-changeoriginseriesterm--4da060b62a539a197d647859.md) | 81 | `result-track:4da060b62a539a197d647859ad3800d9da04d972cbbcb4d678fbb39e452eeedc` |
| 4 | `theorem` | [nnnorm_changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/nnnorm-changeoriginseriesterm--6990d8b0e164754049435259.md) | 86 | `result-track:6990d8b0e1647540494352595e8aeb87784b0b517c027a6e95a6b825cae207b2` |
| 5 | `theorem` | [nnnorm_changeOriginSeriesTerm_apply_le](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/nnnorm-changeoriginseriesterm-apply-le--24d48798261d2ba641058efb.md) | 90 | `result-track:24d48798261d2ba641058efb9483d01c4e254d426688d9bfe8e5d9b7b5f98899` |
| 6 | `def` | [changeOriginSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseries--95c7b5efb0edb7edbfbe45a0.md) | 104 | `declaration-track:95c7b5efb0edb7edbfbe45a01bd4157016f63c0e481a0076f518111bec4a180f` |
| 7 | `theorem` | [nnnorm_changeOriginSeries_le_tsum](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/nnnorm-changeoriginseries-le-tsum--23c1c6967921bf5c608ee6bf.md) | 107 | `result-track:23c1c6967921bf5c608ee6bf7901f907d2db2df0d2a6d3d01a925c6fe6dbad6e` |
| 8 | `theorem` | [nnnorm_changeOriginSeries_apply_le_tsum](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/nnnorm-changeoriginseries-apply-le-tsum--d437d3edc72ce9ed8ac98a03.md) | 113 | `result-track:d437d3edc72ce9ed8ac98a03f4b22799d53077d1018fc7681305d310cbd8e97b` |
| 9 | `def` | [changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeorigin--83efe0730474560b54433cb7.md) | 122 | `declaration-track:83efe0730474560b54433cb7abb621163e408813d7b7cf5564d0c28862a4eb7f` |
| 10 | `def` | [changeOriginIndexEquiv](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginindexequiv--5c42ad8dbb2949ec268c2e2f.md) | 134 | `declaration-track:5c42ad8dbb2949ec268c2e2f32ba945966a5e604407b0740203bfbac79d29b27` |
| 11 | `lemma` | [changeOriginSeriesTerm_changeOriginIndexEquiv_symm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseriesterm-changeoriginindexequiv-symm--d9b95301050c7d5ba369a6cb.md) | 156 | `result-track:d9b95301050c7d5ba369a6cb07a85d21e499c3b8733a749ff50d814ff0a6014f` |
| 12 | `theorem` | [changeOriginSeries_summable_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseries-summable-aux--f07f7690b0ed8b41aad61c55.md) | 166 | `result-track:f07f7690b0ed8b41aad61c551dfa8ad41a8746f325823e69f1bfaf4da343fef8` |
| 13 | `theorem` | [changeOriginSeries_summable_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseries-summable-aux--9e2aca2572fe41805c7be581.md) | 186 | `result-track:9e2aca2572fe41805c7be581e77ea60543d35527062be7d0e90cf0c5702fd51d` |
| 14 | `theorem` | [changeOriginSeries_summable_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeoriginseries-summable-aux--4a656b61ad3926b688b52b71.md) | 193 | `result-track:4a656b61ad3926b688b52b71682a37d64a545b5ab2c0c2bb92df10cea06c99ff` |
| 15 | `theorem` | [le_changeOriginSeries_radius](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/le-changeoriginseries-radius--5a2204529412caed1b69d1b5.md) | 201 | `result-track:5a2204529412caed1b69d1b56783db216641ae01416ab8fef6658fca3057d655` |
| 16 | `theorem` | [nnnorm_changeOrigin_le](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/nnnorm-changeorigin-le--8e4c88b083f05df386c3f836.md) | 205 | `result-track:8e4c88b083f05df386c3f836bf32b9b180bee6d51c702960eb1af615c2ffed9e` |
| 17 | `theorem` | [changeOrigin_radius](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeorigin-radius--d4531e1183db3696016133c8.md) | 216 | `result-track:d4531e1183db3696016133c88f1fb39f1fc7fc903a81a920aac4b4c778906d34` |
| 18 | `def` | [derivSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/derivseries--fb9e54e720415f2f62da8b67.md) | 232 | `declaration-track:fb9e54e720415f2f62da8b679019220284c9f22e92db3abbbf4cdd0b18ae23cd` |
| 19 | `theorem` | [radius_le_radius_derivSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/radius-le-radius-derivseries--99467eb4008f6faefeaa022f.md) | 236 | `result-track:99467eb4008f6faefeaa022fe93f00abd7359308dd8c94eb8c2e86e54fc70502` |
| 20 | `theorem` | [derivSeries_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/derivseries-eq-zero--066f05cb1648556df72f812a.md) | 242 | `result-track:066f05cb1648556df72f812a182e1514d36a421863a4032f5d3d0d500863fca3` |
| 21 | `theorem` | [hasFPowerSeriesOnBall_changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerseriesonball-changeorigin--7de1b5a100acf54e0dbac282.md) | 256 | `result-track:7de1b5a100acf54e0dbac2820bbc54b87ca17809c41f1b564628e94255e8f326` |
| 22 | `theorem` | [changeOrigin_eval](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/changeorigin-eval--07a29d1a0be584d02c12c63c.md) | 262 | `result-track:07a29d1a0be584d02c12c63cb0b8142ab92f62a6bf90b6f0fad3b6b557e4d11c` |
| 23 | `theorem` | [analyticAt_changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/analyticat-changeorigin--7721040b353e028e24f8b4cf.md) | 302 | `result-track:7721040b353e028e24f8b4cf9a32bcc6c620aaa9e485142085dfe373f34a332d` |
| 24 | `theorem` | [HasFPowerSeriesWithinOnBall.changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerserieswithinonball-changeorigin--c231373f327b5f3b6e2c5e21.md) | 317 | `result-track:c231373f327b5f3b6e2c5e210d1e37e174a190e746e34ea6138f0c19d9b9d564` |
| 25 | `theorem` | [HasFPowerSeriesOnBall.changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerseriesonball-changeorigin--9fe366b88216d8fe875fee8d.md) | 343 | `result-track:9fe366b88216d8fe875fee8d4cdeb33f21eceec0e4a0a25596fb880984fb5c24` |
| 26 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticWithinAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerserieswithinonball-analyticwithinat-of-mem--6e9101fcdaffd994d24c31df.md) | 350 | `result-track:6e9101fcdaffd994d24c31dfe6e70a7dbb4515fa3cceb04a877100b940fd9b45` |
| 27 | `theorem` | [HasFPowerSeriesOnBall.analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerseriesonball-analyticat-of-mem--1a4f3588f7e05b10e78f929c.md) | 360 | `result-track:1a4f3588f7e05b10e78f929c9f142c6757625682244de4c1a6f48c60e4be2e89` |
| 28 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerserieswithinonball-analyticon--26e3364c5e21dcbc6571fd63.md) | 366 | `result-track:26e3364c5e21dcbc6571fd63599dffde4d10ca416ae87c0134741c3b656425f3` |
| 29 | `theorem` | [HasFPowerSeriesOnBall.analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/hasfpowerseriesonball-analyticonnhd--3f2d1096873dbbfcac6a3004.md) | 371 | `result-track:3f2d1096873dbbfcac6a3004d1bebba02a2b8a84606ed2d37429fd437a4dd2da` |
| 30 | `theorem` | [isOpen_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/isopen-analyticat--17227998af71c6396591ae24.md) | 378 | `result-track:17227998af71c6396591ae240e02a735faae464d22e78dbfeedd07ad75871970` |
| 31 | `theorem` | [AnalyticAt.eventually_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/analyticat-eventually-analyticat--95f3ccf7b7635eba2fb0f403.md) | 383 | `result-track:95f3ccf7b7635eba2fb0f403f97303ed1096c9293c05d3a54dde3f7b9b291b84` |
| 32 | `theorem` | [AnalyticAt.exists_mem_nhds_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/analyticat-exists-mem-nhds-analyticonnhd--afdae4e3679343f25a302ac1.md) | 387 | `result-track:afdae4e3679343f25a302ac1732af21ce662d296b47bf8ac59fa938cee5d3def` |
| 33 | `theorem` | [AnalyticAt.exists_ball_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant8f443e449f8ba7f331785f806a43a91d998066344ea8647ab75b8d770245bd4c.lean/declarations/analyticat-exists-ball-analyticonnhd--58f2331f3e4b9a81bf17fccd.md) | 392 | `result-track:58f2331f3e4b9a81bf17fccd8e8768ec23c19b3b76dffc878443b43ccab5ccaa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
