# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.LocalFields.PAdicNumbers.Ostrowski.Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c18726a88fe184f7279ea707649f1a95d805690",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c18726a88fe184f7279ea707649f1a95d805690`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.AbsoluteValue.Equivalence` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Base` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Continuity` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Padics.PadicNorm` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [tendsto_const_rpow_inv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/tendsto-const-rpow-inv--554f3670b13e6804977d6a9c.md) | 52 | `result-track:554f3670b13e6804977d6a9c9b2f5c23e820aeaee40afe3124fe56e88b8c47ad` |
| 2 | `lemma` | [tendsto_nat_rpow_inv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/tendsto-nat-rpow-inv--df0c27924de5e4031ef10159.md) | 58 | `result-track:df0c27924de5e4031ef10159525243c82f9dceaa284d56c8522b0282891654ec` |
| 3 | `lemma` | [list_mul_sum](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/list-mul-sum--57c9b73ddd7c1bbd6aa75759.md) | 64 | `result-track:57c9b73ddd7c1bbd6aa75759c303e0049c2f57444ed26b615dc72e23e528f938` |
| 4 | `lemma` | [list_geom](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/list-geom--d03c529e3ef74832aae38fa1.md) | 71 | `result-track:d03c529e3ef74832aae38fa14e3527a89ba45751725d18debbf539f22278b368` |
| 5 | `lemma` | [eq_on_nat_iff_eq](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/eq-on-nat-iff-eq--b2f2ca715f9ae8af789bf070.md) | 93 | `result-track:b2f2ca715f9ae8af789bf070c70b18336acfd02386c4ba1964934127c5bf762a` |
| 6 | `lemma` | [equiv_on_nat_iff_equiv](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/equiv-on-nat-iff-equiv--f9ddc20e9dc3398de4a563b0.md) | 100 | `result-track:f9ddc20e9dc3398de4a563b04af8737d5a4021e6249ea3c374c8f53090578916` |
| 7 | `def` | [padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/padic--0960aab34867128a8861d342.md) | 115 | `declaration-track:0960aab34867128a8861d34204cd8502e1fbb23444c92f5a02a0af466a871f9a` |
| 8 | `lemma` | [padic_eq_padicNorm](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/padic-eq-padicnorm--3d80384d211674cbf677a6aa.md) | 124 | `result-track:3d80384d211674cbf677a6aa9f0e00f329044a034c6bc30587f568eaa6b0c5b9` |
| 9 | `lemma` | [padic_le_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/padic-le-one--e49cfda75f55cf6dc42f3d72.md) | 127 | `result-track:e49cfda75f55cf6dc42f3d7269db6305c9fb803904240df2964383c59887c6d5` |
| 10 | `lemma` | [exists_minimal_nat_zero_lt_and_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/exists-minimal-nat-zero-lt-and-lt-one--8a9ec89e59b8b9960f553efa.md) | 137 | `result-track:8a9ec89e59b8b9960f553efacec321b8b34f3064896bcd40764d56f79506cb51` |
| 11 | `lemma` | [is_prime_of_minimal_nat_zero_lt_and_lt_one](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/is-prime-of-minimal-nat-zero-lt-and-lt-one--244da5d14e003f4b3937075a.md) | 157 | `result-track:244da5d14e003f4b3937075a2aaf7623c905920e6a8761da16384615b0ffccdb` |
| 12 | `lemma` | [eq_one_of_not_dvd](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/eq-one-of-not-dvd--5ac7b3b939281c17deda006f.md) | 185 | `result-track:5ac7b3b939281c17deda006f25904657ea6d0e8d80f0de273c483d945070064d` |
| 13 | `lemma` | [exists_pos_eq_pow_neg](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/exists-pos-eq-pow-neg--c6b0a49842a923c20cb35eba.md) | 226 | `result-track:c6b0a49842a923c20cb35ebaeb5e4d8564612221e29e04e9e5ff642ae1cae26f` |
| 14 | `theorem` | [equiv_padic_of_bounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/equiv-padic-of-bounded--d4a3308d5ee93602c64310a2.md) | 236 | `result-track:d4a3308d5ee93602c64310a2c69ee44796ac811d452c93892b989b675cb6667c` |
| 15 | `def` | [real](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/real--8d05ebd2dc99a9886be70a5d.md) | 276 | `declaration-track:8d05ebd2dc99a9886be70a5dd526dd01a02f0e278da010e386401d72fe428859` |
| 16 | `lemma` | [real_eq_abs](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/real-eq-abs--dfe897d62cb8e2fb8322af78.md) | 283 | `result-track:dfe897d62cb8e2fb8322af786cdbb9bbc80a3a964f222304aa447e192661fa6a` |
| 17 | `lemma` | [apply_le_sum_digits](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/apply-le-sum-digits--7d8af6b2b660b70e2fa002dd.md) | 291 | `result-track:7d8af6b2b660b70e2fa002ddae989a8aae0bb2690d84408785fee2cf5d00eb19` |
| 18 | `lemma` | [one_lt_of_not_bounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/one-lt-of-not-bounded--e7b6f94363eb29bc8912198a.md) | 316 | `result-track:e7b6f94363eb29bc8912198a24fc0429566389b6df3847cb19c928b427669a97` |
| 19 | `lemma` | [expr_pos](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/expr-pos--ca792e358c823b079fd125f0.md) | 369 | `result-track:ca792e358c823b079fd125f0664abca6e492b0938917b12e2df941243d769b62` |
| 20 | `lemma` | [param_upperbound](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/param-upperbound--24440039cd35f001b9220964.md) | 375 | `result-track:24440039cd35f001b92209646d81cce9a7aa795115620ba1992fd6f840ef4cb4` |
| 21 | `lemma` | [le_pow_log](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/le-pow-log--e359e4c43cf654649588c37b.md) | 409 | `result-track:e359e4c43cf654649588c37b9ae1374e6a68801b0ccd930f3b80d7d27959c4f5` |
| 22 | `lemma` | [le_of_eq_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/le-of-eq-pow--387ed1aeac68a087f79e9271.md) | 419 | `result-track:387ed1aeac68a087f79e9271697c1589efe1c26ec61f080ff681a8b1ae872c47` |
| 23 | `lemma` | [eq_of_eq_pow](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/eq-of-eq-pow--6b214fa24fbd79b6cb29f821.md) | 426 | `result-track:6b214fa24fbd79b6cb29f821fe19e4a5923367ba5185104974db620b556d0781` |
| 24 | `theorem` | [equiv_real_of_unbounded](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/equiv-real-of-unbounded--fc4e5ec5201091e9d3693f65.md) | 434 | `result-track:fc4e5ec5201091e9d3693f65b19e880e3dbe6bec2dd1340bfcfe2f3577fb6174` |
| 25 | `theorem` | [equiv_real_or_padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/equiv-real-or-padic--426e74168ff222601ef48e84.md) | 472 | `result-track:426e74168ff222601ef48e84554956b94d08a453ea9a8d4ad4496285d4e27106` |
| 26 | `lemma` | [not_real_equiv_padic](../../../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/LocalFields/PAdicNumbers/Ostrowski/Variant207d855084e6adf03f499c1e09f19c694691cb3a6b8f601df7e6015a139a1101.lean/declarations/not-real-equiv-padic--61634af14edb9f4e308de09f.md) | 479 | `result-track:61634af14edb9f4e308de09f0d0f879a3acc97f472be50f4537c5eb85b3e2ab2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
