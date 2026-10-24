# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.PerfectNumbers.Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f6b889750bac1df2a21d5d149047396e661157f",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f6b889750bac1df2a21d5d149047396e661157f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.NumberTheory.ArithmeticFunction` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LucasLehmer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GeomSum` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Multiplicity` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum.Prime` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sigma_two_pow_eq_mersenne_succ](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/sigma-two-pow-eq-mersenne-succ--f75a2c861b19043bc6f361b8.md) | 44 | `result-track:f75a2c861b19043bc6f361b88ffcd2bcfbcace68ba8bea0e24e0fb673d3862ad` |
| 2 | `theorem` | [perfect_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/perfect-two-pow-mul-mersenne-of-prime--30e82e05190fa799c4dac4c6.md) | 49 | `result-track:30e82e05190fa799c4dac4c6db7d85ba46643c46e7af6241be1652df4b8cc026` |
| 3 | `theorem` | [ne_zero_of_prime_mersenne](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/ne-zero-of-prime-mersenne--3efdb553e4cfd57e8de10ef2.md) | 58 | `result-track:3efdb553e4cfd57e8de10ef2d8c80dbd5af6bd46e1e627dc574e933c94c1ce71` |
| 4 | `theorem` | [even_two_pow_mul_mersenne_of_prime](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/even-two-pow-mul-mersenne-of-prime--33ad6dc9f208022e0aa33092.md) | 62 | `result-track:33ad6dc9f208022e0aa330928392ffe08ad6dcbee00594d6a711e6c59fabfefd` |
| 5 | `theorem` | [eq_two_pow_mul_odd](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/eq-two-pow-mul-odd--df0f65044d20e21fd191922d.md) | 65 | `result-track:df0f65044d20e21fd191922d29015c87decdcd6e83bcd5fb56101eafffbb210b` |
| 6 | `theorem` | [eq_two_pow_mul_prime_mersenne_of_even_perfect](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/eq-two-pow-mul-prime-mersenne-of-even-perfect--4503c0d5805ce57e353df8d9.md) | 79 | `result-track:4503c0d5805ce57e353df8d9432233a96bb72310be73b02aee192932e8d3062d` |
| 7 | `theorem` | [even_and_perfect_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/PerfectNumbers/Variant0775028378dc2e384ddeb12b72477eb9b02786fdca367c3aa485294ae8afd2bc.lean/declarations/even-and-perfect-iff--c1df855aaf13df63a96e31ae.md) | 119 | `result-track:c1df855aaf13df63a96e31aea41fe2fc2ca3c85871e6497e592f6a3bf51f9eba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
