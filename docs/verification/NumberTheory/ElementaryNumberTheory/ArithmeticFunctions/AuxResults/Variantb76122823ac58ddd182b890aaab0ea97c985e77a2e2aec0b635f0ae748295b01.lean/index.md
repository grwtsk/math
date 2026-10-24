# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.AuxResults.Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "707916415b49ce89ba2a01585dae4b331b7dc9f5",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `707916415b49ce89ba2a01585dae4b331b7dc9f5`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Antidiag.Nat` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Integrals.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_factors_of_mult](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/prod-factors-of-mult--402bc67a8146b85168d662c8.md) | 24 | `result-track:402bc67a8146b85168d662c89202a3f13df69a6734025a2391e1eb0a0e3480d6` |
| 2 | `theorem` | [sum_over_dvd_ite](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/sum-over-dvd-ite--71a742cc9ddeedf8bfab1adf.md) | 33 | `result-track:71a742cc9ddeedf8bfab1adf91e6ea1d7ddc457350c81490bc70dc95132e27b8` |
| 3 | `theorem` | [ite_sum_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/ite-sum-zero--f24b7c477dfa703ae901a787.md) | 38 | `result-track:f24b7c477dfa703ae901a787833421ad589b2c7033156e68308c2d79cdf3f72d` |
| 4 | `theorem` | [conv_lambda_sq_larger_sum](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/conv-lambda-sq-larger-sum--66019adc19709d3817926fd2.md) | 42 | `result-track:66019adc19709d3817926fd23dcbc61a19a2a7390efb400bc4062c839b68afdb` |
| 5 | `theorem` | [moebius_inv_dvd_lower_bound](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/moebius-inv-dvd-lower-bound--255dcecd4a3aa40fc9917081.md) | 61 | `result-track:255dcecd4a3aa40fc99170811436c4d40e3f1084216becfa23e9bd1831316aca` |
| 6 | `theorem` | [moebius_inv_dvd_lower_bound'](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/moebius-inv-dvd-lower-bound--a600c94e0ac19070ad629bec.md) | 84 | `result-track:a600c94e0ac19070ad629bec59775f60f3713f54723630a065c26f2d0c10a715` |
| 7 | `theorem` | [moebius_inv_dvd_lower_bound_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/moebius-inv-dvd-lower-bound-real--6cc127350231845d548f504e.md) | 90 | `result-track:6cc127350231845d548f504e012750b706effbc1ae079114e586091186ba9c02` |
| 8 | `theorem` | [multiplicative_zero_of_zero_dvd](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/multiplicative-zero-of-zero-dvd--a8eb0c0566a4e85d8eae4014.md) | 96 | `result-track:a8eb0c0566a4e85d8eae4014a9391772dae2eb67b7eaf50f074a62aa3d514c78` |
| 9 | `theorem` | [div_mult_of_dvd_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/div-mult-of-dvd-squarefree--e989cde16f71e0fa1e9239bc.md) | 102 | `result-track:e989cde16f71e0fa1e9239bc649528bb8d2a597d50374d57eac801464a9eb9ee` |
| 10 | `theorem` | [inv_sub_antitoneOn_gt](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/inv-sub-antitoneon-gt--90ad383e0bb02a8792db1c59.md) | 110 | `result-track:90ad383e0bb02a8792db1c59fbd7a41e80681cb5ca2ce2f559e7325919d68ffd` |
| 11 | `theorem` | [inv_sub_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/inv-sub-antitoneon-icc--c817e2639e3022b17d1c5702.md) | 118 | `result-track:c817e2639e3022b17d1c570281cf04a804ea3c510022eedd71a125b8ad62bd3b` |
| 12 | `theorem` | [inv_antitoneOn_pos](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/inv-antitoneon-pos--3f63e12c6bb7d0f064bc0684.md) | 126 | `result-track:3f63e12c6bb7d0f064bc0684f2599765cf3bd110286b603874dd53a75dba452c` |
| 13 | `theorem` | [inv_antitoneOn_Icc](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/inv-antitoneon-icc--a6be5a84b81c7f8244c178ed.md) | 130 | `result-track:a6be5a84b81c7f8244c178ed2b6b861b23efbfc8d458a8cf55c89dc5c9823474` |
| 14 | `theorem` | [log_add_one_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/log-add-one-le-sum-inv--54481a687c8a74e8e0df1757.md) | 135 | `result-track:54481a687c8a74e8e0df17574233610edb3b1f9bef1b1abe024e11aa56a95d36` |
| 15 | `theorem` | [log_le_sum_inv](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/log-le-sum-inv--d9990fa3f4358cc1ec2c8189.md) | 146 | `result-track:d9990fa3f4358cc1ec2c8189fc2f30aafabeba17cd53dc443ce87ae656cd062b` |
| 16 | `theorem` | [sum_inv_le_log](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/sum-inv-le-log--c3acf79799955f2259cd65ef.md) | 156 | `result-track:c3acf79799955f2259cd65efe434eca77aaa3056f82c1a05ae7652f17144ec20` |
| 17 | `theorem` | [sum_inv_le_log_real](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/sum-inv-le-log-real--3d4e9d374267111750859c06.md) | 175 | `result-track:3d4e9d374267111750859c062deca49de8ccaa83d0b56cb7bd693f69a8eab632` |
| 18 | `theorem` | [sum_pow_cardDistinctFactors_div_self_le_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/sum-pow-carddistinctfactors-div-self-le-log-pow--cc55642d21f993db8e801978.md) | 185 | `result-track:cc55642d21f993db8e8019785e8455af64fabe617b68d4f1b3fa7efef3c45784` |
| 19 | `theorem` | [sum_pow_cardDistinctFactors_le_self_mul_log_pow](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/AuxResults/Variantb76122823ac58ddd182b890aaab0ea97c985e77a2e2aec0b635f0ae748295b01.lean/declarations/sum-pow-carddistinctfactors-le-self-mul-log-pow--76f7b029ef930faa41a6deba.md) | 253 | `result-track:76f7b029ef930faa41a6deba0c2ad9698463d768d165ddaf76f60a733ec5d414` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
