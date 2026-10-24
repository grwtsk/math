# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PerfectNumbers.Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7c2b57f54ada7b789724c1b58d9810589c934308",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7c2b57f54ada7b789724c1b58d9810589c934308`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasLehmer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sigma_two_pow_eq_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/sigma-two-pow-eq-mersenne-succ--6c8d61dbfedd2e84657b4f02.md) | 36 | `result-track:6c8d61dbfedd2e84657b4f02f22daa34c44c71eddd04eb0ee578b37d67d8d8b8` |
| 2 | `theorem` | [perfect_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/perfect-two-pow-mul-mersenne-of-prime--816eaef14e54aa291db320b1.md) | 41 | `result-track:816eaef14e54aa291db320b1f818efba51383978616ac6453dd1d18e285b7921` |
| 3 | `theorem` | [ne_zero_of_prime_mersenne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/ne-zero-of-prime-mersenne--3e3b3ee45a2d9b10077f94f6.md) | 50 | `result-track:3e3b3ee45a2d9b10077f94f60f31d438a87cba042452c79c2dec60670beffa4f` |
| 4 | `theorem` | [even_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/even-two-pow-mul-mersenne-of-prime--55dcd08ad8cb15a0967c34ca.md) | 54 | `result-track:55dcd08ad8cb15a0967c34ca309d0a2066a2e3241009a07f1cde15821df8fe8e` |
| 5 | `theorem` | [eq_two_pow_mul_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/eq-two-pow-mul-odd--8ef2752bc8aecd8971199a12.md) | 57 | `result-track:8ef2752bc8aecd8971199a12d57feb4e7090367c2b2d1fe741be4648753c3fcd` |
| 6 | `theorem` | [eq_two_pow_mul_prime_mersenne_of_even_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/eq-two-pow-mul-prime-mersenne-of-even-perfect--4f43278833143a8a958cca5b.md) | 71 | `result-track:4f43278833143a8a958cca5ba80b46a555000482303a0a0d56076f45b237ef4a` |
| 7 | `theorem` | [even_and_perfect_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0ac2b5638888349be9d64da96329b6be3b700cf5174f9b6c6691ac48dfbde13b.lean/declarations/even-and-perfect-iff--4e6b41d0c7435d825e2051cb.md) | 111 | `result-track:4e6b41d0c7435d825e2051cb587d5a4d99490f22d14c415fe3893b6e69d5b602` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
