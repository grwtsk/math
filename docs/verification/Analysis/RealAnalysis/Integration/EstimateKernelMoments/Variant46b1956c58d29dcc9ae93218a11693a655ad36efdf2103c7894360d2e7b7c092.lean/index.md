# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.EstimateKernelMoments.Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "532b3ca3262405671438dc42c0a2159b6d7639ae",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `532b3ca3262405671438dc42c0a2159b6d7639ae`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positiveWeightedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtest--601d76d79089a70ed026723c.md) | 33 | `declaration-track:601d76d79089a70ed026723c7e3f980846063d27a3055b864205e5edfef39f4f` |
| 2 | `def` | [reflectedPositiveWeightedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtest--c8e9c47a7db0febe7c687855.md) | 37 | `declaration-track:c8e9c47a7db0febe7c687855df395509795f5cf2f4cdfc27a00437a89f05f3f9` |
| 3 | `def` | [positiveWeightedTestMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtestmoment--8f18e3ac2caffc9632111dda.md) | 41 | `declaration-track:8f18e3ac2caffc9632111dda396c3490a3dc2d194c62bc991d095fcce0be92a6` |
| 4 | `def` | [reflectedPositiveWeightedTestMoment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtestmoment--d77c34816317d86680a7bef5.md) | 44 | `declaration-track:d77c34816317d86680a7bef52854dd3cb47f453242a50a2a28116ee74dd4e967` |
| 5 | `theorem` | [positiveWeightedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtest-integrable--0acc78bd6b732de2c1fb36a2.md) | 47 | `result-track:0acc78bd6b732de2c1fb36a2534c9e49605ac1b73cc6dd58f22064d82db1e72e` |
| 6 | `theorem` | [reflectedPositiveWeightedTest_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtest-integrable--dea33b0f0aafbfbee35b1529.md) | 53 | `result-track:dea33b0f0aafbfbee35b1529b0bdfd1bca22b68afb6331c157e5ffb6059d61d9` |
| 7 | `theorem` | [positiveWeightedTest_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtest-continuous--9df027de0854a6c164a291b9.md) | 63 | `result-track:9df027de0854a6c164a291b99b9e11c62a351f9be21eeb2d4a4182d68ab8cb16` |
| 8 | `theorem` | [reflectedPositiveWeightedTest_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtest-continuous--ac5ac4b9a698afcbc6be3a75.md) | 69 | `result-track:ac5ac4b9a698afcbc6be3a75b63d5c67091f0abc9440771a6d92d80c52847868` |
| 9 | `theorem` | [positiveWeightedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtest-hascompactsupport--733f2974a74d788803d77eb6.md) | 75 | `result-track:733f2974a74d788803d77eb6cb15d5dbe6df3dfa8d8e938bc7976d244a934ebe` |
| 10 | `theorem` | [reflectedPositiveWeightedTest_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtest-hascompactsupport--0dd4333a81f7a531abe69d21.md) | 82 | `result-track:0dd4333a81f7a531abe69d21d277b08d4316edd676657545f256434834c8f4a5` |
| 11 | `theorem` | [positiveWeightedTestMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtestmoment-integrable--09157f203e1cd32405a9d4d8.md) | 89 | `result-track:09157f203e1cd32405a9d4d870cd6617ccd92aea3eaa17e4b2892ec59416dd64` |
| 12 | `theorem` | [reflectedPositiveWeightedTestMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtestmoment-integrable--7f593551a746b96e57d9735b.md) | 107 | `result-track:7f593551a746b96e57d9735b8ae2e6d00cd58f321d5dab3ddcc10f5a0b85c002` |
| 13 | `theorem` | [positiveWeightedTestMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtestmoment-continuous--ed3e90784ff71440e3fa0482.md) | 126 | `result-track:ed3e90784ff71440e3fa048219247410b4f2af79b641aa7f5981cb9f875d1604` |
| 14 | `theorem` | [reflectedPositiveWeightedTestMoment_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtestmoment-continuous--3208e77a7bdea1d1db99e1c7.md) | 132 | `result-track:3208e77a7bdea1d1db99e1c711a89d079a4d4d70d9e8706250035556287f04e0` |
| 15 | `theorem` | [positiveWeightedTestMoment_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtestmoment-hascompactsupport--f47380fa553b76f8b8058d4c.md) | 138 | `result-track:f47380fa553b76f8b8058d4c678aa5c7f132273d6984b0e995685f851c30fa87` |
| 16 | `theorem` | [reflectedPositiveWeightedTestMoment_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtestmoment-hascompactsupport--10878fab11f8b82cccb7bcf6.md) | 145 | `result-track:10878fab11f8b82cccb7bcf6624291e9c7cbc7e5dc4f3d26c9036a390dcb85db` |
| 17 | `theorem` | [positiveWeightedTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/positiveweightedtest-integral-zero--ef917ba29761ced30675f667.md) | 152 | `result-track:ef917ba29761ced30675f66796e47e2c0c847a46c93788abea956002117c161f` |
| 18 | `theorem` | [reflectedPositiveWeightedTest_integral_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/reflectedpositiveweightedtest-integral-zero--d6bdb4dc820d16d8e224078f.md) | 158 | `result-track:d6bdb4dc820d16d8e224078f0ea25cb332fa1975cfd3a25fa94f2d61b841bc0b` |
| 19 | `theorem` | [mul_weighted_convolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/mul-weighted-convolution--925e0319f25c9792ede21465.md) | 178 | `result-track:925e0319f25c9792ede21465152564f81fb81feb0aafd012938ecd22742a7c6e` |
| 20 | `theorem` | [sourceCorrelation_first_exponential_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/sourcecorrelation-first-exponential-moment-zero--0b0f611a48144eead4ad26d8.md) | 231 | `result-track:0b0f611a48144eead4ad26d852de81c9e554a7980472525757d7c6b9b9cccead` |
| 21 | `def` | [weightedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation--731154b6b7e2e96726c5e74a.md) | 316 | `declaration-track:731154b6b7e2e96726c5e74a28a2f54d75aed39be331e74252a3f00b4b5d038b` |
| 22 | `def` | [derivativeProfile](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/derivativeprofile--4e068df206e0a5daff5ee721.md) | 320 | `declaration-track:4e068df206e0a5daff5ee721ff09392dbdb4b1238dcbd925d1c2bf1290ee0eb8` |
| 23 | `theorem` | [weightedCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation-contdiff--7964c7685073ec93968bb27c.md) | 324 | `result-track:7964c7685073ec93968bb27c63be70add44cdc33a57ed85578677c3700159b98` |
| 24 | `theorem` | [weightedCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation-hascompactsupport--1e99d6d00c12c4257126ce87.md) | 334 | `result-track:1e99d6d00c12c4257126ce87c196f64211c7b340e3fa8e8fc9f177ea74dfb1bb` |
| 25 | `theorem` | [weightedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation-integrable--076516812d772e7abc8de1f7.md) | 341 | `result-track:076516812d772e7abc8de1f76b2405b13096eb47c7537cbb2a489729fe9e6205` |
| 26 | `theorem` | [weightedCorrelation_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation-deriv-integrable--d8553e2d946853fcae46c1b3.md) | 348 | `result-track:d8553e2d946853fcae46c1b32a88eef362322a3c651f95a1ac54b76aa145db17` |
| 27 | `theorem` | [weightedCorrelation_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/weightedcorrelation-deriv--e3f4f31580b86294bda94386.md) | 356 | `result-track:e3f4f31580b86294bda943868410df364cca048507b900de89d958653f05c3e3` |
| 28 | `theorem` | [derivativeProfile_exponential_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/derivativeprofile-exponential-moment-zero--6e1018420e88ec93c59d607f.md) | 373 | `result-track:6e1018420e88ec93c59d607f3f4fac6568ac1505ed911ee349b531bb6e65784a` |
| 29 | `def` | [firstWeightedCorrelation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation--3d74e712c398b429ca619ba1.md) | 407 | `declaration-track:3d74e712c398b429ca619ba14f7c3b6c4b333a27e2dea4e35a9947d0e75ea3f8` |
| 30 | `theorem` | [firstWeightedCorrelation_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation-contdiff--2cfbe97405645126195ac008.md) | 410 | `result-track:2cfbe97405645126195ac00856b1ac84a688ae6e5f78d9a3b69a7142575b8fc0` |
| 31 | `theorem` | [firstWeightedCorrelation_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation-hascompactsupport--8790c2f5d7de80925d693b7c.md) | 416 | `result-track:8790c2f5d7de80925d693b7c1e8062936d7ab7b7284cf1057fb15df7cbe0a777` |
| 32 | `theorem` | [firstWeightedCorrelation_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation-integrable--c7690a24951b365ad46802a2.md) | 422 | `result-track:c7690a24951b365ad46802a216632f39ce41d039f5f0bc42bc9d2f6aed0dbd38` |
| 33 | `theorem` | [firstWeightedCorrelation_deriv_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation-deriv-integrable--cd786073e792c2d57e4cceb7.md) | 429 | `result-track:cd786073e792c2d57e4cceb7024121d656f7a646e75ddff9710632380c8a66cb` |
| 34 | `theorem` | [firstWeightedCorrelation_deriv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/firstweightedcorrelation-deriv--c42bddb9117f573791a0fc30.md) | 437 | `result-track:c42bddb9117f573791a0fc305e17b502320b23cb84c538d1e7099a57be0bca3b` |
| 35 | `theorem` | [derivativeProfile_first_exponential_moment_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/derivativeprofile-first-exponential-moment-zero--c2de2359263da6bc19df83c1.md) | 449 | `result-track:c2de2359263da6bc19df83c1f2cbb6fd02755867513247ca8353dd1bddec12b8` |
| 36 | `def` | [DoubleMomentCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/doublemomentcheckpoint--980de364bb82608765e95453.md) | 537 | `declaration-track:980de364bb82608765e95453df61078e3b475ff00ddecf38e9b8918727b09ac1` |
| 37 | `theorem` | [double_moment_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/EstimateKernelMoments/Variant46b1956c58d29dcc9ae93218a11693a655ad36efdf2103c7894360d2e7b7c092.lean/declarations/double-moment-checkpoint--54747cb9f062ed187137ff30.md) | 551 | `result-track:54747cb9f062ed187137ff301d2df89c2ceebaef6c6f7e835d76d58e8212539d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
