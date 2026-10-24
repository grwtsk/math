# Verification target: GRWTSK.Analysis.SpecialFunctions.Beta.Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `19004bb83df9dbb84f2643aec6bec388982f15a8`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convolution` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.EulerSineProd` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.IsolatedZeros` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/macro-rules--4c54559c95fcb23326687204.md) | 43 | `declaration-track:4c54559c95fcb2332668720427f90acd631e0616d06c14a20d5d01d1bf5d9963` |
| 2 | `def` | [betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral--391d400c3a44b38f0ab219ee.md) | 61 | `declaration-track:391d400c3a44b38f0ab219ee7482f67132dce1a4e5e99022c56479e415475d7b` |
| 3 | `theorem` | [betaIntegral_convergent_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-convergent-left--6da778949b6299d412d85427.md) | 66 | `result-track:6da778949b6299d412d85427f5d3f4c1dedb12d828902124edf7456396d55316` |
| 4 | `theorem` | [betaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-convergent--26b7f0366e96493f7eb192d0.md) | 83 | `result-track:26b7f0366e96493f7eb192d00464261d9a0735ca321ab0d0255d647374cdc260` |
| 5 | `theorem` | [betaIntegral_symm](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-symm--0006761cbe92cf500188b824.md) | 96 | `result-track:0006761cbe92cf500188b82432b4bde8f42972e44e0e4ff8fb1f915b121dbcac` |
| 6 | `theorem` | [betaIntegral_eval_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-eval-one-right--b852814a51dba929e57198e5.md) | 106 | `result-track:b852814a51dba929e57198e5c17790fae2e78dc5f45145b56b4ef0f4c6748f4b` |
| 7 | `theorem` | [betaIntegral_scaled](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-scaled--d8b824fbce18e11849692577.md) | 115 | `result-track:d8b824fbce18e11849692577c4d0f462dfbb3bac661e0515a2cd9e5f8616d3d5` |
| 8 | `theorem` | [Gamma_mul_Gamma_eq_betaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-mul-gamma-eq-betaintegral--2074733bde8fcedc3e7244d3.md) | 137 | `result-track:2074733bde8fcedc3e7244d3fb6232991c11dec10447f84b9d4e3bb1185b0df8` |
| 9 | `theorem` | [betaIntegral_recurrence](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-recurrence--687848b22b26f14356692027.md) | 156 | `result-track:687848b22b26f14356692027cd5112068ad55ce12cf78561689f11878be16759` |
| 10 | `theorem` | [betaIntegral_eval_nat_add_one_right](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/betaintegral-eval-nat-add-one-right--1af2da34b070fc13627f41cb.md) | 214 | `result-track:1af2da34b070fc13627f41cbbcaec9e2c7af98c39b014b95cf2504a9b95de33b` |
| 11 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq--24019da5b3c963cbd8834cc4.md) | 244 | `declaration-track:24019da5b3c963cbd8834cc4a0a2699bba9ce2f97034b7fe6d5d1d001bdd4393` |
| 12 | `theorem` | [GammaSeq_eq_betaIntegral_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-eq-betaintegral-of-re-pos--3d3662f0e4d1160587d5bf17.md) | 248 | `result-track:3d3662f0e4d1160587d5bf17ec7e58e205e0bf2fb34a22dab84f3053e03a1433` |
| 13 | `theorem` | [GammaSeq_add_one_left](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-add-one-left--fbf0349e39eb3907f7f229d9.md) | 253 | `result-track:fbf0349e39eb3907f7f229d9435f73ef7f08bc80ff2e3bebe81147758a8eda90` |
| 14 | `theorem` | [GammaSeq_eq_approx_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-eq-approx-gamma-integral--0f58a7a3ea04e4aea2a086c0.md) | 266 | `result-track:0f58a7a3ea04e4aea2a086c0573f6a9affdcbf3203d7672e7ba5efabc1a04b5f` |
| 15 | `theorem` | [approx_Gamma_integral_tendsto_Gamma_integral](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/approx-gamma-integral-tendsto-gamma-integral--927a4796e8fd11b4ff81bc25.md) | 292 | `result-track:927a4796e8fd11b4ff81bc257ba469e44c489da79c48e6f9fc9e886f087d0e2c` |
| 16 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-tendsto-gamma--182d5f008634487072c9c9d3.md) | 354 | `result-track:182d5f008634487072c9c9d3d905dfcef8c8c3fb53b2f40a0d6b7b9ca804ebed` |
| 17 | `theorem` | [GammaSeq_mul](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-mul--bdd89b57d2f07df7ad1f461d.md) | 397 | `result-track:bdd89b57d2f07df7ad1f461d9bde17c7302cbf1830c508c03245698bb5bb4277` |
| 18 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-mul-gamma-one-sub--694210144774be8e6a7f1f0a.md) | 422 | `result-track:694210144774be8e6a7f1f0a02c697197a4ca05bad80f240f5ea08c31d4abff8` |
| 19 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-ne-zero--9d2161e5d501a5d74697355f.md) | 450 | `result-track:9d2161e5d501a5d74697355f26339d673bfb71281cc418b799c608e45c571d19` |
| 20 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-eq-zero-iff--d84f45450b2f4ec79192cec6.md) | 471 | `result-track:d84f45450b2f4ec79192cec6d002acefbfad6a379fc5c2f13a14a6693d86610e` |
| 21 | `theorem` | [Gamma_ne_zero_of_re_pos](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-ne-zero-of-re-pos--c2c6fe4b1a05867176cc8a29.md) | 478 | `result-track:c2c6fe4b1a05867176cc8a297aa379fbecc37c4b12aa609360babae3e8eed896` |
| 22 | `def` | [GammaSeq](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq--310c569f47ded185b2d5b9e3.md) | 490 | `declaration-track:310c569f47ded185b2d5b9e38b93c5f2a15fc1bbb778871d4d453da9e8742353` |
| 23 | `theorem` | [GammaSeq_tendsto_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gammaseq-tendsto-gamma--f9abc7c7381039bf0e95ae89.md) | 495 | `result-track:f9abc7c7381039bf0e95ae891b4d6e9e867c27ab3bf73833277175e87626d529` |
| 24 | `theorem` | [Gamma_mul_Gamma_one_sub](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-mul-gamma-one-sub--42c0c2d90d06e383fe934d46.md) | 506 | `result-track:42c0c2d90d06e383fe934d46ae98f2995c79a546d2304f1e3a47ff0494682505` |
| 25 | `theorem` | [one_div_Gamma_eq_self_mul_one_div_Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/one-div-gamma-eq-self-mul-one-div-gamma-add-one--baf8032f7547d4fcbb4d730f.md) | 530 | `result-track:baf8032f7547d4fcbb4d730f659b629090dc034615f072e1436b96c92ff75f49` |
| 26 | `theorem` | [differentiable_one_div_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/differentiable-one-div-gamma--7b368c23d6323cf9db438a75.md) | 539 | `result-track:7b368c23d6323cf9db438a75a129bcb30702a3251b104c7e9428a93b952f4946` |
| 27 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-mul-gamma-add-half--cdf905559e042f63f3666569.md) | 576 | `result-track:cdf905559e042f63f366656973b7b573fc02c2d3fb9a72a4bb0ad029dbf440ed` |
| 28 | `theorem` | [Gamma_mul_Gamma_add_half](../../../../../mathematics/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/declarations/gamma-mul-gamma-add-half--9fde5f5c3a2f9ae3c02db747.md) | 615 | `result-track:9fde5f5c3a2f9ae3c02db7477b32c6a771cc3bc57191aa813c867958c2fc8842` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
