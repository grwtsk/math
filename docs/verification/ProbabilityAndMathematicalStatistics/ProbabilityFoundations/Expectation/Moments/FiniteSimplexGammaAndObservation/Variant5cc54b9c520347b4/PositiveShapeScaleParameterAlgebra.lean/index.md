# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.Moments.FiniteSimplexGammaAndObservation.Variant5cc54b9c520347b4.PositiveShapeScaleParameterAlgebra

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b67fae1e6208321263327e98cc2557b0dbac98ac",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/index.md) · [Full source](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b67fae1e6208321263327e98cc2557b0dbac98ac`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Probability.Simplex` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Beta` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 21; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Constructions.Pi` — import line 22; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Basic` — import line 23; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Decomposition.RadonNikodym` — import line 24; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Distributions.Gamma` — import line 25; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 26; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [DirichletParameters](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/dirichletparameters--10094099d8fe14d07e8abf1e.md) | 57 | `declaration-track:10094099d8fe14d07e8abf1e78b5af61541c85d746fb07bd4359af430a79e1b1` |
| 2 | `def` | [total](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/total--c32ce7ade60460ca3525efcd.md) | 66 | `declaration-track:c32ce7ade60460ca3525efcd079582c209c683892639b4c6b78baf01b9207dc5` |
| 3 | `theorem` | [total_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/total-pos--7c150b453c26ca2731d7080e.md) | 69 | `result-track:7c150b453c26ca2731d7080e88861ef659e26acf6167bc378fd9880d87ab9a7c` |
| 4 | `theorem` | [total_ne_zero](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/total-ne-zero--cad9aba1a81133c4d1af5e09.md) | 73 | `result-track:cad9aba1a81133c4d1af5e0920294ec5d8309a07711bb5898d7bf6b5fb869282` |
| 5 | `def` | [gammaProduct](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/gammaproduct--f040d3937eee3d195d976afc.md) | 78 | `declaration-track:f040d3937eee3d195d976afccff9be8c99fcfb14842d49f35e4a3692461d6202` |
| 6 | `theorem` | [gammaProduct_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/gammaproduct-pos--33616018cf7a07b5084df58c.md) | 81 | `result-track:33616018cf7a07b5084df58cef8dd27cc552c232b860f896d009bd539a369ceb` |
| 7 | `def` | [multivariateBeta](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/multivariatebeta--e73e3de73eab12de3e8793a6.md) | 86 | `declaration-track:e73e3de73eab12de3e8793a628b38e80fa508a215a03b356c3257b94196516a8` |
| 8 | `theorem` | [multivariateBeta_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/multivariatebeta-pos--155133d6bb8c1f44a82efd32.md) | 89 | `result-track:155133d6bb8c1f44a82efd321d6ed6bc6dc7dff99fb00f5b25d0ed2f4bd28304` |
| 9 | `def` | [mean](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/mean--eddc1d2c545398863ef357b0.md) | 95 | `declaration-track:eddc1d2c545398863ef357b026b776c45a78fe16993edf9ac6e9c43aed68f84e` |
| 10 | `theorem` | [mean_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/mean-pos--5fde8a2024f251e494b47c45.md) | 98 | `result-track:5fde8a2024f251e494b47c45e2e5844197642b387400c35e5a9c01789e0e6388` |
| 11 | `theorem` | [sum_mean](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/sum-mean--df70e038040786022bd21f13.md) | 102 | `result-track:df70e038040786022bd21f1376c558290dad97072ed651233d4247f281092325` |
| 12 | `def` | [variance](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/variance--045bdd7126d34cc1f94ce8c5.md) | 110 | `declaration-track:045bdd7126d34cc1f94ce8c576ad3780d9e2b439703fb971d681c6bd7901b9cf` |
| 13 | `def` | [covariance](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/covariance--0ac6733dba0f6ed3a1593323.md) | 117 | `declaration-track:0ac6733dba0f6ed3a159332341fc01e509ed116df24ab5216fd2e42ba656054c` |
| 14 | `theorem` | [covariance_self](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/covariance-self--8b923f49a45186025a3fda53.md) | 126 | `result-track:8b923f49a45186025a3fda53273bc67c2190d9a53f1547158ffe7ad84b153664` |
| 15 | `theorem` | [covariance_of_ne](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/covariance-of-ne--d61baca02418dae8be8a193c.md) | 131 | `result-track:d61baca02418dae8be8a193c8926bec076ee3fb6a9a11f5bd007673acf802bbd` |
| 16 | `theorem` | [covariance_comm](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/covariance-comm--e7452e838c48772350253753.md) | 140 | `result-track:e7452e838c487723502537530dad51f27ec975c6043941a83e9dc94db9c430a2` |
| 17 | `def` | [monomialMoment](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/monomialmoment--87cb98ec58410940af81edd0.md) | 151 | `declaration-track:87cb98ec58410940af81edd0c433826877b49be1abb3407fff09430d1198b0d5` |
| 18 | `def` | [concentrate](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/concentrate--3bec8b64b5aeeead1077c04f.md) | 159 | `declaration-track:3bec8b64b5aeeead1077c04facdf44d8a98b9a7db46297c301ac66903d76ed34` |
| 19 | `theorem` | [concentrate_shape](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/concentrate-shape--6c552a557933504e395463dd.md) | 165 | `result-track:6c552a557933504e395463dd9ac351ddeca82c5b341be4f3f095a4f95632e786` |
| 20 | `theorem` | [concentrate_total](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/concentrate-total--3c4e3bacfb8534ef45068f83.md) | 170 | `result-track:3c4e3bacfb8534ef45068f8311201a2382c170e8a9e5049e02e8015eb0b58581` |
| 21 | `theorem` | [concentrate_mean](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/concentrate-mean--5af7bbf4b2167f839e8940e4.md) | 175 | `result-track:5af7bbf4b2167f839e8940e483397bd5419e9551fcae5ed95608528138ce2fa8` |
| 22 | `theorem` | [concentrate_variance](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/concentrate-variance--4b0a1c528bc7ecdd92c6efcb.md) | 183 | `result-track:4b0a1c528bc7ecdd92c6efcb9f7241af590786cb7dbd9d509c430375b05745fe` |
| 23 | `def` | [reindex](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex--d4b2b0618116ea2a87a3739e.md) | 194 | `declaration-track:d4b2b0618116ea2a87a3739ea59dcfee9432ffc1a5f9003904921f9a63b10ca1` |
| 24 | `theorem` | [reindex_shape](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-shape--39748346802d218a418cbaf8.md) | 200 | `result-track:39748346802d218a418cbaf8de079b760cbc2e3fbae50cc723bf58b1d584b78d` |
| 25 | `theorem` | [reindex_total](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-total--1a2b16adb218432db3a6b06e.md) | 206 | `result-track:1a2b16adb218432db3a6b06ea52140a8f4c34a59d50645f21313dde7fd9c2c05` |
| 26 | `structure` | [Parameters](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/parameters--365ddc512fcf22514c3cb865.md) | 215 | `declaration-track:365ddc512fcf22514c3cb8651dc840827bfbd29276328f0c2cddc8b3b80399b2` |
| 27 | `def` | [equalScale](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/equalscale--8ed05c114f57e1ea52a85c70.md) | 224 | `declaration-track:8ed05c114f57e1ea52a85c7066b0adec6fe1c56b56e7e9a6c233e47da4181c8c` |
| 28 | `def` | [reindex](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex--2280a7779a31d85e3142d316.md) | 231 | `declaration-track:2280a7779a31d85e3142d316c93e4cbeb221fe36942a39727cdca116431a50fe` |
| 29 | `theorem` | [reindex_shape](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-shape--eaa7228b175b7aa7fcaf7a74.md) | 238 | `result-track:eaa7228b175b7aa7fcaf7a74978c57ef091668a67814fadac532662322ce6661` |
| 30 | `theorem` | [reindex_scale](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-scale--5845fe45da9bbe830975762c.md) | 245 | `result-track:5845fe45da9bbe830975762ce5094e5a51667c14b92e92ec8f695b30d5eaf8e5` |
| 31 | `theorem` | [reindex_total](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-total--7c987c102058527e3358b4a5.md) | 251 | `result-track:7c987c102058527e3358b4a5e585884cdfc84934b3af39e5050c7bdfddd88006` |
| 32 | `theorem` | [reindex_gammaProduct](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/reindex-gammaproduct--e678d98a35249246ba982199.md) | 256 | `result-track:e678d98a35249246ba98219929f06707ace3678cfeb8fd429a3ceed04efddc28` |
| 33 | `def` | [rate](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/rate--e4876856d81c87e1c17f9beb.md) | 265 | `declaration-track:e4876856d81c87e1c17f9beb47fe466cc9a277c4f945b6ae9d2d0a14b0d42c3d` |
| 34 | `theorem` | [rate_pos](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/rate-pos--15487b8de94d29e8f0c1fa8d.md) | 268 | `result-track:15487b8de94d29e8f0c1fa8df3055d6944587250124439b33eeb7b275dc9252b` |
| 35 | `def` | [scaleAll](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/scaleall--df5b44bef17a2e413a33952f.md) | 273 | `declaration-track:df5b44bef17a2e413a33952f6d38831c3cd5f7028588db903fe59e8ca39ad4ad` |
| 36 | `theorem` | [scaleAll_shape](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/scaleall-shape--ddb3fddec03b678626169604.md) | 280 | `result-track:ddb3fddec03b678626169604fcf717e53b042facddfbaa85856edf6dcc8ab01b` |
| 37 | `theorem` | [scaleAll_scale](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/scaleall-scale--f07f214afb223efc5b9a4b47.md) | 286 | `result-track:f07f214afb223efc5b9a4b477f633f5aad430aa2a9b10b16d6f55411c3aaf09f` |
| 38 | `structure` | [Path](../../../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/Moments/FiniteSimplexGammaAndObservation/Variant5cc54b9c520347b4/PositiveShapeScaleParameterAlgebra.lean/declarations/path--2adfaf7b8d3a8b98ff0c49dd.md) | 294 | `declaration-track:2adfaf7b8d3a8b98ff0c49ddfd3654a595c9a09e026314c7f3204622b9879e14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
