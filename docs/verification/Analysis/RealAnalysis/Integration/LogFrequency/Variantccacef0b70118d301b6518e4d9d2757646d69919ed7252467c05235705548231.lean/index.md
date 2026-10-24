# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.LogFrequency.Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "20d9b7835a4727310e0ff4bcb81977514612f4eb",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `20d9b7835a4727310e0ff4bcb81977514612f4eb`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.BubbleResonance` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [logFrequency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequency--1cf0d503fa9ed1fb3756f00d.md) | 34 | `declaration-track:1cf0d503fa9ed1fb3756f00dc48f75b6c4782fb7c5f3228d289f2f8bda375f09` |
| 2 | `def` | [frequencyFromLog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog--fc387e1b6a21168cadcd503b.md) | 37 | `declaration-track:fc387e1b6a21168cadcd503bfc44b871c990ec37e647c41818159f883d88919c` |
| 3 | `theorem` | [frequencyFromLog_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog-pos--42e24a46db63a195453b956d.md) | 40 | `result-track:42e24a46db63a195453b956d959109416399dc018e8fd76c90acff031f0047bd` |
| 4 | `theorem` | [logFrequency_fromLog](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequency-fromlog--7b23b2516acacff87c2212c0.md) | 45 | `result-track:7b23b2516acacff87c2212c00ccf4d60ecdcf2c2ae3e8e0211eb8ba37388b12f` |
| 5 | `theorem` | [frequencyFromLog_logFrequency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog-logfrequency--2560f217e10c79a0875b4ceb.md) | 50 | `result-track:2560f217e10c79a0875b4ceb9979d563bf53936faf1a88c32b4f401c4038a177` |
| 6 | `theorem` | [frequencyFromLog_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog-hasderivat--8dcb5bd04b92426beb9a6b9a.md) | 57 | `result-track:8dcb5bd04b92426beb9a6b9ac023f3347664f2f38a5319c2eef8a3f8920aa112` |
| 7 | `theorem` | [frequencyFromLog_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog-continuous--65a0f5a8a3682f3847f64ba6.md) | 62 | `result-track:65a0f5a8a3682f3847f64ba664a1cb49a00ca86df356d0546f01b865e6d0338b` |
| 8 | `theorem` | [frequencyFromLog_strictMono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/frequencyfromlog-strictmono--734eaecafe6c3be2f6d06521.md) | 66 | `result-track:734eaecafe6c3be2f6d065212fb7c775b516a1699bf68767b6b12130d2c6bfa1` |
| 9 | `theorem` | [spectrum_reindex_reconstruct](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/spectrum-reindex-reconstruct--b446c0580d0b1815e51780c8.md) | 71 | `result-track:b446c0580d0b1815e51780c878fa964f96d16ca332855387079d374745e50746` |
| 10 | `theorem` | [spectrum_reindex_eq_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/spectrum-reindex-eq-iff--8c9c82f75fbcdbe9eee53394.md) | 79 | `result-track:8c9c82f75fbcdbe9eee533949c50bcf3de2aaa40782cdf514bd226b49f1fed51` |
| 11 | `def` | [logFrequencyDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequencydensity--8c46c23a47eec2cfb6bd9e2e.md) | 91 | `declaration-track:8c46c23a47eec2cfb6bd9e2e69a3331768505e6c22fcd55bcb3e8bd0c06cdcde` |
| 12 | `theorem` | [logFrequencyDensity_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequencydensity-nonneg--5a13bdd513fb4c3ff0e7e8cb.md) | 95 | `result-track:5a13bdd513fb4c3ff0e7e8cb65ee08e0e1b0adbee867641546b9c8e98335318b` |
| 13 | `theorem` | [perHertz_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/perhertz-interval-integrable--2b60945ad4a3e91f0d45a2ba.md) | 102 | `result-track:2b60945ad4a3e91f0d45a2baae25b2c322a266d89ef45c7a86f8b5c583626e02` |
| 14 | `theorem` | [logFrequencyDensity_interval_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequencydensity-interval-integrable--6dd001b14274bfc4e923cc2c.md) | 111 | `result-track:6dd001b14274bfc4e923cc2c2fc45a346a856fcdae6a810f28a9f044ca6860cc` |
| 15 | `theorem` | [logFrequencyDensity_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequencydensity-integral--a563c5ad694436c4a64ff47a.md) | 123 | `result-track:a563c5ad694436c4a64ff47a3df6ebfba339d8921aa4e8861412391b0e82bd8c` |
| 16 | `theorem` | [logFrequencyDensity_integral_frequency_bounds](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/logfrequencydensity-integral-frequency-bounds--785b4dc06ff2132ebc21fb68.md) | 137 | `result-track:785b4dc06ff2132ebc21fb6817131f0723dfdeabf0246608d7cddaf162f4a803` |
| 17 | `def` | [minnaertHertzCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaerthertzcoefficient--c097eefaf3546c08b9b17dbc.md) | 152 | `declaration-track:c097eefaf3546c08b9b17dbc46e70ff38d9801ae16ed46552f09fd4971b8284e` |
| 18 | `def` | [minnaertFrequencyHertz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertfrequencyhertz--0ac8c2c54d3a303aebd4d921.md) | 156 | `declaration-track:0ac8c2c54d3a303aebd4d921c70aabfcae355c9c93137b4c7fd00cf685b9c08d` |
| 19 | `theorem` | [minnaertHertzCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaerthertzcoefficient-pos--be63d85537b4bb4218d650a6.md) | 160 | `result-track:be63d85537b4bb4218d650a663521163dd08c98c5bdcfc388c83de6835d4d8e9` |
| 20 | `theorem` | [minnaertFrequencyHertz_formula](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertfrequencyhertz-formula--15d1201200b80d34037414c3.md) | 166 | `result-track:15d1201200b80d34037414c35906929609e34c4af093205096f1edbc0ed878b0` |
| 21 | `theorem` | [minnaertFrequencyHertz_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertfrequencyhertz-pos--bc0476503fb5390085bb1b4a.md) | 174 | `result-track:bc0476503fb5390085bb1b4a978702ae7fcdff7761e47e9b2e6da9853679e2fb` |
| 22 | `def` | [minnaertVolumeFromHertz](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertvolumefromhertz--978b02396e5554c7515fe24a.md) | 180 | `declaration-track:978b02396e5554c7515fe24a9d33cbfcf33338252c42f1f6ff7c78d51da6de14` |
| 23 | `theorem` | [minnaertVolumeFromHertz_source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertvolumefromhertz-source--7d0be13ec43fd8e52eba9db1.md) | 184 | `result-track:7d0be13ec43fd8e52eba9db17e8633e8b35b4263a4a8c0b7113aa93bfb337ad2` |
| 24 | `theorem` | [minnaertVolumeFromHertz_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaertvolumefromhertz-pos--d2ad3c035b97760026ac3786.md) | 195 | `result-track:d2ad3c035b97760026ac3786c194ca2cc7c22da88efb7c8b5505d839cae610d9` |
| 25 | `theorem` | [minnaert_log_volume_ratio](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaert-log-volume-ratio--506b05b6c37f8896045e5d91.md) | 202 | `result-track:506b05b6c37f8896045e5d910e6e71baba9b6b4d4c6e129cbded804cc9844b4f` |
| 26 | `theorem` | [minnaert_source_log_volume](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaert-source-log-volume--d9cfb21f0ed5143b2a4796dd.md) | 221 | `result-track:d9cfb21f0ed5143b2a4796dd1a7c2eeced729da5b00b065a5137200ef7a6317d` |
| 27 | `theorem` | [minnaert_log_volume_affine](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaert-log-volume-affine--0a5fb30099f03aed1191591d.md) | 230 | `result-track:0a5fb30099f03aed1191591d5e9d0807b2372d9d2cfb4c477e9e196478188564` |
| 28 | `theorem` | [minnaert_log_volume_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/minnaert-log-volume-hasderivat--c5b03fcd51a4cf1d6ba59367.md) | 239 | `result-track:c5b03fcd51a4cf1d6ba593673e9d9e19d10803a8d83aa8665516869fa950cc85` |
| 29 | `theorem` | [cascade_log_frequency](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/cascade-log-frequency--afa45eef861512bb3618011f.md) | 253 | `result-track:afa45eef861512bb3618011f6b1641801ab1b98ce13637a75d9a5eccce0ea500` |
| 30 | `theorem` | [cascade_log_spacing](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/cascade-log-spacing--fe8ce3f39adbb2a5275f6a5c.md) | 268 | `result-track:fe8ce3f39adbb2a5275f6a5cda93839f831e8a2ca1f8bf944b2ecea7a90ee804` |
| 31 | `theorem` | [jet_log_frequency_of_law](../../../../../../mathematics/Analysis/RealAnalysis/Integration/LogFrequency/Variantccacef0b70118d301b6518e4d9d2757646d69919ed7252467c05235705548231.lean/declarations/jet-log-frequency-of-law--900630579e3fc94157f54bbe.md) | 283 | `result-track:900630579e3fc94157f54bbee9008223d67f00a096cff6329f5e8ca8648f2ff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
