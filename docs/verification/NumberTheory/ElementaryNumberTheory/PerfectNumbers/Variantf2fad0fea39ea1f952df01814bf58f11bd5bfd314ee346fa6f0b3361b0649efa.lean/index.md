# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PerfectNumbers.Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "02b1db279a03396574dd73533ad8ead33703e34e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `02b1db279a03396574dd73533ad8ead33703e34e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasLehmer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [odd_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/odd-mersenne-succ--66409516600c1b8d71820c76.md) | 33 | `result-track:66409516600c1b8d71820c76cba12382a6029af026297a63f695076459c82045` |
| 2 | `theorem` | [sigma_two_pow_eq_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/sigma-two-pow-eq-mersenne-succ--44139ede0fea4fbaed17a290.md) | 41 | `result-track:44139ede0fea4fbaed17a29023b2abf10637e92c342f19aaa6bd6a23aa435e56` |
| 3 | `theorem` | [perfect_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/perfect-two-pow-mul-mersenne-of-prime--1c0e704e892ce119f40b0f1a.md) | 47 | `result-track:1c0e704e892ce119f40b0f1a84e3b8173bec2a742adb08edda026acbd8f36102` |
| 4 | `theorem` | [ne_zero_of_prime_mersenne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/ne-zero-of-prime-mersenne--fb4970155fd98ff610984b86.md) | 58 | `result-track:fb4970155fd98ff610984b86020685f449dfd623d977e01c74aed4e872f0043e` |
| 5 | `theorem` | [even_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/even-two-pow-mul-mersenne-of-prime--3f5ce56f7e1488bef31a2b67.md) | 63 | `result-track:3f5ce56f7e1488bef31a2b676e5eb8cee8d0a3e197df4f4cd46edddd63c3600a` |
| 6 | `theorem` | [eq_two_pow_mul_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/eq-two-pow-mul-odd--59f5d91790f577aa954dd5f8.md) | 67 | `result-track:59f5d91790f577aa954dd5f80c951fc7f20d72c54af107231ce412f3cec1109f` |
| 7 | `theorem` | [eq_two_pow_mul_prime_mersenne_of_even_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/eq-two-pow-mul-prime-mersenne-of-even-perfect--a35a070ed04172274a991117.md) | 82 | `result-track:a35a070ed04172274a9911178384c0e7755a8980d96056e0b2662337edf6224e` |
| 8 | `theorem` | [even_and_perfect_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variantf2fad0fea39ea1f952df01814bf58f11bd5bfd314ee346fa6f0b3361b0649efa.lean/declarations/even-and-perfect-iff--f30592904245ae0adafa0730.md) | 124 | `result-track:f30592904245ae0adafa0730f404d0da08662d00e7e6dd38e6edcf255bd86b67` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
