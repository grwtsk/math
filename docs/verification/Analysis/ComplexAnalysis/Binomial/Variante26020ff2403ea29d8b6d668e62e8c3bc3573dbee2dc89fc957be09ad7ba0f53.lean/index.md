# Verification target: GRWTSK.Analysis.ComplexAnalysis.Binomial.Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9621a5307a46a4cdccd35bf6435e45dd5058a973",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9621a5307a46a4cdccd35bf6435e45dd5058a973`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Complex.ofReal_choose](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/complex-ofreal-choose--a10e91fc5e21274b7b43d8f3.md) | 49 | `result-track:a10e91fc5e21274b7b43d8f347b83171f94748c2dbce475feea3f21208f138ec` |
| 2 | `def` | [binomialSeries](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries--d7a6948034c6356d6c9551d3.md) | 56 | `declaration-track:d7a6948034c6356d6c9551d38090269f5b03c931190fa4a587a971b6f7c42acc` |
| 3 | `theorem` | [binomialSeries_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries-apply--213c2dde08ea6a1306a28537.md) | 62 | `result-track:213c2dde08ea6a1306a285378e184f67ba14754b5ac7ee5e623ee886a79f8d8b` |
| 4 | `theorem` | [binomialSeries_eq_ordinaryHypergeometricSeries](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries-eq-ordinaryhypergeometricseries--8204ca9aca03d22a52091aec.md) | 67 | `result-track:8204ca9aca03d22a52091aeccce830544c1165d571db8ee0628190e266913621` |
| 5 | `theorem` | [binomialSeries_radius_eq_top_of_nat](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries-radius-eq-top-of-nat--b53d99ec292cf3980036be55.md) | 84 | `result-track:b53d99ec292cf3980036be555d90876445d2bbb3433f4bd2cdaa020d40568237` |
| 6 | `theorem` | [binomialSeries_radius_eq_one](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries-radius-eq-one--1a5444bdacad2ebbc75396cf.md) | 91 | `result-track:1a5444bdacad2ebbc75396cff93d4900a94ce5cdeb790b56ddfd2cf905f2933c` |
| 7 | `theorem` | [binomialSeries_radius_ge_one](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/binomialseries-radius-ge-one--a3d86c925809c1be86776497.md) | 98 | `result-track:a3d86c925809c1be867764972fa7d6666abd7015be7fa4d18c579e60270b8dff` |
| 8 | `theorem` | [one_add_cpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-add-cpow-hasfpowerseriesonball-zero--23d9be21f75aa202677e878f.md) | 109 | `result-track:23d9be21f75aa202677e878f0c8a2a282441d9dd7c91a32b9764a956efc5c242` |
| 9 | `theorem` | [one_add_cpow_hasFPowerSeriesAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-add-cpow-hasfpowerseriesat-zero--24661721c7c546ef3359cf3c.md) | 157 | `result-track:24661721c7c546ef3359cf3c4d8b438a3f6a6d5ef11674ea2ba804f46223db16` |
| 10 | `theorem` | [one_div_one_sub_cpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-cpow-hasfpowerseriesonball-zero--c4be283b68357358bf609df8.md) | 161 | `result-track:c4be283b68357358bf609df8adb4b9cf9d5b44085e5d8a530e5a9f1f2aac83c4` |
| 11 | `theorem` | [one_div_one_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-pow-hasfpowerseriesonball-zero--65923e87fee6f0624cbbb9aa.md) | 173 | `result-track:65923e87fee6f0624cbbb9aadbf70b4d7cb5881397441b2492462b830dac8caf` |
| 12 | `theorem` | [one_div_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-pow-hasfpowerseriesonball-zero--7692b13fe67a35663b736b1d.md) | 181 | `result-track:7692b13fe67a35663b736b1d22be3abe180ac3d101995440cc693c12fa7d03fe` |
| 13 | `theorem` | [one_div_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-hasfpowerseriesonball-zero--ada22d067ab5200a3feb59a7.md) | 197 | `result-track:ada22d067ab5200a3feb59a790960965f44618dc5c489c70e410399a1ce44979` |
| 14 | `theorem` | [one_div_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-sq-hasfpowerseriesonball-zero--3aac56639379705261c29189.md) | 201 | `result-track:3aac56639379705261c2918935d741e92616181d70bc65d9f02f4f71088eb310` |
| 15 | `theorem` | [one_div_one_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-hasfpowerseriesonball-zero--3321a9f2a1f83508ba6fe0a9.md) | 206 | `result-track:3321a9f2a1f83508ba6fe0a9d60b35c35cb2637598067fd4d8c27066af650933` |
| 16 | `theorem` | [one_div_one_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-sq-hasfpowerseriesonball-zero--847447652ca9a8b401235223.md) | 210 | `result-track:847447652ca9a8b4012352230a4daed1be40a901cb3e9ddb06202ae08850fd8d` |
| 17 | `theorem` | [hasFPowerSeriesOnBall_ofScalars_mul_add_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/hasfpowerseriesonball-ofscalars-mul-add-zero--4ffe94385afffd9123259993.md) | 215 | `result-track:4ffe94385afffd9123259993d2b352cdfd2b0352efc694d35f410e67a8771fe9` |
| 18 | `lemma` | [one_div_sub_sq_sub_one_div_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-sq-sub-one-div-sq-hasfpowerseriesonball-zero--0468b33554239c270f5a6026.md) | 224 | `result-track:0468b33554239c270f5a6026dd5026553bee241526abfb4ca3c2cd100a1eec8c` |
| 19 | `theorem` | [one_add_rpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-add-rpow-hasfpowerseriesonball-zero--32fb976727eff30bbb37c8c2.md) | 242 | `result-track:32fb976727eff30bbb37c8c21dd6f375163d923fd51f7ec064d01218b851547c` |
| 20 | `theorem` | [one_add_rpow_hasFPowerSeriesAt_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-add-rpow-hasfpowerseriesat-zero--b0fd02b130bd05e8abfabc23.md) | 252 | `result-track:b0fd02b130bd05e8abfabc234d604b743dacf613aa79ff6d7dcd1aa07902a855` |
| 21 | `theorem` | [one_div_one_sub_rpow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-rpow-hasfpowerseriesonball-zero--502909106c095c3a2c36a4d6.md) | 256 | `result-track:502909106c095c3a2c36a4d602e57cb45d8679f89da7d083f6676ec6d21cb95d` |
| 22 | `theorem` | [one_div_sub_pow_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-pow-hasfpowerseriesonball-zero--3f24d0e46093a2320e5896d3.md) | 274 | `result-track:3f24d0e46093a2320e5896d31abde6cb4b7ad183de176d68fd94ee785130d733` |
| 23 | `theorem` | [one_div_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-hasfpowerseriesonball-zero--93c1145cb74e70de2a5dc60f.md) | 289 | `result-track:93c1145cb74e70de2a5dc60fc7cadfe87a1ba91d9617cbd7f905544d90333fe5` |
| 24 | `theorem` | [one_div_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-sub-sq-hasfpowerseriesonball-zero--e45a432e4f569d426404bad1.md) | 293 | `result-track:e45a432e4f569d426404bad143c69c14c80275c2996100ada2819735ffdc6d07` |
| 25 | `theorem` | [one_div_one_sub_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-hasfpowerseriesonball-zero--6f85ccf4d68cb8db3a88ee3e.md) | 298 | `result-track:6f85ccf4d68cb8db3a88ee3ef21e29ecad524531c54b040061900e143e0ae33a` |
| 26 | `theorem` | [one_div_one_sub_sq_hasFPowerSeriesOnBall_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/one-div-one-sub-sq-hasfpowerseriesonball-zero--4c707c6e9c4113f88fcffdff.md) | 302 | `result-track:4c707c6e9c4113f88fcffdff88e7af42cc9a39d4b2c84c26eed49657ef337b88` |
| 27 | `theorem` | [hasFPowerSeriesOnBall_ofScalars_mul_add_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Binomial/Variante26020ff2403ea29d8b6d668e62e8c3bc3573dbee2dc89fc957be09ad7ba0f53.lean/declarations/hasfpowerseriesonball-ofscalars-mul-add-zero--c431c19649908ca158f4a0e1.md) | 307 | `result-track:c431c19649908ca158f4a0e15011bf57c7d534b0063b35e2b64855c30ce85219` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
