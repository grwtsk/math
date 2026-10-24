# Verification target: GRWTSK.NumberTheory.Primes.GoldbachCompositeRamanujan

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "150728bd7ad5ba326cec22777bac8b2068673f9a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `150728bd7ad5ba326cec22777bac8b2068673f9a`.

Source path: `GRWTSK/NumberTheory/Primes/GoldbachCompositeRamanujan.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/GoldbachCompositeRamanujan.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrimeCoefficientBridge`](../../../../mathematics/NumberTheory/Primes/GoldbachPrimeCoefficientBridge.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.NumberTheory.ArithmeticFunction.Moebius` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Primorial` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [goldbachRamanujanDivisorWeight](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujandivisorweight--8c5d8698065be004a88e1477.md) | 43 | `declaration-track:8c5d8698065be004a88e1477c3952eed422d3dcb879667a2fad0e2947a2c088e` |
| 2 | `theorem` | [goldbachRamanujanDivisorWeight_apply](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujandivisorweight-apply--1a58e67c2d5a269b8ded0ba5.md) | 48 | `result-track:1a58e67c2d5a269b8ded0ba5b11334652ae849cd8bce79b456722d315d69b9c7` |
| 3 | `theorem` | [isMultiplicative_goldbachRamanujanDivisorWeight](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/ismultiplicative-goldbachramanujandivisorweight--495f6ac85defd64d59bd2e78.md) | 55 | `result-track:495f6ac85defd64d59bd2e7804373643c764eb95e39fa0978598a83e65429beb` |
| 4 | `def` | [goldbachRamanujanArithmeticFunction](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujanarithmeticfunction--6e0f4bc3070520d9dfb85c56.md) | 81 | `declaration-track:6e0f4bc3070520d9dfb85c56b66e99c427ecd3473a66b7fb921fcb6da0bc8c76` |
| 5 | `def` | [goldbachRamanujanInteger](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger--e2d4bdcf290853ece922b0eb.md) | 87 | `declaration-track:e2d4bdcf290853ece922b0eba1cce7d29cb994ff3c294afd0d8ee0da02d76416` |
| 6 | `theorem` | [isMultiplicative_goldbachRamanujanArithmeticFunction](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/ismultiplicative-goldbachramanujanarithmeticfunction--237df0db80c17dfa7578edb5.md) | 92 | `result-track:237df0db80c17dfa7578edb5e680532252258f1495285e4c623e622a75083581` |
| 7 | `theorem` | [goldbachRamanujanInteger_eq_sum_divisors](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger-eq-sum-divisors--d2ecd8650b2fbb90c2fc6584.md) | 100 | `result-track:d2ecd8650b2fbb90c2fc6584575e20b67aa0678ca85cf2fd58924e29f0a7460f` |
| 8 | `theorem` | [goldbachRamanujanInteger_eq_gcd_divisorSum](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger-eq-gcd-divisorsum--39b6c6a98dbfa10225b805ec.md) | 117 | `result-track:39b6c6a98dbfa10225b805ec135c22dbda11e9850c12021615da578fba645a07` |
| 9 | `theorem` | [goldbachRamanujanInteger_of_coprime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger-of-coprime--c9052396eceb931d59cb80e7.md) | 136 | `result-track:c9052396eceb931d59cb80e78e27d42f2824a6293bbbe983236c454a4e359291` |
| 10 | `theorem` | [goldbachRamanujanInteger_prime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger-prime--ff2d36821535df5e3fb16bd0.md) | 146 | `result-track:ff2d36821535df5e3fb16bd0ec591fc85601d2cc723e9fd6d3e2526e2f93b5c9` |
| 11 | `theorem` | [goldbachRamanujanInteger_mul_of_coprime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachramanujaninteger-mul-of-coprime--25066ab8e5842bfbaf2f55c4.md) | 166 | `result-track:25066ab8e5842bfbaf2f55c4d94a6de4764c3c72394e87a304bd9e6389459a14` |
| 12 | `theorem` | [goldbachDivisorReflection](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachdivisorreflection--e5655ff42d7e6ddc5ee42a41.md) | 178 | `result-track:e5655ff42d7e6ddc5ee42a41f8948be9e251616e7b0e6fc05d872b63c633f175` |
| 13 | `def` | [goldbachMoebiusCoprimeIndicator](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachmoebiuscoprimeindicator--a902aa9b421c8132366750c3.md) | 198 | `declaration-track:a902aa9b421c8132366750c38132c3adbe10a191249ac3559cfc433c14ce09d7` |
| 14 | `theorem` | [goldbachMoebiusCoprimeIndicator_eq](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachmoebiuscoprimeindicator-eq--b7e6a050547ddcddf128a2ed.md) | 204 | `result-track:b7e6a050547ddcddf128a2edd4459636975b7ce1c39fae104806c773fa9e42ed` |
| 15 | `theorem` | [goldbachMultiplePhaseFiber](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachmultiplephasefiber--98fcb8215582efb70fac9dcd.md) | 217 | `result-track:98fcb8215582efb70fac9dcdab0755b0cef38c9fed097993206df17078eb2c7f` |
| 16 | `theorem` | [goldbachReducedIntegerPhaseSum_eq_moebiusExpansion](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachreducedintegerphasesum-eq-moebiusexpansion--f833d7ef2b0d7b11ca9f3bab.md) | 257 | `result-track:f833d7ef2b0d7b11ca9f3bab287340103e2e1c0afeaeebc2c0d58900cb03e17e` |
| 17 | `theorem` | [goldbachReducedIntegerPhaseSum_eq_ramanujanInteger](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachreducedintegerphasesum-eq-ramanujaninteger--1b4dac0baa1029186daec8ff.md) | 358 | `result-track:1b4dac0baa1029186daec8ffcd2c250c4c50aa818e388a14f4bbf37ced0732d8` |
| 18 | `theorem` | [goldbachReducedIntegerPhaseSum_neg_nat](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachreducedintegerphasesum-neg-nat--43860d64bd63cfd31f9ee661.md) | 374 | `result-track:43860d64bd63cfd31f9ee661207aa918b80ce5c09db08df4baf2e3e13e8f03bf` |
| 19 | `theorem` | [goldbachReducedIntegerPhaseSum_neg_target_eq_ramanujanInteger](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachreducedintegerphasesum-neg-target-eq-ramanujaninteger--44f65eb241ac9ea8dfb49b8e.md) | 400 | `result-track:44f65eb241ac9ea8dfb49b8e7d95f7a14dbf1ce9d678f042d55e5e0a23833fac` |
| 20 | `theorem` | [goldbachNormalizedRamanujanCoefficient_of_coprime](../../../../mathematics/NumberTheory/Primes/GoldbachCompositeRamanujan.lean/declarations/goldbachnormalizedramanujancoefficient-of-coprime--e4c5bca0aa8c58c43d314ce6.md) | 409 | `result-track:e4c5bca0aa8c58c43d314ce6169a5b1e8ca6051dc7c7cebc9182b022f1ce2733` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
