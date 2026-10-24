# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WeightReflection.Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "27adf13f2f60906cfb131ce18e77f77e1da94b3d",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `27adf13f2f60906cfb131ce18e77f77e1da94b3d`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourcePairing` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [potential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/potential--3393ae44113f00de79af81b4.md) | 28 | `declaration-track:3393ae44113f00de79af81b4d4ff642d02fe628c14e27c2fd2736e7455cea096` |
| 2 | `def` | [evenWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/evenweight--4b7937b0c0bead5b22576478.md) | 32 | `declaration-track:4b7937b0c0bead5b225764785ef3647607455493b274fe38a624d3b618eccaa3` |
| 3 | `def` | [oddWeight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/oddweight--05221fb1cbecc969794e4da9.md) | 36 | `declaration-track:05221fb1cbecc969794e4da9a503633d2d1176822d892d9f04a6214ceee5db55` |
| 4 | `theorem` | [normalized_test_zero_outside](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/normalized-test-zero-outside--f2608950502c3ee281868c37.md) | 40 | `result-track:f2608950502c3ee281868c37173745c7f5a4ee29fab313788cc4a78670c51a0f` |
| 5 | `theorem` | [correlation_zero_to_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/correlation-zero-to-right--4977dc4cfdd4c83e5c3f62c0.md) | 47 | `result-track:4977dc4cfdd4c83e5c3f62c068974e44ef344ea2211a41e89d4e35d22e1e71e5` |
| 6 | `theorem` | [correlation_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/correlation-upper-endpoint-zero--a603a278b85d58e882a08e66.md) | 64 | `result-track:a603a278b85d58e882a08e66852d28635e72d7d8c6fd4471e21b5f09cea3adc3` |
| 7 | `theorem` | [correlation_deriv_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/correlation-deriv-upper-endpoint-zero--7b70c0501cc44a36dab39ff5.md) | 70 | `result-track:7b70c0501cc44a36dab39ff5ce4988da8a8a9129cce66adfac57b11ebed4ac4c` |
| 8 | `theorem` | [weight_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/weight-upper-endpoint-zero--df91c8ec281f5856378d31a5.md) | 83 | `result-track:df91c8ec281f5856378d31a50e7ea092930ef5f09351d18b03d18a318573146c` |
| 9 | `theorem` | [potential_upper_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/potential-upper-endpoint-zero--2d889f41ff8b490b71b27da8.md) | 88 | `result-track:2d889f41ff8b490b71b27da8ef5f81d32996530023e5ef1f6970659c441fb2c4` |
| 10 | `theorem` | [exp_lower_endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/exp-lower-endpoint--9cd6556739afdcbe38e2d943.md) | 93 | `result-track:9cd6556739afdcbe38e2d943781524380be46307a0cc7234e09b37169e0d8034` |
| 11 | `theorem` | [reflected_exponential](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/reflected-exponential--ba318297d1bb76cd442215c6.md) | 97 | `result-track:ba318297d1bb76cd442215c64683c399f8697a954d66dbd935b2b3ee2d1e23b6` |
| 12 | `theorem` | [potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/potential-hasderivat--d98a846776cddc26764c5b01.md) | 106 | `result-track:d98a846776cddc26764c5b017cb933ff7ad9052942b63896dece1bfd3ebc1bdc` |
| 13 | `theorem` | [reflection_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/reflection-hasderivat--21644dcba6ae8416cdc5e5a9.md) | 115 | `result-track:21644dcba6ae8416cdc5e5a93a2b17585476bc07098d87b9aa22605e9ace7033` |
| 14 | `theorem` | [odd_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/odd-potential-hasderivat--d567875f5acc1320659e9e28.md) | 120 | `result-track:d567875f5acc1320659e9e28c1f9d3ffcaf6cee6f1b4c02e6a49daf58a456577` |
| 15 | `theorem` | [even_potential_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/even-potential-hasderivat--d5d35d8c277090e6acf3d056.md) | 129 | `result-track:d5d35d8c277090e6acf3d0566f35403049c53561e62171dec4b262d639cd8dbb` |
| 16 | `theorem` | [weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/weight-continuous--661e0bb8f481e98d95b9baf0.md) | 138 | `result-track:661e0bb8f481e98d95b9baf06266e655c6db3027ae8b6f32b3979df0588c1b8e` |
| 17 | `theorem` | [even_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/even-weight-continuous--77869567f6d06a23943a4dc7.md) | 145 | `result-track:77869567f6d06a23943a4dc7ad9cadd11cb2e4fa55cad13439b6ad0ef1dc8734` |
| 18 | `theorem` | [odd_weight_continuous](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/odd-weight-continuous--6fa531322c8dc7dbcee9e398.md) | 152 | `result-track:6fa531322c8dc7dbcee9e39833ff1562d4688e7052992d59f2c564802846ee36` |
| 19 | `theorem` | [even_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/even-weight-zeroth-moment--de57227d8a3e449ba2f79c38.md) | 159 | `result-track:de57227d8a3e449ba2f79c38bbde2e5af4d10f7f1b8171b0d47083ed29de8881` |
| 20 | `theorem` | [odd_weight_zeroth_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/odd-weight-zeroth-moment--168338d9a6bd9b789e6b89da.md) | 169 | `result-track:168338d9a6bd9b789e6b89daefdd0c86aa890accd4f55cbcd9f3612107962ed3` |
| 21 | `theorem` | [prime_two_boundary_eq_four_even_moment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/prime-two-boundary-eq-four-even-moment--f8e02d426487c9817027f610.md) | 180 | `result-track:f8e02d426487c9817027f610cc6a531d33f4f9465778760f812d6b83e715f694` |
| 22 | `theorem` | [even_moment_zero_iff_endpoint_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/even-moment-zero-iff-endpoint-zero--4a0bd6265f2ba3934dff9da3.md) | 195 | `result-track:4a0bd6265f2ba3934dff9da3ec139dac07b46a7a045be0f2bfd5c711ec252478` |
| 23 | `structure` | [SectorIntegrability](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/sectorintegrability--6ee749a35d687fc7ce3c0b06.md) | 204 | `declaration-track:6ee749a35d687fc7ce3c0b06da37ee605f6665c91345ef0cb5b3a07c3ff40084` |
| 24 | `theorem` | [centered_even_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/centered-even-integral--a601dae01f76fff34c80e50e.md) | 224 | `result-track:a601dae01f76fff34c80e50ee3636f402d012e280924bd4c0b9e9db6db8f88a8` |
| 25 | `theorem` | [centered_signed_pairing_with_boundary](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/centered-signed-pairing-with-boundary--b3bcbf24697442b7b0aa361b.md) | 246 | `result-track:b3bcbf24697442b7b0aa361bac78e17459e0349110d0a3de8ae75b40cedb854f` |
| 26 | `def` | [centeredSignedValue](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/centeredsignedvalue--0d387b7472c86654799c3378.md) | 261 | `declaration-track:0d387b7472c86654799c337802d996f283558a42185fcbdf81aa6991c541d486` |
| 27 | `theorem` | [signed_pairing_eq_centered_value](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/signed-pairing-eq-centered-value--e959ddb780ff5371c3073643.md) | 269 | `result-track:e959ddb780ff5371c307364332ae9a64dd89927b6f2c2e5e74c1a6ba87fafe09` |
| 28 | `def` | [CenteredSignedEstimate](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/centeredsignedestimate--67496d6f82d5d90c022d6760.md) | 278 | `declaration-track:67496d6f82d5d90c022d67603bdba112f7992980fb22364741225650d0dce6b2` |
| 29 | `theorem` | [centered_estimate_iff_source_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/WeightReflection/Variantba8554acdc5798bd3cbab6ff246f478adb3e2ac0fb9027f4caf582cdf7484eaf.lean/declarations/centered-estimate-iff-source-bound--d1d9ba6f1ffa036e3d5531cb.md) | 283 | `result-track:d1d9ba6f1ffa036e3d5531cb506454300b92ad9285355f764f239caf2ba45890` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
