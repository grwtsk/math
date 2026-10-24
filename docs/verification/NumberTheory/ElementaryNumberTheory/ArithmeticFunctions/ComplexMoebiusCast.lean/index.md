# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.ComplexMoebiusCast

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ba272bb5812e7a5f5899c7fdc4b1760e5170b2d3",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ba272bb5812e7a5f5899c7fdc4b1760e5170b2d3`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.TruncatedMoebiusCoefficients`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/TruncatedMoebiusCoefficients.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Data.Complex.Basic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [integer_cutoff_complex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/declarations/integer-cutoff-complex--ac468d11a276136bde5d663b.md) | 18 | `result-track:ac468d11a276136bde5d663b4aa8b6a11ec69617a4b4676a7fcf957ee07ba5c0` |
| 2 | `theorem` | [integer_sub_complex](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/declarations/integer-sub-complex--d8cac3a59284bce4cc8fe2e6.md) | 27 | `result-track:d8cac3a59284bce4cc8fe2e649f2b4a41edbbc158673e817970ecc01e4701fab` |
| 3 | `theorem` | [high_moebius_complex_function](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/declarations/high-moebius-complex-function--51dde8c59e19b9931820e2ea.md) | 35 | `result-track:51dde8c59e19b9931820e2ea065d4b74b785514e7ae0ae0faf4baadfa9518e62` |
| 4 | `theorem` | [moebius_convolution_not_pointwise_at_two](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/ComplexMoebiusCast.lean/declarations/moebius-convolution-not-pointwise-at-two--7bbc20adbc748690d6de4304.md) | 55 | `result-track:7bbc20adbc748690d6de430485095a676299feb9f9dfab9b12df1a0bb0a779c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
