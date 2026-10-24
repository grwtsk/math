# Verification target: GRWTSK.Algebra.LinearAlgebra.CyclicPhase.Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a7b6c75c02d94f46249cb5bae07379aa0b0eb881",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a7b6c75c02d94f46249cb5bae07379aa0b0eb881`.

Source path: `GRWTSK/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Matrix.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramPlus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus--c65f16d94155dcd601dd8826.md) | 21 | `declaration-track:c65f16d94155dcd601dd88262161e1f631d4664fba0622ffb8c2fb0c2ed9068d` |
| 2 | `def` | [gramMinus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus--5245c33976bad6470191d275.md) | 23 | `declaration-track:5245c33976bad6470191d275373a6e0b905fcf0430d1e1b3b5c7e6f51c315f3c` |
| 3 | `def` | [pairwiseProfile](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/pairwiseprofile--87cadd27c5c1f4410820e583.md) | 25 | `declaration-track:87cadd27c5c1f4410820e58302217b02daf2004f087de91ca5ac31cecc8dfd0f` |
| 4 | `def` | [tripleCycle](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/triplecycle--8a129d09df5b19532c2be6df.md) | 27 | `declaration-track:8a129d09df5b19532c2be6dfcf3b8a6f1faf2c048c0392ad379db06fecd28ba3` |
| 5 | `theorem` | [gramPlus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus-hermitian--e65ca04679980ad7fc5904b6.md) | 29 | `result-track:e65ca04679980ad7fc5904b68141c552fa0f596cb21ccbb491aa7011c04c8e3c` |
| 6 | `theorem` | [gramMinus_hermitian](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus-hermitian--632e8597b760153125b351b8.md) | 32 | `result-track:632e8597b760153125b351b8e0c218b7921085b802191345f252155c16d90fc1` |
| 7 | `theorem` | [gramPlus_energy](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus-energy--f4fbcba64e42ba7218755055.md) | 36 | `result-track:f4fbcba64e42ba7218755055118a29459ab13722b2615c3c58186d268ec125f4` |
| 8 | `theorem` | [gramMinus_energy](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus-energy--d037b36cac856e03d50d141c.md) | 42 | `result-track:d037b36cac856e03d50d141c174eac7822ee7d6b82d42112622fa6b79d55fc38` |
| 9 | `theorem` | [sum_sq_pos](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/sum-sq-pos--32fc30f403304e009aee48ac.md) | 49 | `result-track:32fc30f403304e009aee48ac18dd0df65dc65430c2b668e687cbe271c5b661d8` |
| 10 | `theorem` | [gramPlus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus-posdef--008accf9f9837c940c8b256e.md) | 61 | `result-track:008accf9f9837c940c8b256e24e28716cd10fc380c28a157361ea16e94ea105b` |
| 11 | `theorem` | [gramMinus_posDef](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus-posdef--80c1f09c36f1861863ae8c4f.md) | 66 | `result-track:80c1f09c36f1861863ae8c4f57ed6cf40375b39e7a00e0f4761123b803389e79` |
| 12 | `theorem` | [positive_gram_factor](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/positive-gram-factor--8999218fcd80fa3155debbb4.md) | 72 | `result-track:8999218fcd80fa3155debbb445612ea33d81e7bfb69c9bc24159d5e539dd64f5` |
| 13 | `theorem` | [gramPlus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus-realizable--1ff2236e774f6dd3084d7a77.md) | 78 | `result-track:1ff2236e774f6dd3084d7a771089220778e6e6921249cb1f5ac696d2bd766277` |
| 14 | `theorem` | [gramMinus_realizable](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus-realizable--e39b7a29b90bb06eed3d575e.md) | 80 | `result-track:e39b7a29b90bb06eed3d575e5cd85c4784d52cbce2805917a388732bd375f317` |
| 15 | `theorem` | [diagonals_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/diagonals-equal--fd992f4334f9c71b9a6f07a5.md) | 83 | `result-track:fd992f4334f9c71b9a6f07a503654919ddf4cf5f6098e0095f3cda7d45712212` |
| 16 | `theorem` | [pairwise_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/pairwise-equal--0d9a41691ff78a9806d20c43.md) | 86 | `result-track:0d9a41691ff78a9806d20c43ac9943583c9442e73699c0de8bdbe1cd1a95da4c` |
| 17 | `theorem` | [triple_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/triple-plus--438d71ef59985da4cf476df8.md) | 89 | `result-track:438d71ef59985da4cf476df863ce289ab32dd508cdec38d85b86f8d0978dd6ab` |
| 18 | `theorem` | [triple_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/triple-minus--b88717159ff810e67f00643a.md) | 91 | `result-track:b88717159ff810e67f00643aded5b543c023158b55528cf56e40867fc85b537e` |
| 19 | `theorem` | [triple_distinct](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/triple-distinct--d549dd8191674707fd64e9f9.md) | 93 | `result-track:d549dd8191674707fd64e9f9e12e9bcc05a2bc267d181159b7898cf308904a99` |
| 20 | `theorem` | [det_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/det-plus--b869c53deeff99a556284d83.md) | 97 | `result-track:b869c53deeff99a556284d83058e4fcdfe105cd57435f922c0639f00fe5417d1` |
| 21 | `theorem` | [det_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/det-minus--894a9948e3bcbbf2d95998c6.md) | 99 | `result-track:894a9948e3bcbbf2d95998c6fbe1f005330f898894f5e47076a3c815dcce38be` |
| 22 | `theorem` | [det_distinct](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/det-distinct--4ace8b76a2e60bee786edb71.md) | 101 | `result-track:4ace8b76a2e60bee786edb713b35cddb99f28af20d2391f551b0d0e89c8bda5a` |
| 23 | `theorem` | [no_pairwise_triple_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/no-pairwise-triple-decoder--95dbad78c6b7a819f65959e7.md) | 105 | `result-track:95dbad78c6b7a819f65959e73a423590697a365aff859708651544ce3da63b9c` |
| 24 | `theorem` | [no_pairwise_determinant_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/no-pairwise-determinant-decoder--ae81330746b3fdfb61ab333f.md) | 114 | `result-track:ae81330746b3fdfb61ab333f6a7deed33f8abe95416c0c45b8e9dd254f7e4eca` |
| 25 | `theorem` | [positive_euclidean_gram](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/positive-euclidean-gram--82add912b40664ebc01b71f8.md) | 125 | `result-track:82add912b40664ebc01b71f89c5e4ce7454182e74b52567c94f7f1522fc41db7` |
| 26 | `theorem` | [gramPlus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramplus-euclidean--a582765bf1686ccb512b73e9.md) | 133 | `result-track:a582765bf1686ccb512b73e9fa8f860833d6e7af5ceaecbb7fe14c9eb16b0daa` |
| 27 | `theorem` | [gramMinus_euclidean](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/gramminus-euclidean--b23b6f6d0ecc78f369306cf5.md) | 137 | `result-track:b23b6f6d0ecc78f369306cf5cddbc00d4fec9dd85cb70445aae00148618ce4b9` |
| 28 | `theorem` | [pairwiseProfile_eq_norm_sq](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/pairwiseprofile-eq-norm-sq--65925684a5fda8b09d7d69f7.md) | 141 | `result-track:65925684a5fda8b09d7d69f7f0e07edaef573c0ec2a266c991ce3d468806ae18` |
| 29 | `theorem` | [first_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/first-trace-equal--b9b8edc532c8f5aa1497e814.md) | 145 | `result-track:b9b8edc532c8f5aa1497e814aec67a15450821f71218686b57a9f9fdf12c7de3` |
| 30 | `theorem` | [second_trace_equal](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/second-trace-equal--7464dbbf315d6ba7b78901ec.md) | 148 | `result-track:7464dbbf315d6ba7b78901ec9bfc6edcb722ec8b00a693e02285b06aad6c8963` |
| 31 | `theorem` | [third_trace_plus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/third-trace-plus--71b65a691a3448dfb4e3c91e.md) | 151 | `result-track:71b65a691a3448dfb4e3c91e4799c39a2ec358c04bded7fd82d7c8a9a5f3dd1d` |
| 32 | `theorem` | [third_trace_minus](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/third-trace-minus--2688098d528c584b2c74d1ad.md) | 154 | `result-track:2688098d528c584b2c74d1adaa11c0238301349a0b56cc5681491bcdab35e24f` |
| 33 | `theorem` | [no_pairwise_third_trace_decoder](../../../../../mathematics/Algebra/LinearAlgebra/CyclicPhase/Variantff3a7afed895ed33c53982cbc1a124a6f17813a286b8b25ddd64b860caab97c0.lean/declarations/no-pairwise-third-trace-decoder--f6b690be799e59ffc4ba7727.md) | 157 | `result-track:f6b690be799e59ffc4ba77279471973fe91cdf30595c3cb21f2c3450054454bd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
