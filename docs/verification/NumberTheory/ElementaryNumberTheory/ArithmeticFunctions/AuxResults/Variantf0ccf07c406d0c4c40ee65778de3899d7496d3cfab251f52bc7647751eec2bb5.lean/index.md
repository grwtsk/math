# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.AuxResults.Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10d55acd9197d90dc9f0062eacd7e0056f0eb3af",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10d55acd9197d90dc9f0062eacd7e0056f0eb3af`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Nat` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_factors_of_mult](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/prod-factors-of-mult--7438391ec26309a229a39559.md) | 32 | `result-track:7438391ec26309a229a395592986f094e05abe66d4f465b63e4796f26532aea7` |
| 2 | `theorem` | [sum_over_dvd_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/sum-over-dvd-ite--8a565d0c334000f536881203.md) | 41 | `result-track:8a565d0c334000f536881203d65fae63f08775a4b639459e79d0cd1e276461c4` |
| 3 | `theorem` | [ite_sum_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/ite-sum-zero--d1def9e93086249cc5749ba9.md) | 46 | `result-track:d1def9e93086249cc5749ba9fc9e78c121f5e8a825e80d9c46a0c2a1ef07aeeb` |
| 4 | `theorem` | [conv_lambda_sq_larger_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/conv-lambda-sq-larger-sum--c79fe1f2aa8d371acdec2965.md) | 50 | `result-track:c79fe1f2aa8d371acdec29656e62fd17478d5e84e40fb796e75b3103b57fbf52` |
| 5 | `theorem` | [moebius_inv_dvd_lower_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/moebius-inv-dvd-lower-bound--8216b7af57e05c5f57819016.md) | 69 | `result-track:8216b7af57e05c5f57819016cfcd8c321c6f27af93fcaa494e4b363555a8f143` |
| 6 | `theorem` | [moebius_inv_dvd_lower_bound'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/moebius-inv-dvd-lower-bound--4c978c898b898908ea1d2a0c.md) | 92 | `result-track:4c978c898b898908ea1d2a0c61df545552fe2782b09d5bb5b632900f269e74fc` |
| 7 | `theorem` | [moebius_inv_dvd_lower_bound_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/moebius-inv-dvd-lower-bound-real--816a984c7920fba950de4013.md) | 98 | `result-track:816a984c7920fba950de401352a08276721ec294b2477176ddfdb7c0192f3e34` |
| 8 | `theorem` | [multiplicative_zero_of_zero_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/multiplicative-zero-of-zero-dvd--bf6611e19195df3eda293003.md) | 104 | `result-track:bf6611e19195df3eda2930036bae86983b2d02c1b2052f0f9c0e6ecaa0271c0c` |
| 9 | `theorem` | [div_mult_of_dvd_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/div-mult-of-dvd-squarefree--88d9f97beeb596c4d78c495f.md) | 110 | `result-track:88d9f97beeb596c4d78c495fce9f2a168f214a356461529acd35e3125b5ef87f` |
| 10 | `theorem` | [inv_sub_antitoneOn_gt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/inv-sub-antitoneon-gt--3ec425587099afb5053a1b1c.md) | 118 | `result-track:3ec425587099afb5053a1b1c0573ec2ff76fa82c74d6fce11b7ada695aa1c6ce` |
| 11 | `theorem` | [inv_sub_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/inv-sub-antitoneon-icc--6d7deb4dc83d2a80bfeac762.md) | 126 | `result-track:6d7deb4dc83d2a80bfeac7622682f96a96dd1feb4c2147370051c64a1a2d1475` |
| 12 | `theorem` | [inv_antitoneOn_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/inv-antitoneon-pos--d1e0233cd59de35a502dba6c.md) | 134 | `result-track:d1e0233cd59de35a502dba6ca3207a7aa54618500328c7449e2688d9847f83da` |
| 13 | `theorem` | [inv_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/inv-antitoneon-icc--c89a1e515f1a8921808b3cad.md) | 138 | `result-track:c89a1e515f1a8921808b3cadeef5dd10052d50450c2b8306acdc83e0df4ccdd5` |
| 14 | `theorem` | [log_add_one_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/log-add-one-le-sum-inv--0e27908c65520d852c8346da.md) | 143 | `result-track:0e27908c65520d852c8346da970b65e931106a8350c1741ba796eca4e677d904` |
| 15 | `theorem` | [log_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/log-le-sum-inv--a90b33a4942d0011b3607a29.md) | 154 | `result-track:a90b33a4942d0011b3607a2962a2ed94e4c0cd4d6f8695fea2c5edc19c8e3f65` |
| 16 | `theorem` | [sum_inv_le_log](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/sum-inv-le-log--54f11918575550124931346b.md) | 164 | `result-track:54f11918575550124931346b37888d2700b22d5efc2f69c469838a0c9b912718` |
| 17 | `theorem` | [sum_inv_le_log_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/sum-inv-le-log-real--1eb585f33937291a9e079d52.md) | 183 | `result-track:1eb585f33937291a9e079d52f6d2e0ee3d98398dd2d5825ee229e2fa2b94d62c` |
| 18 | `theorem` | [sum_pow_cardDistinctFactors_div_self_le_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/sum-pow-carddistinctfactors-div-self-le-log-pow--24296cdbdc2a812b46a4fd25.md) | 193 | `result-track:24296cdbdc2a812b46a4fd25c978f25c7f59fac933d3cb5bb76d13c2e7dbaa2f` |
| 19 | `theorem` | [sum_pow_cardDistinctFactors_le_self_mul_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantf0ccf07c406d0c4c40ee65778de3899d7496d3cfab251f52bc7647751eec2bb5.lean/declarations/sum-pow-carddistinctfactors-le-self-mul-log-pow--9342811d52eef626188b2154.md) | 261 | `result-track:9342811d52eef626188b215432ff02093bd9b406b2b81d69d2d35e4b037d9dc1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
