# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaValues.Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9cce54cd55bc6ade3069543573ed3cd07784c1fa",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9cce54cd55bc6ade3069543573ed3cd07784c1fa`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.BernoulliPolynomials` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/macro-rules--0d0b8ed64072d233fbab3e58.md) | 31 | `declaration-track:0d0b8ed64072d233fbab3e581ff52e793010174635036dc803117a9bd08690ec` |
| 2 | `def` | [bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifun--52bfd6851dda7176312ff5a9.md) | 49 | `declaration-track:52bfd6851dda7176312ff5a9ee9b93830fed6f4be0d6cc451d4c6c5e313cf754` |
| 3 | `theorem` | [bernoulliFun_eval_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifun-eval-zero--790d311756d5ac29734f27c7.md) | 53 | `result-track:790d311756d5ac29734f27c71b3afda64b0e8038f2550659165a602944434ec5` |
| 4 | `theorem` | [bernoulliFun_endpoints_eq_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifun-endpoints-eq-of-ne-one--a5d3d9be7580cf88950dbc15.md) | 57 | `result-track:a5d3d9be7580cf88950dbc155b7c918285ddc08d12b5b33e4c040ecddf15e346` |
| 5 | `theorem` | [bernoulliFun_eval_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifun-eval-one--6a05edc182ff790d790d01c8.md) | 63 | `result-track:6a05edc182ff790d790d01c8c94cd93d04e14414173ae1e7f7a086500204b462` |
| 6 | `theorem` | [hasDerivAt_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hasderivat-bernoullifun--739db487e7d2db0abaaaebac.md) | 71 | `result-track:739db487e7d2db0abaaaebac087b876bf487322cdc202477c8878127483d476d` |
| 7 | `theorem` | [antideriv_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/antideriv-bernoullifun--406911decb72c20aaa7ea891.md) | 78 | `result-track:406911decb72c20aaa7ea891ef282921dc6992e157b2175db01506fc03a2eabd` |
| 8 | `theorem` | [integral_bernoulliFun_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/integral-bernoullifun-eq-zero--76f5f129e16b1390c916ebd1.md) | 85 | `result-track:76f5f129e16b1390c916ebd193ad89a3125ebc51491cbeb5a9f6b7ea2c845643` |
| 9 | `def` | [bernoulliFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifouriercoeff--b414f145d43aa32522b65fa6.md) | 103 | `declaration-track:b414f145d43aa32522b65fa65f598189d082a48c2f07e10babf62049dd3cdcd9` |
| 10 | `theorem` | [bernoulliFourierCoeff_recurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifouriercoeff-recurrence--47fd7bb1c67261d20c050b45.md) | 108 | `result-track:47fd7bb1c67261d20c050b454c8f040727fc94ad2e5d5ad287b07220b9effeea` |
| 11 | `theorem` | [bernoulli_zero_fourier_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoulli-zero-fourier-coeff--43a88e59049eafeadb061923.md) | 126 | `result-track:43a88e59049eafeadb061923146097095247412d2666decafabffe1e4458cc0e` |
| 12 | `theorem` | [bernoulliFourierCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifouriercoeff-zero--f9ff1ad5fccf0c577d7a5d1c.md) | 131 | `result-track:f9ff1ad5fccf0c577d7a5d1c68e67de5774bd4440e39691a0bda384fff35cc1e` |
| 13 | `theorem` | [bernoulliFourierCoeff_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/bernoullifouriercoeff-eq--19d359d13c4800cf1249732b.md) | 137 | `result-track:19d359d13c4800cf1249732bfabb2b8edeececbae0b035645dc1c496a520abfa` |
| 14 | `def` | [periodizedBernoulli](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/periodizedbernoulli--70d377ec7baf51f0554e6486.md) | 166 | `declaration-track:70d377ec7baf51f0554e6486caeac6f2c9eeed7885cdd66442834b49b29f5c72` |
| 15 | `theorem` | [periodizedBernoulli.continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/periodizedbernoulli-continuous--569df8396ec412d1a64a86f0.md) | 170 | `result-track:569df8396ec412d1a64a86f0409f0a132533ecc5f14c6dcfb914a32a74fb8e97` |
| 16 | `theorem` | [fourierCoeff_bernoulli_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/fouriercoeff-bernoulli-eq--ea57351091f9ed6ab6f2d26a.md) | 176 | `result-track:ea57351091f9ed6ab6f2d26a43028bab90cf32412ffd154253fd90541102ac74` |
| 17 | `theorem` | [summable_bernoulli_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/summable-bernoulli-fourier--936a48a93f7fc57a32eabd5f.md) | 184 | `result-track:936a48a93f7fc57a32eabd5f6160733fcd8f2977676bf9e92d72159c614929f5` |
| 18 | `theorem` | [hasSum_one_div_pow_mul_fourier_mul_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-one-div-pow-mul-fourier-mul-bernoullifun--2c5092168d38e91e12e53047.md) | 202 | `result-track:2c5092168d38e91e12e53047eeffa6a07addf6de8bdb90fe16d5413133725809` |
| 19 | `theorem` | [hasSum_one_div_nat_pow_mul_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-one-div-nat-pow-mul-fourier--46a641a585656f9c9b61a387.md) | 241 | `result-track:46a641a585656f9c9b61a387e7a006192135d152819adc7b461b84914c3e9aa6` |
| 20 | `theorem` | [hasSum_one_div_nat_pow_mul_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-one-div-nat-pow-mul-cos--aa94e9807583b413279309dd.md) | 258 | `result-track:aa94e9807583b413279309dd3e2d2d6d7bebdaf3a9deed6b7e38a3196b48adad` |
| 21 | `theorem` | [hasSum_one_div_nat_pow_mul_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-one-div-nat-pow-mul-sin--750c76e0f38df03254131a83.md) | 295 | `result-track:750c76e0f38df03254131a83a9000e561bf14ff3500f32f5fdecb381c80fa71d` |
| 22 | `theorem` | [hasSum_zeta_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-zeta-nat--ec2978de9312dc33481551d1.md) | 339 | `result-track:ec2978de9312dc33481551d1f5540a48ff43affa5a49fbdfc4a37279f625c69e` |
| 23 | `theorem` | [hasSum_zeta_two](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-zeta-two--3bf0e2a20724ceed529d7f16.md) | 362 | `result-track:3bf0e2a20724ceed529d7f16b383c5a6c9ef00cc1dd3481cd9b5f7b510f85fdf` |
| 24 | `theorem` | [hasSum_zeta_four](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-zeta-four--e8b75f10699a8c8ab70104fc.md) | 368 | `result-track:e8b75f10699a8c8ab70104fc4a29cd892446464e8f57e01ad89a8b2238c91648` |
| 25 | `theorem` | [Polynomial.bernoulli_three_eval_one_quarter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/polynomial-bernoulli-three-eval-one-quarter--4219aecd87aa6ab322230f37.md) | 374 | `result-track:4219aecd87aa6ab322230f371fc7ce7523b221757f8809ff270bd55c9cad4964` |
| 26 | `theorem` | [hasSum_L_function_mod_four_eval_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variant5e228d85d9c56f3cba5fc9c6e6203e853ba6394e7dc9b26ffaa5f08af7c2b02a.lean/declarations/hassum-l-function-mod-four-eval-three--d582ff120ba232069496b95b.md) | 387 | `result-track:d582ff120ba232069496b95b663207c059148f0c1e36168592931e9efb68ed4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
