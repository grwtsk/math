# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ExpChar.Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "511b20c02d483a5513cab335f3936ab063c527a9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `511b20c02d483a5513cab335f3936ab063c527a9`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.CharP.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Prime` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [inductive](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/inductive--4270e6d80c95ef3be0fd081f.md) | 50 | `declaration-track:4270e6d80c95ef3be0fd081ffb06ba1da434808256902d85b0cf7dbe509bd868` |
| 2 | `theorem` | [expChar_one_of_char_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/expchar-one-of-char-zero--5a7b84b1ab3c5c3c60b955b1.md) | 57 | `result-track:5a7b84b1ab3c5c3c60b955b1c008399d962b0a263127b782171c9b017fada193` |
| 3 | `theorem` | [char_eq_expChar_iff](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/char-eq-expchar-iff--9363702dd348022c54acd13a.md) | 64 | `result-track:9363702dd348022c54acd13ab976f7ba817f0bebcb4ade8778693de1754ea27a` |
| 4 | `theorem` | [char_zero_of_expChar_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/char-zero-of-expchar-one--7e9f8af54cf93244f63246a2.md) | 76 | `result-track:7e9f8af54cf93244f63246a24759213ecc989c06390fea9418a503b81c01c60b` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/instance--d49fad70ebec49dc9ee38e5c.md) | 84 | `declaration-track:d49fad70ebec49dc9ee38e5cc8e924e6150cce2dec6ed96af6424a7756df2ecc` |
| 6 | `theorem` | [expChar_one_iff_char_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/expchar-one-iff-char-zero--2df5e1d7fa4b11c376432e37.md) | 91 | `result-track:2df5e1d7fa4b11c376432e37340d4a5ce4daa2b9b3695715e8a711c3877c3bdd` |
| 7 | `theorem` | [char_prime_of_ne_zero](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/char-prime-of-ne-zero--d6fc885e663f7894c846d3e7.md) | 104 | `result-track:d6fc885e663f7894c846d3e79f03bea1a79436919b377ab562caf52bc4de2522` |
| 8 | `theorem` | [expChar_is_prime_or_one](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ExpChar/Variant8e120c762d8d834c590e8a2e04059e37f2c3468de13cac1f4d18d324678f1212.lean/declarations/expchar-is-prime-or-one--16bcdc3437e35008e3417faf.md) | 111 | `result-track:16bcdc3437e35008e3417faf5ddf28229656beb6b35c82ded876bbe77feac719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
