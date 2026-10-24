# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceFinal.Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "677fee9f54688d1fc0cf5feac642a71a1a0614bc",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `677fee9f54688d1fc0cf5feac642a71a1a0614bc`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/p--d261b0240f2f614488fdffa6.md) | 15 | `declaration-track:d261b0240f2f614488fdffa66020c3c257231f081cbcd39e9bea5ad735d791c8` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/a--34c2837605c64cdfc70c6a84.md) | 16 | `declaration-track:34c2837605c64cdfc70c6a849a82bc91034a7be410e2f45c52d8ec87aa64ca9d` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstterm--c3a97aba0ad1c1fc1f80b251.md) | 18 | `declaration-track:c3a97aba0ad1c1fc1f80b2512d65b863f31dddab855b83434947f55e735a8f25` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondterm--ae454f2655a218e7382a780f.md) | 20 | `declaration-track:ae454f2655a218e7382a780f62f0697652d6b04c3d0831c8f9f5451156eea159` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstseries--b832795ec6291d7335c1512e.md) | 22 | `declaration-track:b832795ec6291d7335c1512e809d8903bc9f056f38e3712be6e8375305fc18fe` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondseries--5697b34db00e78ededcc938e.md) | 24 | `declaration-track:5697b34db00e78ededcc938e64e3aabb6e75ac79b597858008421f08b7201066` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/weight--3cec9c8b391dfae4adf2b125.md) | 26 | `declaration-track:3cec9c8b391dfae4adf2b1256daa73f5825ff8d0e3717285b2885d79be48e76d` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/weight-eq--3198d6851c59f09f71675012.md) | 28 | `result-track:3198d6851c59f09f7167501280b8ce310233403387e3a267ef9cdfca2bdf77f8` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/weight-summable--c6b5a479acaeace9cb30c245.md) | 33 | `result-track:c6b5a479acaeace9cb30c245917a2dd6ef9b884cdc52b076330d425d47c8f2c2` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/pairedterm-hasderivat--c3df841435f572508d39af64.md) | 38 | `result-track:c3df841435f572508d39af64f72ef3abc3947bbb842a833eb30635a9345dae49` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstterm-hasderivat--71db939f7a201ac3911a66d8.md) | 55 | `result-track:71db939f7a201ac3911a66d8831132d18e2164a6a614beb010f81652f5ed7ad8` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/lowercoefficient--a68bb0589b5e87dfa6d51369.md) | 73 | `declaration-track:a68bb0589b5e87dfa6d513694f65308bf18a3e709cfbd9b4c5df3ecb08e040d9` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/lowercoefficient-pos--ebb4cb1f6eaea5d95453f809.md) | 75 | `result-track:ebb4cb1f6eaea5d95453f809762fc1fc52e9032009e4fa9d943da7c2431ce304` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/rate-lower--c66b2a78dbcd9c5a658818f3.md) | 78 | `result-track:c66b2a78dbcd9c5a658818f31153153691e26bfa1ad27c0dd79bb9f775c7a109` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstterm-bound--531a2e11bdb7a916d343a057.md) | 87 | `result-track:531a2e11bdb7a916d343a057e99739670d6bfa4ec5a5e4f9418c938e0c494441` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondterm-bound--e4ccfa5c3cd14e95dcd85dc0.md) | 116 | `result-track:e4ccfa5c3cd14e95dcd85dc0009fdf35c535a9ec14e64ddd8a67ad3697b4945d` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstterm-summable--a3954c4cd85b39870a08cace.md) | 133 | `result-track:a3954c4cd85b39870a08cace33c5172246d28a687b17aae1f58e2e6f7d498626` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondterm-summable--f6fa9ebe34af70b8316c8276.md) | 140 | `result-track:f6fa9ebe34af70b8316c82767720f837602dd0bd119db7aa2e94983d47f4c28f` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualprofile-hasderivat--a723675d228d71a6b2bc18d4.md) | 146 | `result-track:a723675d228d71a6b2bc18d4c995c1916d14db6bf8d9f14d415eee20b2ff0af1` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualprofile-deriv--5e085e8455a3acd38f0920eb.md) | 161 | `result-track:5e085e8455a3acd38f0920eb9759b1b362094cba2b3082ef30a15aa3306c39a2` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/firstseries-hasderivat--be57c6b4a840a7e9acad5266.md) | 164 | `result-track:be57c6b4a840a7e9acad5266d61403ab77f3fc0dd99a7cd719a95f7c51fc5f2f` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualprofile-second-hasderivat--efdfd5682f4c3148c8e0177d.md) | 176 | `result-track:efdfd5682f4c3148c8e0177d7b59366c47159355a5ee67d9e82b2efb20cce63b` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualprofile-second-deriv--80573c081588db980b56ddb4.md) | 182 | `result-track:80573c081588db980b56ddb490448c2f89f3fd66a640acc6ec8c1244d364a8a5` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondterm-nonneg--a5feb8e39ea8c0e7c352bbf3.md) | 186 | `result-track:a5feb8e39ea8c0e7c352bbf32e43691f81b54be95e8ffbcd6113b7a7f7bf101d` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/exponential-firstmoment-integrable--e29bf9149546e0053fecfba3.md) | 190 | `result-track:e29bf9149546e0053fecfba385adc98e7e7239f1c498dfecfcab12f8081192d1` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/exponential-firstmoment-integral--a87f21ac26d1a8f17e060063.md) | 203 | `result-track:a87f21ac26d1a8f17e0600630b9ccf0d7f44ef0913638de0f2cd489d7fdacda5` |
| 27 | `def` | [momentTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm--feb7107d4143798bc6656e19.md) | 211 | `declaration-track:feb7107d4143798bc6656e1928346059a067f4f1ca901dc8da140610c648547f` |
| 28 | `def` | [curvatureKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/curvaturekernel--1301fac0322990858e9a8dec.md) | 213 | `declaration-track:1301fac0322990858e9a8decad34fc9fdf29a8a489b87f122034c9294d158c77` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-nonneg--87e37aaaf4b06fe006ae4f9a.md) | 215 | `result-track:87e37aaaf4b06fe006ae4f9a6cdc598995b9a6a51116bf4b353c06f8c4172b9b` |
| 30 | `theorem` | [momentTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-integrable--f22b967616ae4a835d5d66de.md) | 220 | `result-track:f22b967616ae4a835d5d66de9cb8825c873731d9ea7e392975f89f69884fffc2` |
| 31 | `theorem` | [momentTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-integral--9311b402ab604ad848f52f1d.md) | 225 | `result-track:9311b402ab604ad848f52f1d48644716e5cbf3a42b0f4fd8de2925ce54d14472` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-hassum--2f8bee3a8e8c99d4673f8f18.md) | 230 | `result-track:2f8bee3a8e8c99d4673f8f1843aa186c68e30ee0b422fd8c53702bb0b901f241` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/curvaturekernel-continuouson--1e7fdf0a83bd3cfe21da0cb8.md) | 246 | `result-track:1e7fdf0a83bd3cfe21da0cb894ea8cf04479fd352883b328a093291b1a819091` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-integral-norm--ac1919bcbeb401a0dec31c82.md) | 253 | `result-track:ac1919bcbeb401a0dec31c8254b28915410c2a819fb30e67917bc5c00faa212f` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-integral-norm-summable--9a33b5df654a4282937b3a77.md) | 261 | `result-track:9a33b5df654a4282937b3a77b36878ca2a686f8372a4e273a4ba415692a7d57c` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top--1fa8d006e96bc37d61751d1e.md) | 269 | `result-track:1fa8d006e96bc37d61751d1e079246aa4eef04bcc61ab8c648de01b7d67de370` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/curvaturekernel-integrable--73f34a29a60503e267b59857.md) | 281 | `result-track:73f34a29a60503e267b59857cb76a1b9aba57de7e3e6564fa1fd112a8a48520a` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondseries-eq-curvatureintegral--6c9615511b1f65a839f4b6ee.md) | 295 | `result-track:6c9615511b1f65a839f4b6ee6afeea6e932d2608dae86c7f73b942446a24c3f8` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualprofile-second-integral--b964fae7d2cc6ed652614168.md) | 306 | `result-track:b964fae7d2cc6ed652614168220426945cbebe7d6cf1d0aa71a9efbb08daf9a8` |
| 40 | `theorem` | [curvatureKernel_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/curvaturekernel-pos--c8d653f5a154561bb34b4222.md) | 313 | `result-track:c8d653f5a154561bb34b4222c55f390a16d85d4d25c91e8079a7cdb3049716d6` |
| 41 | `theorem` | [secondSeries_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/secondseries-pos--76e777e69128da0701fc9c2a.md) | 318 | `result-track:76e777e69128da0701fc9c2ad87404d5034baa05ff8cf9250aa91f6f754ed957` |
| 42 | `theorem` | [actualGamma_second_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Varianteb21f5d2ed02dccf5a937adceddfa4f3a778c6d098a63162de7dcfb8fb7e8f4f.lean/declarations/actualgamma-second-derivative--8126d1249edc143e42ee41d9.md) | 325 | `result-track:8126d1249edc143e42ee41d931a15fb4daa6f095c712939b8a5aaec039edca15` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
