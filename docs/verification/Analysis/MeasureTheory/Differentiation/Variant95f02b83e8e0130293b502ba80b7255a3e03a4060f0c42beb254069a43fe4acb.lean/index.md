# Verification target: GRWTSK.Analysis.MeasureTheory.Differentiation.Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc26e1e64d5bf06020ca5e385d7ee270325dc58b",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc26e1e64d5bf06020ca5e385d7ee270325dc58b`.

Source path: `GRWTSK/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Covering.VitaliFamily` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEMeasurableOrder` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Lebesgue` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Decomposition.Lebesgue` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/macro-rules--5685afd4f4f0fb1ae9de8418.md) | 88 | `declaration-track:5685afd4f4f0fb1ae9de841879730abb3eca17bce1b8c7a30718d9bebde3f6e7` |
| 2 | `def` | [limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/limratio--a98fc9ffbcc2da3e0e2d9fe0.md) | 102 | `declaration-track:a98fc9ffbcc2da3e0e2d9fe0a54891fb8e48d3ce4dfc641105008f47a8bec3a4` |
| 3 | `theorem` | [ae_eventually_measure_pos](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-eventually-measure-pos--69100ae9313510a89c85fe2d.md) | 108 | `result-track:69100ae9313510a89c85fe2dc86d366342edaf562fb644be61121cadf1270846` |
| 4 | `theorem` | [eventually_measure_lt_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/eventually-measure-lt-top--2aeb6ffd0af397f3c3771ee1.md) | 129 | `result-track:2aeb6ffd0af397f3c3771ee13dca7a98edcb9d1dba4137caaf4d31ed224eabcf` |
| 5 | `theorem` | [measure_le_of_frequently_le](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/measure-le-of-frequently-le--6c8c5e86ec5478b76dc926f9.md) | 138 | `result-track:6c8c5e86ec5478b76dc926f9715a81bfcad9f4f4be59578ce7a1fe88293e0e6a` |
| 6 | `theorem` | [ae_eventually_measure_zero_of_singular](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-eventually-measure-zero-of-singular--8a39f4f0fd0149a1e45d4e76.md) | 173 | `result-track:8a39f4f0fd0149a1e45d4e764782933c42ab49cebb23601b78c750acc161a553` |
| 7 | `theorem` | [null_of_frequently_le_of_frequently_ge](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/null-of-frequently-le-of-frequently-ge--ce21eef34257776449aa36de.md) | 223 | `result-track:ce21eef34257776449aa36deb65854d7fc6bdd4fc40a42885e470edcb517deaf` |
| 8 | `theorem` | [ae_tendsto_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-div--c43c8c011a523a4fe7f0e21b.md) | 245 | `result-track:c43c8c011a523a4fe7f0e21b923bd5603e4e81df0be882f64fbf149a22fa777a` |
| 9 | `theorem` | [ae_tendsto_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-limratio--db2f5bc4c9ea935377cf2c91.md) | 275 | `result-track:db2f5bc4c9ea935377cf2c9102dc1f97c5d92cc7ebced4eb4a5a77bea3cbaf65` |
| 10 | `theorem` | [exists_measurable_supersets_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/exists-measurable-supersets-limratio--f8a58a9a2df745067791bf85.md) | 286 | `result-track:f8a58a9a2df745067791bf857556ea9167b29f2289bc6c57a0c63d4915a787b8` |
| 11 | `theorem` | [aemeasurable_limRatio](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/aemeasurable-limratio--8227417f767d4a1f23f41491.md) | 428 | `result-track:8227417f767d4a1f23f41491d7c893c53b803e817cd9cfcce3dead0aff74904a` |
| 12 | `def` | [limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/limratiomeas--24a65b158ec12b9fbdd049a8.md) | 435 | `declaration-track:24a65b158ec12b9fbdd049a8b636e6969e6fc3819cee8909b312378b07efe4cb` |
| 13 | `theorem` | [limRatioMeas_measurable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/limratiomeas-measurable--60e4da3249ee41594d1362d7.md) | 439 | `result-track:60e4da3249ee41594d1362d7c02f01026c10b0539f85413f24553139bead35af` |
| 14 | `theorem` | [ae_tendsto_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-limratiomeas--9795785c626989d7e4227dfe.md) | 443 | `result-track:9795785c626989d7e4227dfee190cf3d9e2a039ff37744880461592fa2e91ef4` |
| 15 | `theorem` | [measure_le_mul_of_subset_limRatioMeas_lt](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/measure-le-mul-of-subset-limratiomeas-lt--69faeb08c29f6c53c3cc49a4.md) | 453 | `result-track:69faeb08c29f6c53c3cc49a44e5e2dd925377233f6ba49ac455075b04de264fb` |
| 16 | `theorem` | [mul_measure_le_of_subset_lt_limRatioMeas](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/mul-measure-le-of-subset-lt-limratiomeas--f7ef7bc822cc9770b60259a8.md) | 477 | `result-track:f7ef7bc822cc9770b60259a840a1a663b1b8476465f459bdbc25824e2af1f6a6` |
| 17 | `theorem` | [measure_limRatioMeas_top](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/measure-limratiomeas-top--c9664de51505c6455e7f42d4.md) | 501 | `result-track:c9664de51505c6455e7f42d44231a27b325efae47138e97acc12f6f67d39a20a` |
| 18 | `theorem` | [measure_limRatioMeas_zero](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/measure-limratiomeas-zero--86e55a89303a05eb14e44e5d.md) | 526 | `result-track:86e55a89303a05eb14e44e5da59523f5a5c270ef32b2cda7a313932e4ef4985b` |
| 19 | `theorem` | [withDensity_le_mul](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/withdensity-le-mul--49420078701fdb180df196dc.md) | 550 | `result-track:49420078701fdb180df196dc9a7cdc25dd4d5563056166c81b12eb45adc738d9` |
| 20 | `theorem` | [le_mul_withDensity](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/le-mul-withdensity--077efea6983883b3d8f30f84.md) | 618 | `result-track:077efea6983883b3d8f30f84029042dfe44e5a2557c01b14a3c14bb1fd05f490` |
| 21 | `theorem` | [withDensity_limRatioMeas_eq](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/withdensity-limratiomeas-eq--e94bc74908e956be56215b0a.md) | 673 | `result-track:e94bc74908e956be56215b0a1e48d71251a576b71bd6bff1565e2b920fdb75c5` |
| 22 | `theorem` | [ae_tendsto_rnDeriv_of_absolutelyContinuous](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-rnderiv-of-absolutelycontinuous--c50d839254bfb933ec93a5e0.md) | 705 | `result-track:c50d839254bfb933ec93a5e0dccbbd396783201541bd377df59f10476a8a239a` |
| 23 | `theorem` | [ae_tendsto_rnDeriv](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-rnderiv--3719f5ca4ce819aa8d66ed57.md) | 722 | `result-track:3719f5ca4ce819aa8d66ed57f60f72659f747524dcc213d33e315bc234b4a412` |
| 24 | `theorem` | [ae_tendsto_measure_inter_div_of_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-measure-inter-div-of-measurableset--683f9e69ca712906c3820a4b.md) | 747 | `result-track:683f9e69ca712906c3820a4b2afde8493fe0da75bfc336b990b4864b70c39b69` |
| 25 | `theorem` | [ae_tendsto_measure_inter_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-measure-inter-div--686c06a91c3b8bf8c1cf604a.md) | 760 | `result-track:686c06a91c3b8bf8c1cf604a35ce8486efdc3c0fc3abd322e52db581927e5084` |
| 26 | `theorem` | [ae_tendsto_lintegral_div'](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-lintegral-div--feb6c1f4c513523d402bd9f1.md) | 783 | `result-track:feb6c1f4c513523d402bd9f1060c60ac52760700fbf3519c642f2254796b03f6` |
| 27 | `theorem` | [ae_tendsto_lintegral_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-lintegral-div--a9bfd80f240346d4b432cc41.md) | 794 | `result-track:a9bfd80f240346d4b432cc41d443d4d29b196a1b40ae7a6374198e47ca9f01e2` |
| 28 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div'_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div-of-integrable--5d6a2b3bbf168ed114eebfd6.md) | 809 | `result-track:5d6a2b3bbf168ed114eebfd62185e5d853da6a6dceefbaefd128448e93cbf6a4` |
| 29 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div_of_integrable](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div-of-integrable--16edd5e58a4ba1ec43823f31.md) | 885 | `result-track:16edd5e58a4ba1ec43823f3171be276fe848a69e59ced948597d57c9653f7860` |
| 30 | `theorem` | [ae_tendsto_lintegral_nnnorm_sub_div](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-lintegral-nnnorm-sub-div--cf89d9326db6eba781b1c8f8.md) | 899 | `result-track:cf89d9326db6eba781b1c8f8f197cda439debf8f0c91f6ff0e79be2d09e05ef9` |
| 31 | `theorem` | [eventually_filterAt_integrableOn](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/eventually-filterat-integrableon--935604781e7f65f6fc67d4b1.md) | 917 | `result-track:935604781e7f65f6fc67d4b1fef58d4c39e85a2e859065e3652eb9d56cf71930` |
| 32 | `theorem` | [ae_tendsto_average_norm_sub](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-average-norm-sub--512b7796dbe8752e24a06a6b.md) | 925 | `result-track:512b7796dbe8752e24a06a6bf66ba05c087d81c2f2e05359d94e680e423dac54` |
| 33 | `theorem` | [ae_tendsto_average](../../../../../mathematics/Analysis/MeasureTheory/Differentiation/Variant95f02b83e8e0130293b502ba80b7255a3e03a4060f0c42beb254069a43fe4acb.lean/declarations/ae-tendsto-average--b48ea3e499923d56518e2526.md) | 946 | `result-track:b48ea3e499923d56518e25267cf1c93769609aa4a3db887e85a1877fdf47df4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
