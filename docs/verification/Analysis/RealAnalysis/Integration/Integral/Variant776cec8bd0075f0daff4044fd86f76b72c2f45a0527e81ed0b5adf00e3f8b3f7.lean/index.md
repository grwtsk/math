# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.Integral.Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b19aac2a6d9a12221b5f6a581db723e4e4de211",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b19aac2a6d9a12221b5f6a581db723e4e4de211`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Constructions.Prod.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [measurableSet_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measurableset-integrable--aa8130b408a3bc18e6896000.md) | 72 | `result-track:aa8130b408a3bc18e68960009a6076b364f3dc1bc8b356afdfbc405da51f0839` |
| 2 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--e883f9756523216f73f10b1a.md) | 85 | `result-track:e883f9756523216f73f10b1aaed4745d5ef75335c3723a1338daa59eb34c773b` |
| 3 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-stronglymeasurable-integral-prod-right--3b0667f283053fb443ad2ce5.md) | 133 | `result-track:3b0667f283053fb443ad2ce5acfdea6d43c58c1b196e4d22706f0771c2eb82c8` |
| 4 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--703b48db801cf5ff6cb94c24.md) | 141 | `result-track:703b48db801cf5ff6cb94c24354fd78815a17a5d1155627b8d988160dcda06e2` |
| 5 | `theorem` | [MeasureTheory.StronglyMeasurable.integral_prod_left'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-stronglymeasurable-integral-prod-left--2911fe668d5e3834ba2be218.md) | 148 | `result-track:2911fe668d5e3834ba2be218e00ca27e470ac37d8502c1ddbc25d20b582f0480` |
| 6 | `theorem` | [integrable_measure_prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-measure-prod-mk-left--a14fa6f8f4a9ac985fb01ed3.md) | 164 | `result-track:a14fa6f8f4a9ac985fb01ed3f4180f9e6c3d3edea05c2c53046ee5fabbc5e75c` |
| 7 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-aestronglymeasurable-prod-swap--33907fcc98c9c7ebcbd94eb7.md) | 186 | `result-track:33907fcc98c9c7ebcbd94eb71991560160fb9252c9aca9a21ef096e5da80ea0f` |
| 8 | `theorem` | [MeasureTheory.AEStronglyMeasurable.fst](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-aestronglymeasurable-fst--3ada0d27418d3ffefaa68f42.md) | 193 | `result-track:3ada0d27418d3ffefaa68f42f35571daa0bf0d6ecbd2ef28f1dbe6796b3f5058` |
| 9 | `theorem` | [MeasureTheory.AEStronglyMeasurable.snd](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-aestronglymeasurable-snd--47951e08ead347a08431aa8a.md) | 198 | `result-track:47951e08ead347a08431aa8a2322ce2da3db23b1d13d3c62ff96bf4b2796f540` |
| 10 | `theorem` | [MeasureTheory.AEStronglyMeasurable.integral_prod_right'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-aestronglymeasurable-integral-prod-right--d5f14e2d5a906cfee3f38647.md) | 205 | `result-track:d5f14e2d5a906cfee3f38647c62328bd7eab5093c761c8846941a2564b5c984f` |
| 11 | `theorem` | [MeasureTheory.AEStronglyMeasurable.prod_mk_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/measuretheory-aestronglymeasurable-prod-mk-left--341d953fd8879831a5dc543b.md) | 212 | `result-track:341d953fd8879831a5dc543bbee13ccf4de5a2151acedfae891a2e866e221a0d` |
| 12 | `theorem` | [Integrable.swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-swap--d3c958e2704aa617f2294824.md) | 231 | `result-track:d3c958e2704aa617f2294824b7b81831baaf2681aeea8fee47f99aad9ec649ad` |
| 13 | `theorem` | [integrable_swap_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-swap-iff--f004174bd05ed25c427aad55.md) | 237 | `result-track:f004174bd05ed25c427aad550b5989da6fd3dfc6bc2d4a8f3d508f649ab45090` |
| 14 | `theorem` | [hasFiniteIntegral_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/hasfiniteintegral-prod-iff--c295c91ad5b41330a108d230.md) | 242 | `result-track:c295c91ad5b41330a108d230777b5be6218f8fa4c390e70dfc5d23a1bff929f8` |
| 15 | `theorem` | [hasFiniteIntegral_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/hasfiniteintegral-prod-iff--cddfb731ecf633af1b2a190a.md) | 263 | `result-track:cddfb731ecf633af1b2a190a1c7283d407dbc339b1b48bedaef60e8a92c2e8d7` |
| 16 | `theorem` | [integrable_prod_iff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-prod-iff--d62407e7cbf72005e6561b20.md) | 281 | `result-track:d62407e7cbf72005e6561b2009ab9bbe924ef7a06eca2bdf5bf555c1a35e3f7b` |
| 17 | `theorem` | [integrable_prod_iff'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-prod-iff--abb313cb602af963838df538.md) | 290 | `result-track:abb313cb602af963838df538e57a7355e6ea34584693aec28efcc838591e1ab6` |
| 18 | `theorem` | [Integrable.prod_left_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-prod-left-ae--4f7d23f116737c4105c3a2ea.md) | 298 | `result-track:4f7d23f116737c4105c3a2eaff6001eb067ff579c9f9f9fbe28fb443d88bd710` |
| 19 | `theorem` | [Integrable.prod_right_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-prod-right-ae--398f5db0c66c1bf60ee1f209.md) | 303 | `result-track:398f5db0c66c1bf60ee1f209bb06c1f490a516761657fb8bb1c3ab8397f0f6a2` |
| 20 | `theorem` | [Integrable.integral_norm_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-integral-norm-prod-left--4f0819de6860212670ea539b.md) | 308 | `result-track:4f0819de6860212670ea539b0d4aa3ad45da84d19c315207f4952745fef5d8d5` |
| 21 | `theorem` | [Integrable.integral_norm_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-integral-norm-prod-right--474cdbec634ebad1de17dd0c.md) | 313 | `result-track:474cdbec634ebad1de17dd0cf1174be6e46581e731c5afc32a65df8ee2553074` |
| 22 | `theorem` | [integrable_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-prod-mul--ea0fa9fb3f4df4d67c0b4bee.md) | 318 | `result-track:ea0fa9fb3f4df4d67c0b4bee43c8be52e47ee9fa446ebadc9b1a513039076afa` |
| 23 | `theorem` | [Integrable.integral_prod_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-integral-prod-left--0c5990675b40e2daee3e3e47.md) | 330 | `result-track:0c5990675b40e2daee3e3e4706f070ab228ae3a40a64aa497d688030d7d5e977` |
| 24 | `theorem` | [Integrable.integral_prod_right](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integrable-integral-prod-right--26eefb2e8d135a5a7948f00f.md) | 340 | `result-track:26eefb2e8d135a5a7948f00fe02069701d1b6dd17c891ca66d76eb2fa7afdbf8` |
| 25 | `theorem` | [integral_prod_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-prod-swap--3ec1da54f263bb653850cfa0.md) | 350 | `result-track:3ec1da54f263bb653850cfa0393564de23657288a549d4be338f43e5756efd83` |
| 26 | `theorem` | [integral_fn_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-fn-integral-add--acc75dfdae8eb7e46051efd9.md) | 363 | `result-track:acc75dfdae8eb7e46051efd9766e441fb36cbe4d063cc8a177cc81e1d00e0c64` |
| 27 | `theorem` | [integral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-fn-integral-sub--3205727d5ccaccd5953e5087.md) | 374 | `result-track:3205727d5ccaccd5953e50873c3def7eccc44dd79a79be3bdb7bd494ed615a48` |
| 28 | `theorem` | [lintegral_fn_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/lintegral-fn-integral-sub--4ea42faf636bdc7898605285.md) | 385 | `result-track:4ea42faf636bdc789860528517a244e80249b430af14f75a8145b5a8b7223597` |
| 29 | `theorem` | [integral_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-add--ee8013147df4a2f0d4483881.md) | 395 | `result-track:ee8013147df4a2f0d4483881dd787b8c342f8ac9aa58806501b42f266348e011` |
| 30 | `theorem` | [integral_integral_add'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-add--46febaa94682704e35ac5e80.md) | 404 | `result-track:46febaa94682704e35ac5e801c8703b5b1738aef16ae587e8232a666a9009d40` |
| 31 | `theorem` | [integral_integral_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-sub--65338faecae124002109475e.md) | 411 | `result-track:65338faecae124002109475ed5baa626d87dfa7ee72e0cba380bf1081d557948` |
| 32 | `theorem` | [integral_integral_sub'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-sub--8817f744f70aff1884e2467a.md) | 420 | `result-track:8817f744f70aff1884e2467afbd76638c0b2787cd603a794c93990ba1b77350a` |
| 33 | `theorem` | [continuous_integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/continuous-integral-integral--3bf47dd1696e46295048e85b.md) | 427 | `result-track:3bf47dd1696e46295048e85b28428a97f655a63d7cad90958fb516bc08869a6a` |
| 34 | `theorem` | [integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-prod--95cc5b7d1ac09206ede964e4.md) | 461 | `result-track:95cc5b7d1ac09206ede964e4c474243b340d2488a2dbbe95da46ebfe38602e23` |
| 35 | `theorem` | [integral_prod_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-prod-symm--4f07805451df7b130df2b990.md) | 486 | `result-track:4f07805451df7b130df2b990744c2fa7cd7dececc2806d5b24e101ac223b42bc` |
| 36 | `theorem` | [integral_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral--a2400038feb5bd35a7961fa8.md) | 492 | `result-track:a2400038feb5bd35a7961fa81fe53676a7e699150ce155c61a8c62abc768ae40` |
| 37 | `theorem` | [integral_integral_symm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-symm--db7cbedeb5835a2cc620701d.md) | 498 | `result-track:db7cbedeb5835a2cc620701db719fe3b87397c7009960df23fd0d7a4fae248f3` |
| 38 | `theorem` | [integral_integral_swap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-integral-swap--dc9baeaa02aea1ac09837e5c.md) | 504 | `result-track:dc9baeaa02aea1ac09837e5c5cd44241a8ab571bfeccf86ce9b382c8f4c13cdf` |
| 39 | `theorem` | [set_integral_prod](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/set-integral-prod--80051464d7ba7928556760e6.md) | 510 | `result-track:80051464d7ba7928556760e63ed4e243b13b19b5424dc1f844aed8176da58e83` |
| 40 | `theorem` | [integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/integral-prod-mul--a68e29382a299d8bb1cae9f4.md) | 517 | `result-track:a68e29382a299d8bb1cae9f4785ff351ed841518fb9b109208e28db61482e668` |
| 41 | `theorem` | [set_integral_prod_mul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/Integral/Variant776cec8bd0075f0daff4044fd86f76b72c2f45a0527e81ed0b5adf00e3f8b3f7.lean/declarations/set-integral-prod-mul--8dd20bce2b54d919cbad4fae.md) | 528 | `result-track:8dd20bce2b54d919cbad4fae3cb5283e9c87ff4ded6dc1d9911efae2bc898e4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
