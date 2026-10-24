# Verification target: GRWTSK.Analysis.ComplexAnalysis.ChangeOrigin.Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "629ab31e47e41f37da5294b31714843074c32328",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `629ab31e47e41f37da5294b31714843074c32328`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Analytic.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseriesterm--acfefe82597502fa9d6f96bf.md) | 60 | `declaration-track:acfefe82597502fa9d6f96bf625ff4dd11c61295a8fa2a8ff84116de2960ceef` |
| 2 | `theorem` | [changeOriginSeriesTerm_apply](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseriesterm-apply--c35e32b8d140d26d3f764103.md) | 66 | `result-track:c35e32b8d140d26d3f764103d204876c92d9b8002666990647a279248660c890` |
| 3 | `theorem` | [norm_changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/norm-changeoriginseriesterm--016ae7d35b39456c4e8eb3cc.md) | 73 | `result-track:016ae7d35b39456c4e8eb3ccf89c1f373a0cc839c7015334cd1765f0cb5108d5` |
| 4 | `theorem` | [nnnorm_changeOriginSeriesTerm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/nnnorm-changeoriginseriesterm--1039818763b6affe9dc01ee1.md) | 78 | `result-track:1039818763b6affe9dc01ee153549fa0e382896aa06c08ea163e2b25b9e98f71` |
| 5 | `theorem` | [nnnorm_changeOriginSeriesTerm_apply_le](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/nnnorm-changeoriginseriesterm-apply-le--72a2923d55b25bda3a0a35d9.md) | 82 | `result-track:72a2923d55b25bda3a0a35d9b166880ac75fcb64c8449a11c9cfb4c0e6abcfa7` |
| 6 | `def` | [changeOriginSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseries--5531244704180654da46d4c0.md) | 96 | `declaration-track:5531244704180654da46d4c001f3f7a548d5ad5c478b85a2ae569291da797c1e` |
| 7 | `theorem` | [nnnorm_changeOriginSeries_le_tsum](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/nnnorm-changeoriginseries-le-tsum--61e1949f6a3df02582a52d3e.md) | 99 | `result-track:61e1949f6a3df02582a52d3e1cbc26f24bff6732a736df37b3a7b2bdeb0e914a` |
| 8 | `theorem` | [nnnorm_changeOriginSeries_apply_le_tsum](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/nnnorm-changeoriginseries-apply-le-tsum--0055011a9c6e699ae10a34b3.md) | 105 | `result-track:0055011a9c6e699ae10a34b3cc2ad8f38b93733fb5c2d7545af83ee060afa75a` |
| 9 | `def` | [changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeorigin--8d6628379f48106f114178fb.md) | 114 | `declaration-track:8d6628379f48106f114178fb5c937917a7f30ea5d61e1a80352f0062dea4a6c5` |
| 10 | `def` | [changeOriginIndexEquiv](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginindexequiv--8b853288185bedd7026ee42d.md) | 126 | `declaration-track:8b853288185bedd7026ee42d834ad7d6851daff742a366883aaa0c8b4a11c476` |
| 11 | `lemma` | [changeOriginSeriesTerm_changeOriginIndexEquiv_symm](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseriesterm-changeoriginindexequiv-symm--ae972e69754a88eccadeba7c.md) | 148 | `result-track:ae972e69754a88eccadeba7c250b90f85332461b99adbf90559cefab9caf2de5` |
| 12 | `theorem` | [changeOriginSeries_summable_aux₁](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseries-summable-aux--ff33af42448f6ed39d00948f.md) | 158 | `result-track:ff33af42448f6ed39d00948f1657fa44e9973ed5ef1627b76cce557de776affa` |
| 13 | `theorem` | [changeOriginSeries_summable_aux₂](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseries-summable-aux--52fa7119ff38959609ccf886.md) | 178 | `result-track:52fa7119ff38959609ccf8868b75068474481f97ed56b1f214e94ee5529d10be` |
| 14 | `theorem` | [changeOriginSeries_summable_aux₃](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeoriginseries-summable-aux--451fa2fab537396f9b5180d0.md) | 185 | `result-track:451fa2fab537396f9b5180d0b3826f81de17cd20368d9239daf8b2c35e3f5ab2` |
| 15 | `theorem` | [le_changeOriginSeries_radius](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/le-changeoriginseries-radius--b73c9f17f23974f0e5e928ed.md) | 193 | `result-track:b73c9f17f23974f0e5e928edc92420b1fb5dd5df16c2ba83a571f53f38587fd3` |
| 16 | `theorem` | [nnnorm_changeOrigin_le](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/nnnorm-changeorigin-le--9e564a12c3f687dd7160885e.md) | 197 | `result-track:9e564a12c3f687dd7160885ee07a8da5d51f6f34cb29a6f0a139fbd26ce8add4` |
| 17 | `theorem` | [changeOrigin_radius](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeorigin-radius--77e4114ac1d67dc92f3fc8aa.md) | 208 | `result-track:77e4114ac1d67dc92f3fc8aaa473c6ce154432e6c3fc6c0b9db9f6d84c37a594` |
| 18 | `def` | [derivSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/derivseries--41c4d50267ade187ddce42cc.md) | 224 | `declaration-track:41c4d50267ade187ddce42ccbad52d9018fe35366f7c1c65b9a6acc7f04b0026` |
| 19 | `theorem` | [radius_le_radius_derivSeries](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/radius-le-radius-derivseries--dcae3ea0f33872494a392b8a.md) | 228 | `result-track:dcae3ea0f33872494a392b8a3ac2da3538df922db21eda8418db07af2fbf5540` |
| 20 | `theorem` | [derivSeries_eq_zero](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/derivseries-eq-zero--756290ba1a857f8d4d711ce2.md) | 234 | `result-track:756290ba1a857f8d4d711ce248b0fd06d45691a56555b39bfd78491d9eae8e5c` |
| 21 | `theorem` | [hasFPowerSeriesOnBall_changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerseriesonball-changeorigin--143d0a2838a0b46f7dbe49fc.md) | 248 | `result-track:143d0a2838a0b46f7dbe49fcdf59675f14e27f9557d2c149e0b32ba3774b4c81` |
| 22 | `theorem` | [changeOrigin_eval](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/changeorigin-eval--611021f1e87d693c9aba6899.md) | 254 | `result-track:611021f1e87d693c9aba68999d1eb96b4545ad41fd387b893cefedccb027523e` |
| 23 | `theorem` | [analyticAt_changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/analyticat-changeorigin--ed1b837bd2e9d1c6f9320d08.md) | 294 | `result-track:ed1b837bd2e9d1c6f9320d08fa7e19438a4b35b703c732d00d21243a2c3f2178` |
| 24 | `theorem` | [HasFPowerSeriesWithinOnBall.changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerserieswithinonball-changeorigin--266978401f525fb84f6e1d5e.md) | 309 | `result-track:266978401f525fb84f6e1d5e098924b42ae5753531320b74730ce08efe87812f` |
| 25 | `theorem` | [HasFPowerSeriesOnBall.changeOrigin](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerseriesonball-changeorigin--eddeca7ea1d790fe097a4dfd.md) | 335 | `result-track:eddeca7ea1d790fe097a4dfd10474ed4a1bb2bc328ee39e1d0f7a23200e3eeb5` |
| 26 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticWithinAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerserieswithinonball-analyticwithinat-of-mem--4ca6fbec386469fb099dea1e.md) | 342 | `result-track:4ca6fbec386469fb099dea1ed15dae2aa1e3264b1005dc4e0a861639fe7773bf` |
| 27 | `theorem` | [HasFPowerSeriesOnBall.analyticAt_of_mem](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerseriesonball-analyticat-of-mem--62fa42fe87e9457b12f648a1.md) | 352 | `result-track:62fa42fe87e9457b12f648a196d14b40fd3e3056e0e75916f6103c281d0fabfd` |
| 28 | `theorem` | [HasFPowerSeriesWithinOnBall.analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerserieswithinonball-analyticon--779473f526a6388a672dc550.md) | 358 | `result-track:779473f526a6388a672dc55042d013732e803c4d5c57944da01bf44cfd4bdba6` |
| 29 | `theorem` | [HasFPowerSeriesOnBall.analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/hasfpowerseriesonball-analyticonnhd--f204e9ba791706eaa57d5932.md) | 363 | `result-track:f204e9ba791706eaa57d593215b28ab5f5dc4737a981ac4d7f1d3dc0df92490d` |
| 30 | `theorem` | [isOpen_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/isopen-analyticat--00a5f7db631a2ecedc075498.md) | 370 | `result-track:00a5f7db631a2ecedc07549804d1c9a13dd8711b837514c10b928e39ebdb9b62` |
| 31 | `theorem` | [AnalyticAt.eventually_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/analyticat-eventually-analyticat--04e91bce53c852f0871e7de4.md) | 375 | `result-track:04e91bce53c852f0871e7de49d7ec1c04d2b6f3c0b573eb1a4edb3ce45acf245` |
| 32 | `theorem` | [AnalyticAt.exists_mem_nhds_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/analyticat-exists-mem-nhds-analyticonnhd--944c8a7f213c81c79be5a8a3.md) | 379 | `result-track:944c8a7f213c81c79be5a8a36998b510cf951b5405ae321536f580bedc449687` |
| 33 | `theorem` | [AnalyticAt.exists_ball_analyticOnNhd](../../../../../mathematics/Analysis/ComplexAnalysis/ChangeOrigin/Variant0699c89a83168698be82a8804f93f6e638b76a34c31c8ea72a2166fe58c0e0f0.lean/declarations/analyticat-exists-ball-analyticonnhd--30e71e00d2cd050176c223f6.md) | 384 | `result-track:30e71e00d2cd050176c223f6ea1e9d6a72ab08d91c48417698169e5890856381` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
