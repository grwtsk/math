# Verification target: GRWTSK.Analysis.SpecialFunctions.Basic.Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7955ef85b393fe1fd289876bb27a17a94b86454c",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7955ef85b393fe1fd289876bb27a17a94b86454c`.

Source path: `GRWTSK/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Integral.ExpDecay` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.MellinTransform` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Gamma_integrand_isLittleO](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-integrand-islittleo--a13d623c47b48a11c65373bb.md) | 65 | `result-track:a13d623c47b48a11c65373bb2dec70c86b541552514e1b17045217d32e152990` |
| 2 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-convergent--fd36ecef5409c71cf22e261f.md) | 80 | `result-track:fd36ecef5409c71cf22e261f8ccef90c527db4bb7804d14b757fee4cad3346d1` |
| 3 | `theorem` | [GammaIntegral_convergent](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-convergent--751fce65517a7b0fd942e471.md) | 104 | `result-track:751fce65517a7b0fd942e4718000a89aefbe75cfe4c84c06c9d12e25267a432a` |
| 4 | `def` | [GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral--cdd965c6cdddb318a7ec24f0.md) | 128 | `declaration-track:cdd965c6cdddb318a7ec24f005d1d6d7298e0288337a12069952773763ad611a` |
| 5 | `theorem` | [GammaIntegral_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-conj--47884e62f8115df4d5a3fc70.md) | 132 | `result-track:47884e62f8115df4d5a3fc709230a6e1595bdef73939b0ae886a729a4213d36d` |
| 6 | `theorem` | [GammaIntegral_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-ofreal--91a95a426ee26bbb88879160.md) | 141 | `result-track:91a95a426ee26bbb88879160ae7bdda110c8e3ff76c102986e225a3122665312` |
| 7 | `theorem` | [GammaIntegral_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-one--159422723c52649b8df63a2a.md) | 153 | `result-track:159422723c52649b8df63a2a2f99030079847a881159f6d25f8a729553e1ff0b` |
| 8 | `def` | [partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/partialgamma--2c0b44f0a16fc9db04121614.md) | 168 | `declaration-track:2c0b44f0a16fc9db041216146db44373bc4df2ab2693b42d8e7302fa2bc924a5` |
| 9 | `theorem` | [tendsto_partialGamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/tendsto-partialgamma--2792e472b976c993b0686f20.md) | 172 | `result-track:2792e472b976c993b0686f20246151b48b0ac62718444ac1363515a6d634dbe5` |
| 10 | `theorem` | [Gamma_integrand_interval_integrable](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-integrand-interval-integrable--1e0f0fb449cde73865a87580.md) | 177 | `result-track:1e0f0fb449cde73865a875801e14b6457a69403b3468ab87a0819cfaeae25a8e` |
| 11 | `theorem` | [Gamma_integrand_deriv_integrable_A](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-integrand-deriv-integrable-a--5a11be116baec9707fe44c98.md) | 182 | `result-track:5a11be116baec9707fe44c989f8b4b6a3a82a08a3fd81f420df47813b23a9a0a` |
| 12 | `theorem` | [Gamma_integrand_deriv_integrable_B](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-integrand-deriv-integrable-b--6f3e5d61cec5fa9a7e5dac75.md) | 188 | `result-track:6f3e5d61cec5fa9a7e5dac757adcf6ece62f3838594160a21e93c990146cd062` |
| 13 | `theorem` | [partialGamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/partialgamma-add-one--fca52cbf663847acbf315d11.md) | 211 | `result-track:fca52cbf663847acbf315d113954702be6422cf6da4b9a60c9653b935dbb7255` |
| 14 | `theorem` | [GammaIntegral_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-add-one--90f498a7da8b542c9265acd1.md) | 245 | `result-track:90f498a7da8b542c9265acd14c2a29ad7946258888f84c2efe57895f85e0ee46` |
| 15 | `def` | [GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaaux--fa3a0450e743713b525fe0b0.md) | 277 | `declaration-track:fa3a0450e743713b525fe0b0093e93d1e6eeddf00da3f14f728d6bf718739650` |
| 16 | `theorem` | [GammaAux_recurrence1](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaaux-recurrence1--fb496b64a5d3c91e88414122.md) | 282 | `result-track:fb496b64a5d3c91e88414122ad32e413341cf78fc4bea7ababba9f7143567fb6` |
| 17 | `theorem` | [GammaAux_recurrence2](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaaux-recurrence2--b5c35899eecf048bdf05f73b.md) | 296 | `result-track:b5c35899eecf048bdf05f73b331bffcd744627e76a1204df3e148b7ada366c66` |
| 18 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma--90f24b3a4b7008d76754e5c3.md) | 316 | `declaration-track:90f24b3a4b7008d76754e5c3f36fbea4cd46059f98bd169c0d0f0430841293bc` |
| 19 | `theorem` | [Gamma_eq_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-eq-gammaaux--b202ef4a71354e723433370f.md) | 320 | `result-track:b202ef4a71354e723433370f3b160582eb22e1deaf48d728647177971cb57d6c` |
| 20 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-add-one--64b749cffee3367736533126.md) | 339 | `result-track:64b749cffee3367736533126472c4a0cc41244baf4ba26b50eb4833860e1837a` |
| 21 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-eq-integral--18b7be1b9e6aec8fa75fa714.md) | 347 | `result-track:18b7be1b9e6aec8fa75fa714d9e51560f2172e08794679ab21da8df950cf00fe` |
| 22 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-one--badf6fe1fe2a23b257fba9df.md) | 351 | `result-track:badf6fe1fe2a23b257fba9dfc5c2b48bc1879ea60f5191a6f54a0de3f381e533` |
| 23 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-nat-eq-factorial--c545449aece8e580418cf2ab.md) | 354 | `result-track:c545449aece8e580418cf2ab58e82b2177190b637750516d631272cbd7c99951` |
| 24 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-zero--2e91087d258d5d4dd138705a.md) | 362 | `result-track:2e91087d258d5d4dd138705aa0b00394d897c96ec0d024a5e0681eb919805efb` |
| 25 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-neg-nat-eq-zero--236e9d815aae60fc9863b422.md) | 367 | `result-track:236e9d815aae60fc9863b422ef104b710d8bf0487b5e24d9546298401a982a6d` |
| 26 | `theorem` | [Gamma_conj](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-conj--28ded1b75802cdf8790b85ff.md) | 379 | `result-track:28ded1b75802cdf8790b85ff7b8173d9fdb32cc223fbd5d5cc4fea92499c2444` |
| 27 | `theorem` | [GammaIntegral_eq_mellin](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gammaintegral-eq-mellin--3464dff1fb0ef932f3b3d9db.md) | 400 | `result-track:3464dff1fb0ef932f3b3d9dbe0d41083935f2c160dd56d6b6cd5570691b9e81b` |
| 28 | `theorem` | [hasDerivAt_GammaIntegral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/hasderivat-gammaintegral--55485df2f21c7cc035df2877.md) | 406 | `result-track:55485df2f21c7cc035df2877999a63714e5ef88163bb95295264ba01d708b936` |
| 29 | `theorem` | [differentiableAt_GammaAux](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/differentiableat-gammaaux--0dbe10c9f35e0e480b81dce9.md) | 421 | `result-track:0dbe10c9f35e0e480b81dce93b8aff9ac0ede755de7858d5438a559def097b6c` |
| 30 | `theorem` | [differentiableAt_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/differentiableat-gamma--202284f5ae59b92db2ece9bf.md) | 441 | `result-track:202284f5ae59b92db2ece9bf2a4f9b68aac85ac68936f635a60d7220e6f17af6` |
| 31 | `theorem` | [tendsto_self_mul_Gamma_nhds_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/tendsto-self-mul-gamma-nhds-zero--48c42c7391943aee03eb5bc8.md) | 461 | `result-track:48c42c7391943aee03eb5bc87e7292d9e68e573ced05ff2ef975f3e80f6e2c12` |
| 32 | `def` | [Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma--02abecf4d64a123c6b824795.md) | 478 | `declaration-track:02abecf4d64a123c6b824795328090ca9426f3d64f505effa6bb4b4401597fd5` |
| 33 | `theorem` | [Gamma_eq_integral](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-eq-integral--c14ebdb3d08a56f08179b6a7.md) | 482 | `result-track:c14ebdb3d08a56f08179b6a722f0a17c44c4bd2c4600cd5f738d4e8ea28a3ad4` |
| 34 | `theorem` | [Gamma_add_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-add-one--25fa8ec666679e7b57d49093.md) | 498 | `result-track:25fa8ec666679e7b57d4909399658bd6c98f3be055c0041ced76af6c59a12b89` |
| 35 | `theorem` | [Gamma_one](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-one--beb57e0aba6c1ecd2d997659.md) | 504 | `result-track:beb57e0aba6c1ecd2d997659a25d0bd1202ecec596c53ae011a68ab028b601ce` |
| 36 | `theorem` | [_root_.GRWTSK.Analysis.SpecialFunctions.GammaIntegrandIsLittleO.Variantaecd9bbeffef0cc5c2c52c6671f631eb9c16439de591627efd56e2ccaa5f0313.Complex.Gamma_ofReal](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/root-grwtsk-analysis-specialfunctions-gammaintegrandislittleo-variantaec--c65728754682a6ecb9418705.md) | 508 | `result-track:c65728754682a6ecb9418705b22bbcd744123d15ea10c07b98c5e0dc7415c32b` |
| 37 | `theorem` | [Gamma_nat_eq_factorial](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-nat-eq-factorial--1670d981fbbf0942bb4417ef.md) | 512 | `result-track:1670d981fbbf0942bb4417efd43b9f5c8b1b7f049064f18f62e4fda3c55fb8a4` |
| 38 | `theorem` | [Gamma_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-zero--b15c6b164c39033d9751bf40.md) | 518 | `result-track:b15c6b164c39033d9751bf40dadf76f4c76c9ff1b1396a85d88a2cec49d219e7` |
| 39 | `theorem` | [Gamma_neg_nat_eq_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-neg-nat-eq-zero--6b037cfaf3e04d4c4b97d7e7.md) | 525 | `result-track:6b037cfaf3e04d4c4b97d7e7f30193394387770b393054c75d5e6cff4a8f3da9` |
| 40 | `theorem` | [Gamma_pos_of_pos](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-pos-of-pos--2ea2378595406e3ddd557368.md) | 530 | `result-track:2ea2378595406e3ddd5573684259ce24a14aec949d1f50ab04594afb46d8fae5` |
| 41 | `theorem` | [Gamma_ne_zero](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-ne-zero--b5e65b15a422ec2c5d55e5c8.md) | 547 | `result-track:b5e65b15a422ec2c5d55e5c8cc8376bd5b9e5579c05d84eb99a24561759354e6` |
| 42 | `theorem` | [Gamma_eq_zero_iff](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/gamma-eq-zero-iff--be08c76b4a8551b5c6533771.md) | 575 | `result-track:be08c76b4a8551b5c6533771ddac157403a10455ffb238e3a4e6cf34abe3a731` |
| 43 | `theorem` | [differentiableAt_Gamma](../../../../../mathematics/Analysis/SpecialFunctions/Basic/Variant75c1f3c944542ddc816a86a97792b2db0b03ce817fa87706caeb8eba0d19554d.lean/declarations/differentiableat-gamma--9f448c7bfe7fe339bc328b15.md) | 579 | `result-track:9f448c7bfe7fe339bc328b159761d65f31999e94231088fc3d54c7382e170160` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
