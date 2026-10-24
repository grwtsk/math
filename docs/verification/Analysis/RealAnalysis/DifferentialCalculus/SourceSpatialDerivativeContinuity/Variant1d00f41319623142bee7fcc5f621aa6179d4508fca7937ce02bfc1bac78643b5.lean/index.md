# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceSpatialDerivativeContinuity.Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff64fd2a17fb92de85d020dbc6770b25a710ba16",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff64fd2a17fb92de85d020dbc6770b25a710ba16`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceScaleDerivative` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceCorrelationCurvature` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [spatialDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative--c8b0f81c2d306c93e927a4c2.md) | 26 | `declaration-track:c8b0f81c2d306c93e927a4c26b6ec23d4cfab931837c578f1000d1df2b23331a` |
| 2 | `theorem` | [normalizedSource_hasSpatialDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/normalizedsource-hasspatialderivat--1ab101aa990f8e5a39edcb7e.md) | 31 | `result-track:1ab101aa990f8e5a39edcb7e51c69bb970f88f4bd65f1ab3ef615385977b72ca` |
| 3 | `theorem` | [spatialDerivative_eq_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-eq-deriv--ff0a4f175370a897b64ca487.md) | 50 | `result-track:ff0a4f175370a897b64ca4870de46a2704f20263ca17e7e88cf6c6d218aa378d` |
| 4 | `theorem` | [spatialDerivative_continuousAt_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-continuousat-joint--457b35c58b925621c9098ae2.md) | 55 | `result-track:457b35c58b925621c9098ae246383057662c0ee1727d4c5aea95aab2f77162e7` |
| 5 | `theorem` | [spatialDerivative_continuousOn_joint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-continuouson-joint--ae3b1c5c260de47c8e8ef62d.md) | 66 | `result-track:ae3b1c5c260de47c8e8ef62d7bcca143e0ca4a5d0bc72d6eb124d8df1cb4e450` |
| 6 | `theorem` | [spatialDerivative_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-continuous--beb254a6896c834844dfbc64.md) | 71 | `result-track:beb254a6896c834844dfbc64f81168f67889f2a125d915e4dd3a7e09d21e6877` |
| 7 | `theorem` | [spatialDerivative_zero_of_le_abs](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-zero-of-le-abs--2a771be03dd821c83a9fa1df.md) | 79 | `result-track:2a771be03dd821c83a9fa1dfd6705e3eab730727dbdad1e8b891906500df2ea7` |
| 8 | `theorem` | [spatialDerivative_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-hascompactsupport--e8323ceeec8247c9aec73b88.md) | 88 | `result-track:e8323ceeec8247c9aec73b888c1ec2e844a9680a3b07018bf689de2f33c7060e` |
| 9 | `theorem` | [spatialDerivative_memLp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-memlp--e9131c5fbc40e67cf0f75822.md) | 103 | `result-track:e9131c5fbc40e67cf0f7582272f5616efb8b5e6eeedd2da5c54f316add2fd146` |
| 10 | `def` | [spatialDerivativeL2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativel2--61cdab1e7ceab0333bc3b236.md) | 109 | `declaration-track:61cdab1e7ceab0333bc3b23628bc0227bce12260ad0571894e947aafc138df22` |
| 11 | `theorem` | [spatialDerivativeL2_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativel2-coe-ae--c5a30e9b9b3edfbabcf19b74.md) | 113 | `result-track:c5a30e9b9b3edfbabcf19b74f45f9bba712f2cf949bca48c506534bb80681c48` |
| 12 | `def` | [spatialDerivativeState](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate--f655c1e79f512e6e09f24e71.md) | 123 | `declaration-track:f655c1e79f512e6e09f24e71f3b3b2aef14aadfbce8f5a15a90ff2cd7e2de066` |
| 13 | `theorem` | [spatialDerivativeState_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-eq--6b957a9d966781d46e07811d.md) | 127 | `result-track:6b957a9d966781d46e07811d7e5f5c3dbf98aa57764351dd6b22750f42a628ec` |
| 14 | `theorem` | [spatialDerivativeState_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-coe-ae--e896f8be6c5d7512004c1b49.md) | 132 | `result-track:e896f8be6c5d7512004c1b49521293261548fecd515ef9aa42d44fd38c5f010c` |
| 15 | `theorem` | [spatialDerivativeState_norm_sub_sq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-norm-sub-sq--3f9e9f239a4abf007faebb55.md) | 138 | `result-track:3f9e9f239a4abf007faebb55569d10f77d9dac47248cf1e1f25b156aa9816bae` |
| 16 | `theorem` | [spatialDerivative_differenceIntegral_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivative-differenceintegral-continuouson--b1e44cca988c3df75152157c.md) | 159 | `result-track:b1e44cca988c3df75152157c0b7d2a3307941e56f93813733dd9c80d71cfc116` |
| 17 | `theorem` | [spatialDerivativeState_continuousAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-continuousat--d8badc097289b43dfc83889e.md) | 183 | `result-track:d8badc097289b43dfc83889efe9a483b9424655b179d41cc59ecd583e647d0f8` |
| 18 | `theorem` | [spatialDerivativeState_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-continuouson--a0dafaa4215d2de73e86674a.md) | 203 | `result-track:a0dafaa4215d2de73e86674a0612a49d2c067fc33e5a65cdf178dc831a19b710` |
| 19 | `theorem` | [real_inner_of_representatives](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/real-inner-of-representatives--1a31805cec64c12b91070b05.md) | 210 | `result-track:1a31805cec64c12b91070b05acf701734e00cfdcf69a4ef317f9a05fd402d941` |
| 20 | `theorem` | [translate_real_representative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/translate-real-representative--c9c5e49379ead3c63e708469.md) | 226 | `result-track:c9c5e49379ead3c63e708469414c2df654941cb1e7af07707a01c6a84fe5442c` |
| 21 | `theorem` | [sourceCorrelationPrime_eq_inner](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-eq-inner--fe2a70897b1af865682d55c9.md) | 234 | `result-track:fe2a70897b1af865682d55c9917f24717a79edc7153cbae0870b46a1ba466208` |
| 22 | `theorem` | [mixed_spatialDerivative_inner_neg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/mixed-spatialderivative-inner-neg--f680d66085dfa5c689726658.md) | 243 | `result-track:f680d66085dfa5c6897266585c32d6fef7993b610d0ff4e6553a9b5b961afc77` |
| 23 | `theorem` | [sourceCorrelationPrime_sub_eq_mixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-sub-eq-mixed--2c00de9f32053a17b2142410.md) | 272 | `result-track:2c00de9f32053a17b214241069ba7e8cb00b5ddf677ba219c6c63c5f48615dba` |
| 24 | `def` | [correlationPrimeScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/correlationprimescalederivative--3c4262210db0c3caf9d1801f.md) | 289 | `declaration-track:3c4262210db0c3caf9d1801f9f75d565df66250855a2aca5bfeaa2126affeeb7` |
| 25 | `theorem` | [sourceCorrelationPrime_slope_eq_mixed](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-slope-eq-mixed--511a3d508a0f3f5a8ce0ebda.md) | 294 | `result-track:511a3d508a0f3f5a8ce0ebda826dcacdf6bb06b4d00e3045bcd7b08b6c7d9044` |
| 26 | `theorem` | [sourceCorrelationPrime_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-hasderivat-scale--9c97ba21651236ee49c6e657.md) | 320 | `result-track:9c97ba21651236ee49c6e65721f72d6d882e28449bc1ff6230144fa22e2085f0` |
| 27 | `theorem` | [correlationPrimeScaleDerivative_continuousAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/correlationprimescalederivative-continuousat-scale--879565246155045ef33755b3.md) | 340 | `result-track:879565246155045ef33755b3cd783a16cd1d20dddc5b2f75215bd66a88c5fb06` |
| 28 | `theorem` | [sourceCorrelationPrime_contDiffOn_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-contdiffon-scale--67e5ab5da3e8834ad9ea0d5a.md) | 352 | `result-track:67e5ab5da3e8834ad9ea0d5a2565228b5634d72780136589457bcf502676b0c4` |
| 29 | `theorem` | [sourceCorrelationPrime_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/sourcecorrelationprime-contdiffat-scale--1d2f4a896c3c4c8fda101f3a.md) | 364 | `result-track:1d2f4a896c3c4c8fda101f3a5e8d03a3eb1fa3ff36c7f0f92a45b374fa926448` |
| 30 | `theorem` | [spatialDerivativeState_deriv_coe_ae](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/spatialderivativestate-deriv-coe-ae--62cf2d299a9385d68b367daf.md) | 372 | `result-track:62cf2d299a9385d68b367daf933d32dc710ff718c7c8a142efe11519b0fb5a47` |
| 31 | `theorem` | [correlationPrimeScaleDerivative_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/correlationprimescalederivative-eq-integral--ef7ec4d20f6f399d45472570.md) | 378 | `result-track:ef7ec4d20f6f399d4547257025c1e158ee66ae329ff9588685dd64e59e500bf9` |
| 32 | `theorem` | [correlationPrimeScaleDerivative_integrable_terms](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/correlationprimescalederivative-integrable-terms--7dedccd63aee60bdd5b4d1b4.md) | 389 | `result-track:7dedccd63aee60bdd5b4d1b428c2d307514fb1282098382005361a81f9671e11` |
| 33 | `theorem` | [correlationPrimeScaleDerivative_zero_shift](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceSpatialDerivativeContinuity/Variant1d00f41319623142bee7fcc5f621aa6179d4508fca7937ce02bfc1bac78643b5.lean/declarations/correlationprimescalederivative-zero-shift--4a726f0642718ee12ec931d5.md) | 402 | `result-track:4a726f0642718ee12ec931d55a7d2182a180c2c3e14357665a20b0574ac484a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
