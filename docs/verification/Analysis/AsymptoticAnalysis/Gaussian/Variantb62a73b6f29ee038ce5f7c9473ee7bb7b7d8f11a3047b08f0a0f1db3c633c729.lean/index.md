# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.Gaussian.Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51e199d0bba54a5a81344683204442537ded94ca",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51e199d0bba54a5a81344683204442537ded94ca`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.PolarCoord` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Complex` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.PoissonSummation` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/macro-rules--9a7d975065ae41359754b54c.md) | 40 | `declaration-track:9a7d975065ae41359754b54ceeeb843beb356f2a88be009fb86fa723a45bd75d` |
| 2 | `theorem` | [exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/exp-neg-mul-sq-islittleo-exp-neg--42f1ba5612d1a3caa8b5016d.md) | 54 | `result-track:42f1ba5612d1a3caa8b5016d53729e1c096f3ca928a5b872cce37837ff584935` |
| 3 | `theorem` | [rpow_mul_exp_neg_mul_sq_isLittleO_exp_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/rpow-mul-exp-neg-mul-sq-islittleo-exp-neg--d46754ddd34d427caabc98fd.md) | 62 | `result-track:d46754ddd34d427caabc98fd9b9dd5023a8e815e9556282750ce4c60d2ab9d9a` |
| 4 | `theorem` | [integrableOn_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrableon-rpow-mul-exp-neg-mul-sq--5aa3ebdfeb01466895d8792a.md) | 69 | `result-track:5aa3ebdfeb01466895d8792aefb257bf63b4fd6c7aa4f1c2a8dc6dfdd27a0bf9` |
| 5 | `theorem` | [integrable_rpow_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-rpow-mul-exp-neg-mul-sq--8914fb3b9df66d733908345e.md) | 87 | `result-track:8914fb3b9df66d733908345e9595b65b185356c4f69344660c248f2208092762` |
| 6 | `theorem` | [integrable_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-exp-neg-mul-sq--aaedc229d8b81ba8078fde43.md) | 107 | `result-track:aaedc229d8b81ba8078fde4394bb479e33e9093dad139ce01f47cacedc15831a` |
| 7 | `theorem` | [integrableOn_Ioi_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrableon-ioi-exp-neg-mul-sq-iff--0859f9cee391355cba0982a2.md) | 111 | `result-track:0859f9cee391355cba0982a293f91cc376fdd8a03090343ea49d2fe3eea1f1c4` |
| 8 | `theorem` | [integrable_exp_neg_mul_sq_iff](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-exp-neg-mul-sq-iff--45a27feebfe6ed09144458d0.md) | 123 | `result-track:45a27feebfe6ed09144458d08f4519a018c663b4bb705f0380852673fa3fa7ad` |
| 9 | `theorem` | [integrable_mul_exp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-mul-exp-neg-mul-sq--c4a54b3a1fa94365b993a3dd.md) | 128 | `result-track:c4a54b3a1fa94365b993a3ddaf38145463bc2cab87764d6a633128a626409be4` |
| 10 | `theorem` | [norm_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/norm-cexp-neg-mul-sq--7b8aabe386c9cdf400a490fb.md) | 133 | `result-track:7b8aabe386c9cdf400a490fb5f36a5be9f42bfe2c9d8d6f796266b5b32e395a7` |
| 11 | `theorem` | [integrable_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-cexp-neg-mul-sq--4cce7d67293eafba8b0595d7.md) | 139 | `result-track:4cce7d67293eafba8b0595d7a9bcbc9c4e298323a79477cbb9f673d5294959aa` |
| 12 | `theorem` | [integrable_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-mul-cexp-neg-mul-sq--76c8dac957143ea5c535560c.md) | 148 | `result-track:76c8dac957143ea5c535560c2ecb9420cb97f242f638c4cd63fcb550c34b3dd9` |
| 13 | `theorem` | [integral_mul_cexp_neg_mul_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-mul-cexp-neg-mul-sq--4d53ab7dafc7a1b15962d3bc.md) | 159 | `result-track:4d53ab7dafc7a1b15962d3bcc1f8463516153202f51b5e3eee75c3d263e298cd` |
| 14 | `theorem` | [integral_gaussian_sq_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-gaussian-sq-complex--68f8ab7c0153e7d773b6016b.md) | 181 | `result-track:68f8ab7c0153e7d773b6016bbcb68c428490da01f3e4c9f3241a2267fe32755c` |
| 15 | `theorem` | [integral_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-gaussian--000454a53541caeccbafccd4.md) | 214 | `result-track:000454a53541caeccbafccd47ab860d812f3e55a0836aedf096b96101e28551c` |
| 16 | `theorem` | [continuousAt_gaussian_integral](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/continuousat-gaussian-integral--ab690ab3e1ca697401b9d099.md) | 229 | `result-track:ab690ab3e1ca697401b9d09998dd20b9dd0553841e68a8d6716e501660b8f04f` |
| 17 | `theorem` | [integral_gaussian_complex](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-gaussian-complex--79468e7f6a59fcd0d6e83bcd.md) | 248 | `result-track:79468e7f6a59fcd0d6e83bcd670dc4e97181154ca72394d54191c6e192242ae0` |
| 18 | `theorem` | [integral_gaussian_complex_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-gaussian-complex-ioi--875746df1301c2ce31d54e0f.md) | 288 | `result-track:875746df1301c2ce31d54e0f6e7ecc90391bd28829d4a21bcccbac7fbe0a82d2` |
| 19 | `theorem` | [integral_gaussian_Ioi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-gaussian-ioi--7fe82711057883033f0075ad.md) | 314 | `result-track:7fe82711057883033f0075ade527a9489d4c9085dd6e272d07ee2e703d4d5f38` |
| 20 | `theorem` | [Real.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/real-gamma-one-half-eq--1f56d7d1df441e61dd22dd1f.md) | 330 | `result-track:1f56d7d1df441e61dd22dd1f2a1925e40b06415164ee5105e225f69ec53ac1c1` |
| 21 | `theorem` | [Complex.Gamma_one_half_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/complex-gamma-one-half-eq--cc55acd22f167b69605bdb61.md) | 348 | `result-track:cc55acd22f167b69605bdb619a55ab0a04ce3e525f1b55fa4e01579a5fe394b9` |
| 22 | `def` | [verticalIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/verticalintegral--90cfb03699843d91d963ea03.md) | 369 | `declaration-track:90cfb03699843d91d963ea0354d36f0ddf518a58b2d913c5cc1f51a4021f41a2` |
| 23 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--f1075d0b11c7d1467e4dc11d.md) | 375 | `result-track:f1075d0b11c7d1467e4dc11db8b0adc88829d12ee01dfd94174166a58d052cf4` |
| 24 | `theorem` | [norm_cexp_neg_mul_sq_add_mul_I'](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/norm-cexp-neg-mul-sq-add-mul-i--1bbcb64022ec3136b22a2b4b.md) | 383 | `result-track:1bbcb64022ec3136b22a2b4bbe138c662bc143919155b42b3011365f72c7c6aa` |
| 25 | `theorem` | [verticalIntegral_norm_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/verticalintegral-norm-le--ee300d836f1d36dec1dd1990.md) | 394 | `result-track:ee300d836f1d36dec1dd199041520675285b856e1988e56872c6f19d9ff79dd2` |
| 26 | `theorem` | [tendsto_verticalIntegral](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/tendsto-verticalintegral--ad268df59a86a2991ff35c19.md) | 439 | `result-track:ad268df59a86a2991ff35c1993677286e63b7e0c74394b30d177b43c2ae75724` |
| 27 | `theorem` | [integrable_cexp_neg_mul_sq_add_real_mul_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integrable-cexp-neg-mul-sq-add-real-mul-i--2364489d23f113893da75ca7.md) | 456 | `result-track:2364489d23f113893da75ca7168521f22f939d13bdb6cf224af2a1f672a5ebda` |
| 28 | `theorem` | [integral_cexp_neg_mul_sq_add_real_mul_I](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/integral-cexp-neg-mul-sq-add-real-mul-i--a4106e607f287e7571dfb7a9.md) | 473 | `result-track:a4106e607f287e7571dfb7a9d29524ac00d2ec720d26ff05783fd2df48ff2d73` |
| 29 | `theorem` | [_root_.integral_cexp_neg_mul_sq_add_const](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/root-integral-cexp-neg-mul-sq-add-const--d4fbb4165d96709ad846e8bc.md) | 515 | `result-track:d4fbb4165d96709ad846e8bc2869edf55ff84bd8ce1885fb7fa8c474fde27842` |
| 30 | `theorem` | [_root_.fourier_transform_gaussian](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/root-fourier-transform-gaussian--b295c84831f9b3b7467f530c.md) | 523 | `result-track:b295c84831f9b3b7467f530cf03f8a1549123ec171a0d3508c90949a2e4d5813` |
| 31 | `theorem` | [_root_.fourier_transform_gaussian_pi](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/root-fourier-transform-gaussian-pi--5fe28938af26873125dfb291.md) | 537 | `result-track:5fe28938af26873125dfb291b27480397695e8fb63a45beb274dc4b0143f3f58` |
| 32 | `theorem` | [tendsto_rpow_abs_mul_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/tendsto-rpow-abs-mul-exp-neg-mul-sq-cocompact--d685eddf41cf23f309d4d1df.md) | 565 | `result-track:d685eddf41cf23f309d4d1dfb4b7268fc0d6165868d3743663684042c419b017` |
| 33 | `theorem` | [isLittleO_exp_neg_mul_sq_cocompact](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/islittleo-exp-neg-mul-sq-cocompact--deffaeb5251fd5f778a5b6a5.md) | 576 | `result-track:deffaeb5251fd5f778a5b6a5fa41d585f995432de30cc346158521a4351d9672` |
| 34 | `theorem` | [Complex.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/complex-tsum-exp-neg-mul-int-sq--3f65a611abc675fbef7afe09.md) | 594 | `result-track:3f65a611abc675fbef7afe097e19296b3a603cd7d825a5096ffb4b2216fc4217` |
| 35 | `theorem` | [Real.tsum_exp_neg_mul_int_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/Gaussian/Variantb62a73b6f29ee038ce5f7c9473ee7bb7b7d8f11a3047b08f0a0f1db3c633c729.lean/declarations/real-tsum-exp-neg-mul-int-sq--cb9794a9f54e8b436d048b86.md) | 623 | `result-track:cb9794a9f54e8b436d048b86081a21c80d5a45c0fe0492b9ae5b9507f59bdb4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
