# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f2b4775c5642eff1b209409bd3540b7272b9016e",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f2b4775c5642eff1b209409bd3540b7272b9016e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Induction` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Periodic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient--00735e303b696e8656dbebf3.md) | 38 | `declaration-track:00735e303b696e8656dbebf336398cedb808be8fb3efff6c915b95549b01a1b9` |
| 2 | `theorem` | [totient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-zero--ad485951c2a01654b04ec28f.md) | 44 | `result-track:ad485951c2a01654b04ec28f6d88863b343a4d3626fc5015e937afc3489d92fe` |
| 3 | `theorem` | [totient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-one--d82ae6541797b12f61d253c7.md) | 48 | `result-track:d82ae6541797b12f61d253c76eeb6240b326971a2a69475fa8314d33ad2eefd0` |
| 4 | `theorem` | [totient_eq_card_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-card-coprime--b01a41a792f797da752da84f.md) | 50 | `result-track:b01a41a792f797da752da84f661b2bdc41c5d5f463f3448d109a9c575c616761` |
| 5 | `theorem` | [totient_eq_card_lt_and_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-card-lt-and-coprime--20d95a083dbe9dc8f9b4cec1.md) | 53 | `result-track:20d95a083dbe9dc8f9b4cec11f605d7253f81325c71f12890ae41a9a20188a6a` |
| 6 | `theorem` | [totient_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-le--bb05f7b2a775f65df0eb3c10.md) | 61 | `result-track:bb05f7b2a775f65df0eb3c104ac7c781dd473e04768af021ee04adf1ff15a096` |
| 7 | `theorem` | [totient_lt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-lt--f7893b512bc91c448b39f276.md) | 64 | `result-track:f7893b512bc91c448b39f27602faac7112aba6bb59ad58a1d12de15aaa2503f3` |
| 8 | `theorem` | [totient_eq_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-zero--77fd477a7144da660630344c.md) | 68 | `result-track:77fd477a7144da660630344cde2bb7bb30bc742047427b7458f3dff2b621a9f0` |
| 9 | `theorem` | [totient_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-pos--bf6deff1363a63c7878068e2.md) | 74 | `result-track:bf6deff1363a63c7878068e2a6c27ef390019cd8aa0174f245a2db369de3cf26` |
| 10 | `instance` | [neZero_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/nezero-totient--0cb9740419a9cbfe77dbaec3.md) | 76 | `declaration-track:0cb9740419a9cbfe77dbaec32d7c604ff033051adc5f99602aa4fde08b302d22` |
| 11 | `theorem` | [filter_coprime_Ico_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/filter-coprime-ico-eq-totient--a3f6bc4c47ffcc61be8da2ea.md) | 79 | `result-track:a3f6bc4c47ffcc61be8da2ea23d7213cde5e8de3f23f3133bb53e03a7fa9d035` |
| 12 | `theorem` | [Ico_filter_coprime_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/ico-filter-coprime-le--562377c66e984ec19c215387.md) | 84 | `result-track:562377c66e984ec19c215387d9b61f4f2c82d48093e7b457f226e491b3e110e3` |
| 13 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant07ae13c5bdb480ffd63abb297ca9bdd0a5cbe05836d8506b20a579f37b5db7d2.ZMod.card_units_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-toti--a3ebd503e845ec86504d6778.md) | 110 | `result-track:a3ebd503e845ec86504d67784266799518b445a785caf0c17e11e5a42c72bc2b` |
| 14 | `theorem` | [totient_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-even--b06b49dc809f75bc4616edb2.md) | 121 | `result-track:b06b49dc809f75bc4616edb20d9e77f128392718f59ab3a5335fecb836c8061e` |
| 15 | `theorem` | [totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-mul--0f675cc74026ee264f7eda41.md) | 129 | `result-track:0f675cc74026ee264f7eda41dd2b9a9076a99a3d89d64feda326cda1b1b97bc7` |
| 16 | `theorem` | [totient_div_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-div-of-dvd--c3603ac10448297ce61d57cc.md) | 142 | `result-track:c3603ac10448297ce61d57cc1b6a053f5d6c8e6289d92a263f64ff414c730f03` |
| 17 | `theorem` | [sum_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/sum-totient--8fc7ea47a1a04852faca1983.md) | 161 | `result-track:8fc7ea47a1a04852faca1983da1429e0c55e97d54d9ca386fb11f98da74059f9` |
| 18 | `theorem` | [sum_totient'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/sum-totient--592703be423c1f472393236b.md) | 172 | `result-track:592703be423c1f472393236b5539de5ab897c4642aac26cf3265b39c312f76b3` |
| 19 | `theorem` | [totient_prime_pow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-prime-pow-succ--fb427edc4545e646a556d7a1.md) | 178 | `result-track:fb427edc4545e646a556d7a1353b808ec52fda0dc6a9786ad464535e499fa119` |
| 20 | `theorem` | [totient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-prime-pow--f1f2c290d07b44e13d6ef01e.md) | 207 | `result-track:f1f2c290d07b44e13d6ef01e91b52c4fc5067f813bf5c4ff93b884bfaae060b2` |
| 21 | `theorem` | [totient_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-prime--d86421264a9fe94aa96dcb8a.md) | 212 | `result-track:d86421264a9fe94aa96dcb8aa98b974e7acdfde6a60e930dd714754ba3ac6645` |
| 22 | `theorem` | [totient_eq_iff_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-iff-prime--d5ed6453843d007319532a9f.md) | 215 | `result-track:d5ed6453843d007319532a9f31a30b6fb3cf42225e8172be969067fe7522206a` |
| 23 | `theorem` | [card_units_zmod_lt_sub_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/card-units-zmod-lt-sub-one--a0804cdfd4e189394aa3d080.md) | 230 | `result-track:a0804cdfd4e189394aa3d080ae579775577d4c65a4c3f41fa811e1cb28afba7b` |
| 24 | `theorem` | [prime_iff_card_units](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/prime-iff-card-units--94846f9fbf8e71acfbe6e4f5.md) | 236 | `result-track:94846f9fbf8e71acfbe6e4f523a588068ac65206c642258d827943ae83ee92be` |
| 25 | `theorem` | [totient_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-two--1c2efc1bae8357eff4509e64.md) | 247 | `result-track:1c2efc1bae8357eff4509e640a497444f3f9b980b311bdb7b0756eabce7c030b` |
| 26 | `theorem` | [totient_eq_one_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-one-iff--b2704d5dac9273a94452dbb7.md) | 250 | `result-track:b2704d5dac9273a94452dbb796bdc4266b93e20891e215fdf16892e8872ac8fa` |
| 27 | `theorem` | [dvd_two_of_totient_le_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/dvd-two-of-totient-le-one--830bea0fe5b51ec28495ef51.md) | 259 | `result-track:830bea0fe5b51ec28495ef513863a3cd0c0ea639a97916b53ffec5fe99cbd51d` |
| 28 | `theorem` | [totient_eq_prod_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-prod-factorization--547415943cd9f26fb0e37444.md) | 268 | `result-track:547415943cd9f26fb0e37444e6040afd564d57520df9648f947bd15c7a5668d9` |
| 29 | `theorem` | [totient_mul_prod_primeFactors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-mul-prod-primefactors--e97ed58d1b1c867e60e97524.md) | 277 | `result-track:e97ed58d1b1c867e60e97524c080d4d4948713a63f9a7aabad268d08adfd8a71` |
| 30 | `theorem` | [totient_eq_div_primeFactors_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-div-primefactors-mul--d10819dc44cc2cefc0671b88.md) | 288 | `result-track:d10819dc44cc2cefc0671b889c1c1d1c8fb7752d34ed79a9413a2d2aa5443198` |
| 31 | `theorem` | [totient_eq_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-eq-mul-prod-factors--145bd0454ce8f8c796b5eef7.md) | 295 | `result-track:145bd0454ce8f8c796b5eef75d434de6e33aea23540405b1b60c88686476a757` |
| 32 | `theorem` | [totient_gcd_mul_totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-gcd-mul-totient-mul--b7043fa0d8338c2a078a721c.md) | 310 | `result-track:b7043fa0d8338c2a078a721cdda7326356b0e5e1c83b97fc7fcb225f457988a4` |
| 33 | `theorem` | [totient_super_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-super-multiplicative--97ebbbbe2eddeb3a08c0efd5.md) | 328 | `result-track:97ebbbbe2eddeb3a08c0efd583afb165da19e0fb2f91cfb64c31d7be71637680` |
| 34 | `theorem` | [totient_dvd_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-dvd-of-dvd--eeba51f0563e9259491fb553.md) | 337 | `result-track:eeba51f0563e9259491fb5534bef306be85e938da6cfc965472b7dc3c3d1e473` |
| 35 | `theorem` | [totient_mul_of_prime_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-mul-of-prime-of-dvd--04ddad82810c013b4595b112.md) | 347 | `result-track:04ddad82810c013b4595b11235b7bb16defb2a5590ce843bdf093e581e38f633` |
| 36 | `theorem` | [totient_mul_of_prime_of_not_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant0504e44f553764147e3e3f97cb671b59050e05600f23d6ec7dddc40424cb108b.lean/declarations/totient-mul-of-prime-of-not-dvd--12bfa23b4c846b868878c1a8.md) | 353 | `result-track:12bfa23b4c846b868878c1a8059a7421749d13532c8d225dbc97a63a0dba8448` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
