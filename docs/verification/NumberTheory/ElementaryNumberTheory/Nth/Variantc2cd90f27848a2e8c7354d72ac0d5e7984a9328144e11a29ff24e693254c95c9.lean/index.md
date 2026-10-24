# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.Nth.Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f9d09d963c17e3cc1b715b3e39e9137b75d1007a",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f9d09d963c17e3cc1b715b3e39e9137b75d1007a`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Nat.Prime.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Nth` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nth_prime_zero_eq_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/declarations/nth-prime-zero-eq-two--7bae86ee0ea92c309cceba6d.md) | 16 | `result-track:7bae86ee0ea92c309cceba6db5f4fc3e6583d15d6f42e2865708207fe2d48552` |
| 2 | `theorem` | [nth_prime_one_eq_three](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/declarations/nth-prime-one-eq-three--3fd7598d5bb70f74566154e9.md) | 19 | `result-track:3fd7598d5bb70f74566154e9729a6f7cbf239b4cede63955f5b22b2d19f4283e` |
| 3 | `theorem` | [nth_prime_two_eq_five](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/declarations/nth-prime-two-eq-five--9efa4a2c1c1e9df6e8ac41e6.md) | 22 | `result-track:9efa4a2c1c1e9df6e8ac41e6585b2000063ac117cd7898bc621364a3da109ce0` |
| 4 | `theorem` | [nth_prime_three_eq_seven](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/declarations/nth-prime-three-eq-seven--06cc3e8a7816e4ae7fc5d98d.md) | 25 | `result-track:06cc3e8a7816e4ae7fc5d98dd5f3790edd83d489f21fe02bed3a8d6c32aff587` |
| 5 | `theorem` | [nth_prime_four_eq_eleven](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/Nth/Variantc2cd90f27848a2e8c7354d72ac0d5e7984a9328144e11a29ff24e693254c95c9.lean/declarations/nth-prime-four-eq-eleven--f90706f97bc4887d660f8406.md) | 28 | `result-track:f90706f97bc4887d660f8406696e4b19ba51e8b91ace80ec5734bd9b6a198768` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
