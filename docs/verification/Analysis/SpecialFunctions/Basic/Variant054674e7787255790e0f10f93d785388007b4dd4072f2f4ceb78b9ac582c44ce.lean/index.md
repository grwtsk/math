# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1da8d706d4bd3df935567e5f9e8abed748af437f",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1da8d706d4bd3df935567e5f9e8abed748af437f`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_integrand_isLittleO](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-integrand-islittleo--52f47d94a8b0b20f648b0ab7.md) | 58 | `result-track:52f47d94a8b0b20f648b0ab79fc9745745b9830e4c35180febb02988bd7542c4` |
| 2 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-convergent--c92eca7b1bf1de0e2c7990b9.md) | 72 | `result-track:c92eca7b1bf1de0e2c7990b9f24bbf8aeeb2f67ac8fdfbe4d7d936a61b3e694e` |
| 3 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-convergent--bb223b3060e64579f872e389.md) | 95 | `result-track:bb223b3060e64579f872e3890c41d854498544f75192f1a2ab00abbdbf25190a` |
| 4 | `def` | [GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral--d2496ae88a308569f28534ef.md) | 118 | `declaration-track:d2496ae88a308569f28534ef49e94b88a49cde049804727e982c1bf7ab05552e` |
| 5 | `theorem` | [GammaIntegral_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-conj--a9f3c523b54597c5c605944e.md) | 121 | `result-track:a9f3c523b54597c5c605944e5d1d00dda2a6e40a917be6588c5c2bc8a9ecef76` |
| 6 | `theorem` | [GammaIntegral_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-ofreal--a0aa3166f38d2e476817faca.md) | 129 | `result-track:a0aa3166f38d2e476817faca7db4af18af16da2f116defb386e598d77f58ed45` |
| 7 | `theorem` | [GammaIntegral_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-one--cb50d72e5527787eb9db3d98.md) | 141 | `result-track:cb50d72e5527787eb9db3d98e5979b33303156e775f5a98b4e4b4961bd9ab34c` |
| 8 | `def` | [partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/partialgamma--6c8256c488b7e49f25f15c01.md) | 155 | `declaration-track:6c8256c488b7e49f25f15c01d2bb90358ad64240f02ecb23aafec553b0f8ea09` |
| 9 | `theorem` | [tendsto_partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/tendsto-partialgamma--3f1bbc8ae7f866bb0689228e.md) | 158 | `result-track:3f1bbc8ae7f866bb0689228e98b2d63f0f71e823a0d5f6108d03b84277e1cece` |
| 10 | `theorem` | [Gamma_integrand_intervalIntegrable](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-integrand-intervalintegrable--0d69ce4da4d4abb038d38ddd.md) | 162 | `result-track:0d69ce4da4d4abb038d38dddc46dab3e9e9fe9eff79b8cc17391b1650cf9d863` |
| 11 | `theorem` | [Gamma_integrand_deriv_integrable_A](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-integrand-deriv-integrable-a--a5ab9d451da30283932efa6d.md) | 167 | `result-track:a5ab9d451da30283932efa6dbba0ded8b137e3d5167cbe00c30bc1ea321297d4` |
| 12 | `theorem` | [Gamma_integrand_deriv_integrable_B](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-integrand-deriv-integrable-b--32014267c1d9645a6a7d61eb.md) | 173 | `result-track:32014267c1d9645a6a7d61eb7dfb363c767bf04b37f270b11640d6dd9bc8443b` |
| 13 | `theorem` | [partialGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/partialgamma-add-one--1aa59efbc8acc41671d091f3.md) | 196 | `result-track:1aa59efbc8acc41671d091f34d027af8e5c905f2c099685256a52460f006f0bf` |
| 14 | `theorem` | [GammaIntegral_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaintegral-add-one--5e997b0d4169bcbdf0f5e4c7.md) | 227 | `result-track:5e997b0d4169bcbdf0f5e4c73beaf24c0644d60a0948fac18e1812fafc865d80` |
| 15 | `def` | [GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaaux--a4fece0aa6332ab0ca3e8a88.md) | 258 | `declaration-track:a4fece0aa6332ab0ca3e8a885f0eaf4183d76798e734ae0affa4d62af11f7cda` |
| 16 | `theorem` | [GammaAux_recurrence1](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaaux-recurrence1--17538c399b26fa58c739223c.md) | 262 | `result-track:17538c399b26fa58c739223c41772ca0ffe5558bf0c253c464bda83b0f6e3b89` |
| 17 | `theorem` | [GammaAux_recurrence2](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gammaaux-recurrence2--d676f906b4fa15327c85660a.md) | 275 | `result-track:d676f906b4fa15327c85660a35444ae976e892fdbf6bd4937350e5e1e0b4e01f` |
| 18 | `theorem` | [Gamma_eq_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-eq-gammaaux--21faf53667384aa501a93c94.md) | 297 | `result-track:21faf53667384aa501a93c94c1b43f1120e6ea9982b410d4c344d77bf8ed1228` |
| 19 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-add-one--0035885b2c081a45aeb42fa6.md) | 317 | `result-track:0035885b2c081a45aeb42fa6cfbdf9672ccc8ff8314eea559f044d45095235e4` |
| 20 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-eq-integral--f1bb5f64be26a7dd8c195243.md) | 324 | `result-track:f1bb5f64be26a7dd8c195243056917428680d6cc53dd6c142a6ef970eeeb92a3` |
| 21 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-one--236712d460ba22c9144d61b1.md) | 328 | `result-track:236712d460ba22c9144d61b1574aa0c58bc7e2914736983208a0490bde7dd4d3` |
| 22 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-nat-eq-factorial--7b3f9aeb75219a3529c5a4f0.md) | 330 | `result-track:7b3f9aeb75219a3529c5a4f050212c8fd98f7b1300c79524da6c9e83fd6d33c4` |
| 23 | `theorem` | [Gamma_ofNat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-ofnat-eq-factorial--a69f8d3d620bca66970b3ca6.md) | 339 | `result-track:a69f8d3d620bca66970b3ca6fcf6016dc4e717b33a2f9bc410d9ba0dd5acf8dd` |
| 24 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-zero--c14fd9fd57ccbd5f4bca96c6.md) | 345 | `result-track:c14fd9fd57ccbd5f4bca96c607eb0b8e6cbe27257a5c7d8febeb5eefb14cf143` |
| 25 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-neg-nat-eq-zero--cff45ee98cff0a7ccbfb53ed.md) | 349 | `result-track:cff45ee98cff0a7ccbfb53ed7effd3360b86fcd4e82a8775268ae3787d0b644e` |
| 26 | `theorem` | [Gamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-conj--6658e1ad650b7291ede3c4fd.md) | 361 | `result-track:6658e1ad650b7291ede3c4fdb3b7ca3cea0d9eb4d547b5541c3fafeb9938149d` |
| 27 | `lemma` | [integral_cpow_mul_exp_neg_mul_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/integral-cpow-mul-exp-neg-mul-ioi--b6f2aa06d91f11b6489f8093.md) | 377 | `result-track:b6f2aa06d91f11b6489f8093c1e014fbc14373ba6ca5a34b67411ec818371b31` |
| 28 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma--0e88d47e91a06ef6852ad5c2.md) | 408 | `declaration-track:0e88d47e91a06ef6852ad5c2efedbc1303add28b82571c1223377e6d901f835b` |
| 29 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-eq-integral--5ca78ca60be9a5bff4250da9.md) | 411 | `result-track:5ca78ca60be9a5bff4250da9eea942576dc8bc150e20be3f5e531d959cfb6de0` |
| 30 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-add-one--553168a497344ed160af1ef3.md) | 426 | `result-track:553168a497344ed160af1ef315eefd0bc003e588729e17d2ffdd7999381d75b9` |
| 31 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-one--fe81f6fc4632e4bb3fb0b834.md) | 432 | `result-track:fe81f6fc4632e4bb3fb0b83418f7ef66067b6179df027abb2eb9748b14be4e64` |
| 32 | `theorem` | [_root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.Complex.Gamma_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/root-grwtsk-analysis-specialfunctions-gammaintegrandislittleo-variant309--8323ace86aa3901179fbfbcc.md) | 435 | `result-track:8323ace86aa3901179fbfbccf623b78ecf1ebed433d35b2323676a91fdab75bd` |
| 33 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-nat-eq-factorial--a5279296d3b768a13a809d5f.md) | 438 | `result-track:a5279296d3b768a13a809d5f2ac3f8bc62e2762b6089f7c301ce1f80907827d6` |
| 34 | `theorem` | [Gamma_ofNat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-ofnat-eq-factorial--b986772b39f7889586868ae9.md) | 443 | `result-track:b986772b39f7889586868ae95c78d59dd5195bf5bf3afccc391f7597f7c22ed2` |
| 35 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-zero--8ee7871977b44edda306ec36.md) | 449 | `result-track:8ee7871977b44edda306ec3671689c364c7a0606378a899266b7aefbd0fdb2db` |
| 36 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-neg-nat-eq-zero--e2fde46e94c1349629c9e764.md) | 455 | `result-track:e2fde46e94c1349629c9e76495de6a29375fe5f44d02b786e84437d2d7fd8220` |
| 37 | `theorem` | [Gamma_pos_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-pos-of-pos--1de67d64176cd1f148901fe8.md) | 459 | `result-track:1de67d64176cd1f148901fe85d5fde8b4007439976b7c2865fcd4621698d55f9` |
| 38 | `theorem` | [Gamma_nonneg_of_nonneg](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-nonneg-of-nonneg--654d7ed5bce563b6aae9178f.md) | 473 | `result-track:654d7ed5bce563b6aae9178f9e0119cc27385020eddf618788a6d8fc7194b7cc` |
| 39 | `lemma` | [integral_rpow_mul_exp_neg_mul_Ioi](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/integral-rpow-mul-exp-neg-mul-ioi--dce032a3db3fd9c01f9e6a09.md) | 481 | `result-track:dce032a3db3fd9c01f9e6a09b1c01ed3789428705d315bc1dd0696840d7c6d4f` |
| 40 | `def` | [_root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variant309ed56ad43ea584eaff8f968f6d8e013305db3b2cfd5d3dde07995d4d89e52b.Mathlib.Meta.Positivity.evalGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/root-grwtsk-analysis-specialfunctions-gammaintegrandislittleo-variant309--48aa0eab035a8c0b8e6d2f7c.md) | 492 | `declaration-track:48aa0eab035a8c0b8e6d2f7cbdda49d76076019aa92a7cc80918007bf7010280` |
| 41 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-ne-zero--43839a2326b41d4b11097fc1.md) | 507 | `result-track:43839a2326b41d4b11097fc185422c7cd3a138d578d0d41486ea77bb2713a41a` |
| 42 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant054674e7787255790e0f10f93d785388007b4dd4072f2f4ceb78b9ac582c44ce.lean/declarations/gamma-eq-zero-iff--c250da515c028506e52cff1d.md) | 537 | `result-track:c250da515c028506e52cff1dd1d189ffa8d1d78fae00dbc760e001075ffd020a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
