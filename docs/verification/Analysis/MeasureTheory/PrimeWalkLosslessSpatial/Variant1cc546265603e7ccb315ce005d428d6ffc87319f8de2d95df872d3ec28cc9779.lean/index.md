# Verification target: GRWTSK.Analysis.MeasureTheory.PrimeWalkLosslessSpatial.Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "080fc19172352ae85a1a9a70519aa8f98ba8768f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `080fc19172352ae85a1a9a70519aa8f98ba8768f`.

Source path: `GRWTSK/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Operator.Bilinear` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [SpatialPoint](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/spatialpoint--b4ad6292beb5ddbab3d7169e.md) | 43 | `declaration-track:b4ad6292beb5ddbab3d7169e2d7ad6c4d1e849962643d4af4f4b8c99fb4d0c47` |
| 2 | `abbrev` | [SpatialL2](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/spatiall2--1b9a89b2145d2c4f973575f7.md) | 47 | `declaration-track:1b9a89b2145d2c4f973575f7dbcc3e14dc2ce0a49c0579e2f79b89254910eabb` |
| 3 | `def` | [indexedMatrixAmplitude](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/indexedmatrixamplitude--b3f10aa89dd193e0229bd785.md) | 55 | `declaration-track:b3f10aa89dd193e0229bd785050ece3db4c06feef32fb6c38fe4bb39c3f2e7ea` |
| 4 | `theorem` | [indexedMatrixAmplitude_norm](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/indexedmatrixamplitude-norm--09b4e28a52fd9f2637abc64e.md) | 61 | `result-track:09b4e28a52fd9f2637abc64eec3451942a33cc4995908ca0bd318bd5c68a8da4` |
| 5 | `structure` | [UniformLosslessSpatialCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/uniformlosslessspatialcodec--6823d93aee38a99b94b1627a.md) | 75 | `declaration-track:6823d93aee38a99b94b1627a5f56aa9e13dc77aef820266bed1d02932a4660f4` |
| 6 | `structure` | [UnitSpatialProfile](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitspatialprofile--f6d6afdda021874aa3a118be.md) | 87 | `declaration-track:f6d6afdda021874aa3a118be0849c141fe84475af0bd3e104769637f62e0cfa7` |
| 7 | `def` | [UnitSpatialProfile.encoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitspatialprofile-encoder--9851026781d88b9f1d84f3a9.md) | 93 | `declaration-track:9851026781d88b9f1d84f3a96fbbcf5973fd829c43d6e26952ad14398f3deae9` |
| 8 | `def` | [UnitSpatialProfile.decoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitspatialprofile-decoder--96b9624cb75f82f69e63d761.md) | 99 | `declaration-track:96b9624cb75f82f69e63d76109c445cfef0061eeaabb90024489a0a7f977b4c4` |
| 9 | `theorem` | [UnitSpatialProfile.decoder_encoder](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitspatialprofile-decoder-encoder--c7169dc48a600a67046d532e.md) | 104 | `result-track:c7169dc48a600a67046d532e1bff0bbdd2e2aaae212d1c234ffd70ed06107343` |
| 10 | `def` | [UnitSpatialProfile.codec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitspatialprofile-codec--b31f7e03c12d53b0dc7b5053.md) | 115 | `declaration-track:b31f7e03c12d53b0dc7b50533a9d1d60ce1e33fa48968c1b8fcefa3d5c1e17f1` |
| 11 | `def` | [unitBallIndicator](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitballindicator--b257de79eae8c248772058ad.md) | 133 | `declaration-track:b257de79eae8c248772058ad56d4a90b2943b9f2349263c8be09987cdc4794cc` |
| 12 | `theorem` | [unitBallIndicator_ne_zero](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/unitballindicator-ne-zero--5b37e90af8b9d5960e0ff27d.md) | 140 | `result-track:5b37e90af8b9d5960e0ff27d5c3b399630a916a4754ab8b0f2286302c38bee24` |
| 13 | `def` | [normalizedUnitBallMode](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/normalizedunitballmode--db5ab25306d9f30f7277301f.md) | 160 | `declaration-track:db5ab25306d9f30f7277301fb720203aeef4308881c24e574bc10e1f2dcad3ce` |
| 14 | `theorem` | [normalizedUnitBallMode_norm](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/normalizedunitballmode-norm--1ba828b3535a98da7e79ffd8.md) | 164 | `result-track:1ba828b3535a98da7e79ffd89777fb568793de12e0342f6876603131930f8496` |
| 15 | `def` | [canonicalUnitSpatialProfile](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/canonicalunitspatialprofile--f9dd143fcad2e405c825c35c.md) | 171 | `declaration-track:f9dd143fcad2e405c825c35c83c29c2ff4af46c08976eab2ab1d8cc9ec4344e9` |
| 16 | `def` | [canonicalLosslessSpatialCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/canonicallosslessspatialcodec--20c44e63f73adf0a2ce3f315.md) | 177 | `declaration-track:20c44e63f73adf0a2ce3f3155a8b648f16f58ab0131d952e08d0fee1f2024fd4` |
| 17 | `structure` | [LosslessSpatialScale](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/losslessspatialscale--73c55a7ba6b45835d5f52eef.md) | 185 | `declaration-track:73c55a7ba6b45835d5f52eefb8f03964c3b7116d273480939388e44f7f8756a8` |
| 18 | `structure` | [CompleteConductorThreeSpatialRoute](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/completeconductorthreespatialroute--2cd65f65c5f174c92cab6986.md) | 196 | `declaration-track:2cd65f65c5f174c92cab6986596f739c58274a7a9943340f54430ca5fd7e2f63` |
| 19 | `def` | [CompleteConductorThreeSpatialRoute.ofCodec](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/completeconductorthreespatialroute-ofcodec--a2c4919d9b8f7c0748c28f63.md) | 203 | `declaration-track:a2c4919d9b8f7c0748c28f63ae34e5f778f497dd7892132278a1bc99aea7c8d5` |
| 20 | `def` | [canonicalActualSpatialRoute](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/canonicalactualspatialroute--dab455c9f18a886ef403e724.md) | 216 | `declaration-track:dab455c9f18a886ef403e724fd318b28a291ddbaec746149171bda678dc12d30` |
| 21 | `def` | [CompleteConductorThreeSpatialRoute.sampleFunctional](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/completeconductorthreespatialroute-samplefunctional--0c8df376e776ed1cad19384c.md) | 223 | `declaration-track:0c8df376e776ed1cad19384ce22f99a1cee8de8348b9a7e6c4aa0e9575d233ea` |
| 22 | `theorem` | [CompleteConductorThreeSpatialRoute.sampleFunctional_norm_le](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/completeconductorthreespatialroute-samplefunctional-norm-le--cf084ea1ab7229832ec849e9.md) | 230 | `result-track:cf084ea1ab7229832ec849e9e1b76af99f059f5c2939b16e7aed9c1c637faa1a` |
| 23 | `theorem` | [CompleteConductorThreeSpatialRoute.sample_reconstructs_matrixAmplitude](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/completeconductorthreespatialroute-sample-reconstructs-matrixamplitude--c0fde2cb72f337bc687224e5.md) | 238 | `result-track:c0fde2cb72f337bc687224e5a0b1715f7085226984ccc41657c96e18fe9c16be` |
| 24 | `def` | [SpatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/spatialcriticaldecay--889fba4bc8ca25e164b1939e.md) | 248 | `declaration-track:889fba4bc8ca25e164b1939e10d9ce0c931147a23ae6843652c6492cf6bf769d` |
| 25 | `theorem` | [matrixCriticalDecay_iff_spatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/matrixcriticaldecay-iff-spatialcriticaldecay--8cc8fe17f9b3a1e39bc9cb56.md) | 259 | `result-track:8cc8fe17f9b3a1e39bc9cb56c6a09d39cae325596bd7f3eddae2d562b66f449a` |
| 26 | `theorem` | [actualMatrixCriticalDecay_iff_spatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/actualmatrixcriticaldecay-iff-spatialcriticaldecay--d226ab53c72200cd4ba1478b.md) | 310 | `result-track:d226ab53c72200cd4ba1478b2a3405cbb5a6ac6ba3d36be9239184e01aced395` |
| 27 | `theorem` | [actualMatrixCriticalDecay_iff_canonicalSpatialCriticalDecay](../../../../../mathematics/Analysis/MeasureTheory/PrimeWalkLosslessSpatial/Variant1cc546265603e7ccb315ce005d428d6ffc87319f8de2d95df872d3ec28cc9779.lean/declarations/actualmatrixcriticaldecay-iff-canonicalspatialcriticaldecay--2a8ffb4631b2b700aa277cf7.md) | 317 | `result-track:2a8ffb4631b2b700aa277cf77d8c8e1a8e4430445d590fe1805cfbd8c12f6b4b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
