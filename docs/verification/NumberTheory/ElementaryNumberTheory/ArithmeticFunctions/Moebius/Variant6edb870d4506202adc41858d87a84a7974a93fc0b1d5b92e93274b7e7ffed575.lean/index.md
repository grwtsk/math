# Verification target: GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctions.Moebius.Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "545156480cfb4be15ed1e2cc7a24194f6a4cd08f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `545156480cfb4be15ed1e2cc7a24194f6a4cd08f`.

Source path: `GRWTSK/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebius](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/moebius--1b936497b14ed13b386cfdf4.md) | 34 | `declaration-track:1b936497b14ed13b386cfdf4a73f2d1d7bcc6d48e5ee96caae4847f5ea2aa96b` |
| 2 | `theorem` | [_root_.Nat.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-nat-moebius-eq--ee39e8b32271e2073174df4b.md) | 39 | `result-track:ee39e8b32271e2073174df4ba83914815452dca43bff51ebaf5af3e9a211d85d` |
| 3 | `theorem` | [_root_.Squarefree.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-squarefree-moebius-eq--cd618b555053788c798b0a1b.md) | 45 | `result-track:cd618b555053788c798b0a1b2f3da676e969025f8524594ead8992febe960b25` |
| 4 | `theorem` | [moebius_of_not_squarefree](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/moebius-of-not-squarefree--2ade9f6daed9ebbb8a5edff0.md) | 49 | `result-track:2ade9f6daed9ebbb8a5edff03a22c52c22e03e65ccdb8046db9afb413ec115d0` |
| 5 | `theorem` | [moebius_zero](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/moebius-zero--c69bd8305f9007eefa2c0f45.md) | 52 | `result-track:c69bd8305f9007eefa2c0f45984394d8fc270a8320ce522588d0aece6be669a8` |
| 6 | `theorem` | [moebius_one](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/moebius-one--ad1120294bb612e892c1d6cf.md) | 55 | `result-track:ad1120294bb612e892c1d6cfb6083d64d3475458e15cc3badc85815c70f8a8d9` |
| 7 | `theorem` | [_root_.Associated.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-associated-moebius-eq--5cd4c17e00e36f4f0c468d76.md) | 58 | `result-track:5cd4c17e00e36f4f0c468d7681f28a3d2a4bd7d01294a45c769cb0fe5b3edfdd` |
| 8 | `theorem` | [_root_.IsUnit.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-isunit-moebius-eq--3a9a1257d3425542aa7978f5.md) | 61 | `result-track:3a9a1257d3425542aa7978f5d391229d8a5b25758ac9a4f5f7436461b8389037` |
| 9 | `theorem` | [_root_.Irreducible.moebius_eq](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-irreducible-moebius-eq--d2f362db2e41f1fa8fb89642.md) | 64 | `result-track:d2f362db2e41f1fa8fb8964281082dae07ca06c2cfe0c4f486bd9c2d471c9800` |
| 10 | `theorem` | [_root_.IsRelPrime.moebius_mul](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Moebius/Variant6edb870d4506202adc41858d87a84a7974a93fc0b1d5b92e93274b7e7ffed575.lean/declarations/root-isrelprime-moebius-mul--d4b69ebb2d0d93b8f1885955.md) | 67 | `result-track:d4b69ebb2d0d93b8f1885955eded71aa1374bbd1d874bed06a7f7a963ec19916` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
