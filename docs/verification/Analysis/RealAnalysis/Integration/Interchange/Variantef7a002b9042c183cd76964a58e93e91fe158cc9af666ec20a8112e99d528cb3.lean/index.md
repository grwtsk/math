# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Interchange.Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9c7ca8005a13569810f8fc7ed1c9b3fe5372054",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9c7ca8005a13569810f8fc7ed1c9b3fe5372054`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceZeroSummability` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SourceLaplaceDomain` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/occurrenceintegrand--55b139937e36c4c85cba2dbe.md) | 22 | `declaration-track:55b139937e36c4c85cba2dbe0df27850e4c73a8d716d7000be3103eddd0786b1` |
| 2 | `def` | [scaleMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/scalemajorant--cd49b9e4b73ef9a2f4702a0e.md) | 25 | `declaration-track:cd49b9e4b73ef9a2f4702a0ead2b1413180df43d3db58174c4b03610b210ed0b` |
| 3 | `lemma` | [occurrenceIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/occurrenceintegrand-integrable--65e9a4448724bc834f3705aa.md) | 28 | `result-track:65e9a4448724bc834f3705aa1e484d8531e4f4e38fcd3444cfefa0f9cbab9cbb` |
| 4 | `lemma` | [integral_occurrenceIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/integral-occurrenceintegrand--e0b127c85243203ef79e8aac.md) | 32 | `result-track:e0b127c85243203ef79e8aac17d4117a8a4319e5283764bc176a7cb79105578c` |
| 5 | `lemma` | [scaleMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/scalemajorant-integrable--ebf0e1114659a94ba8a80f78.md) | 36 | `result-track:ebf0e1114659a94ba8a80f78f257c7e6d56346964b7e344d6f5a3dd1eabbe22f` |
| 6 | `lemma` | [occurrenceIntegrand_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/occurrenceintegrand-norm-le--4788959000cb028623bce288.md) | 47 | `result-track:4788959000cb028623bce288ac6fef026553612d4ccb1f82b4ccbffa0fcb9890` |
| 7 | `lemma` | [integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/integral-norm-le--c780729ba745aa487c4ecd38.md) | 72 | `result-track:c780729ba745aa487c4ecd38f6c675a70e3b59bce2ff9ba7e8ae3456953499c5` |
| 8 | `lemma` | [integral_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/integral-norms-summable--6167112d2562aad43d51af14.md) | 81 | `result-track:6167112d2562aad43d51af144e318381e08bf9a991c02b43b9551827d180527d` |
| 9 | `lemma` | [integrals_enorm_ne_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/integrals-enorm-ne-top--8403747be204780b0235eb63.md) | 90 | `result-track:8403747be204780b0235eb635eb612de7d92405918c87340dbdba8c1587fd426` |
| 10 | `lemma` | [summedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/summedintegrand-integrable--bea6e115f8741588f84d8c8c.md) | 98 | `result-track:bea6e115f8741588f84d8c8c81c877c4556e93272b03c5cbf5e0dd08307a4807` |
| 11 | `lemma` | [integral_tsum_occurrences](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/integral-tsum-occurrences--1adb4abf3bc31ee6ce5c3702.md) | 109 | `result-track:1adb4abf3bc31ee6ce5c370218eb9e226364dc243912d6da7747b383e560da88` |
| 12 | `lemma` | [sourceKernel_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/sourcekernel-norms-summable--4577ceccbf9d8e1e409e9501.md) | 116 | `result-track:4577ceccbf9d8e1e409e9501782cfdcb34119379630d500d26aab949ccc142c7` |
| 13 | `lemma` | [occurrenceIntegrand_norms_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/occurrenceintegrand-norms-summable--f0ddc4ff64fc5a474a3acde5.md) | 122 | `result-track:f0ddc4ff64fc5a474a3acde50ac203fd0903886b83ce1a1e1b0e38c26958cc3c` |
| 14 | `lemma` | [occurrenceIntegrand_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/occurrenceintegrand-summable--3bfd55fb14ed62a40a8b50ca.md) | 128 | `result-track:3bfd55fb14ed62a40a8b50caa557a8bb590cf5dfbc5f9cadefabb7e954a9ba3e` |
| 15 | `lemma` | [summedIntegrand_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/summedintegrand-eq--0b52556be54ee96db8a34256.md) | 132 | `result-track:0b52556be54ee96db8a34256f6da76c0cc38cd516e1057267e1543416657639f` |
| 16 | `lemma` | [source_series_laplace_transform](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Interchange/Variantef7a002b9042c183cd76964a58e93e91fe158cc9af666ec20a8112e99d528cb3.lean/declarations/source-series-laplace-transform--6ac3c8937e5563ba542ce496.md) | 140 | `result-track:6ac3c8937e5563ba542ce49675069be3933860b5e837ba59f2266b55081c7dd2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
