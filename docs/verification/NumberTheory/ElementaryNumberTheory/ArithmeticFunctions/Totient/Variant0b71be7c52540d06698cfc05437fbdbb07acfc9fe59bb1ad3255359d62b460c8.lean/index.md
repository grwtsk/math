# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e14c6e0393b2fd86b0b827db56ac0b18f0994990",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e14c6e0393b2fd86b0b827db56ac0b18f0994990`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient--1ec68b9782bdad130598ad58.md) | 39 | `declaration-track:1ec68b9782bdad130598ad588d81dcb82d40425ae218a6ca3efbd1fc964f9dcd` |
| 2 | `theorem` | [totient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-zero--712832e8c4ae113c339ff4c0.md) | 45 | `result-track:712832e8c4ae113c339ff4c0866cf686081c205810f258b1d740a7bd0f44d9a6` |
| 3 | `theorem` | [totient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-one--d11f3e8bb85005e9981df3b8.md) | 49 | `result-track:d11f3e8bb85005e9981df3b8d05bfa56469f4ae9ad0738c480adde1f8486a0f0` |
| 4 | `theorem` | [totient_eq_card_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-card-coprime--b12cffe576b60af154d98f36.md) | 51 | `result-track:b12cffe576b60af154d98f365596cce34df61b58614621f97fd6dfb2d42b4587` |
| 5 | `theorem` | [totient_eq_card_lt_and_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-card-lt-and-coprime--c9f0d0280d7300fcce364ff8.md) | 54 | `result-track:c9f0d0280d7300fcce364ff8b8e86e7320467713cb33eb44b59c0d267878d9a7` |
| 6 | `theorem` | [totient_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-le--8b19af00d6666252f07a89d8.md) | 62 | `result-track:8b19af00d6666252f07a89d8ac2e38f71cc7014fb4063d918f5227cc1990c4d5` |
| 7 | `theorem` | [totient_lt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-lt--89f0a9ccd41425bb04eeff35.md) | 65 | `result-track:89f0a9ccd41425bb04eeff351e716c660a1206266605773dfc73049ffb8079b4` |
| 8 | `theorem` | [totient_eq_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-zero--7190c66ce5cbe7d42a8f0814.md) | 69 | `result-track:7190c66ce5cbe7d42a8f0814025688722fe2b3c8d4bde4b0986eb46e35ee693d` |
| 9 | `theorem` | [totient_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-pos--07e48097cb78e9774f53c742.md) | 75 | `result-track:07e48097cb78e9774f53c7420fee34d717e318e478d0bf12e95852d92dfbe2a2` |
| 10 | `instance` | [neZero_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/nezero-totient--b5d5598598e56390740eb50b.md) | 77 | `declaration-track:b5d5598598e56390740eb50bf37ea2e88d79f38f34ff19295f4dfc829885bb05` |
| 11 | `theorem` | [filter_coprime_Ico_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/filter-coprime-ico-eq-totient--64c15e8a2fb11a16d6688396.md) | 80 | `result-track:64c15e8a2fb11a16d6688396d207c7afed4d1cc0fda6972de7e7a2ef0439ec3c` |
| 12 | `theorem` | [Ico_filter_coprime_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/ico-filter-coprime-le--16bbdee649b4465b59984add.md) | 85 | `result-track:16bbdee649b4465b59984add1abb3a76c51b9f3da1ada275b1fc26e942987d19` |
| 13 | `theorem` | [_root_.ZMod.card_units_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/root-zmod-card-units-eq-totient--5de605d4391bc9bf2a3d31b5.md) | 113 | `result-track:5de605d4391bc9bf2a3d31b5bb61a8224af0da160bbf94c3d8813db5dfeb6ecf` |
| 14 | `theorem` | [totient_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-even--fbb998b57e068b82d648ead3.md) | 124 | `result-track:fbb998b57e068b82d648ead322b70dc8bc11bd02e65eaa8ad8afe86f40cc13e2` |
| 15 | `theorem` | [totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-mul--e321061b4b9160d1f4dea830.md) | 133 | `result-track:e321061b4b9160d1f4dea8300ca83a98ea7d8f835fb248a27b175e8c366e6fbe` |
| 16 | `theorem` | [totient_div_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-div-of-dvd--d7048f48118e081b26eccc14.md) | 146 | `result-track:d7048f48118e081b26eccc144e9768a4eb5dfeedba4a70482e946cb6a0fe6848` |
| 17 | `theorem` | [sum_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/sum-totient--65dafe7797ae3ec1107d652e.md) | 165 | `result-track:65dafe7797ae3ec1107d652e9cf46453420de79fa263c19be86790dbba6d8c8f` |
| 18 | `theorem` | [sum_totient'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/sum-totient--2307dba8bef13fff35d1dfbc.md) | 176 | `result-track:2307dba8bef13fff35d1dfbcf5b7fbb39b898fc87b1f576be5e34af0464655e6` |
| 19 | `theorem` | [totient_prime_pow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-prime-pow-succ--cd255a3f22a4882a5e5cd8a1.md) | 182 | `result-track:cd255a3f22a4882a5e5cd8a157bcaf21800dfe7b2586587a3ae38a958c97643b` |
| 20 | `theorem` | [totient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-prime-pow--dd8ea407644cb80ea8c9319d.md) | 211 | `result-track:dd8ea407644cb80ea8c9319dc66939e690c3a02c363be45e6a4f581f8f6a723c` |
| 21 | `theorem` | [totient_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-prime--7d335b800a3b212ac1d8adda.md) | 216 | `result-track:7d335b800a3b212ac1d8adda4b7d5e1df71396345f48a5f5fd7358919649b2f1` |
| 22 | `theorem` | [totient_eq_iff_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-iff-prime--e831517cdc33d5da41af66f1.md) | 219 | `result-track:e831517cdc33d5da41af66f10925ce4c0da78eca46360385bd8f727f08db418f` |
| 23 | `theorem` | [card_units_zmod_lt_sub_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/card-units-zmod-lt-sub-one--42a47aa76036a71023d51638.md) | 234 | `result-track:42a47aa76036a71023d516386f27014092eb625dbf50dd94ba7cd7f82f2e14dc` |
| 24 | `theorem` | [prime_iff_card_units](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/prime-iff-card-units--fa510db377e9299dcd97426a.md) | 241 | `result-track:fa510db377e9299dcd97426aa3e888c8394aa54435cc727d087a2bca9e512581` |
| 25 | `theorem` | [totient_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-two--9be6c6280e07eb06c06cc0fe.md) | 248 | `result-track:9be6c6280e07eb06c06cc0feb35c7f86a12c16f85897a9b4f0be3d35fbbf8450` |
| 26 | `theorem` | [odd_totient_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/odd-totient-iff--93558d7fd589b55a510d8fc0.md) | 252 | `result-track:93558d7fd589b55a510d8fc0d367d92feebf8e391e6ca8ed8aa7c74bbfdfefbb` |
| 27 | `theorem` | [totient_eq_one_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-one-iff--225b164ddf6ff2bc7a85e745.md) | 256 | `result-track:225b164ddf6ff2bc7a85e745f733789a2338ada4a159ee85d412cdb51a6f5ccb` |
| 28 | `theorem` | [dvd_two_of_totient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/dvd-two-of-totient-le-one--9f580b4bdbd7ada91f8591a8.md) | 265 | `result-track:9f580b4bdbd7ada91f8591a870d09af8ab626cfb1f2640c6326f8d5919ea6a74` |
| 29 | `theorem` | [odd_totient_iff_eq_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/odd-totient-iff-eq-one--b12228a3378d8203cc3f35fe.md) | 268 | `result-track:b12228a3378d8203cc3f35fe2196648bb28015ca995355a75707c544c4cbe8bc` |
| 30 | `theorem` | [totient_coprime_totient_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-coprime-totient-iff--35d82ce648256ea0a53699c4.md) | 273 | `result-track:35d82ce648256ea0a53699c47aa7fb9d8b11c1e02f624f333a37efb8d0357709` |
| 31 | `theorem` | [totient_eq_prod_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-prod-factorization--e669eafeca21c331825676d8.md) | 289 | `result-track:e669eafeca21c331825676d8be7657026a92661068fc35c319c2deebcf65655d` |
| 32 | `theorem` | [totient_mul_prod_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-mul-prod-primefactors--f1c0434c24d5a9254dc8ef79.md) | 298 | `result-track:f1c0434c24d5a9254dc8ef79715677360bed1f0ede609008acfe7d14332b65e1` |
| 33 | `theorem` | [totient_eq_div_primeFactors_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-div-primefactors-mul--b120d2d1daf3782eceb45fd5.md) | 309 | `result-track:b120d2d1daf3782eceb45fd5f1b53e449c38fba83787dbcd8e0f05b5612a7e6d` |
| 34 | `theorem` | [totient_eq_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-eq-mul-prod-factors--3c1145eb852792fd3dd4bd24.md) | 316 | `result-track:3c1145eb852792fd3dd4bd245ffdbabc68265722413398df22f410f1e327cf3e` |
| 35 | `theorem` | [totient_gcd_mul_totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-gcd-mul-totient-mul--72d4677b9ad3291df13314ce.md) | 331 | `result-track:72d4677b9ad3291df13314ce4eb76d03ca8da568566d8d3f75ac30ca5beab1e5` |
| 36 | `theorem` | [totient_super_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-super-multiplicative--7746821f2c0c07d50d28bb00.md) | 349 | `result-track:7746821f2c0c07d50d28bb00a2a2e566e3d6728d51612edbef37ed15e5c3c6d4` |
| 37 | `theorem` | [totient_dvd_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-dvd-of-dvd--acbd29c651b1a4f36bad9c6a.md) | 358 | `result-track:acbd29c651b1a4f36bad9c6a897b0a05810a2917b1b235050e0bc276c50a5562` |
| 38 | `theorem` | [totient_mul_of_prime_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-mul-of-prime-of-dvd--8d798a70f341ca260e4f3467.md) | 368 | `result-track:8d798a70f341ca260e4f3467a58a798f12b03ed935e0198452bbcf1ed62ad59c` |
| 39 | `theorem` | [totient_mul_of_prime_of_not_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-mul-of-prime-of-not-dvd--b25fc0fcb9bb828c0e09f601.md) | 374 | `result-track:b25fc0fcb9bb828c0e09f6018081873521fdb75a4ad68eb46bc7488eda857cb3` |
| 40 | `theorem` | [totient_two_mul_of_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-two-mul-of-even--b89035765a821ff8afc31d25.md) | 379 | `result-track:b89035765a821ff8afc31d25299ae100b8bd3f8d7605111ef07941af24e31105` |
| 41 | `theorem` | [totient_two_mul_of_odd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/totient-two-mul-of-odd--7683f5cc9846e6a92efcfa27.md) | 382 | `result-track:7683f5cc9846e6a92efcfa275fc049ac2304b1a38421d01ed840ee09ba9d8ad2` |
| 42 | `theorem` | [eq_or_eq_of_totient_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/eq-or-eq-of-totient-eq-totient--e4d87c7f9dbe451541d07d60.md) | 385 | `result-track:e4d87c7f9dbe451541d07d60c2836e689a5b3d5008c448fd39cc781be06a3660` |
| 43 | `theorem` | [_root_.Even.eq_of_totient_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/root-even-eq-of-totient-eq-totient--d4364f7556d700dca0cec2bf.md) | 412 | `result-track:d4364f7556d700dca0cec2bf1ee8c1bbd018742ee2f27e20c765b44d13f01bbb` |
| 44 | `theorem` | [prime_pow_pow_totient_ediv_prod](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/prime-pow-pow-totient-ediv-prod--1e5504cb5c78278c638fd392.md) | 422 | `result-track:1e5504cb5c78278c638fd3920294e94db72721499bf11f2c267cfa5124cb6645` |
| 45 | `theorem` | [prod_primeFactors_pow_totient_ediv_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/prod-primefactors-pow-totient-ediv-dvd--91d5068a059eef6c8531697f.md) | 435 | `result-track:91d5068a059eef6c8531697f33e7ce3dba389fa3fb2078de13182a4412d04fd5` |
| 46 | `def` | [evalNatTotient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0b71be7c52540d06698cfc05437fbdbb07acfc9fe59bb1ad3255359d62b460c8.lean/declarations/evalnattotient--0615d01681d5220297e72464.md) | 449 | `declaration-track:0615d01681d5220297e7246407c27898610710ada5d515742496000cb7c7158c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
