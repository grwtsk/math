# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ZetaValues.Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `771fb3d9f8946af2cd2e2c6950a5f1df74dfdc7b`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.BernoulliPolynomials` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Polynomial` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifun--8545b7f6de4424b816470d90.md) | 43 | `declaration-track:8545b7f6de4424b816470d90e37f96a3fdb5fa4f763b0969e1968acedabeeb7d` |
| 2 | `theorem` | [bernoulliFun_eval_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifun-eval-zero--6364e100fbf2d670c6bf49f3.md) | 46 | `result-track:6364e100fbf2d670c6bf49f3b2effe63992d3fd8aa734abb34fff153fee54899` |
| 3 | `theorem` | [bernoulliFun_endpoints_eq_of_ne_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifun-endpoints-eq-of-ne-one--d3e11933239db0ba0e9b0aff.md) | 49 | `result-track:d3e11933239db0ba0e9b0aff7bb32dbf96cf5b0ec9c516aeda37efd22170e0b3` |
| 4 | `theorem` | [bernoulliFun_eval_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifun-eval-one--72ea1aed1d2ace93634cc4f0.md) | 54 | `result-track:72ea1aed1d2ace93634cc4f04fbfb495bd06a9215c511ab1f74e6c913c1ef525` |
| 5 | `theorem` | [hasDerivAt_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hasderivat-bernoullifun--1c38861d8d9b314f699cf241.md) | 61 | `result-track:1c38861d8d9b314f699cf2419a0fb406b433038d6c60524bb033badad93ff79e` |
| 6 | `theorem` | [antideriv_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/antideriv-bernoullifun--0154e643b85a684821622819.md) | 67 | `result-track:0154e643b85a684821622819370d92c634adbcaf8fa2e1d6a0500fc1b29ae125` |
| 7 | `theorem` | [integral_bernoulliFun_eq_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/integral-bernoullifun-eq-zero--a8a4974b941aef443775411f.md) | 72 | `result-track:a8a4974b941aef443775411f585b6a601e113d03dc8a4a6d5bcdcbe6ad706340` |
| 8 | `def` | [bernoulliFourierCoeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifouriercoeff--1438c4ca71fc1250a60ad5e5.md) | 89 | `declaration-track:1438c4ca71fc1250a60ad5e5a8165ac1f5e7a0521790c1f8fea68f015e140bab` |
| 9 | `theorem` | [bernoulliFourierCoeff_recurrence](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifouriercoeff-recurrence--77951d4d2009599bed4669d7.md) | 93 | `result-track:77951d4d2009599bed4669d7515d2480da80e514c8406f26109fe5a7dd63f941` |
| 10 | `theorem` | [bernoulli_zero_fourier_coeff](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoulli-zero-fourier-coeff--a5ecbff602970b0041f3d3d3.md) | 110 | `result-track:a5ecbff602970b0041f3d3d3a409958b686f820dfbe09e67a5445e4c15a63dd6` |
| 11 | `theorem` | [bernoulliFourierCoeff_zero](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifouriercoeff-zero--cb77be61a2b70cbebac9ad78.md) | 114 | `result-track:cb77be61a2b70cbebac9ad78f3f4e7cf7696f0f6a8f9189ba1afc8aad04ce7cb` |
| 12 | `theorem` | [bernoulliFourierCoeff_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/bernoullifouriercoeff-eq--3e7bf49af2a8f577bfdf30a2.md) | 119 | `result-track:3e7bf49af2a8f577bfdf30a2acd99f91b5af3e9b41c5b60d491fb20ba93d72c5` |
| 13 | `def` | [periodizedBernoulli](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/periodizedbernoulli--5f3ef15f138228ce20cbb328.md) | 147 | `declaration-track:5f3ef15f138228ce20cbb3287835632bab20d4bf8ad252f9fda8b02889725523` |
| 14 | `theorem` | [periodizedBernoulli.continuous](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/periodizedbernoulli-continuous--479cd20dd5c38856118c234c.md) | 150 | `result-track:479cd20dd5c38856118c234c756a18004d299962a9dc98ef8307bb95db5096b3` |
| 15 | `theorem` | [fourierCoeff_bernoulli_eq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/fouriercoeff-bernoulli-eq--d2e56d7e06bc1ab9ad0823b7.md) | 155 | `result-track:d2e56d7e06bc1ab9ad0823b7dc64f39c427edf9f0e5490b09bd403f60491e45c` |
| 16 | `theorem` | [summable_bernoulli_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/summable-bernoulli-fourier--f5578a835b1690a96f12964e.md) | 162 | `result-track:f5578a835b1690a96f12964ea13f6b39b1d2513e6d4dc1d231a88ca8392f9b30` |
| 17 | `theorem` | [hasSum_one_div_pow_mul_fourier_mul_bernoulliFun](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-one-div-pow-mul-fourier-mul-bernoullifun--e81697fb5a7ddf37562ef03d.md) | 175 | `result-track:e81697fb5a7ddf37562ef03d8d0031cb06781e6249aa311cece96fbfbab7c69d` |
| 18 | `theorem` | [hasSum_one_div_nat_pow_mul_fourier](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-one-div-nat-pow-mul-fourier--f1eb047bc062f5a7202ae873.md) | 213 | `result-track:f1eb047bc062f5a7202ae87375260805ee48c896103cee34510a659eae6bf728` |
| 19 | `theorem` | [hasSum_one_div_nat_pow_mul_cos](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-one-div-nat-pow-mul-cos--f419d2fee211e29283699e85.md) | 229 | `result-track:f419d2fee211e29283699e851d76363e82da92683fc2c6de45154ec80f8db06a` |
| 20 | `theorem` | [hasSum_one_div_nat_pow_mul_sin](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-one-div-nat-pow-mul-sin--a7e0204da271830db74098f8.md) | 265 | `result-track:a7e0204da271830db74098f82ecd8bcbc64a59eb94a4740939b0387515703702` |
| 21 | `theorem` | [hasSum_zeta_nat](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-zeta-nat--9feda862823e5eeb108d8c1c.md) | 308 | `result-track:9feda862823e5eeb108d8c1c7a056d7e5b2fb49d91381dcf4fe8ac7f1f03470a` |
| 22 | `theorem` | [hasSum_zeta_two](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-zeta-two--7640ec9051d493ed70ba6ea6.md) | 330 | `result-track:7640ec9051d493ed70ba6ea6f943c32cc081fbe189155d8ea15b29db13ec15ff` |
| 23 | `theorem` | [hasSum_zeta_four](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-zeta-four--c15c63cb380394542228ded8.md) | 335 | `result-track:c15c63cb380394542228ded8823b613baf4a0c28ec4e1a4f116a7a882c9ec280` |
| 24 | `theorem` | [Polynomial.bernoulli_three_eval_one_quarter](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/polynomial-bernoulli-three-eval-one-quarter--ad7bba0317d17e497dd596a4.md) | 341 | `result-track:ad7bba0317d17e497dd596a4fec60ee2a58a27da4f009f57630fc23819e4c8eb` |
| 25 | `theorem` | [hasSum_L_function_mod_four_eval_three](../../../../../mathematics/Analysis/AsymptoticAnalysis/ZetaValues/Variantd457c11b096d5f4e4c1e14f6fb8c9d350865414358ee59820fa08b42926c0822.lean/declarations/hassum-l-function-mod-four-eval-three--a1a9ddf93f42c412793cd527.md) | 353 | `result-track:a1a9ddf93f42c412793cd5278c348c1672c8683c1dc9ff28eaf3dbec31244263` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
