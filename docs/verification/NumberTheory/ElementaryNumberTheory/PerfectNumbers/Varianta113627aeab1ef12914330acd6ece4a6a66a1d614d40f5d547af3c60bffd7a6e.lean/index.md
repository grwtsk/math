# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PerfectNumbers.Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "db03f1acae0ca68be654f6e0a4a7b77198e1da5e",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `db03f1acae0ca68be654f6e0a4a7b77198e1da5e`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasLehmer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [odd_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/odd-mersenne-succ--89fdfb891edc64e0b3615335.md) | 41 | `result-track:89fdfb891edc64e0b36153351abc7205625251fbd877f3380be59570128dda1d` |
| 2 | `theorem` | [sigma_two_pow_eq_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/sigma-two-pow-eq-mersenne-succ--496bb0cdbc4998c771956144.md) | 49 | `result-track:496bb0cdbc4998c771956144ee93fcf72a47e3eebce26e65e97b258bae3ead54` |
| 3 | `theorem` | [perfect_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/perfect-two-pow-mul-mersenne-of-prime--2e11ff8cefc48dab6bbed0a0.md) | 55 | `result-track:2e11ff8cefc48dab6bbed0a0c3a3dfe1a1ac5563ed7722a64bb5ef8800ff8b18` |
| 4 | `theorem` | [ne_zero_of_prime_mersenne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/ne-zero-of-prime-mersenne--612f0273bb50096a8c2a5733.md) | 66 | `result-track:612f0273bb50096a8c2a573378f2002bfa088d1f2ba6b7e6dbf34c0f57364605` |
| 5 | `theorem` | [even_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/even-two-pow-mul-mersenne-of-prime--4eb73367611da785b41ea909.md) | 71 | `result-track:4eb73367611da785b41ea90974cf85ffd0f35ccbce3e66b9600f51274d4e01ab` |
| 6 | `theorem` | [eq_two_pow_mul_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/eq-two-pow-mul-odd--9745b84c59b9901ed2a9054e.md) | 75 | `result-track:9745b84c59b9901ed2a9054ea82a75cbe594f5cfad68588a7ad8f8db54582987` |
| 7 | `theorem` | [eq_two_pow_mul_prime_mersenne_of_even_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/eq-two-pow-mul-prime-mersenne-of-even-perfect--aca5fe87e6a4d0f027788a0a.md) | 90 | `result-track:aca5fe87e6a4d0f027788a0af4856d9ec0ec10489f0ec7ebc61a1b398605db74` |
| 8 | `theorem` | [even_and_perfect_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Varianta113627aeab1ef12914330acd6ece4a6a66a1d614d40f5d547af3c60bffd7a6e.lean/declarations/even-and-perfect-iff--f630a4d19d52ffe14abb7ead.md) | 132 | `result-track:f630a4d19d52ffe14abb7eadc56e802b73833c4521258f8f7fd23f4ebefdebbb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
