# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiConditionalLaplace.Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4dcc4afda588d9013f4a9a47f7da3329dcd4c238",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4dcc4afda588d9013f4a9a47f7da3329dcd4c238`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative--e25bdb62a7bc30258aaced6e.md) | 20 | `declaration-track:e25bdb62a7bc30258aaced6efb8a59713d6858c50b7209e55a8e348e94a8e437` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiconditionallaplacebudget--a399c1cef07fb3dc8099f29e.md) | 24 | `declaration-track:a399c1cef07fb3dc8099f29e3c9fd476d923f8b960ae8402cbd10f1af103806b` |
| 3 | `theorem` | [lower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/lower-nonneg--d2996ded94b9ec9021166646.md) | 27 | `result-track:d2996ded94b9ec9021166646b76e27a9935925a95307df3fda91d403c4716633` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actual-abs-intervalintegrable--8c1f0080fa4347dd09e18edc.md) | 29 | `result-track:8c1f0080fa4347dd09e18edcb4e6dd397841db2cf770ac94b05cf75a6dd6c278` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative-at-lower--2bbae9e549f5e2787876f86d.md) | 34 | `result-track:2bbae9e549f5e2787876f86df74298e1885d6221b0c892770289bda039fa205e` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative-nonneg--0c80f54f3af3982f5b870e66.md) | 39 | `result-track:0c80f54f3af3982f5b870e66e1c8fb43a1202aaf5e19371ec2537393fa1b8c02` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous--1c7de034ffc8fad6c5f6c21e.md) | 44 | `result-track:1c7de034ffc8fad6c5f6c21e710231a89ef7c47cb5ad2bbe932b7a588a645fa5` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative-ae-hasderivat--10c697fd9cc0e1c880c05865.md) | 50 | `result-track:10c697fd9cc0e1c880c058655a6c6bcf3b8d84a21dba4aca944bcac86210c66e` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/cumulative-weight-intervalintegrable--efc953529838335812a2bfde.md) | 56 | `result-track:efc953529838335812a2bfde62e17eeaef2350870995c77250d2329b0d938858` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/absolute-weight-intervalintegrable--6893e28e94a8e7995f83e893.md) | 63 | `result-track:6893e28e94a8e7995f83e893fc77d819c60c1defdf67b894c260b89f3deb24ee` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxilaplace-finite-abel--fb0351d99cf3f43896bf08a7.md) | 70 | `result-track:fb0351d99cf3f43896bf08a7414740bb840db49e04946f01b51fbac2d30c599c` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxiabsolutecumulative-le-future-envelope--cfdf327e378c4e1d1d090554.md) | 104 | `result-track:cfdf327e378c4e1d1d090554838ae77904733435f35743b18f9793c56cba331a` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/polynomial-exponential-bound--9bd76d5eddc3917179d0b644.md) | 117 | `result-track:9bd76d5eddc3917179d0b6445ee7823bfa22c012188ba84dc65356396180cc9a` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/cumulative-weight-norm-bound--6eb8128a0a7d8682ecf860a1.md) | 143 | `result-track:6eb8128a0a7d8682ecf860a134f2def61f4dc478a1b98e398b156c4ac4b7f495` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxicumulativelaplace-integrableon--ccc908aee4b395bcec56e977.md) | 163 | `result-track:ccc908aee4b395bcec56e977cfc5c41ffa476eb51e98875c7688ea2c4ef1ea44` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxicumulativelaplace-tendsto-zero--84fa229a52a2a5e8af3b6630.md) | 180 | `result-track:84fa229a52a2a5e8af3b6630bf401f28cfb746822445cb4fa894d026ff7c1b15` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/absolute-laplace-finite-tendsto--9a6e47b6a2b897818e63350f.md) | 194 | `result-track:9a6e47b6a2b897818e63350f285ff09e63ffbea4e63fa781486e29d0153eaec8` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxilaplace-integrableon-of-future-average--f8381637b25cfefa8e848f7d.md) | 211 | `result-track:f8381637b25cfefa8e848f7d88034c52aa582bfdb6c2ebf5dcc3425c10518469` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxilaplace-integral-norm-eq--353cdb14067b71ff67c83ab0.md) | 229 | `result-track:353cdb14067b71ff67c83ab0d2566ebb18d58da70220d08ab618822d1b793a40` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxilaplace-integral-norm-le--f47e15174180d99fe2a585cb.md) | 240 | `result-track:f47e15174180d99fe2a585cbb153a2945fa372174c39f31eb02b56881c31e5c5` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variantd588959fd3965e3a810ba38e3a21f4b80b8cdcffd5583220d3dde3d743056654.lean/declarations/actualxilaplace-norm-le--7fd384d0eaadc8b0061bf765.md) | 270 | `result-track:7fd384d0eaadc8b0061bf76595bd44a542828c063c673a669a3084b7dd072550` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
