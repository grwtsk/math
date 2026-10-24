# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Lemmas.Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cc422fe7de776d67e9726c70734ad1420ecb1750",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cc422fe7de776d67e9726c70734ad1420ecb1750`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Ring.Finset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.GCD` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Coprime.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Int.isCoprime_iff_gcd_eq_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/int-iscoprime-iff-gcd-eq-one--38f5ae5dd4fc296659c2f52a.md) | 41 | `result-track:38f5ae5dd4fc296659c2f52a7ea7d9b1a4f37a3c348d41d7c5a23508dac5a2a0` |
| 2 | `theorem` | [Nat.isCoprime_iff_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/nat-iscoprime-iff-coprime--73256182f316302af5441b23.md) | 50 | `result-track:73256182f316302af5441b23fb0770c5d397e9952bf2ddf111f3b28bbed0a93d` |
| 3 | `theorem` | [Nat.Coprime.cast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/nat-coprime-cast--9610a4451e913f4a987ee823.md) | 55 | `result-track:9610a4451e913f4a987ee8239b93b5552b4de4e3f6ccc88858a55fbc9e40f99d` |
| 4 | `theorem` | [ne_zero_or_ne_zero_of_nat_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/ne-zero-or-ne-zero-of-nat-coprime--013bfaa262728debf2507a35.md) | 61 | `result-track:013bfaa262728debf2507a35114f4d44c346b8fd479a31235df277c12cee0f05` |
| 5 | `theorem` | [IsCoprime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-prod-left--f7ec61cfc345c12f0ad44a39.md) | 66 | `result-track:f7ec61cfc345c12f0ad44a39289e6ef8085e83c31e754d149d058f97a651f011` |
| 6 | `theorem` | [IsCoprime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-prod-right--bdfc044d895b14bc0ae97b0e.md) | 73 | `result-track:bdfc044d895b14bc0ae97b0eaea33f37ce3240a30f46fa7015c8ab2da2a163e8` |
| 7 | `theorem` | [IsCoprime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-prod-left-iff--0dca827247fe12612fc0048b.md) | 76 | `result-track:0dca827247fe12612fc0048b669c0302f102c836569037c5553c48c9d31be4a3` |
| 8 | `theorem` | [IsCoprime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-prod-right-iff--2e085d725c05e77dd42f16c9.md) | 81 | `result-track:2e085d725c05e77dd42f16c91cbc3f305b8b45282c619fb51a67c6737f8736fe` |
| 9 | `theorem` | [IsCoprime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-of-prod-left--834c6cf936a12b24c911298d.md) | 84 | `result-track:834c6cf936a12b24c911298d10bbc0746079b60c3c4603d8f60311dcfad7fc60` |
| 10 | `theorem` | [IsCoprime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-of-prod-right--203136115d80a36a13e51ab0.md) | 88 | `result-track:203136115d80a36a13e51ab05ff2e470090ef81a55e37f47a0395591c36210cf` |
| 11 | `theorem` | [Finset.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/finset-prod-dvd-of-coprime--f9d853b0b437261093d5919d.md) | 93 | `result-track:f9d853b0b437261093d5919d79dd97b8559d115fe3b702aa37bad9643b885287` |
| 12 | `theorem` | [Fintype.prod_dvd_of_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/fintype-prod-dvd-of-coprime--96478b22e6f34ae416b6f75f.md) | 109 | `result-track:96478b22e6f34ae416b6f75f63572f3f015205706d25fccd3b55e60afa130ffe` |
| 13 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--c2051d8358930ce808820052.md) | 117 | `result-track:c2051d8358930ce80882005269da64765fa8d95daadf015ba511398bae5cf1ca` |
| 14 | `theorem` | [exists_sum_eq_one_iff_pairwise_coprime'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/exists-sum-eq-one-iff-pairwise-coprime--fbd2534d11274de90208a69e.md) | 175 | `result-track:fbd2534d11274de90208a69ebcef3bec70b6028ccbdd76870c582a9c1090bf64` |
| 15 | `theorem` | [pairwise_coprime_iff_coprime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pairwise-coprime-iff-coprime-prod--80077f3140ce6a4aa3b58eb2.md) | 180 | `result-track:80077f3140ce6a4aa3b58eb25a84f59bd648d1102fb93ec81b74522c3810eb15` |
| 16 | `theorem` | [IsCoprime.pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow-left--a32042a3973c69d512b86aab.md) | 193 | `result-track:a32042a3973c69d512b86aabc5a326ae581166e513d3248597bd0ad16e401e5b` |
| 17 | `theorem` | [IsCoprime.pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow-right--ce3776e881ae6db9e8f203f5.md) | 197 | `result-track:ce3776e881ae6db9e8f203f581a6fcee902eb7312c4cc3f012b74789b75fc78e` |
| 18 | `theorem` | [IsCoprime.pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow--9fdf33a5311409ccfb507e55.md) | 201 | `result-track:9fdf33a5311409ccfb507e55c6a7ace99b6ddab18679354338335d56663ef681` |
| 19 | `theorem` | [IsCoprime.pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow-left-iff--4e32b2ab127934052e96fb89.md) | 204 | `result-track:4e32b2ab127934052e96fb89be61d23b4334a2400e59e258d1c8a20b69205c70` |
| 20 | `theorem` | [IsCoprime.pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow-right-iff--58e8e055c922355027073b38.md) | 209 | `result-track:58e8e055c922355027073b383a84134d99f6e39239e4bc1e6ab3f2f64b3b1ff7` |
| 21 | `theorem` | [IsCoprime.pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/iscoprime-pow-iff--65513ba8954d103ab7757680.md) | 212 | `result-track:65513ba8954d103ab77576807c3607abc20f4f94307e4ba612ff31d93d6c3abe` |
| 22 | `theorem` | [IsRelPrime.prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-prod-left--5f920962fbcd87f174f4177f.md) | 221 | `result-track:5f920962fbcd87f174f4177fa06b80e6b8e031c195b0e495b045521e70770ad3` |
| 23 | `theorem` | [IsRelPrime.prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-prod-right--2f6d8e2cc18d458b75dbd54b.md) | 228 | `result-track:2f6d8e2cc18d458b75dbd54baa7f9c3c558e5229234c6d0614ffd46424fa5a57` |
| 24 | `theorem` | [IsRelPrime.prod_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-prod-left-iff--d22d8cb9c866215cdf885185.md) | 231 | `result-track:d22d8cb9c866215cdf8851850eec62d5f923ceefd2a988ab84f372adfccf01bc` |
| 25 | `theorem` | [IsRelPrime.prod_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-prod-right-iff--8b96240876d48b6886765c93.md) | 236 | `result-track:8b96240876d48b6886765c93ca594b541e0e36c2f222dbce2cd55551bcf2f9fc` |
| 26 | `theorem` | [IsRelPrime.of_prod_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-of-prod-left--1e1b7133f603ac03830118f5.md) | 239 | `result-track:1e1b7133f603ac03830118f5b0cd52c5832be49f4298f1c8b98c62442f6a8de5` |
| 27 | `theorem` | [IsRelPrime.of_prod_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/isrelprime-of-prod-right--4c21c4621ad31d7242ea3b14.md) | 243 | `result-track:4c21c4621ad31d7242ea3b14c19b54c6a6eff564e13d2af8d89be8ba68efd976` |
| 28 | `theorem` | [Finset.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/finset-prod-dvd-of-isrelprime--1297895c5823ae30811c40b4.md) | 247 | `result-track:1297895c5823ae30811c40b422e7fdf1f197ecc0e14bd7027aa9ced861c2cb33` |
| 29 | `theorem` | [Fintype.prod_dvd_of_isRelPrime](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/fintype-prod-dvd-of-isrelprime--564092c4cfb0f35ba527c8cd.md) | 263 | `result-track:564092c4cfb0f35ba527c8cdfaf7c1b37d0257d05e2224c9b3f6b7f33f807aec` |
| 30 | `theorem` | [pairwise_isRelPrime_iff_isRelPrime_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pairwise-isrelprime-iff-isrelprime-prod--fa7c8d57b57f9960fce7fc67.md) | 267 | `result-track:fa7c8d57b57f9960fce7fc67f7c2d9f34177b7d3ebebdfa905f4730eb15d8976` |
| 31 | `theorem` | [pow_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow-left--d31ac8b0b43edd8eff941112.md) | 281 | `result-track:d31ac8b0b43edd8eff94111240ad9705ff9359bbba15470bfacbdbd9c242ca02` |
| 32 | `theorem` | [pow_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow-right--44239f46881da901f5984370.md) | 285 | `result-track:44239f46881da901f5984370cdb37d0788c0b7df50afb0f447cead7ec3098257` |
| 33 | `theorem` | [pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow--354cc8069ef7b00970dfc885.md) | 289 | `result-track:354cc8069ef7b00970dfc885bba3f59371c4fe0d903801b8c33c12f0967c165e` |
| 34 | `theorem` | [pow_left_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow-left-iff--090cf8a80a8e38c933ecbba5.md) | 292 | `result-track:090cf8a80a8e38c933ecbba5ec4ef72c397956bbde8767fc99b31eface6cdcef` |
| 35 | `theorem` | [pow_right_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow-right-iff--5593226dc9adc6c6412db0f7.md) | 297 | `result-track:5593226dc9adc6c6412db0f77f420f2f902bf16ccf7d2c1dc62ca1330de0a7dd` |
| 36 | `theorem` | [pow_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Lemmas/Variantbb40bcddd1586a6396996045b451c395f9bf22d4199b991497a4d366dea53126.lean/declarations/pow-iff--33133828709d97d1592aa7b8.md) | 300 | `result-track:33133828709d97d1592aa7b85225bf21d6a1914f4162ceeea2055fafe367130c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
