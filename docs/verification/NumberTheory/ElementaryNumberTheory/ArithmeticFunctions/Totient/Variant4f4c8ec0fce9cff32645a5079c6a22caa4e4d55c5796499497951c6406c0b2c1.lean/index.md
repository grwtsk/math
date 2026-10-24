# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d3a49cd400ea7fee010353623f9735426f97622",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d3a49cd400ea7fee010353623f9735426f97622`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Two` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorization.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Periodic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.ZMod.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Monotonicity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient--b392892bbfb20bf19576a8c5.md) | 40 | `declaration-track:b392892bbfb20bf19576a8c5bdab274e34596be2217f146100cd1cf6eab19287` |
| 2 | `theorem` | [totient_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-zero--eac607644e8ff8076a9fd5a1.md) | 48 | `result-track:eac607644e8ff8076a9fd5a160377ad6f68118a4a42052b4a64cbe293acd9d73` |
| 3 | `theorem` | [totient_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-one--bdecaae69894ea308cc3e5d8.md) | 53 | `result-track:bdecaae69894ea308cc3e5d8f77f9d5f02ee0aa10ab912836e79e9fad4a7da63` |
| 4 | `theorem` | [totient_eq_card_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-card-coprime--6a0998ca0c80e047e7815916.md) | 56 | `result-track:6a0998ca0c80e047e7815916538d0c16a4ab7d6bfef527a3d7e2caa4e80a0d71` |
| 5 | `theorem` | [totient_eq_card_lt_and_coprime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-card-lt-and-coprime--80f59dfde7f7c988e428bfc1.md) | 61 | `result-track:80f59dfde7f7c988e428bfc17d7d180345189eee8061d93f2d242b758c7bace1` |
| 6 | `theorem` | [totient_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-le--7b097621b6b2f8765b71eb0a.md) | 70 | `result-track:7b097621b6b2f8765b71eb0aa4a8ecdc78863bd461203b88854279f7f76bce3c` |
| 7 | `theorem` | [totient_lt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-lt--03417164b95af30f68d2a2c4.md) | 74 | `result-track:03417164b95af30f68d2a2c4a4327a1f19af1b653966813e40fb5fdd78423e90` |
| 8 | `theorem` | [totient_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-pos--08a87264afec169ba5482646.md) | 78 | `result-track:08a87264afec169ba54826466ec056317d7b53a10e70ac8c53569ae9e557f096` |
| 9 | `theorem` | [filter_coprime_Ico_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/filter-coprime-ico-eq-totient--dccc8393e5772b2c8a0f1778.md) | 84 | `result-track:dccc8393e5772b2c8a0f17787cfaf4d524e280dad415dcce4f429589b98f6433` |
| 10 | `theorem` | [Ico_filter_coprime_le](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/ico-filter-coprime-le--4e873a6905964d8051b66826.md) | 90 | `result-track:4e873a6905964d8051b66826dbf2766a86c4a5ed14359303e9e3686722845385` |
| 11 | `theorem` | [_root_.GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Totient.Variant01e9f78981b80c761e08de04355b0564de54787edd9017531af5f164f635226c.ZMod.card_units_eq_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/root-grwtsk-numbertheory-elementarynumbertheory-arithmeticfunctions-toti--17b1ea01510540ac9c252d80.md) | 123 | `result-track:17b1ea01510540ac9c252d8005646afb6733c40eb069d49f5842ab38502d87ba` |
| 12 | `theorem` | [totient_even](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-even--75ee2bfbe7d3694755e6a6fa.md) | 135 | `result-track:75ee2bfbe7d3694755e6a6fa297a620f8d27ccda0f45b9f0d309f7bd3e43110c` |
| 13 | `theorem` | [totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-mul--bde7d8bb64e2b2950d9d7e99.md) | 144 | `result-track:bde7d8bb64e2b2950d9d7e996f184841b482859789f486fcecc9baedae3a41f3` |
| 14 | `theorem` | [totient_div_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-div-of-dvd--a85523fbe14f7f763800b1ef.md) | 158 | `result-track:a85523fbe14f7f763800b1ef2e9a500e3a8058825bf9689443ab22a5b6aacd49` |
| 15 | `theorem` | [sum_totient](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/sum-totient--52bd407a10e398eee41b84cf.md) | 178 | `result-track:52bd407a10e398eee41b84cf802296f206225bf01b0c4b3074b24c6701f2022e` |
| 16 | `theorem` | [sum_totient'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/sum-totient--0c7112c003133fa8261842a8.md) | 190 | `result-track:0c7112c003133fa8261842a849599a9401088f8cacd65f220a82e1257d826dbf` |
| 17 | `theorem` | [totient_prime_pow_succ](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-prime-pow-succ--2099579fcf12000443d79861.md) | 197 | `result-track:2099579fcf12000443d79861988e8690ba6eeb5962fd06a9dd1cbbcc0b0b6497` |
| 18 | `theorem` | [totient_prime_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-prime-pow--e36511a07636291c50b869ff.md) | 227 | `result-track:e36511a07636291c50b869ff72a3af60fa616b91ff5497492987e54297f02380` |
| 19 | `theorem` | [totient_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-prime--fb70499aaeb00a75d1aeb925.md) | 233 | `result-track:fb70499aaeb00a75d1aeb9259a63a6feb3fcaa0142ab24b6d12fbabe27c3a72e` |
| 20 | `theorem` | [totient_eq_iff_prime](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-iff-prime--419f36cd73f56947ca9da459.md) | 237 | `result-track:419f36cd73f56947ca9da45958a526d9e3ebc28ba61b677a95dcda9e06797604` |
| 21 | `theorem` | [card_units_zmod_lt_sub_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/card-units-zmod-lt-sub-one--98e8020fafb26341b03a26bf.md) | 252 | `result-track:98e8020fafb26341b03a26bf5bd2f3142213e8ebf579f177215f18873f3c3d4f` |
| 22 | `theorem` | [prime_iff_card_units](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/prime-iff-card-units--dee0eab78beb1fce218afb85.md) | 259 | `result-track:dee0eab78beb1fce218afb857920fddbd69415f0fc7155d91434c0a044addb69` |
| 23 | `theorem` | [totient_two](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-two--a037bb43176933099fde1744.md) | 271 | `result-track:a037bb43176933099fde17449cef5f28a7c6ddd8f8c7194fe705424478868385` |
| 24 | `theorem` | [totient_eq_one_iff](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-one-iff--60ac2b47d30d188384807d2f.md) | 275 | `result-track:60ac2b47d30d188384807d2fbf762836e0299655b9e05abd4c8fa070af7f5a79` |
| 25 | `theorem` | [totient_eq_prod_factorization](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-prod-factorization--70577a78afe3f64d7ecfc218.md) | 291 | `result-track:70577a78afe3f64d7ecfc218eb6118c58f4a108b2e12883fc087f158a6ded40f` |
| 26 | `theorem` | [totient_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-mul-prod-factors--d7076605e47bed54e2203272.md) | 301 | `result-track:d7076605e47bed54e2203272f45956b5f65e3b39dccae1f4aa44cff33b64fa67` |
| 27 | `theorem` | [totient_eq_div_factors_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-div-factors-mul--1dd40d3e7d96e80da6bf2003.md) | 313 | `result-track:1dd40d3e7d96e80da6bf2003aaf33e7d2e2f419b7d3212bef9e7d96822fb9d59` |
| 28 | `theorem` | [totient_eq_mul_prod_factors](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-eq-mul-prod-factors--854a5e89974ec69740cc8c7d.md) | 322 | `result-track:854a5e89974ec69740cc8c7de3f17e68ee99fa4f31f889d5878cca068329d54a` |
| 29 | `theorem` | [totient_gcd_mul_totient_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-gcd-mul-totient-mul--761ec990152556e0a2228b45.md) | 338 | `result-track:761ec990152556e0a2228b454cec6c08aca2d18585d61f587255189c680dd70a` |
| 30 | `theorem` | [totient_super_multiplicative](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-super-multiplicative--ca85a29b25a5c9eeb976c2e2.md) | 357 | `result-track:ca85a29b25a5c9eeb976c2e2910250fdb21afd47d02727e7219f1d0610456d5f` |
| 31 | `theorem` | [totient_dvd_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-dvd-of-dvd--71370f51319791b933d8f45c.md) | 367 | `result-track:71370f51319791b933d8f45cf56bd426117defc951486ec95d28ec125f5d0185` |
| 32 | `theorem` | [totient_mul_of_prime_of_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-mul-of-prime-of-dvd--38bb7637ca4f7f9601432890.md) | 381 | `result-track:38bb7637ca4f7f960143289085f09173580a6dd38c4fd38f6901d9893f9af11f` |
| 33 | `theorem` | [totient_mul_of_prime_of_not_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Totient/Variant4f4c8ec0fce9cff32645a5079c6a22caa4e4d55c5796499497951c6406c0b2c1.lean/declarations/totient-mul-of-prime-of-not-dvd--136626bdb24b0937c409cfda.md) | 388 | `result-track:136626bdb24b0937c409cfda797b7e1a6ba5d7757acaa9521204866a3fe48a62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
